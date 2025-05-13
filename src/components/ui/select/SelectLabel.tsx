import { type ComponentProps } from "react";

import { Select as SelectPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type SelectLabelProps = ComponentProps<typeof SelectPrimitive.Label>;

function SelectLabel({ className, ref, ...props }: SelectLabelProps) {
  return (
    <SelectPrimitive.Label
      ref={ref}
      className={cn("py-1.5 pr-2 pl-8 text-sm font-semibold", className)}
      {...props}
    />
  );
}
SelectLabel.displayName = SelectPrimitive.Label.displayName;

export { type SelectLabelProps, SelectLabel };
