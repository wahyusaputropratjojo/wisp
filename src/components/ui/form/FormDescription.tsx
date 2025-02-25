import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

import { useFormField } from "./useFormField";

type FormDescriptionProps = ComponentProps<"p">;

function FormDescription({ className, ref, ...props }: FormDescriptionProps) {
  const { formDescriptionId } = useFormField();

  return (
    <p
      ref={ref}
      id={formDescriptionId}
      className={cn("text-sm text-neutral-500", className)}
      {...props}
    />
  );
}

FormDescription.displayName = "FormDescription";

export { FormDescription, type FormDescriptionProps };
