import { type ComponentProps } from "react";

import { AlertDialog as AlertDialogPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

import { buttonVariants } from "../button";

type AlertDialogCancelProps = ComponentProps<
  typeof AlertDialogPrimitive.Cancel
>;

function AlertDialogCancel({
  className,
  ref,
  ...props
}: AlertDialogCancelProps) {
  return (
    <AlertDialogPrimitive.Cancel
      ref={ref}
      className={cn(
        buttonVariants({ modifier: "outline" }),
        "mt-2 sm:mt-0",
        className,
      )}
      {...props}
    />
  );
}
AlertDialogCancel.displayName = AlertDialogPrimitive.Cancel.displayName;

export { type AlertDialogCancelProps, AlertDialogCancel };
