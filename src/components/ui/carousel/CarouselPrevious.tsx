import { ChevronLeftIcon } from "lucide-react";

import { cn } from "@libraries/utilities";

import { Button, type ButtonProps } from "../button";
import { useCarousel } from "./useCarousel";

type CarouselPreviousProps = ButtonProps;

function CarouselPrevious({
  className,
  intent = "secondary",
  modifier = "plain",
  ref,
  ...props
}: CarouselPreviousProps) {
  const { scrollPrev, canScrollPrev } = useCarousel();

  return (
    <Button
      ref={ref}
      intent={intent}
      modifier={modifier}
      className={cn("size-6", className)}
      disabled={!canScrollPrev}
      onClick={scrollPrev}
      {...props}
    >
      <ChevronLeftIcon className="size-4" />
      <span className="sr-only">Previous slide</span>
    </Button>
  );
}

CarouselPrevious.displayName = "CarouselPrevious";

export { CarouselPrevious, type CarouselPreviousProps };
