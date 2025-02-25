import { zodResolver } from "@hookform/resolvers/zod";
import { type UseFormProps, useForm } from "react-hook-form";

import {
  type SignUpFormData,
  signUpFormSchema,
} from "@libraries/types/signUp.types";

function useSignUpForm(options?: UseFormProps<SignUpFormData>) {
  return useForm<SignUpFormData>({
    resolver: zodResolver(signUpFormSchema),
    defaultValues: {
      email: "",
      password: "",
      firstName: "",
      lastName: "",
      displayName: "",
      confirmPassword: "",
    },
    ...options,
  });
}

export { useSignUpForm };
