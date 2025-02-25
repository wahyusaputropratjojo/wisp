import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type SkeletonProps = ComponentProps<"div">;

function Skeleton({ className, ...props }: SkeletonProps) {
  return (
    <div className={cn("animate-pulse bg-neutral-200", className)} {...props} />
  );
}

export { Skeleton, type SkeletonProps };
