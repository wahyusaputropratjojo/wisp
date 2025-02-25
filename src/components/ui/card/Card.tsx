import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type CardProps = ComponentProps<"div">;

function Card({ className, ref, ...props }: CardProps) {
  return <div ref={ref} className={cn("grid gap-2", className)} {...props} />;
}

Card.displayName = "Card";

export { Card, type CardProps };
