import { Link } from "@tanstack/react-router";
import { useWindowSize } from "@uidotdev/usehooks";

import { WISPLogo } from "@assets/logos";

import { MobileMenu, UserMenu } from "@components/menu";
import { Button } from "@components/ui/button";

import { useAuth } from "@hooks/useAuth";

function Header() {
  const { isAuthenticated } = useAuth();

  const { width } = useWindowSize();

  return (
    <header className="sticky flex items-center bg-neutral-900 py-2">
      <section className="container flex w-full items-center justify-between">
        <Link to="/" className="flex h-12 items-center">
          <WISPLogo />
        </Link>
        {/* {isAuthenticated ?

        } */}
        {width &&
          width > 768 &&
          (isAuthenticated ?
            <UserMenu />
          : <Link to="/sign-in">
              <Button size="small">Sign In</Button>
            </Link>)}
        {width && width < 768 && <MobileMenu />}
      </section>
    </header>
  );
}

export { Header };
