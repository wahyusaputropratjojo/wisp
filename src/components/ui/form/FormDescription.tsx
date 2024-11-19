import * as React from "react";

import { cn } from "@libraries/utilities";

import { useFormField } from "./Form";

const FormDescription = React.forwardRef<
  HTMLParagraphElement,
  React.HTMLAttributes<HTMLParagraphElement>
>(({ className, ...props }, ref) => {
  const { formDescriptionId } = useFormField();

  return (
    <p
      ref={ref}
      id={formDescriptionId}
      className={cn("text-sm text-neutral-500", className)}
      {...props}
    />
  );
});
FormDescription.displayName = "FormDescription";

export { FormDescription };
