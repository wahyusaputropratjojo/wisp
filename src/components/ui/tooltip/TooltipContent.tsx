import { type ComponentProps } from "react";

import { Tooltip as TooltipPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type TooltipContentProps = ComponentProps<typeof TooltipPrimitive.Content>;

function TooltipContent({
  className,
  sideOffset = 4,
  ref,
  ...props
}: TooltipContentProps) {
  return (
    <TooltipPrimitive.Content
      ref={ref}
      sideOffset={sideOffset}
      className={cn(
        "bg-popover text-popover-foreground animate-in fade-in-0 zoom-in-95 data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=closed]:zoom-out-95 data-[side=bottom]:slide-in-from-top-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 z-50 origin-[--radix-tooltip-content-transform-origin] overflow-hidden rounded-md border px-3 py-1.5 text-sm shadow-md",
        className,
      )}
      {...props}
    />
  );
}
TooltipContent.displayName = TooltipPrimitive.Content.displayName;

export { type TooltipContentProps, TooltipContent };
