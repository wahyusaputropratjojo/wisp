import { useCallback, useEffect, useState, useRef } from "react";

import { EmblaCarouselType } from "embla-carousel";
import useEmblaCarousel from "embla-carousel-react";
import { ChevronUp, ChevronDown } from "lucide-react";
import { PlayCircle } from "lucide-react";
import ReactPlayer from "react-player/youtube";

import { useWindowSize } from "@hooks/useWindowSize";

import { cn } from "@libraries/utilities/cn";

function MediaCarousel() {
  const { width } = useWindowSize();
  const [selectedIndex, setSelectedIndex] = useState(0);

  const [isHovered, setIsHovered] = useState(false);
  const hoverRef = useRef<HTMLDivElement | null>(null);

  const [carouselRef, carouselAPI] = useEmblaCarousel({
    watchDrag: false,
  });

  const [carouselThumbnailRef, carouselThumbnailAPI] = useEmblaCarousel({
    watchDrag: true,
    axis: "x",
    breakpoints: {
      "(min-width: 768px)": {
        axis: "y",
      },
    },
  });

  const onThumbnailPreviousButtonClick = useCallback(() => {
    if (!carouselThumbnailAPI) return;
    carouselThumbnailAPI.scrollPrev();
  }, [carouselThumbnailAPI]);

  const onThumbnailNextButtonClick = useCallback(() => {
    if (!carouselThumbnailAPI) return;
    carouselThumbnailAPI.scrollNext();
  }, [carouselThumbnailAPI]);

  const onThumbnailClick = useCallback(
    (index: number, jump: boolean) => {
      if (!carouselAPI || !carouselThumbnailAPI) return;
      carouselAPI.scrollTo(index, jump);
    },
    [carouselAPI, carouselThumbnailAPI],
  );

  const onSelect = useCallback(
    (carouselAPI: EmblaCarouselType) => {
      if (!carouselAPI || !carouselThumbnailAPI) return;

      setSelectedIndex(carouselAPI.selectedScrollSnap());
      carouselThumbnailAPI.scrollTo(carouselAPI.selectedScrollSnap());
    },
    [carouselThumbnailAPI, setSelectedIndex],
  );

  useEffect(() => {
    if (!carouselAPI) return;

    onSelect(carouselAPI);
    carouselAPI.on("reInit", onSelect);
    carouselAPI.on("select", onSelect);
  }, [carouselAPI, onSelect]);

  useEffect(() => {
    const handleMouseEnter = () => {
      setIsHovered(true);
    };

    const handleMouseLeave = () => {
      setIsHovered(false);
    };

    const node = hoverRef.current;
    if (node) {
      node.addEventListener("mouseenter", handleMouseEnter);
      node.addEventListener("mouseleave", handleMouseLeave);

      return () => {
        node.removeEventListener("mouseenter", handleMouseEnter);
        node.removeEventListener("mouseleave", handleMouseLeave);
      };
    }
  }, []);

  return (
    <section className="grid grid-flow-row gap-4 md:grid-flow-col md:grid-cols-12">
      <div ref={carouselRef} className="overflow-hidden md:col-span-9">
        <div className="grid auto-cols-[100%] grid-flow-col">
          {Array.from({ length: 4 }).map((_, index) => (
            <div
              key={index}
              className="min-h-96 overflow-hidden rounded-xl md:aspect-video md:size-full"
            >
              <ReactPlayer
                width="100%"
                height="100%"
                url="https://www.youtube.com/embed/Ye3st9z6jQY?rel=0"
                controls={true}
              />
            </div>
          ))}
          {/* <iframe
            allowFullScreen
            src="https://www.youtube.com/embed/Ye3st9z6jQY?rel=0&enablejsapi=1"
            loading="lazy"
            className="aspect-video min-w-full rounded-xl"
          />
          <iframe
            allowFullScreen
            src="https://www.youtube.com/embed/kmy8I6xvFIU?rel=0"
            loading="lazy"
            className="aspect-video min-w-full rounded-xl"
          />
          <iframe
            allowFullScreen
            src="https://www.youtube.com/embed/GQaceGrFIok?rel=0"
            loading="lazy"
            className="aspect-video min-w-full rounded-xl"
          />
          <iframe
            allowFullScreen
            src="https://www.youtube.com/embed/-llaUBqovHw?rel=0"
            loading="lazy"
            className="aspect-video min-w-full rounded-xl"
          /> */}
        </div>
      </div>
      <div
        ref={hoverRef}
        className="relative grid items-center justify-items-center gap-4 md:col-span-3 md:grid-cols-1 md:grid-rows-1"
      >
        {width >= 768 ?
          <button
            onClick={() => onThumbnailPreviousButtonClick()}
            className={cn(
              "absolute top-0 z-10 flex min-h-10 w-full cursor-pointer items-center justify-center bg-gradient-to-b from-base-50 from-5% opacity-0 transition-all",
              isHovered && "opacity-100",
            )}
          >
            <ChevronUp className="shrink-0 grow-0" />
          </button>
        : null}
        <div ref={carouselThumbnailRef} className="h-full overflow-hidden">
          <div className="grid max-h-96 cursor-pointer auto-cols-[40%] grid-flow-col gap-4 md:auto-cols-auto md:grid-flow-row">
            {Array.from({ length: 4 }).map((_, index) => (
              <div
                key={index}
                onClick={() => onThumbnailClick(index, true)}
                className="relative aspect-video rounded-lg"
              >
                <img
                  src="https://i.ytimg.com/vi/Ye3st9z6jQY/maxresdefault.jpg"
                  alt=""
                  className={cn(
                    "aspect-video w-full rounded-md opacity-20",
                    index === selectedIndex && "opacity-100",
                  )}
                />
                <PlayCircle
                  className={cn(
                    "absolute bottom-1/2 right-1/2 size-6 translate-x-1/2 translate-y-1/2 text-base-900 opacity-20 sm:size-8 xl:size-10",
                    index === selectedIndex && "opacity-100",
                  )}
                />
              </div>
            ))}
          </div>
        </div>
        {width >= 768 ?
          <button
            onClick={() => onThumbnailNextButtonClick()}
            className={cn(
              "absolute bottom-0 z-10 flex min-h-10 w-full cursor-pointer items-center justify-center bg-gradient-to-t from-base-50 from-5% opacity-0 transition-all",
              isHovered && "opacity-100",
            )}
          >
            <ChevronDown className="shrink-0 grow-0" />
          </button>
        : null}
      </div>
    </section>
  );
}

export { MediaCarousel };
