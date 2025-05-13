import { type ComponentProps } from "react";

import { Separator as SeparatorPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type SeparatorProps = ComponentProps<typeof SeparatorPrimitive.Root>;

function Separator({
  className,
  orientation = "horizontal",
  decorative = true,
  ref,
  ...props
}: SeparatorProps) {
  return (
    <SeparatorPrimitive.Root
      ref={ref}
      decorative={decorative}
      orientation={orientation}
      className={cn(
        "shrink-0 bg-neutral-500",
        orientation === "horizontal" ? "h-px w-full" : "h-full w-px",
        className,
      )}
      {...props}
    />
  );
}

Separator.displayName = SeparatorPrimitive.Root.displayName;

export { Separator, type SeparatorProps };
