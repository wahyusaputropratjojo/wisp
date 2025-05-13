import { type ComponentProps } from "react";

import { RadioGroup as RadioGroupPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type RadioGroupProps = ComponentProps<typeof RadioGroupPrimitive.Root>;

function RadioGroup({ className, ref, ...props }: RadioGroupProps) {
  return (
    <RadioGroupPrimitive.Root
      className={cn("grid gap-2", className)}
      {...props}
      ref={ref}
    />
  );
}
RadioGroup.displayName = RadioGroupPrimitive.Root.displayName;

export { type RadioGroupProps, RadioGroup };
