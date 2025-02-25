import { type ComponentProps } from "react";

import * as LabelPrimitive from "@radix-ui/react-label";

import { Label } from "@components/ui/label";

import { cn } from "@libraries/utilities";

import { useFormField } from "./useFormField";

type FormLabelProps = ComponentProps<typeof LabelPrimitive.Root>;

function FormLabel({ className, ref, ...props }: FormLabelProps) {
  const { formItemId, invalid } = useFormField();

  return (
    <Label
      ref={ref}
      className={cn(
        "absolute top-3 left-4 z-50 text-xs text-neutral-400 transition-all",
        invalid && "text-error-500",
        className,
      )}
      htmlFor={formItemId}
      {...props}
    />
  );
}

FormLabel.displayName = "FormLabel";

export { FormLabel, type FormLabelProps };
