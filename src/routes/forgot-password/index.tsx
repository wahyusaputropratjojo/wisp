import { createFileRoute } from "@tanstack/react-router";

import { ForgotPassword } from "@pages/forgot-password";

export const Route = createFileRoute("/forgot-password/")({
  component: ForgotPassword,
});
