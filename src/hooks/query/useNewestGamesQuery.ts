import { useQuery } from "@tanstack/react-query";

import { getNewestGames } from "@services/sdk/supabase/wisp/games";

function useNewestGamesQuery() {
  return useQuery({
    queryKey: ["NewestGames"],
    queryFn: getNewestGames,
  });
}

export { useNewestGamesQuery };
