import { createFileRoute } from "@tanstack/react-router";

import { ResetPassword } from "@pages/reset-password";

export const Route = createFileRoute("/reset-password/")({
  component: ResetPassword,
});
