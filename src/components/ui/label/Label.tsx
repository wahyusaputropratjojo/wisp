import { type ComponentProps } from "react";

import { type VariantProps, cva } from "class-variance-authority";
import { Label as LabelPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type LabelProps = ComponentProps<typeof LabelPrimitive.Root> &
  VariantProps<typeof labelVariants>;

const labelVariants = cva(
  "text-sm leading-none font-medium text-neutral-100 peer-disabled:cursor-not-allowed peer-disabled:opacity-70",
  {
    variants: {
      variant: {
        error: "text-error-500",
      },
      position: {
        inset: "absolute top-3 left-4 z-50 text-xs transition-all",
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
