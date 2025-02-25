import { type ComponentProps } from "react";

import * as ToastPrimitives from "@radix-ui/react-toast";
import { XIcon } from "lucide-react";

import { cn } from "@libraries/utilities";

type ToastCloseProps = ComponentProps<typeof ToastPrimitives.Close>;

function ToastClose({ className, ref, ...props }: ToastCloseProps) {
  return (
    <ToastPrimitives.Close
      ref={ref}
      className={cn(
        "absolute top-2 right-2 rounded-sm p-1 text-neutral-100/50 opacity-0 ring-neutral-100 transition-opacity group-hover:opacity-100 hover:text-neutral-100 focus:opacity-100 focus:ring-3 focus:outline-hidden",
        className,
      )}
      toast-close=""
      {...props}
    >
      <XIcon className="size-4" />
    </ToastPrimitives.Close>
  );
}

ToastClose.displayName = ToastPrimitives.Close.displayName;

export { ToastClose, type ToastCloseProps };
