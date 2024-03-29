import { Sun, MoonStar, MonitorSmartphone } from "lucide-react";

import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@components/ui/dropdown-menu";

import { useThemeMode } from "@hooks/useThemeMode";

import { cn } from "@libraries/utilities/cn";

function ThemeMode() {
  const {
    isDarkMode,
    isDarkModeOS,
    isLightMode,
    isLightModeOS,
    enable,
    disable,
    remove,
  } = useThemeMode();

  return (
    <DropdownMenu>
      <DropdownMenuTrigger>
        {isLightMode && <Sun className="size-6 text-primary-700" />}
        {isDarkMode && <MoonStar className="size-6 text-primary-700" />}
        {(isLightModeOS || isDarkModeOS) && !isLightMode && !isDarkMode && (
          <MonitorSmartphone className="size-6 text-primary-700" />
        )}
      </DropdownMenuTrigger>
      <DropdownMenuContent sideOffset={32} align={"end"}>
        <DropdownMenuItem
          className="gap-3"
          onSelect={(event) => {
            event.preventDefault();
            enable();
          }}
        >
          <MoonStar
            className={cn(
              "size-4 text-base-800 md:size-5",
              isDarkMode && "text-primary-500",
            )}
          />
          <span
            className={cn(
              "text-sm font-medium text-base-800 md:text-base",
              isDarkMode && "text-primary-500",
            )}
          >
            Dark
          </span>
        </DropdownMenuItem>
        <DropdownMenuItem
          className="gap-3"
          onSelect={(event) => {
            event.preventDefault();
            disable();
          }}
        >
          <Sun
            className={cn(
              "size-4 text-base-800 md:size-5 dark:text-neutral-50",
              isLightMode && "text-primary-500",
            )}
          />
          <span
            className={cn(
              "text-sm font-medium text-base-800 md:text-base dark:text-neutral-50",
              isLightMode && "text-primary-500",
            )}
          >
            Light
          </span>
        </DropdownMenuItem>
        <DropdownMenuItem
          className="gap-3"
          onSelect={(event) => {
            event.preventDefault();
            remove();
          }}
        >
          <MonitorSmartphone
            className={cn(
              "size-4 text-base-800 md:size-5 dark:text-neutral-50",
              (isDarkModeOS || isLightModeOS) &&
                !isDarkMode &&
                !isLightMode &&
                "text-primary-500",
            )}
          />
          <span
            className={cn(
              "text-sm font-medium text-base-800 md:text-base dark:text-neutral-50",
              (isDarkModeOS || isLightModeOS) &&
                !isDarkMode &&
                !isLightMode &&
                "text-primary-500",
            )}
          >
            System
          </span>
        </DropdownMenuItem>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}

export { ThemeMode };
