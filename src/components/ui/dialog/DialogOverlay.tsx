import { type ComponentProps } from "react";

import { Dialog as DialogPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DialogOverlayProps = ComponentProps<typeof DialogPrimitive.Overlay>;

function DialogOverlay({ className, ref, ...props }: DialogOverlayProps) {
  return (
    <DialogPrimitive.Overlay
      ref={ref}
      className={cn(
        "data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 fixed inset-0 z-50 bg-black/80",
        className,
      )}
      {...props}
    />
  );
}
DialogOverlay.displayName = DialogPrimitive.Overlay.displayName;

export { type DialogOverlayProps, DialogOverlay };
