import { ChevronRightIcon } from "lucide-react";

import { cn } from "@libraries/utilities";

import { Button, type ButtonProps } from "../button";
import { useCarousel } from "./useCarousel";

type CarouselNextProps = ButtonProps;

function CarouselNext({
  className,
  intent = "secondary",
  modifier = "plain",
  ref,
  ...props
}: CarouselNextProps) {
  const { scrollNext, canScrollNext } = useCarousel();

  return (
    <Button
      ref={ref}
      intent={intent}
      modifier={modifier}
      className={cn("size-6", className)}
      disabled={!canScrollNext}
      onClick={scrollNext}
      {...props}
    >
      <ChevronRightIcon className="size-4" />
      <span className="sr-only">Next slide</span>
    </Button>
  );
}

CarouselNext.displayName = "CarouselNext";

export { CarouselNext, type CarouselNextProps };
