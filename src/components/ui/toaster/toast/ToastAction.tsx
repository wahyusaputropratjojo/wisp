import { type ComponentProps, type ReactElement } from "react";

import * as ToastPrimitives from "@radix-ui/react-toast";

import { cn } from "@libraries/utilities";

type ToastActionProps = ComponentProps<typeof ToastPrimitives.Action>;

function ToastAction({ className, ref, ...props }: ToastActionProps) {
  return (
    <ToastPrimitives.Action
      ref={ref}
      className={cn(
        "inline-flex h-8 shrink-0 items-center justify-center rounded-md border bg-transparent px-3 text-sm font-medium ring-offset-neutral-500 transition-colors hover:bg-neutral-200 focus:ring-2 focus:ring-neutral-500 focus:ring-offset-2 focus:outline-hidden disabled:pointer-events-none disabled:opacity-50",
        className,
      )}
      {...props}
    />
  );
}

ToastAction.displayName = ToastPrimitives.Action.displayName;

type ToastActionElement = ReactElement<typeof ToastAction>;

export { ToastAction, type ToastActionProps, type ToastActionElement };
