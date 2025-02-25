import { zodResolver } from "@hookform/resolvers/zod";
import { type UseFormProps, useForm } from "react-hook-form";

import {
  type ForgotPasswordFormData,
  forgotPasswordFormSchema,
} from "@libraries/types/forgotPassword.types";

function useForgotPasswordForm(options?: UseFormProps<ForgotPasswordFormData>) {
  return useForm<ForgotPasswordFormData>({
    resolver: zodResolver(forgotPasswordFormSchema),
    defaultValues: {
      email: "",
    },
    ...options,
  });
}

export { useForgotPasswordForm };
