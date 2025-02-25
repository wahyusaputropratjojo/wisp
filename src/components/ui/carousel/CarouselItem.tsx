import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

import { useCarousel } from "./useCarousel";

type CarouselItemProps = ComponentProps<"div">;

function CarouselItem({ className, ref, ...props }: CarouselItemProps) {
  const { orientation } = useCarousel();

  return (
    <div
      ref={ref}
      role="group"
      aria-roledescription="slide"
      className={cn(
        "min-w-0 shrink-0 grow-0 basis-full",
        orientation === "horizontal" ? "pl-6" : "pt-6",
        className,
      )}
      {...props}
    />
  );
}

CarouselItem.displayName = "CarouselItem";

export { CarouselItem, type CarouselItemProps };
