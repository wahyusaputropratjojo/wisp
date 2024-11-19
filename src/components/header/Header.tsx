import { useQuery } from "@tanstack/react-query";
import { Link } from "@tanstack/react-router";
import { CircleUserRound, LogOut } from "lucide-react";

import { Avatar, AvatarFallback, AvatarImage } from "@components/ui/avatar";
import { Button } from "@components/ui/button";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@components/ui/popover";
import { Separator } from "@components/ui/separator";

import { useAuthentication } from "@hooks/useAuthentication";

import { signOut } from "@services/sdk/supabase/wisp/user-management";
import { getUser } from "@services/sdk/supabase/wisp/user-management";

function Header() {
  const { isAuthenticated, isLoading, setIsAuthenticated } =
    useAuthentication();

  const { data: user, isSuccess } = useQuery({
    queryKey: ["user"],
    queryFn: () => getUser(),
    select: (data) => data.user.userMetadata,
    enabled: isAuthenticated,
  });

  return (
    <header className="flex h-16 items-center justify-between p-4 lg:p-10">
      <Link to="/">
        <p className="text-3xl font-black text-neutral-50">WISP</p>
      </Link>
      {!isLoading && (
        <div className="flex gap-4">
          {isAuthenticated && isSuccess ?
            <Popover>
              <PopoverTrigger>
                <Avatar>
                  <AvatarImage src="" />
                  <AvatarFallback>{user.firstName.charAt(0)}</AvatarFallback>
                </Avatar>
              </PopoverTrigger>
              <PopoverContent align="end">
                <div className="flex min-w-48 items-center gap-2 truncate p-2">
                  <Avatar>
                    <AvatarImage src="" />
                    <AvatarFallback>{user.firstName.charAt(0)}</AvatarFallback>
                  </Avatar>
                  <div>
                    <p className="max-w-48 truncate text-sm font-bold">
                      {`${user.firstName} ${user.lastName}`}
                    </p>
                    <p className="text-xs">@{user.displayName}</p>
                  </div>
                </div>
                <Separator />
                <button className="inline-flex gap-2 p-2">
                  <CircleUserRound size={18} />
                  <p className="text-sm">Account</p>
                </button>
                <Separator />
                <button
                  onClick={() => {
                    signOut();
                    setIsAuthenticated(false);
                  }}
                  className="inline-flex gap-2 p-2"
                >
                  <LogOut size={18} />
                  <p className="text-sm">Sign Out</p>
                </button>
              </PopoverContent>
            </Popover>
          : <Link to="/sign-in">
              <Button size="sm" variant="secondary">
                Sign In
              </Button>
            </Link>
          }
        </div>
      )}
    </header>
  );
}

export { Header };
