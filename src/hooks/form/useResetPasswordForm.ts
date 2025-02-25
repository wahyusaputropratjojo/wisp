import { zodResolver } from "@hookform/resolvers/zod";
import { type UseFormProps, useForm } from "react-hook-form";

import {
  type ResetPasswordFormData,
  resetPasswordFormSchema,
} from "@libraries/types/resetPassword.types";

function useResetPasswordForm(options?: UseFormProps<ResetPasswordFormData>) {
  return useForm<ResetPasswordFormData>({
    resolver: zodResolver(resetPasswordFormSchema),
    defaultValues: {
      password: "",
      confirmPassword: "",
    },
    ...options,
  });
}

export { useResetPasswordForm };
