import { type ComponentProps } from "react";

import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

type AlertProps = ComponentProps<"div"> & VariantProps<typeof alertVariants>;

const alertVariants = cva(
  "relative w-full rounded-lg border px-4 py-3 text-sm [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg]:text-neutral-100 [&>svg~*]:pl-7",
  {
    variants: {
      variant: {
        default: "bg-neutral-100 text-neutral-900",
        destructive:
          "border-error-500/50 text-error-500 dark:border-error-500 [&>svg]:text-error-500",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  },
);

function Alert({ className, variant, ref, ...props }: AlertProps) {
  return (
    <div
      ref={ref}
      role="alert"
      className={cn(alertVariants({ variant }), className)}
      {...props}
    />
  );
}

Alert.displayName = "Alert";

export { Alert, type AlertProps };
