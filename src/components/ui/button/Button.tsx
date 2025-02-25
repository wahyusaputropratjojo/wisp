import { type ComponentProps } from "react";

import { Slot } from "@radix-ui/react-slot";
import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

type ButtonProps = ComponentProps<"button"> &
  VariantProps<typeof buttonVariants> & {
    asChild?: boolean;
  };

const buttonVariants = cva(
  "inline-flex items-center rounded-md font-medium transition-colors focus:outline focus:outline-1 focus:outline-offset-2 focus:outline-neutral-100",
  {
    variants: {
      size: {
        small: "px-4 py-2 text-sm",
        medium: "px-5 py-3 text-sm",
        large: "px-6 py-4 text-sm",
      },
      fullWidth: {
        true: "w-full",
      },
      disabled: {
        true: "disabled:cursor-not-allowed",
      },
      align: {
        start: "justify-start",
        center: "justify-center",
        end: "justify-end",
      },
      intent: {
        primary: "bg-primary-500 text-neutral-100",
        secondary: "bg-neutral-100 text-neutral-900",
        destructive: "bg-error-500 text-neutral-100",
      },
      modifier: {
        outline: "border-2 bg-transparent",
        plain: "w-fit bg-transparent p-0 focus:outline-0",
        icon: "w-fit p-1",
      },
    },
    compoundVariants: [
      {
        intent: "primary",
        modifier: "outline",
        className: "border-primary-500 hover:bg-primary-500",
      },
      {
        intent: "secondary",
        modifier: "outline",
        className:
          "border-neutral-100 text-neutral-100 hover:bg-neutral-100 hover:text-neutral-900",
      },
      {
        intent: "destructive",
        modifier: "outline",
        className:
          "border-error-500 text-error-500 hover:bg-error-500 hover:text-neutral-100",
      },
      {
        intent: "primary",
        modifier: "plain",
        className: "text-primary-500 hover:text-primary-500/80 hover:underline",
      },
      {
        intent: "secondary",
        modifier: "plain",
        className: "text-neutral-100 hover:text-neutral-100/80 hover:underline",
      },
      {
        intent: "destructive",
        modifier: "plain",
        className: "text-error-500 hover:text-error-500/80 hover:underline",
      },
    ],
    defaultVariants: {
      intent: "primary",
      size: "medium",
      align: "center",
    },
  },
);

function Button({
  asChild = false,
  className,
  modifier,
  intent,
  size,
  align,
  disabled,
  fullWidth,
  ref,
  ...props
}: ButtonProps) {
  const Component = asChild ? Slot : "button";

  return (
    <Component
      className={cn(
        buttonVariants({
          size,
          align,
          fullWidth,
          disabled,
          intent,
          modifier,
          className,
        }),
      )}
      disabled={disabled}
      ref={ref}
      {...props}
    />
  );
}

export { Button, type ButtonProps };
