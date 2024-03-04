import { useEffect, useRef, useState } from "react";

import { useGSAP } from "@gsap/react";
import gsap from "gsap";

import { useIntersectionObserver } from "@hooks/useIntersectionObserver";
import { useWindowSize } from "@hooks/useWindowSize";

import { cn } from "@libraries/utilities/cn";
import { releaseDateModifier } from "@libraries/utilities/releaseDateModifier";
import { scrollToElementByIndex } from "@libraries/utilities/scrollToElementByIndex";

type CarouselData = {
  description: string;
  grid: string;
  hero: string;
  id: string;
  logo: string;
  name: string;
  releaseDate: string;
};

function Carousel(props: { data: CarouselData[] }) {
  const { width } = useWindowSize();

  const [currentIndex, setCurrentIndex] = useState<number>(0);

  const containerRef = useRef<HTMLDivElement | null>(null);
  const overlayRef = useRef<HTMLDivElement | null>(null);

  const data = props.data;

  const { contextSafe } = useGSAP({
    revertOnUpdate: true,
  });

  const overlayLoadingAnimation = contextSafe(() => {
    gsap.fromTo(
      overlayRef.current,
      {
        xPercent: -100,
      },
      {
        xPercent: 0,
        duration: 10,
      },
    );
  });

  useEffect(() => {
    if (width >= 768) {
      const interval = setInterval(() => {
        setCurrentIndex((prev) => {
          if (prev === data.length - 1) {
            return 0;
          } else {
            return prev + 1;
          }
        });
      }, 10000);
      overlayLoadingAnimation();
      scrollToElementByIndex(
        currentIndex,
        containerRef,
        "[data-element='child']",
        {
          behavior: "instant",
          block: "center",
        },
      );

      return () => clearInterval(interval);
    }
  }, [width, data, currentIndex, overlayLoadingAnimation]);

  return (
    <section className="grid grid-flow-row gap-4 md:grid-flow-col md:grid-cols-10">
      <div
        ref={containerRef}
        className="no-scrollbar flex size-full snap-x snap-mandatory gap-3 overflow-x-auto md:col-span-7 md:gap-0 md:overflow-hidden md:rounded-xl lg:col-span-8"
      >
        {data.map((item, index) => {
          return (
            <Item
              key={index}
              item={item}
              index={index}
              currentIndex={currentIndex}
              setCurrentIndex={setCurrentIndex}
              container={containerRef.current as HTMLElement}
            />
          );
        })}
      </div>
      <aside className="justify-self-center md:col-span-3 md:justify-self-auto lg:col-span-2">
        <ul className="flex gap-1.5 md:hidden">
          {data.map((_, index) => {
            return (
              <li
                key={index}
                onClick={() => {
                  scrollToElementByIndex(
                    index,
                    containerRef,
                    "[data-element='child']",
                    {
                      behavior: "smooth",
                    },
                  );
                }}
                className={cn(
                  "size-1.5 rounded-full bg-base-300",
                  currentIndex === index && "size-1.5 bg-primary-700",
                )}
              />
            );
          })}
        </ul>
        <ul className="md: hidden gap-4 md:grid md:size-full md:grid-flow-row">
          {data.map((item, index) => {
            return (
              <li
                key={index}
                className={cn(
                  "relative flex items-center gap-3 overflow-hidden rounded-xl p-3 transition-colors hover:bg-base-200 lg:p-4",
                  currentIndex === index && "bg-base-200",
                )}
                onClick={() => {
                  scrollToElementByIndex(
                    index,
                    containerRef,
                    "[data-element='child']",
                  );
                  setCurrentIndex(index);
                }}
              >
                <img
                  src={item.grid}
                  alt=""
                  className="z-10 rounded-md md:w-10 2xl:w-12"
                />
                <p className="z-10 line-clamp-2 text-ellipsis font-medium text-base-900 md:text-sm lg:w-48 lg:text-base">
                  {item.name}
                </p>
                {currentIndex === index && (
                  <div
                    ref={overlayRef}
                    className="overlay absolute inset-0 size-full bg-base-300 opacity-50"
                  />
                )}
              </li>
            );
          })}
        </ul>
      </aside>
    </section>
  );
}

function Item({
  item,
  index,
  currentIndex,
  setCurrentIndex,
  container,
}: {
  item: CarouselData;
  index: number;
  currentIndex: number;
  setCurrentIndex: React.Dispatch<React.SetStateAction<number>>;
  container: HTMLElement;
}) {
  const { isIntersecting, ref } = useIntersectionObserver({
    root: container,
    threshold: 0.5,
  });

  useEffect(() => {
    if (isIntersecting) {
      setCurrentIndex(index);
    }
  }, [isIntersecting, setCurrentIndex, index]);

  return (
    <div
      ref={ref}
      data-element="child"
      key={index}
      className={cn(
        "text-dark-500 relative min-h-96 w-10/12 shrink-0 snap-center overflow-hidden rounded-xl text-2xl ease-in md:size-full md:flex-nowrap md:rounded-none md:opacity-80 md:transition-opacity md:duration-500",
        currentIndex === index && "md:opacity-100",
      )}
    >
      <img
        src={item.hero}
        alt={`${item.name} Artwork`}
        className="size-full object-cover"
      />
      <div
        className={cn(
          "absolute inset-0 size-full bg-gradient-to-t from-base-50",
        )}
      />
      <div className="absolute inset-x-6 bottom-10 flex flex-col gap-4 md:bottom-12 md:gap-8 lg:inset-x-16">
        <img
          src={item.logo}
          alt=""
          className={cn(
            "w-40 md:w-48 md:translate-x-4 md:opacity-0 md:transition-all md:delay-200 md:duration-300 md:ease-in-out lg:w-72",
            currentIndex === index && "md:translate-x-0 md:opacity-100",
          )}
        />
        <div className="flex max-w-96 flex-col gap-1.5 md:gap-3">
          <p
            className={cn(
              "text-xs font-semibold uppercase text-base-900 md:translate-x-4 md:opacity-0 md:transition-all md:delay-200 md:duration-300 md:ease-in-out",
              currentIndex === index && "md:translate-x-0 md:opacity-100",
            )}
          >
            {releaseDateModifier(item.releaseDate)}
          </p>
          <p
            className={cn(
              "line-clamp-2 text-sm text-base-900 md:translate-x-4 md:text-base md:font-normal md:opacity-0 md:transition-all md:delay-200 md:duration-300 md:ease-in-out lg:text-lg",
              currentIndex === index && "md:translate-x-0 md:opacity-100",
            )}
          >
            {item.description}
          </p>
        </div>
      </div>
    </div>
  );
}

export { Carousel, Item, type CarouselData };
