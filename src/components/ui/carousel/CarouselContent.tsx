import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

import { useCarousel } from "./useCarousel";

type CarouselContentProps = ComponentProps<"div">;

function CarouselContent({ className, ref, ...props }: CarouselContentProps) {
  const { carouselRef, orientation } = useCarousel();

  return (
    <div ref={carouselRef} className="overflow-hidden">
      <div
        ref={ref}
        className={cn(
          "flex flex-auto",
          orientation === "horizontal" ? "-ml-6" : "-mt-6 flex-col",
          className,
        )}
        {...props}
      />
    </div>
  );
}

CarouselContent.displayName = "CarouselContent";

export { CarouselContent, type CarouselContentProps };
