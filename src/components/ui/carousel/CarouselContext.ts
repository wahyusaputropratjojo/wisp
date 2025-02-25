import { createContext } from "react";

import {
  type EmblaCarouselType,
  type EmblaOptionsType,
  type EmblaPluginType,
} from "embla-carousel";
import { type EmblaViewportRefType } from "embla-carousel-react";

type CarouselContextProps = {
  carouselRef: EmblaViewportRefType;
  api: EmblaCarouselType | undefined;
  scrollPrev: () => void;
  scrollNext: () => void;
  canScrollPrev: boolean;
  canScrollNext: boolean;
  options?: EmblaOptionsType;
  plugins?: EmblaPluginType[];
  orientation?: "horizontal" | "vertical";
  setApi?: (api: EmblaCarouselType) => void;
};

const CarouselContext = createContext<CarouselContextProps | null>(null);

export { CarouselContext };
