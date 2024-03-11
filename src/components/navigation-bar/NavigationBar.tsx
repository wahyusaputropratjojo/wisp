import { Fragment } from "react";

import { Search, ChevronDown } from "lucide-react";

import {
  DropdownMenu,
  DropdownMenuTrigger,
  DropdownMenuContent,
} from "@components/ui/dropdown-menu";

import { useWindowSize } from "@hooks/useWindowSize";

function NavigationBar() {
  const { width } = useWindowSize();
  return (
    <div className="container sticky top-0 z-50 flex items-baseline gap-6 bg-base-50 py-8">
      {width >= 1024 && (
        <Fragment>
          <div>
            {width >= 1024 && (
              <div className="relative flex">
                <Search
                  size={16}
                  className="absolute left-4 top-1/2 -translate-y-1/2 text-base-900"
                />
                <input
                  type="text"
                  className="rounded-lg border-none bg-base-100 pl-12 pr-6"
                  placeholder="Search"
                />
              </div>
            )}
          </div>
          <nav className="flex items-center justify-center">
            {width >= 1280 && (
              <ul className="flex gap-6">
                <li>Discover</li>
                <li>Browse</li>
              </ul>
            )}
            {width >= 1024 && width < 1280 && (
              <DropdownMenu>
                <DropdownMenuTrigger className="flex items-center gap-1">
                  <p>Browse</p>
                  <ChevronDown size={16} />
                </DropdownMenuTrigger>
                <DropdownMenuContent align="start" sideOffset={16}>
                  <div className="space-y-2 p-2">
                    <p>Browse</p>
                    <p>Discovery</p>
                  </div>
                </DropdownMenuContent>
              </DropdownMenu>
            )}
          </nav>
        </Fragment>
      )}
      {width < 1024 && (
        <nav className="relative flex w-full items-center justify-center">
          <DropdownMenu>
            <DropdownMenuTrigger className="flex items-center gap-1">
              <p>Browse</p>
              <ChevronDown size={16} />
            </DropdownMenuTrigger>
            <DropdownMenuContent sideOffset={16}>
              <div className="space-y-2 p-2">
                <p>Browse</p>
                <p>Discovery</p>
              </div>
            </DropdownMenuContent>
          </DropdownMenu>
          <button className="absolute left-4 top-1/2 -translate-y-1/2 ">
            <Search size={18} className="text-base-900" />
          </button>
        </nav>
      )}
    </div>
  );
}

export { NavigationBar };
