import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

import { useFormField } from "./useFormField";

type FormMessageProps = ComponentProps<"p">;

function FormMessage({ className, children, ref, ...props }: FormMessageProps) {
  const { error, formMessageId, invalid } = useFormField();
  const body = error ? String(error?.message) : children;

  if (!body) {
    return null;
  }

  return (
    <p
      ref={ref}
      id={formMessageId}
      className={cn(
        "pt-2 text-xs font-medium",
        invalid && "text-error-500",
        className,
      )}
      {...props}
    >
      {body}
    </p>
  );
}

FormMessage.displayName = "FormMessage";

export { FormMessage, type FormMessageProps };
