import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type DialogHeaderProps = ComponentProps<"div">;

function DialogHeader({ className, ...props }: DialogHeaderProps) {
  return (
    <div
      className={cn(
        "flex flex-col space-y-1.5 text-center sm:text-left",
        className,
      )}
      {...props}
    />
  );
}
DialogHeader.displayName = "DialogHeader";

export { type DialogHeaderProps, DialogHeader };
