import { useCallback, useEffect, useState } from "react";
import type { Dispatch, SetStateAction } from "react";

import { useEventCallback } from "@hooks/useEventCallback";
import { useEventListener } from "@hooks/useEventListener";

declare global {
  interface WindowEventMap {
    "local-storage": CustomEvent;
  }
}

type UseLocalStorageOptions<T> = {
  serializer?: (value: T) => string;
  deserializer?: (value: string) => T;
  initializeWithValue?: boolean;
};

const IS_SERVER = typeof window === "undefined";

export function useLocalStorage<T>(
  key: string,
  initialValue: T | (() => T),
  options: UseLocalStorageOptions<T> = {},
): [T, Dispatch<SetStateAction<T>>, () => void] {
  const { initializeWithValue = true } = options;

  const serializer = useCallback<(value: T) => string>(
    (value) => {
      return options.serializer ?
          options.serializer(value)
        : JSON.stringify(value);
    },
    [options],
  );

  const deserializer = useCallback<(value: string) => T>(
    (value) => {
      if (options.deserializer) {
        return options.deserializer(value);
      }

      // Support 'undefined' as a value
      if (value === "undefined") {
        return undefined as unknown as T;
      }

      const defaultValue =
        initialValue instanceof Function ? initialValue() : initialValue;

      try {
        return JSON.parse(value) as T;
      } catch (error) {
        console.error(`Error parsing JSON for key "${key}":`, error);
        return defaultValue; // Return initialValue if parsing fails
      }
    },
    [options, initialValue, key],
  );

  const readValue = useCallback((): T => {
    if (IS_SERVER) {
      return initialValue instanceof Function ? initialValue() : initialValue;
    }

    try {
      const raw = window.localStorage.getItem(key);
      return (
        raw ? deserializer(raw)
        : initialValue instanceof Function ? initialValue()
        : initialValue
      );
    } catch (error) {
      console.warn(`Error reading localStorage key "${key}":`, error);
      return initialValue instanceof Function ? initialValue() : initialValue;
    }
  }, [initialValue, key, deserializer]);

  const [storedValue, setStoredValue] = useState(() =>
    initializeWithValue ? readValue()
    : initialValue instanceof Function ? initialValue()
    : initialValue,
  );

  const setValue: Dispatch<SetStateAction<T>> = useEventCallback((value) => {
    if (IS_SERVER) {
      console.warn(
        `Tried setting localStorage key "${key}" in a non-client environment`,
      );
    }

    try {
      const newValue = value instanceof Function ? value(readValue()) : value;
      window.localStorage.setItem(key, serializer(newValue));
      setStoredValue(newValue);
      window.dispatchEvent(new StorageEvent("local-storage", { key }));
    } catch (error) {
      console.error(`Error setting localStorage key "${key}":`, error);
    }
  });

  const removeLocalStorage = () => {
    try {
      window.localStorage.removeItem(key);
      setStoredValue(
        initialValue instanceof Function ? initialValue() : initialValue,
      );
    } catch (error) {
      console.error(`Error removing localStorage key "${key}":`, error);
    }
  };

  useEffect(() => {
    setStoredValue(readValue());
  }, [key, readValue]);

  const handleStorageChange = useCallback(
    (event: StorageEvent | CustomEvent) => {
      if ((event as StorageEvent)?.key && (event as StorageEvent).key !== key) {
        return;
      }
      setStoredValue(readValue());
    },
    [key, readValue],
  );

  useEventListener("storage", handleStorageChange);
  useEventListener("local-storage", handleStorageChange);

  return [storedValue, setValue, removeLocalStorage];
}
