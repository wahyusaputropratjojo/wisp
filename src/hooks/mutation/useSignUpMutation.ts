import { useMutation, useQueryClient } from "@tanstack/react-query";
import { useNavigate } from "@tanstack/react-router";

import { useToast } from "@hooks/useToast";

import { SignUpFormData } from "@libraries/types/signUp.types";
import { userSessionKey } from "@libraries/utilities/query-keys";

import { signUp } from "@services/sdk/supabase/wisp/user-management";

function useSignUpMutation() {
  const queryClient = useQueryClient();
  const navigate = useNavigate();

  const { toast } = useToast();

  return useMutation({
    mutationFn: (data: Omit<SignUpFormData, "confirmPassword">) => signUp(data),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: [userSessionKey] });
      toast({
        title: "Sign Up Successful",
        description: "Your account has been created successfully",
        variant: "success",
      });
      navigate({ to: "/", from: "/sign-up" });
    },
    onError: (error) => {
      toast({
        title: "Sign Up Failed",
        description: error.message,
        variant: "error",
      });
      console.error(error);
    },
  });
}

export { useSignUpMutation };
