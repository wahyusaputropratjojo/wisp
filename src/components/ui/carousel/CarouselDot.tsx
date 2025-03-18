import { type ComponentProps, useCallback, useEffect, useState } from "react";

import { EmblaCarouselType } from "embla-carousel";

import { cn } from "@libraries/utilities";

import { useCarousel } from "./useCarousel";

type CarouselDotProps = ComponentProps<"div">;

function CarouselDot({ className, ref }: CarouselDotProps) {
  const { api } = useCarousel();

  const [selectedIndex, setSelectedIndex] = useState<number>(0);
  const [scrollSnaps, setScrollSnaps] = useState<number[]>([]);

  const onInit = useCallback((api: EmblaCarouselType) => {
    setScrollSnaps(api.scrollSnapList());
  }, []);

  const onSelect = useCallback((api: EmblaCarouselType) => {
    setSelectedIndex(api.selectedScrollSnap());
  }, []);

  useEffect(() => {
    if (!api) return;

    onInit(api);
    onSelect(api);

    api.on("reInit", onInit).on("reInit", onSelect).on("select", onSelect);
  }, [api, onInit, onSelect]);

  const onDotButtonClick = useCallback(
    (index: number) => {
      if (!api) return;
      api.scrollTo(index);
    },
    [api],
  );

  return (
    <div
      ref={ref}
      className={cn("flex items-center justify-center gap-2", className)}
    >
      {scrollSnaps.map((_, index) => (
        <button
          key={index}
          onClick={() => onDotButtonClick(index)}
          className={cn(
            "size-1.5 rounded-full bg-neutral-700 transition-all",
            selectedIndex === index && "bg-neutral-100",
          )}
        />
      ))}
    </div>
  );
}

export { CarouselDot, type CarouselDotProps };
