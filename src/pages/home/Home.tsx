import { GameStripCard } from "@components/game-card";

import { FeaturedCarousel } from "./FeaturedCarousel";
import { PopularList } from "./PopularList";
import { ThreeList } from "./ThreeList";

function Home() {
  return (
    <main className="container mb-24 grid gap-12">
      {/* <FeaturedCarousel /> */}
      <PopularList />
      {/* <ThreeList /> */}
      {/* <div>
        <div>
          {[...Array(5)].map((_) => (
            <GameStripCard />
          ))}
        </div>
      </div> */}
    </main>
  );
}

export { Home };
