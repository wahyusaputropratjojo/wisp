import { type ComponentProps } from "react";

import * as AlertDialogPrimitive from "@radix-ui/react-alert-dialog";

import { cn } from "@libraries/utilities";

import { buttonVariants } from "../button";

type AlertDialogActionProps = ComponentProps<
  typeof AlertDialogPrimitive.Action
>;

function AlertDialogAction({
  className,
  ref,
  ...props
}: AlertDialogActionProps) {
  return (
    <AlertDialogPrimitive.Action
      ref={ref}
      className={cn(buttonVariants(), className)}
      {...props}
    />
  );
}

AlertDialogAction.displayName = AlertDialogPrimitive.Action.displayName;

export { type AlertDialogActionProps, AlertDialogAction };
