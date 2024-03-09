import { useQuery } from "@tanstack/react-query";

import { HeroCarousel, HeroCarouselSkeleton } from "@components/hero-carousel";

import { getLatestGamesForCarousel } from "@services/sdk/supabase/wisp/games";

function Home() {
  const latestGamesQuery = useQuery({
    queryKey: ["games"],
    queryFn: getLatestGamesForCarousel,
  });

  return (
    <main className="container space-y-24 pb-64 pt-8">
      {latestGamesQuery.isLoading ?
        <HeroCarouselSkeleton />
      : latestGamesQuery.isSuccess ?
        <HeroCarousel data={latestGamesQuery.data} />
      : null}
    </main>
  );
}

export { Home };
