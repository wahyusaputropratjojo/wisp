import CarouselAutoplay from "embla-carousel-autoplay";
import CarouselFade from "embla-carousel-fade";

import {
  Carousel,
  CarouselContent,
  CarouselDot,
  CarouselItem,
} from "@components/ui/carousel";
import { Image } from "@components/ui/image";

function FeaturedCarousel() {
  const games = [
    {
      hero: "https://cdn2.steamgriddb.com/hero/13d423c869d1f12c22c6544d405f891b.jpg",
      logo: "https://cdn2.steamgriddb.com/logo/2cb20cf1015104c145ddd098f482005e.png",
    },
    {
      hero: "https://cdn2.steamgriddb.com/hero/c09898488dddade675f309cabeca0c4e.png",
      logo: "https://cdn2.steamgriddb.com/logo/899318df0e8c4df2bec997a7d369eafd.png",
    },
    {
      hero: "https://cdn2.steamgriddb.com/hero/542a2ef216fcbc3348128461e2913137.jpg",
      logo: "https://cdn2.steamgriddb.com/logo/e8afafac24a24dd767b87d9f8a596b0f.png",
    },
    {
      hero: "https://cdn2.steamgriddb.com/hero/5c02ec1f19fedba505619c3623a19a77.jpg",
      logo: "https://cdn2.steamgriddb.com/logo/ef1b6b4a07817420f1500c894d273b98.png",
    },
    {
      hero: "https://cdn2.steamgriddb.com/hero/adfe876ae8618aa5df77dd6946ba37c6.jpg",
      logo: "https://cdn2.steamgriddb.com/logo/f8976d7778c70a12a6ab8d82a3a1e706.png",
    },
  ];

  return (
    <div className="relative select-none">
      <Carousel
        options={{
          loop: true,
          containScroll: false,
          watchDrag: false,
        }}
        plugins={[
          CarouselFade(),
          CarouselAutoplay({
            delay: 10000,
          }),
        ]}
      >
        <CarouselContent>
          {games.map((game, index) => (
            <CarouselItem key={index} className="cursor-pointer">
              <div className="relative overflow-hidden rounded-lg">
                <div className="absolute bottom-0 z-10 flex w-fit flex-col gap-6 rounded p-8">
                  <img src={game.logo} className="w-48 max-w-80" />
                </div>
                <div className="absolute size-full bg-gradient-to-tr from-neutral-950 from-10% to-transparent to-50%" />
                <Image
                  fullWidth
                  src={game.hero}
                  className="h-128 sm:aspect-anamorphic-horizontal"
                />
              </div>
            </CarouselItem>
          ))}
        </CarouselContent>
        <CarouselDot className="absolute bottom-4 right-4 rounded-full bg-neutral-900 p-2" />
      </Carousel>
    </div>
  );
}

export { FeaturedCarousel };
