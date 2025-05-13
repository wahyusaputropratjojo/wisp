import { type ComponentProps } from "react";

import { DropdownMenu as DropdownMenuPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DropdownMenuLabelProps = ComponentProps<
  typeof DropdownMenuPrimitive.Label
> & {
  inset?: boolean;
};

function DropdownMenuLabel({
  className,
  inset,
  ref,
  ...props
}: DropdownMenuLabelProps) {
  return (
    <DropdownMenuPrimitive.Label
      ref={ref}
      className={cn(
        "px-2 py-1.5 text-sm font-semibold",
        inset && "pl-8",
        className,
      )}
      {...props}
    />
  );
}

DropdownMenuLabel.displayName = DropdownMenuPrimitive.Label.displayName;

export { DropdownMenuLabel, type DropdownMenuLabelProps };
