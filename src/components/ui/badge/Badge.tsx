import React from "react";

import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@libraries/utilities/cn";

const badgeVariants = cva(
  "focus:ring-ring inline-flex items-center rounded-md border font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-offset-2",
  {
    variants: {
      variant: {
        primary:
          "border-transparent bg-base-900 text-base-100 hover:bg-base-900/80",
        secondary:
          "border-transparent bg-base-100 text-base-900 hover:bg-base-100/80",
        destructive:
          "bg-destructive text-destructive-foreground hover:bg-destructive/80 border-transparent",
        outline: "border-2 border-base-900 text-base-900",
      },
      size: {
        sm: "px-2 py-0.5 text-[10px]",
        md: "px-2.5 py-0.5 text-xs",
        lg: "px-4 py-1.5 text-base",
        xl: "px-4 py-2 text-lg",
      },
    },
    defaultVariants: {
      variant: "primary",
      size: "md",
    },
  },
);

export interface BadgeProps
  extends React.HTMLAttributes<HTMLDivElement>,
    VariantProps<typeof badgeVariants> {}

function Badge({ className, variant, size, ...props }: BadgeProps) {
  return (
    <div
      className={cn(badgeVariants({ variant, size }), className)}
      {...props}
    />
  );
}

export { Badge };
