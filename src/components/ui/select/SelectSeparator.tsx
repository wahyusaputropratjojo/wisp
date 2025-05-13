import { type ComponentProps } from "react";

import { Select as SelectPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type SelectSeparatorProps = ComponentProps<typeof SelectPrimitive.Separator>;

function SelectSeparator({ className, ref, ...props }: SelectSeparatorProps) {
  return (
    <SelectPrimitive.Separator
      ref={ref}
      className={cn("bg-muted -mx-1 my-1 h-px", className)}
      {...props}
    />
  );
}
SelectSeparator.displayName = SelectPrimitive.Separator.displayName;

export { type SelectSeparatorProps, SelectSeparator };
