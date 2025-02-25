import { type ComponentProps } from "react";

import * as ToastPrimitives from "@radix-ui/react-toast";

import { cn } from "@libraries/utilities";

type ToastViewportProps = ComponentProps<typeof ToastPrimitives.Viewport>;

function ToastViewport({ className, ref, ...props }: ToastViewportProps) {
  return (
    <ToastPrimitives.Viewport
      ref={ref}
      className={cn(
        "fixed top-0 z-100 flex max-h-screen w-full flex-col-reverse p-4 sm:top-auto sm:right-0 sm:bottom-0 sm:flex-col md:max-w-[420px]",
        className,
      )}
      {...props}
    />
  );
}

ToastViewport.displayName = ToastPrimitives.Viewport.displayName;

export { ToastViewport, type ToastViewportProps };
