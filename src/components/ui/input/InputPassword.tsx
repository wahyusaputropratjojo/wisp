import * as React from "react";

import { EyeIcon, EyeOffIcon } from "lucide-react";

import { cn } from "@libraries/utilities";

import { Input } from "./Input";

const InputPassword = React.forwardRef<
  HTMLInputElement,
  React.ComponentProps<"input">
>(({ className, ...props }, ref) => {
  const [type, setType] = React.useState<string>("password");
  return (
    <div className="relative">
      <Input
        className={cn("pr-16", className)}
        type={type}
        ref={ref}
        {...props}
      />
      <button
        type="button"
        className="absolute right-2 top-1/2 grid aspect-square h-3/4 -translate-y-1/2 items-center justify-center rounded transition-colors hover:bg-neutral-500"
        onClick={() =>
          setType((prev) => (prev === "password" ? "text" : "password"))
        }
      >
        {type === "password" ?
          <EyeOffIcon />
        : <EyeIcon />}
      </button>
    </div>
  );
});
InputPassword.displayName = "InputPassword";

export { InputPassword };
