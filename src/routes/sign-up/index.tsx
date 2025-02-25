import { createFileRoute } from "@tanstack/react-router";

import { SignUp } from "@pages/sign-up";

const Route = createFileRoute("/sign-up/")({
  component: SignUp,
});
export { Route };
