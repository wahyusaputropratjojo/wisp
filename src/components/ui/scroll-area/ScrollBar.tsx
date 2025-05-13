import { ComponentProps } from "react";

import { ScrollArea as ScrollAreaPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type ScrollBarProps = ComponentProps<
  typeof ScrollAreaPrimitive.ScrollAreaScrollbar
>;

function ScrollBar({
  className,
  orientation = "vertical",
  ref,
  ...props
}: ScrollBarProps) {
  return (
    <ScrollAreaPrimitive.ScrollAreaScrollbar
      ref={ref}
      orientation={orientation}
      className={cn(
        "flex touch-none transition-colors select-none",
        orientation === "vertical" &&
          "h-full w-2.5 border-l border-l-transparent p-[1px]",
        orientation === "horizontal" &&
          "h-2.5 flex-col border-t border-t-transparent p-[1px]",
        className,
      )}
      {...props}
    >
      <ScrollAreaPrimitive.ScrollAreaThumb className="bg-border relative flex-1 rounded-full" />
    </ScrollAreaPrimitive.ScrollAreaScrollbar>
  );
}
ScrollBar.displayName = ScrollAreaPrimitive.ScrollAreaScrollbar.displayName;

export { type ScrollBarProps, ScrollBar };
