import { type ComponentProps } from "react";

import * as AlertDialogPrimitive from "@radix-ui/react-alert-dialog";

import { cn } from "@libraries/utilities";

type AlertDialogTitleProps = ComponentProps<typeof AlertDialogPrimitive.Title>;

function AlertDialogTitle({ className, ref, ...props }: AlertDialogTitleProps) {
  return (
    <AlertDialogPrimitive.Title
      ref={ref}
      className={cn("text-lg font-semibold", className)}
      {...props}
    />
  );
}
AlertDialogTitle.displayName = AlertDialogPrimitive.Title.displayName;

export { type AlertDialogTitleProps, AlertDialogTitle };
