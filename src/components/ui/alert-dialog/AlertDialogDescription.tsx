import { type ComponentProps } from "react";

import * as AlertDialogPrimitive from "@radix-ui/react-alert-dialog";

import { cn } from "@libraries/utilities";

type AlertDialogDescriptionProps = ComponentProps<
  typeof AlertDialogPrimitive.Description
>;

function AlertDialogDescription({
  className,
  ref,
  ...props
}: AlertDialogDescriptionProps) {
  return (
    <AlertDialogPrimitive.Description
      ref={ref}
      className={cn("text-muted-foreground text-sm", className)}
      {...props}
    />
  );
}
AlertDialogDescription.displayName =
  AlertDialogPrimitive.Description.displayName;

export { type AlertDialogDescriptionProps, AlertDialogDescription };
