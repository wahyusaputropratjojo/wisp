import { Fragment, useEffect } from "react";

import { Sun, MoonStar } from "lucide-react";

import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@components/ui/dropdown-menu";

import { useDarkMode } from "@hooks/useDarkMode";

function Navbar() {
  const { isDarkMode, enable, disable } = useDarkMode({
    defaultValue: true,
  });

  useEffect(() => {
    if (isDarkMode) {
      document.querySelector("html")?.classList.add("dark");
    } else {
      document.querySelector("html")?.classList.remove("dark");
    }
  }, [isDarkMode]);

  return (
    <Fragment>
      <header className="flex h-16 items-center justify-between bg-primary-300 px-4 lg:px-6 dark:bg-dark-700">
        <p className="text-xl font-black text-neutral-50 dark:text-neutral-50">
          WISP
        </p>
        <nav></nav>
        <DropdownMenu>
          <DropdownMenuTrigger>
            {isDarkMode ?
              <MoonStar className="size-6 text-neutral-50 dark:text-neutral-50" />
            : <Sun className="size-6 text-neutral-50 dark:text-neutral-50" />}
          </DropdownMenuTrigger>
          <DropdownMenuContent sideOffset={32} align={"end"}>
            <DropdownMenuItem
              className="gap-3"
              onSelect={(event) => {
                event.preventDefault();
                enable();
              }}
            >
              <MoonStar className="size-4 text-neutral-900 md:size-5 dark:text-neutral-50" />
              <span className="text-sm text-neutral-900 md:text-base dark:text-neutral-50">
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
              <Sun className="size-4 text-neutral-900 md:size-5 dark:text-neutral-50" />
              <span className="text-sm text-neutral-900 md:text-base dark:text-neutral-50">
                Light
              </span>
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
      </header>
    </Fragment>
  );
}

export { Navbar };
