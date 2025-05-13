import { type ComponentProps } from "react";

import { ChevronDownIcon } from "lucide-react";
import { Select as SelectPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type SelectScrollDownButtonProps = ComponentProps<
  typeof SelectPrimitive.ScrollDownButton
>;

function SelectScrollDownButton({
  className,
  ref,
  ...props
}: SelectScrollDownButtonProps) {
  return (
    <SelectPrimitive.ScrollDownButton
      ref={ref}
      className={cn(
        "flex cursor-default items-center justify-center py-1",
        className,
      )}
      {...props}
    >
      <ChevronDownIcon className="h-4 w-4" />
    </SelectPrimitive.ScrollDownButton>
  );
}
SelectScrollDownButton.displayName =
  SelectPrimitive.ScrollDownButton.displayName;

export { type SelectScrollDownButtonProps, SelectScrollDownButton };
