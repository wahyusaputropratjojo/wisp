import * as React from "react";

import { cn } from "@libraries/utilities";

const Input = React.forwardRef<HTMLInputElement, React.ComponentProps<"input">>(
  ({ className, type, ...props }, ref) => {
    return (
      <input
        type={type}
        className={cn(
          "h-16 w-full rounded border bg-transparent px-4 pt-4 text-base shadow-sm transition-colors placeholder:text-neutral-100 focus:outline focus:outline-1 focus:outline-offset-2 focus:outline-neutral-100 disabled:cursor-not-allowed disabled:opacity-50 md:text-sm",
          className,
        )}
        ref={ref}
        {...props}
      />
    );
  },
);
Input.displayName = "Input";

export { Input };
