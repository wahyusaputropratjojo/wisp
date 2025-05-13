import { createRootRouteWithContext } from "@tanstack/react-router";

import { AuthContextValue } from "@contexts/auth";

export const Route = createRootRouteWithContext<AuthContextValue>()();
