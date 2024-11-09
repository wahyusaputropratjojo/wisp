import { Fragment } from "react";

import { createRootRoute, Outlet } from "@tanstack/react-router";

import { Header } from "@components/header";

const Route = createRootRoute({
  component: () => (
    <Fragment>
      <Header />
      <Outlet />
    </Fragment>
  ),
});

export { Route };
