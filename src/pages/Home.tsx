import { Carousel } from "@components/carousel";
import type { CarouselData } from "@components/carousel";

const data: CarouselData[] = [
  {
    artwork: "Artwork.jpg",
    cover: "Cover.png",
    logo: "Logo.png",
    title: "Prince of Persia: The Last Crown",
    description:
      "Dash into a stylish and thrilling action-adventure platformer set in a mythological Persian World.",
    status: "Available Now",
  },
  {
    artwork: "Artwork2.jpg",
    cover: "Cover.png",
    logo: "Logo.png",
    title: "God of War Ragnarok",
    description:
      "Dash into a stylish and thrilling action-adventure platformer set in a mythological Persian World.",
    status: "Available Now",
  },
  {
    artwork: "Artwork.jpg",
    cover: "Cover.png",
    logo: "Logo.png",
    title: "Prince of Persia: The Last Crown",
    description:
      "Dash into a stylish and thrilling action-adventure platformer set in a mythological Persian World.",
    status: "Coming Soon",
  },
  {
    artwork: "Artwork.jpg",
    cover: "Cover.png",
    logo: "Logo.png",
    title: "Prince of Persia: The Last Crown",
    description:
      "Dash into a stylish and thrilling action-adventure platformer set in a mythological Persian World.",
    status: "Coming Soon",
  },
  {
    artwork: "Artwork.jpg",
    cover: "Cover.png",
    logo: "Logo.png",
    title: "Prince of Persia: The Last Crown",
    description:
      "Dash into a stylish and thrilling action-adventure platformer set in a mythological Persian World.",
    status: "Coming Soon",
  },
];

export default function Home() {
  return (
    <main className="container py-8">
      <Carousel data={data} />
    </main>
  );
}
