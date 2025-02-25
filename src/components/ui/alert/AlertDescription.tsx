import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type AlertDescriptionProps = ComponentProps<"p">;

function AlertDescription({ className, ref, ...props }: AlertDescriptionProps) {
  return (
    <div
      ref={ref}
      className={cn("text-sm [&_p]:leading-relaxed", className)}
      {...props}
    />
  );
}

AlertDescription.displayName = "AlertDescription";

export { AlertDescription, type AlertDescriptionProps };
