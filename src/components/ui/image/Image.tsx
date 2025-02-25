import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type ImageProps = ComponentProps<"img"> & {
  fullWidth?: boolean;
};

function Image({ className, ref, fullWidth, ...props }: ImageProps) {
  return (
    <img
      ref={ref}
      className={cn(
        "rounded-lg object-cover",
        fullWidth === true && "w-full",
        className,
      )}
      {...props}
    />
  );
}

Image.displayName = "Image";

export { Image, type ImageProps };
