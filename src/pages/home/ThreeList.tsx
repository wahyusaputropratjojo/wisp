import { useEffect } from "react";

import { useMediaQuery } from "@uidotdev/usehooks";

import { GameHighlightCard } from "@components/game-card";
import {
  Carousel,
  CarouselContent,
  CarouselDot,
  CarouselItem,
} from "@components/ui/carousel";

function ThreeList() {
  const isMedium = useMediaQuery("(min-width: 48rem)");

  useEffect(() => {
    console.log(isMedium);
  }, [isMedium]);

  const games = [
    {
      image:
        "https://cdn2.steamgriddb.com/hero/13d423c869d1f12c22c6544d405f891b.jpg",
      title: "Black Myth: Wukong",
      description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut quasi soluta et fugiat provident obcaecati dolore totam, pariatur commodi ad?",
    },
    {
      image:
        "https://cdn2.steamgriddb.com/hero/c09898488dddade675f309cabeca0c4e.png",
      title: "Metaphor: ReFantazio",
      description:
        "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iste esse fugit doloremque aperiam necessitatibus incidunt voluptate dicta voluptatum molestias maxime.",
    },
    {
      image:
        "https://cdn2.steamgriddb.com/hero/542a2ef216fcbc3348128461e2913137.jpg",
      title: "Final Fantasy VII: Rebirth",
      description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo aliquid et eveniet hic facere reiciendis, assumenda ab nisi harum officia.",
    },
  ];

  return (
    <Carousel
      options={{
        breakpoints: {
          "(min-width: 48rem)": { active: false },
        },
      }}
    >
      <CarouselContent className="md:grid md:grid-cols-3">
        {games.map((game, index) => (
          <CarouselItem key={index} className="basis-10/12 md:basis-full">
            <GameHighlightCard
              title={game.title}
              thumbnail={game.image}
              description={game.description}
            />
          </CarouselItem>
        ))}
      </CarouselContent>
      {!isMedium && <CarouselDot />}
    </Carousel>
  );
}

export { ThreeList };
