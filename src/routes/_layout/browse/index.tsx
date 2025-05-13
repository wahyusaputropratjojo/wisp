import { createFileRoute } from "@tanstack/react-router";

import { Browse } from "@pages/browse";

export const Route = createFileRoute("/_layout/browse/")({
  component: Browse,
});
