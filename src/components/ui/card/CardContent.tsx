import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type CardContentProps = ComponentProps<"div">;

function CardContent({ className, ref, ...props }: CardContentProps) {
  return <div ref={ref} className={cn("grid gap-1", className)} {...props} />;
}

CardContent.displayName = "CardContent";

export { CardContent };
