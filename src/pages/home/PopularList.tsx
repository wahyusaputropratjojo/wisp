import { useEffect } from "react";

import { Link } from "@tanstack/react-router";

import { Badge } from "@components/ui/badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardTitle,
} from "@components/ui/card";
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@components/ui/carousel";
import { Image } from "@components/ui/image";

import { useNewestGamesQuery } from "@hooks/query";

function PopularList() {
  const { data, isSuccess } = useNewestGamesQuery();

  useEffect(() => {
    console.log(data);
  }, [data]);

  return (
    <div className="grid gap-4">
      <h2 className="text-xl font-bold">Newest Games</h2>
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
                className="basis-7/12 sm:basis-1/4 md:basis-1/5"
              >
                <Link to="/browse">
                  <Card>
                    <CardContent className="relative">
                      <Image
                        src={game.grid?.thumbnail}
                        className="aspect-classic-vertical"
                      />
                      <div className="absolute bottom-2 left-2 flex gap-1">
                        {game.isBase && <Badge size="small">Base Game</Badge>}
                        {game.isBundle && <Badge size="small">Bundle</Badge>}
                        {game.isExpansion && (
                          <Badge size="small">Expansion</Badge>
                        )}
                        {game.isRemake && <Badge size="small">Remake</Badge>}
                        {game.isRemaster && (
                          <Badge size="small">Remaster</Badge>
                        )}
                        {game.isStandaloneExpansion && (
                          <Badge size="small">Standalone Expansion</Badge>
                        )}
                      </div>
                    </CardContent>
                    <CardContent>
                      <CardTitle>{game.name}</CardTitle>
                    </CardContent>
                  </Card>
                </Link>
              </CarouselItem>
            ))}
        </CarouselContent>
        <div className="absolute -top-10 right-0 flex gap-2">
          <CarouselPrevious />
          <CarouselNext />
        </div>
      </Carousel>
    </div>
  );
}
export { PopularList };
