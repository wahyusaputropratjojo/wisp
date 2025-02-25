import { createFileRoute } from "@tanstack/react-router";

import { ResetPassword } from "@pages/reset-password";

export const Route = createFileRoute("/_auth/reset-password/")({
  component: ResetPassword,
});
