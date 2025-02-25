import { type ComponentProps } from "react";

import { Slot } from "@radix-ui/react-slot";

import { useFormField } from "./useFormField";

type FormControlProps = ComponentProps<typeof Slot>;

function FormControl({ ref, ...props }: FormControlProps) {
  const { formItemId, formDescriptionId, formMessageId, invalid } =
    useFormField();

  return (
    <Slot
      ref={ref}
      id={formItemId}
      aria-describedby={
        invalid ?
          `${formDescriptionId} ${formMessageId}`
        : `${formDescriptionId}`
      }
      aria-invalid={invalid}
      {...props}
    />
  );
}

FormControl.displayName = "FormControl";

export { FormControl, type FormControlProps };
