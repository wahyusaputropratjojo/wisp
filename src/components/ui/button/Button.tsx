import * as React from "react";

import { Slot } from "@radix-ui/react-slot";
import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@libraries/utilities";

const buttonVariants = cva(
  "inline-flex items-center justify-center whitespace-nowrap rounded text-sm font-bold transition-colors focus:outline focus:outline-1 focus:outline-offset-2 focus:outline-neutral-100 disabled:pointer-events-none disabled:opacity-50",
  {
    variants: {
      variant: {
        primary: "hover:bg-primary-500/80 bg-primary-500 text-neutral-100",
        secondary: "hover:bg-neutral-100/80 bg-neutral-100 text-neutral-900",
        destructive: "hover:bg-error-500/80 bg-error-500 text-neutral-100",
        outline:
          "border-2 border-neutral-100 bg-transparent text-neutral-100 hover:bg-neutral-100 hover:text-neutral-900",
      },
      size: {
        sm: "h-8 px-3",
        md: "h-10 px-5",
        lg: "h-12 px-10",
        xl: "h-16 px-10",
        icon: "size-10",
      },
    },
    defaultVariants: {
      variant: "primary",
      size: "md",
    },
  },
);

export interface ButtonProps
  extends React.ButtonHTMLAttributes<HTMLButtonElement>,
    VariantProps<typeof buttonVariants> {
  asChild?: boolean;
}

const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  ({ className, variant, size, asChild = false, ...props }, ref) => {
    const Component = asChild ? Slot : "button";
    return (
      <Component
        className={cn(buttonVariants({ variant, size, className }))}
        ref={ref}
        {...props}
      />
    );
  },
);

Button.displayName = "Button";

export { Button };
