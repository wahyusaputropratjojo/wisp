import { type ComponentProps } from "react";

import * as AvatarPrimitive from "@radix-ui/react-avatar";

import { cn } from "@libraries/utilities";

type AvatarProps = ComponentProps<typeof AvatarPrimitive.Root>;

function Avatar({ className, ref, ...props }: AvatarProps) {
  return (
    <AvatarPrimitive.Root
      ref={ref}
      className={cn(
        "relative flex size-10 shrink-0 overflow-hidden rounded-lg",
        className,
      )}
      {...props}
    />
  );
}

Avatar.displayName = AvatarPrimitive.Root.displayName;

export { Avatar, type AvatarProps };
