import { type ComponentProps } from "react";

import {
  type FieldValues,
  FormProvider,
  type UseFormReturn,
} from "react-hook-form";

import { cn } from "@libraries/utilities";

type FormProps<T extends FieldValues> = ComponentProps<"form"> & {
  methods: UseFormReturn<T>;
};

function Form<T extends FieldValues>({
  children,
  className,
  methods,
  ...props
}: FormProps<T>) {
  return (
    <FormProvider {...methods}>
      <form className={cn("grid gap-6", className)} {...props}>
        {children}
      </form>
    </FormProvider>
  );
}

Form.displayName = "Form";

export { Form, type FormProps };
