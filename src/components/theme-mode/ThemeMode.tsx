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
        {isLightMode && <Sun className="size-6 text-neutral-50" />}
        {isDarkMode && <MoonStar className="size-6 text-neutral-50" />}
        {(isLightModeOS || isDarkModeOS) && !isLightMode && !isDarkMode && (
          <MonitorSmartphone className="size-6 text-neutral-50" />
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
              "size-4 text-neutral-500 md:size-5",
              isDarkMode && "text-neutral-50",
            )}
          />
          <span
            className={cn(
              "md:text-neutral text-sm font-medium text-neutral-500",
              isDarkMode && "text-neutral-50",
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
              "size-4 text-neutral-500 md:size-5 dark:text-neutral-50",
              isLightMode && "text-neutral-50",
            )}
          />
          <span
            className={cn(
              "md:text-neutral text-sm font-medium text-neutral-500 dark:text-neutral-50",
              isLightMode && "text-neutral-50",
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
              "size-4 text-neutral-500 md:size-5 dark:text-neutral-50",
              (isDarkModeOS || isLightModeOS) &&
                !isDarkMode &&
                !isLightMode &&
                "text-neutral-50",
            )}
          />
          <span
            className={cn(
              "md:text-neutral text-sm font-medium text-neutral-500 dark:text-neutral-50",
              (isDarkModeOS || isLightModeOS) &&
                !isDarkMode &&
                !isLightMode &&
                "text-neutral-50",
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
