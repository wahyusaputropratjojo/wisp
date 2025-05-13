import { type ComponentProps } from "react";

import { type VariantProps } from "class-variance-authority";
import { ToggleGroup as ToggleGroupPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

import { toggleVariants } from "../toggle";
import { ToggleGroupContext } from "./ToggleGroupContext";

type ToggleGroupProps = ComponentProps<typeof ToggleGroupPrimitive.Root> &
  VariantProps<typeof toggleVariants>;

function ToggleGroup({
  className,
  variant,
  size,
  children,
  ref,
  ...props
}: ToggleGroupProps) {
  return (
    <ToggleGroupPrimitive.Root
      ref={ref}
      className={cn("flex items-center justify-center gap-1", className)}
      {...props}
    >
      <ToggleGroupContext.Provider value={{ variant, size }}>
        {children}
      </ToggleGroupContext.Provider>
    </ToggleGroupPrimitive.Root>
  );
}
ToggleGroup.displayName = ToggleGroupPrimitive.Root.displayName;

export { type ToggleGroupProps, ToggleGroup };
