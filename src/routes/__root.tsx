import { Fragment } from "react";

import { createRootRoute, Outlet } from "@tanstack/react-router";
import { TanStackRouterDevtools } from "@tanstack/router-devtools";

import { Footer } from "@components/footer";
import { Navbar } from "@components/navbar";

const Route = createRootRoute({
  component: () => (
    <Fragment>
      <Navbar />
      <Outlet />
      <Footer />
      <TanStackRouterDevtools />
    </Fragment>
  ),
});

export { Route };
