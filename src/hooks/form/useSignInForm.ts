import { zodResolver } from "@hookform/resolvers/zod";
import { type UseFormProps, useForm } from "react-hook-form";

import {
  type SignInFormData,
  signInFormSchema,
} from "@libraries/types/signIn.types";

function useSignInForm(options?: UseFormProps<SignInFormData>) {
  return useForm<SignInFormData>({
    resolver: zodResolver(signInFormSchema),
    defaultValues: {
      email: "",
      password: "",
    },
    ...options,
  });
}

export { useSignInForm };
