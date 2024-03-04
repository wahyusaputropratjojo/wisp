import { Fragment } from "react";

import { ThemeMode } from "@components/theme-mode";

function Navbar() {
  return (
    <Fragment>
      <header className="flex h-16 items-center justify-between p-4 lg:p-10">
        <p className="text-3xl font-black text-primary-700">WISP</p>
        <nav></nav>
        <ThemeMode />
      </header>
    </Fragment>
  );
}

export { Navbar };
