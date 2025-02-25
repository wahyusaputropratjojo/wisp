import { createFileRoute } from "@tanstack/react-router";

import { SignIn } from "@pages/sign-in";

const Route = createFileRoute("/sign-in/")({
  component: SignIn,
});
export { Route };
