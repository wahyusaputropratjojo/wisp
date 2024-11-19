import * as React from "react";

import * as LabelPrimitive from "@radix-ui/react-label";

import { Label } from "@components/ui/label";

import { cn } from "@libraries/utilities";

import { useFormField } from "./Form";

const FormLabel = React.forwardRef<
  React.ElementRef<typeof LabelPrimitive.Root>,
  React.ComponentPropsWithoutRef<typeof LabelPrimitive.Root>
>(({ className, ...props }, ref) => {
  const { formItemId, invalid } = useFormField();

  return (
    <Label
      ref={ref}
      className={cn(
        "absolute left-4 top-3 text-xs text-neutral-400 transition-all",
        invalid && "text-error-500",
        className,
      )}
      htmlFor={formItemId}
      {...props}
    />
  );
});
FormLabel.displayName = "FormLabel";

export { FormLabel };
