import { type ComponentProps } from "react";

import * as LabelPrimitive from "@radix-ui/react-label";
import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

type LabelProps = ComponentProps<typeof LabelPrimitive.Root> &
  VariantProps<typeof labelVariants>;

const labelVariants = cva(
  "text-sm font-medium leading-none text-neutral-100 peer-disabled:cursor-not-allowed peer-disabled:opacity-70",
  {
    variants: {
      variant: {
        error: "text-error-500",
      },
      position: {
        inset: "absolute left-4 top-3 z-50 text-xs transition-all",
      },
    },
  },
);

function Label({ className, variant, position, ref, ...props }: LabelProps) {
  return (
    <LabelPrimitive.Root
      ref={ref}
      className={cn(labelVariants({ variant, position, className }))}
      {...props}
    />
  );
}

Label.displayName = LabelPrimitive.Root.displayName;

export { Label, type LabelProps };
