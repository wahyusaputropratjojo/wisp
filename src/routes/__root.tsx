import { Fragment } from "react";

import { createRootRouteWithContext, Outlet } from "@tanstack/react-router";

import { AuthenticationContextValue } from "@contexts/authentication";

const Route = createRootRouteWithContext<AuthenticationContextValue>()({
  component: () => (
    <Fragment>
      <Outlet />
    </Fragment>
  ),
});

export { Route };
