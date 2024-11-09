import { useQuery } from "@tanstack/react-query";

import {
  GroupCarousel,
  GroupCarouselSkeleton,
} from "@components/group-carousel";
import { HeroCarousel, HeroCarouselSkeleton } from "@components/hero-carousel";
import { Input } from "@components/ui/input/Input";

import {
  getNewReleaseGamesForHeroCarousel,
  getNewReleaseGames,
} from "@services/sdk/supabase/wisp/games";

function Home() {
  const gamesHeroCarouselQuery = useQuery({
    queryKey: ["games-hero-carousel"],
    queryFn: getNewReleaseGamesForHeroCarousel,
  });

  const newReleaseGamesQuery = useQuery({
    queryKey: ["new-release-games"],
    queryFn: getNewReleaseGames,
  });

  return (
    <main className="container space-y-16 pb-16">
      {/* {gamesHeroCarouselQuery.isLoading ?
        <HeroCarouselSkeleton />
      : gamesHeroCarouselQuery.isSuccess ?
        <HeroCarousel data={gamesHeroCarouselQuery.data} />
      : null} */}
      {/* {newReleaseGamesQuery.isLoading ?
        <GroupCarouselSkeleton />
      : newReleaseGamesQuery.isSuccess ?
        <GroupCarousel data={newReleaseGamesQuery.data} title="New Release" />
      : null} */}
    </main>
  );
}

export { Home };
