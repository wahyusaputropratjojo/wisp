import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type DropdownMenuShortcutProps = ComponentProps<"span">;

function DropdownMenuShortcut({
  className,
  ...props
}: DropdownMenuShortcutProps) {
  return (
    <span
      className={cn("ml-auto text-xs tracking-widest opacity-80", className)}
      {...props}
    />
  );
}

DropdownMenuShortcut.displayName = "DropdownMenuShortcut";

export { DropdownMenuShortcut, type DropdownMenuShortcutProps };
