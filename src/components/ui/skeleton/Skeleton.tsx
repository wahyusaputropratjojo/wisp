import * as React from "react";

import { cn } from "@libraries/utilities";

function Skeleton({
  className,
  ...props
}: React.HTMLAttributes<HTMLDivElement>) {
  return (
    <div className={cn("animate-pulse bg-neutral-200", className)} {...props} />
  );
}

export { Skeleton };
