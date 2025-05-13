import { type ComponentProps } from "react";

import { CheckIcon } from "lucide-react";
import { DropdownMenu as DropdownMenuPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DropdownMenuCheckboxItemProps = ComponentProps<
  typeof DropdownMenuPrimitive.CheckboxItem
>;

function DropdownMenuCheckboxItem({
  className,
  children,
  checked,
  ref,
  ...props
}: DropdownMenuCheckboxItemProps) {
  return (
    <DropdownMenuPrimitive.CheckboxItem
      ref={ref}
      className={cn(
        "relative flex cursor-default items-center rounded-xs py-1.5 pr-2 pl-8 text-sm outline-hidden transition-colors select-none focus:bg-neutral-800 focus:text-neutral-100 data-disabled:pointer-events-none data-disabled:opacity-50",
        className,
      )}
      checked={checked}
      {...props}
    >
      <span className="absolute left-2 flex size-3.5 items-center justify-center">
        <DropdownMenuPrimitive.ItemIndicator>
          <CheckIcon className="size-4 text-neutral-100" />
        </DropdownMenuPrimitive.ItemIndicator>
      </span>
      {children}
    </DropdownMenuPrimitive.CheckboxItem>
  );
}

DropdownMenuCheckboxItem.displayName =
  DropdownMenuPrimitive.CheckboxItem.displayName;

export { DropdownMenuCheckboxItem, type DropdownMenuCheckboxItemProps };
