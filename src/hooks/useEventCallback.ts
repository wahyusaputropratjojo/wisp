import { useCallback, useRef } from "react";

import { useIsomorphicLayoutEffect } from "@hooks/useIsomorphicLayoutEffect";

export function useEventCallback<Args extends unknown[], R>(
  callback: (...args: Args) => R,
): (...args: Args) => R {
  const ref = useRef<typeof callback>(() => {
    throw new Error("Cannot call an event handler while rendering.");
  });

  useIsomorphicLayoutEffect(() => {
    ref.current = callback;
  }, [callback]);

  return useCallback((...args: Args) => ref.current(...args), [ref]);
}
