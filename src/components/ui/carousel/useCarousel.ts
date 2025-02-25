import { useContext } from "react";

import { CarouselContext } from "./CarouselContext";

function useCarousel() {
  const context = useContext(CarouselContext);

  if (!context) {
    throw new Error("useCarousel must be used within a <Carousel />");
  }

  return context;
}

export { useCarousel };
