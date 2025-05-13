import { type ComponentProps } from "react";

import { Avatar as AvatarPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type AvatarImageProps = ComponentProps<typeof AvatarPrimitive.Image>;

function AvatarImage({ className, ref, ...props }: AvatarImageProps) {
  return (
    <AvatarPrimitive.Image
      ref={ref}
      className={cn("aspect-square size-full", className)}
      {...props}
    />
  );
}

AvatarImage.displayName = AvatarPrimitive.Image.displayName;

export { AvatarImage, type AvatarImageProps };
