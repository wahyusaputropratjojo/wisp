import * as React from "react";

import { Slot } from "@radix-ui/react-slot";

import { useFormField } from "./Form";

const FormControl = React.forwardRef<
  React.ElementRef<typeof Slot>,
  React.ComponentPropsWithoutRef<typeof Slot>
>(({ ...props }, ref) => {
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
});
FormControl.displayName = "FormControl";

export { FormControl };
