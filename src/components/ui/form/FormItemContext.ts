import { createContext } from "react";

type FormItemContextValue = {
  id: string;
};

const FormItemContext = createContext<FormItemContextValue>(
  {} as FormItemContextValue,
);

export { FormItemContext, type FormItemContextValue };
