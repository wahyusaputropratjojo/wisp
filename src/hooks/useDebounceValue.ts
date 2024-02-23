import { useRef, useState } from "react";

import { useDebounceCallback } from "@hooks/useDebounceCallback";
import type { DebouncedState } from "@hooks/useDebounceCallback";

export function useDebounceValue<T>(
  initialValue: T | (() => T),
  delay: number,
  options?: {
    leading?: boolean;
    maxWait?: number;
    trailing?: boolean;
    equalityFn?: (left: T, right: T) => boolean;
  },
): [T, DebouncedState<(value: T) => void>] {
  const eq = options?.equalityFn ?? ((left: T, right: T) => left === right);
  const unwrappedInitialValue =
    initialValue instanceof Function ? initialValue() : initialValue;
  const [debouncedValue, setDebouncedValue] = useState<T>(
    unwrappedInitialValue,
  );
  const previousValueRef = useRef<T | undefined>(unwrappedInitialValue);

  const updateDebouncedValue = useDebounceCallback(
    setDebouncedValue,
    delay,
    options,
  );

  if (!eq(previousValueRef.current as T, unwrappedInitialValue)) {
    updateDebouncedValue(unwrappedInitialValue);
    previousValueRef.current = unwrappedInitialValue;
  }

  return [debouncedValue, updateDebouncedValue];
}
