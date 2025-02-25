import { type ComponentProps } from "react";

import * as DropdownMenuPrimitive from "@radix-ui/react-dropdown-menu";

import { cn } from "@libraries/utilities";

type DropdownMenuSeparatorProps = ComponentProps<
  typeof DropdownMenuPrimitive.Separator
>;

function DropdownMenuSeparator({
  className,
  ref,
  ...props
}: DropdownMenuSeparatorProps) {
  return (
    <DropdownMenuPrimitive.Separator
      ref={ref}
      className={cn("-mx-1 my-1 h-px bg-neutral-700", className)}
      {...props}
    />
  );
}

DropdownMenuSeparator.displayName = DropdownMenuPrimitive.Separator.displayName;

export { DropdownMenuSeparator, type DropdownMenuSeparatorProps };
