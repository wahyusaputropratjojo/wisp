import { type ComponentProps } from "react";

import { DropdownMenu as DropdownMenuPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DropdownMenuItemProps = ComponentProps<
  typeof DropdownMenuPrimitive.Item
> & {
  inset?: boolean;
};

function DropdownMenuItem({
  className,
  inset,
  ref,
  ...props
}: DropdownMenuItemProps) {
  return (
    <DropdownMenuPrimitive.Item
      ref={ref}
      className={cn(
        "relative flex cursor-default items-center gap-2 rounded-xs px-2 py-1.5 text-sm outline-hidden transition-colors select-none focus:bg-neutral-700 focus:text-neutral-100 data-disabled:pointer-events-none data-disabled:opacity-50 [&>svg]:size-4 [&>svg]:shrink-0",
        inset && "pl-8",
        className,
      )}
      {...props}
    />
  );
}

DropdownMenuItem.displayName = DropdownMenuPrimitive.Item.displayName;

export { DropdownMenuItem, type DropdownMenuItemProps };
