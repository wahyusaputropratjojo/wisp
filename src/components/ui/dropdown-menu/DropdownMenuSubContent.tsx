import { type ComponentProps } from "react";

import { DropdownMenu as DropdownMenuPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DropdownMenuSubContentProps = ComponentProps<
  typeof DropdownMenuPrimitive.SubContent
>;

function DropdownMenuSubContent({
  className,
  ref,
  ...props
}: DropdownMenuSubContentProps) {
  return (
    <DropdownMenuPrimitive.SubContent
      ref={ref}
      className={cn(
        "data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[side=bottom]:slide-in-from-top-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 z-50 min-w-32 overflow-hidden rounded-md border border-neutral-700 bg-neutral-900 p-1 text-neutral-100 shadow-lg",
        className,
      )}
      {...props}
    />
  );
}

DropdownMenuSubContent.displayName =
  DropdownMenuPrimitive.SubContent.displayName;

export { DropdownMenuSubContent, type DropdownMenuSubContentProps };
