import { Fragment } from "react";

import { Outlet, createRootRouteWithContext } from "@tanstack/react-router";
import { TanStackRouterDevtools } from "@tanstack/router-devtools";

import { AuthContextValue } from "@contexts/auth";

const Route = createRootRouteWithContext<AuthContextValue>()({
  component: () => (
    <Fragment>
      <Outlet />
      <TanStackRouterDevtools />
    </Fragment>
  ),
});

export { Route };
