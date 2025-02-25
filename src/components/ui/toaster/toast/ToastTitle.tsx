import { type ComponentProps } from "react";

import * as ToastPrimitives from "@radix-ui/react-toast";

import { cn } from "@libraries/utilities";

type ToastTitleProps = ComponentProps<typeof ToastPrimitives.Title>;

function ToastTitle({ className, ref, ...props }: ToastTitleProps) {
  return (
    <ToastPrimitives.Title
      ref={ref}
      className={cn("text-sm font-bold", className)}
      {...props}
    />
  );
}
ToastTitle.displayName = ToastPrimitives.Title.displayName;

export { ToastTitle, type ToastTitleProps };
