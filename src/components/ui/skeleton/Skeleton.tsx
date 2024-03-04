import { cn } from "@libraries/utilities/cn";

function Skeleton({
  className,
  ...props
}: React.HTMLAttributes<HTMLDivElement>) {
  return (
    <div
      className={cn("animate-pulse rounded-md bg-base-200", className)}
      {...props}
    />
  );
}

export { Skeleton };
