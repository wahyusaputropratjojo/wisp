import { type ComponentProps } from "react";

import { ChevronUpIcon } from "lucide-react";
import { Select as SelectPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type SelectScrollUpButtonProps = ComponentProps<
  typeof SelectPrimitive.ScrollUpButton
>;

function SelectScrollUpButton({
  className,
  ref,
  ...props
}: SelectScrollUpButtonProps) {
  return (
    <SelectPrimitive.ScrollUpButton
      ref={ref}
      className={cn(
        "flex cursor-default items-center justify-center py-1",
        className,
      )}
      {...props}
    >
      <ChevronUpIcon className="h-4 w-4" />
    </SelectPrimitive.ScrollUpButton>
  );
}
SelectScrollUpButton.displayName = SelectPrimitive.ScrollUpButton.displayName;

export { type SelectScrollUpButtonProps, SelectScrollUpButton };
