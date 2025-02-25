import { type ComponentProps, useId } from "react";

import { cn } from "@libraries/utilities";

import { FormItemContext } from "./FormItemContext";

type FormItemProps = ComponentProps<"div">;

function FormItem({ className, ref, ...props }: FormItemProps) {
  const id = useId();

  return (
    <FormItemContext value={{ id }}>
      <div ref={ref} className={cn("relative", className)} {...props} />
    </FormItemContext>
  );
}

FormItem.displayName = "FormItem";

export { FormItem, type FormItemProps };
