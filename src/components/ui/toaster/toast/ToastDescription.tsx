import { type ComponentProps } from "react";

import * as ToastPrimitives from "@radix-ui/react-toast";

import { cn } from "@libraries/utilities";

type ToastDescriptionProps = ComponentProps<typeof ToastPrimitives.Description>;

function ToastDescription({ className, ref, ...props }: ToastDescriptionProps) {
  return (
    <ToastPrimitives.Description
      ref={ref}
      className={cn("text-sm", className)}
      {...props}
    />
  );
}

ToastDescription.displayName = ToastPrimitives.Description.displayName;

export { ToastDescription, type ToastDescriptionProps };
