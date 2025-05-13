import { Fragment } from "react";

import { Outlet, createFileRoute } from "@tanstack/react-router";

import { Footer } from "@components/footer";
import { Header } from "@components/header";
import { NavigationBar } from "@components/navigation-bar";

export const Route = createFileRoute("/_layout")({
  component: () => (
    <Fragment>
      <Header />
      <NavigationBar />
      <Outlet />
      <Footer />
    </Fragment>
  ),
});
