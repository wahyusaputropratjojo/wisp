import { type ComponentProps } from "react";

import * as PopoverPrimitive from "@radix-ui/react-popover";

import { cn } from "@libraries/utilities";

type PopoverContentProps = ComponentProps<typeof PopoverPrimitive.Content>;

function PopoverContent({
  className,
  align = "center",
  sideOffset = 8,
  ref,
  ...props
}: PopoverContentProps) {
  return (
    <PopoverPrimitive.Portal>
      <PopoverPrimitive.Content
        ref={ref}
        align={align}
        sideOffset={sideOffset}
        className={cn(
          "z-50 rounded-sm border border-neutral-500 bg-neutral-900 text-neutral-100 shadow-md outline-hidden",
          className,
        )}
        {...props}
      />
    </PopoverPrimitive.Portal>
  );
}

PopoverContent.displayName = PopoverPrimitive.Content.displayName;

export { PopoverContent, type PopoverContentProps };
