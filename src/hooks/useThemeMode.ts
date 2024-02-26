import { useEffect, useRef, useState } from "react";

import { useLocalStorage } from "@hooks/useLocalStorage";
import { useMediaQuery } from "@hooks/useMediaQuery";

type ThemeModeVariant = "dark" | "light";

type ThemeModeOptions = {
  defaultValue?: ThemeModeVariant | false;
  localStorageKey?: string;
  initializeWithValue?: boolean;
};

type ThemeModeOutput = {
  isDarkMode: boolean;
  isLightMode: boolean;
  isDarkModeOS: boolean;
  isLightModeOS: boolean;
  toggle: () => void;
  enable: () => void;
  disable: () => void;
  remove: () => void;
  set: (value: ThemeModeVariant) => void;
};

export function useThemeMode(options?: ThemeModeOptions): ThemeModeOutput {
  const defaultValue = options?.defaultValue;
  const themeKey = options?.localStorageKey || "themeMode";
  const initializeWithValue = options?.initializeWithValue;

  const themeOSModeRef = useRef<ThemeModeVariant | null>(null);
  const [themeOSMode, setThemeOSMode] = useState<ThemeModeVariant | undefined>(
    undefined,
  );

  const isPreferColorSchemeDark = useMediaQuery("(prefers-color-scheme: dark)");

  const [themeMode, setThemeMode, removeThemeMode] = useLocalStorage<
    ThemeModeVariant | false
  >(themeKey, defaultValue ?? false, {
    initializeWithValue,
  });

  useEffect(() => {
    themeOSModeRef.current = isPreferColorSchemeDark ? "dark" : "light";
    setThemeOSMode(themeOSModeRef.current);
  }, [isPreferColorSchemeDark, setThemeOSMode, themeOSModeRef]);

  useEffect(() => {
    const newThemeMode = themeMode || themeOSMode || "light";
    document.documentElement.setAttribute("data-theme-mode", newThemeMode);
  }, [themeMode, themeOSMode]);

  return {
    isDarkMode: themeMode === "dark",
    isLightMode: themeMode === "light",
    isDarkModeOS: themeOSMode === "dark" || isPreferColorSchemeDark,
    isLightModeOS: themeOSMode === "light" || !isPreferColorSchemeDark,
    toggle: () =>
      setThemeMode((currentMode) => (currentMode === "dark" ? "light" : "dark")),
    enable: () => setThemeMode("dark"),
    disable: () => setThemeMode("light"),
    remove: () => removeThemeMode(),
    set: (value: ThemeModeVariant) => setThemeMode(value),
  };
}
