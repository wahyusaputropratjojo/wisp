import { FeaturedCarousel } from "./FeaturedCarousel";
import { PopularList } from "./PopularList";
import { ThreeList } from "./ThreeList";
import { VerticalList } from "./VerticalList";

function Home() {
  return (
    <main className="container mb-96 grid gap-12">
      <FeaturedCarousel />
      <PopularList />
      {/* <VerticalList /> */}
      <ThreeList />
    </main>
  );
}

export { Home };
