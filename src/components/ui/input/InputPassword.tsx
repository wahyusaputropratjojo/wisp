import { useState } from "react";

import { EyeIcon, EyeOffIcon } from "lucide-react";

import { cn } from "@libraries/utilities";

import { Input, InputProps } from "./Input";

type InputPasswordProps = InputProps;

function InputPassword({
  className,
  disabled,
  ref,
  ...props
}: InputPasswordProps) {
  const [type, setType] = useState<string>("password");

  return (
    <div className="relative">
      <Input
        className={cn("pr-16", className)}
        type={type}
        disabled={disabled}
        ref={ref}
        {...props}
      />
      <button
        type="button"
        className="absolute top-1/2 right-2 grid aspect-square h-3/4 -translate-y-1/2 items-center justify-center rounded-sm transition-colors hover:bg-neutral-500 disabled:cursor-not-allowed disabled:hover:bg-transparent"
        disabled={disabled}
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
}

InputPassword.displayName = "InputPassword";

export { InputPassword, type InputPasswordProps };
