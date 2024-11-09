import { QueryClient } from "@tanstack/react-query";
import { createFileRoute } from "@tanstack/react-router";

import { gameDetailsQueryOptions } from "@libraries/query-options/gameDetails";

import { Game } from "@pages/game";

const queryClient = new QueryClient();

const Route = createFileRoute("/game/$slug")({
  loader: ({ params }) =>
    queryClient.ensureQueryData(gameDetailsQueryOptions(params.slug)),
  component: () => <Game />,
});

export { Route };
