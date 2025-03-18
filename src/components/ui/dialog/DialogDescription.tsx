import { type ComponentProps } from "react";

import * as DialogPrimitive from "@radix-ui/react-dialog";

import { cn } from "@libraries/utilities";

type DialogDescriptionProps = ComponentProps<
  typeof DialogPrimitive.DialogDescriptionProps
>;

function DialogDescription({
  className,
  ref,
  ...props
}: DialogDescriptionProps) {
  return (
    <DialogPrimitive.Description
      ref={ref}
      className={cn("text-muted-foreground text-sm", className)}
      {...props}
    />
  );
}
DialogDescription.displayName = DialogPrimitive.Description.displayName;

export { type DialogDescriptionProps, DialogDescription };
