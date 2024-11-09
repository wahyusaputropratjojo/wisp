import { useCallback, useEffect, useState } from "react";

import { Link } from "@tanstack/react-router";
import { EmblaCarouselType } from "embla-carousel";
import useEmblaCarousel from "embla-carousel-react";
import { ChevronLeft, ChevronRight } from "lucide-react";

import { Button } from "@components/ui/button";
import { Skeleton } from "@components/ui/skeleton";

import { useWindowSize } from "@hooks/useWindowSize";

type GroupCarouselProps = {
  data: {
    id: string;
    name: string;
    grid: string;
    slug: string;
  }[];
  title: string;
};

function GroupCarousel({ data, title }: GroupCarouselProps) {
  const [isPreviousDisabled, setIsPreviousDisabled] = useState<boolean>(true);
  const [isNextDisabled, setIsNextDisabled] = useState<boolean>(true);

  const { width } = useWindowSize();

  const [carouselRef, carouselAPI] = useEmblaCarousel({
    dragFree: true,
  });

  const onPreviousButtonClick = useCallback(() => {
    if (!carouselAPI) return;
    carouselAPI.scrollPrev();
  }, [carouselAPI]);

  const onNextButtonClick = useCallback(() => {
    if (!carouselAPI) return;
    carouselAPI.scrollNext();
  }, [carouselAPI]);

  const onSelect = useCallback(
    (carouselAPI: EmblaCarouselType) => {
      setIsPreviousDisabled(!carouselAPI?.canScrollPrev());
      setIsNextDisabled(!carouselAPI?.canScrollNext());
    },
    [setIsPreviousDisabled, setIsNextDisabled],
  );

  useEffect(() => {
    if (!carouselAPI) return;

    onSelect(carouselAPI);
    carouselAPI.on("reInit", onSelect);
    carouselAPI.on("select", onSelect);
  }, [carouselAPI, onSelect]);

  return (
    <section className="space-y-4">
      <div className="flex items-center justify-between">
        <h2 className="text-xl">{title}</h2>
        {width >= 640 && (
          <div className="space-x-3">
            <Button
              size="icon"
              disabled={isPreviousDisabled}
              onClick={onPreviousButtonClick}
              className="rounded-lg bg-base-200 p-1"
            >
              <ChevronLeft size={20} />
            </Button>
            <Button
              size="icon"
              disabled={isNextDisabled}
              onClick={onNextButtonClick}
              className="rounded-lg bg-base-200 p-1"
            >
              <ChevronRight size={20} />
            </Button>
          </div>
        )}
      </div>
      <div ref={carouselRef} className="overflow-hidden">
        <div className="grid auto-cols-[50%] grid-flow-col gap-5 sm:auto-cols-[30%] md:auto-cols-[25%] lg:auto-cols-[20%] xl:auto-cols-[18%]">
          {data.map((game) => (
            <Link
              to="/game/$gameId"
              params={{ gameId: game.slug }}
              key={game.id}
            >
              <div className="cursor-pointer space-y-3">
                <div className="relative">
                  <div className="absolute inset-0 rounded-lg transition-colors hover:bg-base-900/10" />
                  <img
                    src={game.grid}
                    alt={`${game.name} grid image`}
                    className="rounded-lg hover:bg-base-900"
                  />
                </div>
                <p className="line-clamp-2 text-sm font-medium text-base-900 md:text-base">
                  {game.name}
                </p>
              </div>
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
}

function GroupCarouselSkeleton() {
  const { width } = useWindowSize();

  return (
    <section className="space-y-4">
      <div className="flex justify-between">
        <Skeleton className="h-8 w-40 max-w-40 rounded-lg" />
        {width >= 640 && (
          <div className="flex gap-3">
            <Skeleton className="size-8 rounded-lg" />
            <Skeleton className="size-8 rounded-lg" />
          </div>
        )}
      </div>
      <div className="grid auto-cols-[50%] grid-flow-col gap-5 overflow-hidden sm:auto-cols-[30%] md:auto-cols-[25%] lg:auto-cols-[20%] xl:auto-cols-[18%]">
        <div className="space-y-3">
          <Skeleton className="aspect-[2/3] rounded-lg" />
          <Skeleton className="h-8 w-full rounded-lg" />
        </div>
        <div className="space-y-3">
          <Skeleton className="aspect-[2/3] rounded-lg" />
          <Skeleton className="h-8 w-full rounded-lg" />
        </div>
        <div className="space-y-3">
          <Skeleton className="aspect-[2/3] rounded-lg" />
          <Skeleton className="h-8 w-full rounded-lg" />
        </div>
        <div className="space-y-3">
          <Skeleton className="aspect-[2/3] rounded-lg" />
          <Skeleton className="h-8 w-full rounded-lg" />
        </div>
        <div className="space-y-3">
          <Skeleton className="aspect-[2/3] rounded-lg" />
          <Skeleton className="h-8 w-full rounded-lg" />
        </div>
        <div className="space-y-3">
          <Skeleton className="aspect-[2/3] rounded-lg" />
          <Skeleton className="h-8 w-full rounded-lg" />
        </div>
      </div>
    </section>
  );
}

export { GroupCarousel, GroupCarouselSkeleton };
