import { type ComponentProps } from "react";

import * as AlertDialogPrimitive from "@radix-ui/react-alert-dialog";

import { cn } from "@libraries/utilities";

type AlertDialogOverlayProps = ComponentProps<
  typeof AlertDialogPrimitive.Overlay
>;

function AlertDialogOverlay({
  className,
  ref,
  ...props
}: AlertDialogOverlayProps) {
  return (
    <AlertDialogPrimitive.Overlay
      className={cn(
        "data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 fixed inset-0 z-50 bg-black/80",
        className,
      )}
      {...props}
      ref={ref}
    />
  );
}
AlertDialogOverlay.displayName = AlertDialogPrimitive.Overlay.displayName;

export { type AlertDialogOverlayProps, AlertDialogOverlay };
