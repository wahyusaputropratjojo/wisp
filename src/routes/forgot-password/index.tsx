import { createFileRoute } from "@tanstack/react-router";

import { ForgotPassword } from "@pages/forgot-password";

const Route = createFileRoute("/forgot-password/")({
  component: ForgotPassword,
});
export { Route };
