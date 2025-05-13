import { type ComponentProps } from "react";

import { Dialog as DialogPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type DialogTitleProps = ComponentProps<typeof DialogPrimitive.Title>;

function DialogTitle({ className, ref, ...props }: DialogTitleProps) {
  return (
    <DialogPrimitive.Title
      ref={ref}
      className={cn(
        "text-lg leading-none font-semibold tracking-tight",
        className,
      )}
      {...props}
    />
  );
}
DialogTitle.displayName = DialogPrimitive.Title.displayName;

export { type DialogTitleProps, DialogTitle };
