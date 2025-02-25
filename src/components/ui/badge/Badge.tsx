import { type ComponentProps } from "react";

import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

type BadgeProps = ComponentProps<"div"> & VariantProps<typeof badgeVariants>;

const badgeVariants = cva(
  "inline-flex items-center rounded-md border font-bold transition-colors focus:ring-2 focus:ring-neutral-500 focus:ring-offset-2 focus:outline-hidden",
  {
    variants: {
      intent: {
        primary: "border-transparent bg-neutral-800 text-neutral-100",
        secondary: "border-transparent bg-neutral-100 text-neutral-900",
        destructive: "bg-error-500 border-transparent text-neutral-100",
      },
      size: {
        small: "px-2 py-0.5 text-xs",
        medium: "px-2.5 py-0.5 text-sm",
        large: "px-3 py-1 text-base",
      },
    },
    defaultVariants: {
      intent: "primary",
      size: "medium",
    },
  },
);

function Badge({ className, intent, size, ...props }: BadgeProps) {
  return (
    <div
      className={cn(badgeVariants({ intent, size }), className)}
      {...props}
    />
  );
}

export { Badge, type BadgeProps };
