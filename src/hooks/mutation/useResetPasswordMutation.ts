import { useMutation } from "@tanstack/react-query";
import { useNavigate } from "@tanstack/react-router";

import { useToast } from "@hooks/useToast";

import { ResetPasswordFormData } from "@libraries/types/resetPassword.types";

import { updateUser } from "@services/sdk/supabase/wisp/user-management";

function useResetPasswordMutation() {
  const navigate = useNavigate();

  const { toast } = useToast();

  return useMutation({
    mutationFn: (data: Omit<ResetPasswordFormData, "confirmPassword">) =>
      updateUser(data),
    onSuccess: () => {
      toast({
        title: "Success",
        description: "Success Update Password",
        variant: "success",
      });
      setTimeout(() => navigate({ to: "/", from: "/reset-password" }), 500);
    },
    onError: (error) => {
      toast({ title: "Error", description: error.message, variant: "error" });
    },
  });
}

export { useResetPasswordMutation };
