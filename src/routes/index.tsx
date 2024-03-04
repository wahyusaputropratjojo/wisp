import { createFileRoute } from "@tanstack/react-router";

import { Home } from "@pages/home";

const Route = createFileRoute("/")({
  component: () => <Home />,
});

export { Route };
