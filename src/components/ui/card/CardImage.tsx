import { Image, ImageProps } from "@components/ui/image";

import { cn } from "@libraries/utilities";

type CardImageProps = ImageProps & {
  aspectRatio?:
    | "square"
    | "classic"
    | "wide"
    | "standard"
    | "medium"
    | "panoramic"
    | "anamorphic";
  orientation?: "horizontal" | "vertical";
};

function CardImage({
  className,
  ref,
  aspectRatio,
  orientation = "horizontal",
  ...props
}: CardImageProps) {
  return (
    <Image
      ref={ref}
      className={cn(
        aspectRatio === "square" && `aspect-square`,
        aspectRatio === "classic" &&
          orientation === "horizontal" &&
          `aspect-classic-horizontal`,
        aspectRatio === "classic" &&
          orientation === "vertical" &&
          `aspect-classic-vertical`,
        aspectRatio === "wide" &&
          orientation === "horizontal" &&
          `aspect-wide-horizontal`,
        aspectRatio === "wide" &&
          orientation === "vertical" &&
          `aspect-wide-vertical`,
        aspectRatio === "standard" &&
          orientation === "horizontal" &&
          `aspect-standard-horizontal`,
        aspectRatio === "standard" &&
          orientation === "vertical" &&
          `aspect-standard-vertical`,
        aspectRatio === "medium" &&
          orientation === "horizontal" &&
          `aspect-medium-horizontal`,
        aspectRatio === "medium" &&
          orientation === "vertical" &&
          `aspect-medium-vertical`,
        aspectRatio === "panoramic" &&
          orientation === "horizontal" &&
          `aspect-panoramic-horizontal`,
        aspectRatio === "panoramic" &&
          orientation === "vertical" &&
          `aspect-panoramic-vertical`,
        aspectRatio === "anamorphic" &&
          orientation === "horizontal" &&
          `aspect-anamorphic-horizontal`,
        aspectRatio === "anamorphic" &&
          orientation === "vertical" &&
          `aspect-anamorphic-vertical`,
        className,
      )}
      {...props}
    />
  );
}

CardImage.displayName = "CardImage";

export { CardImage, type CardImageProps };
