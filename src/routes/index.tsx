import { Fragment } from "react";

import { createFileRoute } from "@tanstack/react-router";

import { Header } from "@components/header";

import { Home } from "@pages/home";

const Route = createFileRoute("/")({
  component: () => (
    <Fragment>
      <Header />
      <Home />
    </Fragment>
  ),
});

export { Route };
