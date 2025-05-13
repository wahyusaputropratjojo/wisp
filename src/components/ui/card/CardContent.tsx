import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type CardContentProps = ComponentProps<"div"> & {
  orientation?: "horizontal" | "vertical";
};

function CardContent({
  className,
  orientation = "vertical",
  ref,
  ...props
}: CardContentProps) {
  return (
    <div
      ref={ref}
      className={cn(
        "flex gap-2",
        orientation === "vertical" && "flex-col",
        orientation === "horizontal" && "flex-row",
        className,
      )}
      {...props}
    />
  );
}

CardContent.displayName = "CardContent";

export { CardContent };
