import { type ComponentProps } from "react";

import * as ScrollAreaPrimitive from "@radix-ui/react-scroll-area";

import { cn } from "@libraries/utilities";

import { ScrollBar } from "./ScrollBar";

type ScrollAreaProps = ComponentProps<typeof ScrollAreaPrimitive.Root>;

function ScrollArea({ className, children, ref, ...props }: ScrollAreaProps) {
  return (
    <ScrollAreaPrimitive.Root
      ref={ref}
      className={cn("relative overflow-hidden", className)}
      {...props}
    >
      <ScrollAreaPrimitive.Viewport className="h-full w-full rounded-[inherit]">
        {children}
      </ScrollAreaPrimitive.Viewport>
      <ScrollBar />
      <ScrollAreaPrimitive.Corner />
    </ScrollAreaPrimitive.Root>
  );
}
ScrollArea.displayName = ScrollAreaPrimitive.Root.displayName;

export { type ScrollAreaProps, ScrollArea };
