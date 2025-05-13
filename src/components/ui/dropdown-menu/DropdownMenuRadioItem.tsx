import { type ComponentProps } from "react";

import { CircleIcon } from "lucide-react";
import { DropdownMenu as DropdownMenuPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DropdownMenuRadioItemProps = ComponentProps<
  typeof DropdownMenuPrimitive.RadioItem
>;

function DropdownMenuRadioItem({
  className,
  children,
  ref,
  ...props
}: DropdownMenuRadioItemProps) {
  return (
    <DropdownMenuPrimitive.RadioItem
      ref={ref}
      className={cn(
        "relative flex cursor-default items-center rounded-xs py-1.5 pr-2 pl-8 text-sm outline-hidden transition-colors select-none focus:bg-neutral-800 focus:text-neutral-100 data-disabled:pointer-events-none data-disabled:opacity-50",
        className,
      )}
      {...props}
    >
      <span className="absolute left-2 flex size-3.5 items-center justify-center">
        <DropdownMenuPrimitive.ItemIndicator>
          <CircleIcon className="size-2 fill-neutral-100" />
        </DropdownMenuPrimitive.ItemIndicator>
      </span>
      {children}
    </DropdownMenuPrimitive.RadioItem>
  );
}

DropdownMenuRadioItem.displayName = DropdownMenuPrimitive.RadioItem.displayName;

export { DropdownMenuRadioItem, type DropdownMenuRadioItemProps };
