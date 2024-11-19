import * as React from "react";

import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@libraries/utilities";

const badgeVariants = cva(
  "inline-flex items-center rounded-md border font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-neutral-500 focus:ring-offset-2",
  {
    variants: {
      variant: {
        primary:
          "hover:bg-neutral-900/80 border-transparent bg-neutral-900 text-neutral-100",
        secondary:
          "hover:bg-neutral-100/80 border-transparent bg-neutral-100 text-neutral-900",
        destructive:
          "bg-red-500 text-red-500 hover:bg-red-500/80 border-transparent",
        outline: "border-2 border-neutral-900 text-neutral-900",
      },
      size: {
        sm: "px-2 py-0.5 text-[10px]",
        md: "px-2.5 py-0.5 text-xs",
        lg: "px-4 py-1.5",
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
