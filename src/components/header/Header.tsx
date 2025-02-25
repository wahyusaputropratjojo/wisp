import { Link } from "@tanstack/react-router";

import { WISPLogo } from "@assets/logos";

import { Button } from "@components/ui/button";
import { UserMenu } from "@components/user-menu";

import { useAuth } from "@hooks/useAuth";

function Header() {
  const { isAuthenticated } = useAuth();

  return (
    <header className="sticky top-0 z-50 flex items-center bg-neutral-900 p-6">
      <div className="flex w-full items-center justify-between">
        <div>
          <Link to="/">
            <WISPLogo />
          </Link>
        </div>
        <div className="flex items-center gap-8">
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
        </div>
        <div>
          {isAuthenticated ?
            <UserMenu />
          : <Link to="/sign-in">
              <Button size="small">Sign In</Button>
            </Link>
          }
        </div>
      </div>
    </header>
  );
}

export { Header };
