import { type ComponentProps } from "react";

import { Avatar as AvatarPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type AvatarFallbackProps = ComponentProps<typeof AvatarPrimitive.Fallback>;

function AvatarFallback({ className, ref, ...props }: AvatarFallbackProps) {
  return (
    <AvatarPrimitive.Fallback
      ref={ref}
      className={cn(
        "flex size-full items-center justify-center rounded-lg bg-neutral-500",
        className,
      )}
      {...props}
    />
  );
}

AvatarFallback.displayName = AvatarPrimitive.Fallback.displayName;

export { AvatarFallback, type AvatarFallbackProps };
