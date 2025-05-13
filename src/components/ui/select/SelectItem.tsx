import { type ComponentProps } from "react";

import { CheckIcon } from "lucide-react";
import { Select as SelectPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type SelectItemProps = ComponentProps<typeof SelectPrimitive.Item>;

function SelectItem({ className, children, ref, ...props }: SelectItemProps) {
  return (
    <SelectPrimitive.Item
      ref={ref}
      className={cn(
        "focus:bg-accent focus:text-accent-foreground relative flex w-full cursor-default items-center rounded-sm py-1.5 pr-2 pl-8 text-sm outline-none select-none data-[disabled]:pointer-events-none data-[disabled]:opacity-50",
        className,
      )}
      {...props}
    >
      <span className="absolute left-2 flex h-3.5 w-3.5 items-center justify-center">
        <SelectPrimitive.ItemIndicator>
          <CheckIcon className="h-4 w-4" />
        </SelectPrimitive.ItemIndicator>
      </span>

      <SelectPrimitive.ItemText>{children}</SelectPrimitive.ItemText>
    </SelectPrimitive.Item>
  );
}
SelectItem.displayName = SelectPrimitive.Item.displayName;

export { type SelectItemProps, SelectItem };
