import { useQuery } from "@tanstack/react-query";

import { getGames } from "@services/sdk/supabase/wisp/games";

function useGamesQuery() {
  return useQuery({
    queryKey: ["Games"],
    queryFn: getGames,
  });
}

export { useGamesQuery };
