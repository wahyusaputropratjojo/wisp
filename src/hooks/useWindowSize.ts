import { useState } from "react";

import { useDebounceCallback } from "@hooks/useDebounceCallback";
import { useEventListener } from "@hooks/useEventListener";
import { useIsomorphicLayoutEffect } from "@hooks/useIsomorphicLayoutEffect";

type WindowSize<T extends number | undefined = number | undefined> = {
  width: T;
  height: T;
};

type UseWindowSizeOptions<InitializeWithValue extends boolean | undefined> = {
  initializeWithValue: InitializeWithValue;
  debounceDelay?: number;
};

const IS_SERVER = typeof window === "undefined";

export function useWindowSize(options: UseWindowSizeOptions<false>): WindowSize;

export function useWindowSize(
  options?: Partial<UseWindowSizeOptions<true>>,
): WindowSize<number>;

export function useWindowSize(
  options: Partial<UseWindowSizeOptions<boolean>> = {},
): WindowSize | WindowSize<number> {
  let { initializeWithValue = true } = options;
  if (IS_SERVER) {
    initializeWithValue = false;
  }

  const [windowSize, setWindowSize] = useState<WindowSize>(() => {
    if (initializeWithValue) {
      return {
        width: window.innerWidth,
        height: window.innerHeight,
      };
    }
    return {
      width: undefined,
      height: undefined,
    };
  });

  const debouncedSetWindowSize = useDebounceCallback(
    setWindowSize,
    options?.debounceDelay,
  );

  function handleSize() {
    const setSize =
      options?.debounceDelay ? debouncedSetWindowSize : setWindowSize;

    setSize({
      width: window.innerWidth,
      height: window.innerHeight,
    });
  }

  useEventListener("resize", handleSize);

  useIsomorphicLayoutEffect(() => {
    handleSize();
  }, []);

  return windowSize;
}
