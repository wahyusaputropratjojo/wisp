import { Link } from "@tanstack/react-router";

// import { SearchIcon } from "lucide-react";

import { Button } from "@components/ui/button";

function NavigationBar() {
  return (
    <nav className="sticky top-0 z-10 container bg-neutral-900 py-6">
      <section className="flex items-center gap-6">
        {/* <div className="relative">
          <SearchIcon
            className="absolute top-1/2 left-3 -translate-y-1/2"
            size="14"
          />
          <input
            type="text"
            className="min-w-64 rounded-xl bg-neutral-800 py-3 pr-4 pl-10 text-xs outline-none"
          />
        </div> */}
        <Link to="/">
          <Button intent="secondary" modifier="plain">
            Discover
          </Button>
        </Link>
        <Link to="/browse">
          <Button intent="secondary" modifier="plain">
            Browse
          </Button>
        </Link>
      </section>
    </nav>
  );
}

export { NavigationBar };
