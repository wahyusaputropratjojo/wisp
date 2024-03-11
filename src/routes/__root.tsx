import { Fragment } from "react";

import { createRootRoute, Outlet } from "@tanstack/react-router";
import { TanStackRouterDevtools } from "@tanstack/router-devtools";

import { Footer } from "@components/footer";
import { Header } from "@components/header";
import { NavigationBar } from "@components/navigation-bar";

const Route = createRootRoute({
  component: () => (
    <Fragment>
      <Header />
      <NavigationBar />
      <Outlet />
      <Footer />
      <TanStackRouterDevtools />
    </Fragment>
  ),
});

export { Route };
