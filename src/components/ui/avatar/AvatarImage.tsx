import { type ComponentProps } from "react";

import * as AvatarPrimitive from "@radix-ui/react-avatar";

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
