import { useState } from "react";

import { useIsomorphicLayoutEffect } from "@hooks/useIsomorphicLayoutEffect";

type UseMediaQueryOptions = {
  defaultValue?: boolean;
  initializeWithValue?: boolean;
};

const IS_SERVER = typeof window === "undefined";

export function useMediaQuery(
  query: string,
  options?: UseMediaQueryOptions,
): boolean;

export function useMediaQuery(query: string, defaultValue: boolean): boolean;

export function useMediaQuery(
  query: string,
  options?: boolean | UseMediaQueryOptions,
): boolean {
  const defaultValue =
    typeof options === "boolean" ? options : options?.defaultValue ?? false;

  const initializeWithValue =
    typeof options === "boolean" ? undefined : (
      options?.initializeWithValue ?? undefined
    );

  const getMatches = (query: string): boolean => {
    if (IS_SERVER) {
      return defaultValue;
    }
    return window.matchMedia(query).matches;
  };

  const [matches, setMatches] = useState<boolean>(() => {
    if (initializeWithValue) {
      return getMatches(query);
    }
    return defaultValue;
  });

  function handleChange() {
    setMatches(getMatches(query));
  }

  useIsomorphicLayoutEffect(() => {
    const matchMedia = window.matchMedia(query);

    handleChange();

    if (matchMedia.addListener) {
      matchMedia.addListener(handleChange);
    } else {
      matchMedia.addEventListener("change", handleChange);
    }

    return () => {
      if (matchMedia.removeListener) {
        matchMedia.removeListener(handleChange);
      } else {
        matchMedia.removeEventListener("change", handleChange);
      }
    };
  }, [query]);

  return matches;
}
