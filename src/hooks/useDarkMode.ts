import { useRef } from "react";

import { useLocalStorage } from "@hooks/useLocalStorage";

const LOCAL_STORAGE_KEY = "darkMode";

type DarkModeOptions = {
  defaultValue?: boolean;
  localStorageKey?: string;
  initializeWithValue?: boolean;
};

type DarkModeOutput = {
  isDarkMode: boolean;
  toggle: () => void;
  enable: () => void;
  disable: () => void;
  set: (value: boolean) => void;
};

export function useDarkMode(options?: DarkModeOptions): DarkModeOutput;

export function useDarkMode(
  defaultValue: boolean,
  localStorageKey?: string,
): DarkModeOutput;

export function useDarkMode(
  options?: boolean | DarkModeOptions,
  localStorageKeyProps: string = LOCAL_STORAGE_KEY,
): DarkModeOutput {
  const counter = useRef(0);
  counter.current++;

  const defaultValue =
    typeof options === "boolean" ? options : options?.defaultValue;
  const localStorageKey =
    typeof options === "boolean" ?
      localStorageKeyProps ?? LOCAL_STORAGE_KEY
    : options?.localStorageKey ?? LOCAL_STORAGE_KEY;
  const initializeWithValue =
    typeof options === "boolean" ? undefined : (
      options?.initializeWithValue ?? undefined
    );

  const [isDarkMode, setDarkMode] = useLocalStorage<boolean>(
    localStorageKey,
    defaultValue ?? false,
    { initializeWithValue },
  );

  return {
    isDarkMode,
    toggle: () => {
      setDarkMode((prev) => !prev);
    },
    enable: () => {
      setDarkMode(true);
    },
    disable: () => {
      setDarkMode(false);
    },
    set: (value) => {
      setDarkMode(value);
    },
  };
}
