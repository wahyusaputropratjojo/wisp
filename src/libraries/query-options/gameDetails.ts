import { queryOptions } from "@tanstack/react-query";

import { getGameDetails } from "@services/sdk/supabase/wisp/games/gameDetails";

function gameDetailsQueryOptions(slug: string) {
  return queryOptions({
    queryKey: ["game-details", slug],
    queryFn: () => getGameDetails(slug),
  });
}

export { gameDetailsQueryOptions };
