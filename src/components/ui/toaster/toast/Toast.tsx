import { type ComponentProps } from "react";

import * as ToastPrimitives from "@radix-ui/react-toast";
import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

const ToastProvider = ToastPrimitives.Provider;

type ToastProps = ComponentProps<typeof ToastPrimitives.Root> &
  VariantProps<typeof toastVariants>;

const toastVariants = cva(
  "group pointer-events-auto relative flex w-full items-center justify-between space-x-4 overflow-hidden rounded p-6 shadow-lg transition-all data-[swipe=cancel]:translate-x-0 data-[swipe=end]:translate-x-[var(--radix-toast-swipe-end-x)] data-[swipe=move]:translate-x-[var(--radix-toast-swipe-move-x)] data-[swipe=move]:transition-none data-[state=open]:animate-in data-[state=closed]:animate-out data-[swipe=end]:animate-out data-[state=closed]:fade-out-80 data-[state=closed]:slide-out-to-right-full data-[state=open]:slide-in-from-top-full data-[state=open]:sm:slide-in-from-bottom-full",

  {
    variants: {
      variant: {
        default: "bg-neutral-800 text-neutral-100",
        error: "bg-error-900 text-neutral-100",
        success: "bg-success-900 text-neutral-100",
        warning: "bg-warning-900 text-neutral-100",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  },
);

function Toast({ className, variant, ref, ...props }: ToastProps) {
  return (
    <ToastPrimitives.Root
      ref={ref}
      className={cn(toastVariants({ variant }), className)}
      {...props}
    />
  );
}

Toast.displayName = ToastPrimitives.Root.displayName;

export { ToastProvider, Toast, type ToastProps };
