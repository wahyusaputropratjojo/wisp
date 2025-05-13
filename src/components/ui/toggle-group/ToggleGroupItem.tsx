import { type ComponentProps, useContext } from "react";

import { type VariantProps } from "class-variance-authority";
import { ToggleGroup as ToggleGroupPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

import { toggleVariants } from "../toggle";
import { ToggleGroupContext } from "./ToggleGroupContext";

type ToggleGroupItemProps = ComponentProps<typeof ToggleGroupPrimitive.Item> &
  VariantProps<typeof toggleVariants>;

function ToggleGroupItem({
  className,
  variant,
  size,
  children,
  ref,
  ...props
}: ToggleGroupItemProps) {
  const context = useContext(ToggleGroupContext);

  return (
    <ToggleGroupPrimitive.Item
      ref={ref}
      className={cn(
        toggleVariants({
          variant: context.variant || variant,
          size: context.size || size,
        }),
        className,
      )}
      {...props}
    >
      {children}
    </ToggleGroupPrimitive.Item>
  );
}
ToggleGroupItem.displayName = ToggleGroupPrimitive.Item.displayName;

export { type ToggleGroupItemProps, ToggleGroupItem };
