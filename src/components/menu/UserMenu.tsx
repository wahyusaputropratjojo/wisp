import { LogOutIcon, SettingsIcon, UserIcon } from "lucide-react";

import { Avatar, AvatarFallback, AvatarImage } from "@components/ui/avatar";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@components/ui/dropdown-menu";

import { useSignOutMutation } from "@hooks/mutation";
import { useUserQuery } from "@hooks/query";

function UserMenu() {
  const { mutate: signOut } = useSignOutMutation();
  const { data: user, isSuccess } = useUserQuery();

  if (isSuccess) {
    return (
      <DropdownMenu>
        <DropdownMenuTrigger>
          <Avatar>
            <AvatarImage src="" />
            <AvatarFallback>{user.firstName.charAt(0)}</AvatarFallback>
          </Avatar>
        </DropdownMenuTrigger>
        <DropdownMenuContent align="end" className="min-w-44">
          <div className="flex min-w-48 items-center gap-2 truncate p-1">
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
          <DropdownMenuSeparator />
          <DropdownMenuGroup>
            <DropdownMenuItem disabled>
              <UserIcon />
              <span>Profile</span>
            </DropdownMenuItem>
            <DropdownMenuItem disabled>
              <SettingsIcon />
              <span>Settings</span>
            </DropdownMenuItem>
          </DropdownMenuGroup>
          <DropdownMenuSeparator />
          <DropdownMenuGroup>
            <DropdownMenuItem onClick={() => signOut()}>
              <LogOutIcon />
              <span>Sign Out</span>
            </DropdownMenuItem>
          </DropdownMenuGroup>
        </DropdownMenuContent>
      </DropdownMenu>
    );
  }
}

export { UserMenu };
