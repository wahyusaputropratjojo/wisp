import { type ComponentProps } from "react";

import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

type InputProps = ComponentProps<"input"> & VariantProps<typeof inputVariants>;

const inputVariants = cva(
  "h-16 w-full rounded-sm border border-neutral-100 bg-transparent px-4 pt-4 text-base shadow-xs transition-colors placeholder:text-neutral-100 focus:outline focus:outline-offset-2 focus:outline-neutral-100 disabled:cursor-not-allowed disabled:bg-neutral-600 md:text-sm",
  {
    variants: {
      variant: {
        error: "border-error-500",
      },
    },
  },
);

function Input({ className, variant, type, ref, ...props }: InputProps) {
  return (
    <input
      type={type}
      ref={ref}
      className={cn(inputVariants({ variant, className }))}
      {...props}
    />
  );
}

Input.displayName = "Input";

export { Input, type InputProps };
