import { useState, useCallback, useEffect } from "react";

import { useGSAP } from "@gsap/react";
import Autoplay, { AutoplayType } from "embla-carousel-autoplay";
import useEmblaCarousel from "embla-carousel-react";
import gsap from "gsap";

import { Skeleton } from "@components/ui/skeleton";

import { useWindowSize } from "@hooks/useWindowSize";

import { cn } from "@libraries/utilities/cn";
import { releaseDateModifier } from "@libraries/utilities/releaseDateModifier";

type Games = {
  id: string;
  name: string;
  description: string;
  releaseDate: string;
  grid: string;
  hero: string;
  logo: string;
};

type HeroCarouselProps = {
  data: Games[]; // Replace 'any' with a more specific type, such as 'unknown'.
};

function HeroCarousel({ data }: HeroCarouselProps) {
  const [selectedIndex, setSelectedIndex] = useState<number>(0);

  const { width } = useWindowSize();

  const [carouselRef, carouselAPI] = useEmblaCarousel(
    {
      breakpoints: {
        "(min-width: 768px)": {
          watchDrag: false,
        },
      },
    },
    [
      Autoplay({
        playOnInit: false,
        stopOnInteraction: false,
        stopOnMouseEnter: false,
        stopOnFocusIn: false,
        jump: true,
        delay: 10000,
      }),
    ],
  );

  const onSelect = useCallback(() => {
    if (!carouselAPI) return;

    setSelectedIndex(carouselAPI.selectedScrollSnap());
  }, [carouselAPI]);

  const scrollTo = useCallback(
    (index: number, jump: boolean) => {
      if (!carouselAPI) return;
      const autoplay: AutoplayType = carouselAPI.plugins().autoplay;
      autoplay.reset();
      carouselAPI.scrollTo(index, jump);
    },
    [carouselAPI],
  );

  useGSAP(
    () => {
      if (width >= 768) {
        gsap.fromTo(
          "#loading",
          { x: "-100%" },
          { x: "0%", duration: 8, delay: 1 },
        );
        gsap.fromTo(
          "#logo",
          { x: "30%" },
          { x: "0%", duration: 0.5, ease: "power2.out" },
        );
      }
    },
    { revertOnUpdate: true, dependencies: [selectedIndex, width] },
  );

  useEffect(() => {
    if (!carouselAPI) return;

    onSelect();
    carouselAPI.on("select", onSelect);
    carouselAPI.on("reInit", onSelect);
  }, [carouselAPI, onSelect]);

  useEffect(() => {
    if (carouselAPI && width >= 768) {
      const autoplay: AutoplayType = carouselAPI.plugins().autoplay;
      autoplay.reset();
      autoplay.play();
    }
  }, [carouselAPI, width]);

  return (
    <section className="grid transform-gpu select-none grid-flow-row grid-rows-1 gap-4 md:grid-flow-col md:grid-cols-10">
      <div
        className={cn(
          "min-h-96 cursor-pointer overflow-hidden md:col-span-7 lg:col-span-8",
        )}
        ref={carouselRef}
      >
        <div className="grid size-full auto-cols-[85%] grid-flow-col gap-4 md:auto-cols-[100%]">
          {data.map((game) => (
            <div key={game.id} className="relative rounded-xl">
              <div className="absolute bottom-0 z-10 space-y-3 p-5 md:p-10 lg:space-y-8 lg:p-16">
                <img
                  id="logo"
                  src={game.logo}
                  alt={`${game.name} logo image`}
                  className="w-40 md:w-56 lg:w-72"
                />
                <div className="space-y-1.5 lg:space-y-3">
                  <p className="text-xs font-bold uppercase lg:text-sm">
                    {releaseDateModifier(game.releaseDate)}
                  </p>
                  <p className="line-clamp-2 max-w-96 text-sm lg:line-clamp-3 lg:text-lg">
                    {game.description}
                  </p>
                </div>
              </div>
              <div className="absolute size-full rounded-xl bg-gradient-to-t from-base-100" />
              <img
                src={game.hero}
                alt={`${game.name} hero image`}
                className="hero size-full rounded-xl object-cover"
              />
            </div>
          ))}
        </div>
      </div>
      <aside className="justify-self-center md:col-span-3 md:justify-self-auto lg:col-span-2">
        {width >= 768 && (
          <ul className="space-y-4 md:block">
            {data.map((game, index) => {
              return (
                <li
                  key={game.id}
                  onClick={() => scrollTo(index, true)}
                  className={cn(
                    "relative flex cursor-pointer items-center gap-3 overflow-hidden rounded-xl p-3 transition-colors hover:bg-base-200 lg:p-4",
                    selectedIndex === index && "bg-base-200",
                  )}
                >
                  {selectedIndex === index && (
                    <div
                      id="loading"
                      className="absolute inset-0 size-full bg-base-100"
                    />
                  )}
                  <img
                    src={game.grid}
                    alt={`${game.name} grid image`}
                    className="z-10 rounded-md md:w-10 2xl:w-12"
                  />
                  <p className="z-10 line-clamp-2 text-ellipsis font-medium text-base-900 md:text-sm lg:w-48 lg:text-base">
                    {game.name}
                  </p>
                </li>
              );
            })}
          </ul>
        )}
        {width < 768 && (
          <ul className="flex gap-1.5 md:hidden">
            {data.map((_, index) => {
              return (
                <li
                  key={index}
                  onClick={() => scrollTo(index, false)}
                  className={cn(
                    "size-1.5 rounded-full bg-base-300",
                    selectedIndex === index && "size-1.5 bg-primary-700",
                  )}
                />
              );
            })}
          </ul>
        )}
      </aside>
    </section>
  );
}

function HeroCarouselSkeleton() {
  return (
    <section className="grid min-h-[384px] grid-flow-row grid-rows-1 md:h-[484px] md:grid-flow-col md:grid-cols-10 md:gap-4 lg:h-[524px] xl:h-[584px]">
      <div className="flex size-full gap-4 overflow-hidden md:col-span-7 md:size-full md:gap-0 md:overflow-hidden lg:col-span-8">
        <Skeleton className="w-[85%] shrink-0 rounded-xl md:w-full" />
        <Skeleton className="w-[85%] shrink-0 rounded-xl md:hidden md:w-full" />
      </div>
      <div className="size-full md:col-span-3 md:justify-self-auto lg:col-span-2">
        <Skeleton className="hidden size-full rounded-xl md:block" />
      </div>
    </section>
  );
}

export { HeroCarousel, HeroCarouselSkeleton };
