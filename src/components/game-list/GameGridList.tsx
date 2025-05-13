import { Link } from "@tanstack/react-router";

import { GameGridCard } from "@components/game-card";
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@components/ui/carousel";

type GameGridList = {
  title: string;
};

function GameGridList() {
  return (
    <article className="grid gap-3">
      <h2 className="text-lg font-bold md:text-xl">Popular Games</h2>
      <Carousel
        options={{
          slidesToScroll: "auto",
          watchDrag: true,
          breakpoints: {
            "(min-width: 640px)": {
              watchDrag: false,
            },
          },
        }}
      >
        <CarouselContent>
          {isSuccess &&
            data.map((game) => (
              <CarouselItem
                key={game.id}
                className="basis-3/5 sm:basis-1/3 lg:basis-1/6"
              >
                <Link to="/browse">
                  <GameGridCard
                    title={game.title}
                    thumbnail={game.grid!.thumbnail}
                  />
                </Link>
              </CarouselItem>
            ))}
        </CarouselContent>
        <div className="absolute -top-10 right-0 flex gap-2">
          <CarouselPrevious />
          <CarouselNext />
        </div>
      </Carousel>
    </article>
  );
}

export { GameGridList };
