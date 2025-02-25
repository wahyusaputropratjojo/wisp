import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type AlertTitleProps = ComponentProps<"h5">;

function AlertTitle({ className, ref, ...props }: AlertTitleProps) {
  return (
    <h5
      ref={ref}
      className={cn("mb-1 font-medium leading-none tracking-tight", className)}
      {...props}
    />
  );
}

AlertTitle.displayName = "AlertTitle";

export { AlertTitle, type AlertTitleProps };
