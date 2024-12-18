import {
  Controller,
  ControllerProps,
  FieldValues,
  FieldPath,
} from "react-hook-form";

import { FormFieldContext } from "./Form";

const FormField = <
  TFieldValues extends FieldValues = FieldValues,
  TName extends FieldPath<TFieldValues> = FieldPath<TFieldValues>,
>({
  ...props
}: ControllerProps<TFieldValues, TName>) => {
  return (
    <FormFieldContext.Provider value={{ name: props.name }}>
      <Controller {...props} />
    </FormFieldContext.Provider>
  );
};

export { FormField };
