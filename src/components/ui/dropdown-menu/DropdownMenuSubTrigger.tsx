import { type ComponentProps } from "react";

import { ChevronRightIcon } from "lucide-react";
import { DropdownMenu as DropdownMenuPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DropdownMenuSubTriggerProps = ComponentProps<
  typeof DropdownMenuPrimitive.SubTrigger
> & {
  inset?: boolean;
};

function DropdownMenuSubTrigger({
  className,
  inset,
  children,
  ref,
  ...props
}: DropdownMenuSubTriggerProps) {
  return (
    <DropdownMenuPrimitive.SubTrigger
      ref={ref}
      className={cn(
        "flex cursor-default items-center gap-2 rounded-xs px-2 py-1.5 text-sm outline-hidden select-none focus:bg-neutral-500 data-[state=open]:bg-neutral-700 [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0",
        inset && "pl-8",
        className,
      )}
      {...props}
    >
      {children}
      <ChevronRightIcon className="ml-auto" />
    </DropdownMenuPrimitive.SubTrigger>
  );
}

DropdownMenuSubTrigger.displayName =
  DropdownMenuPrimitive.SubTrigger.displayName;

export { DropdownMenuSubTrigger, type DropdownMenuSubTriggerProps };
