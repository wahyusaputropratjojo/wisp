import { useMutation } from "@tanstack/react-query";

import { useToast } from "@hooks/useToast";

import { ForgotPasswordFormData } from "@libraries/types/forgotPassword.types";

import { resetPassword } from "@services/sdk/supabase/wisp/user-management";

function useForgotPasswordMutation() {
  const { toast } = useToast();

  return useMutation({
    mutationFn: (data: ForgotPasswordFormData) => resetPassword(data.email),
    onSuccess: () => {
      toast({
        title: "Email Recovery Successful",
        description: "Check your email to recover account",
        variant: "success",
      });
    },
    onError: (error) => {
      toast({
        title: "Email Recovery Failed",
        description: error.message,
        variant: "error",
      });
    },
  });
}

export { useForgotPasswordMutation };
