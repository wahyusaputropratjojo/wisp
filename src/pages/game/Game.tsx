import { Suspense } from "react";

import { useSuspenseQuery } from "@tanstack/react-query";
import { useParams } from "@tanstack/react-router";
import { ErrorBoundary } from "react-error-boundary";

import { gameDetailsQueryOptions } from "@libraries/query-options/gameDetails";

import { GameTitleDisplay } from "@pages/game/components/GameTitleDisplay";
import { HowLongToBeatDisplay } from "@pages/game/components/HowLongToBeatDisplay";

// import { MediaCarousel } from "@components/media-carousel";

function Game() {
  const params = useParams({
    from: "/game/$slug",
  });

  const { data } = useSuspenseQuery({
    ...gameDetailsQueryOptions(params.slug),
    select: (data) => {
      return {
        gameTitleDisplay: {
          name: data.name,
          hero: data.hero,
          grid: data.grid,
          isBase: data.isBase,
          isBundle: data.isBundle,
          isRemaster: data.isRemaster,
          isRemake: data.isRemake,
          isExpansion: data.isExpansion,
          isStandaloneExpansion: data.isStandaloneExpansion,
          metacritic: data.metacritic,
        },
        howLongToBeatDisplay: {
          howLongToBeat: data.howLongToBeat,
        },
      };
    },
  });

  console.log(data);

  return (
    <ErrorBoundary fallback={<h2>Error</h2>}>
      <main className="container flex flex-col gap-4 pb-12">
        <Suspense fallback={<h2>Loading</h2>}>
          <GameTitleDisplay {...data.gameTitleDisplay} />
          {/* <MediaCarousel /> */}
          {/* <GameDetailDisplay /> */}
          <HowLongToBeatDisplay {...data.howLongToBeatDisplay} />
          {/* <RelatedGameContentDisplay /> */}
        </Suspense>
      </main>
    </ErrorBoundary>
  );
}

export { Game };
