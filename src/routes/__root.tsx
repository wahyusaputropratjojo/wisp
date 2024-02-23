import { Fragment } from "react";

import { createRootRoute, Outlet } from "@tanstack/react-router";
import { TanStackRouterDevtools } from "@tanstack/router-devtools";

import { Navbar } from "@components/navbar";

export const Route = createRootRoute({
  component: () => (
    <Fragment>
      <Navbar />
      <Outlet />
      <TanStackRouterDevtools />
    </Fragment>
  ),
});
