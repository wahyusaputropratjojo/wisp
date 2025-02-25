import { useMutation, useQueryClient } from "@tanstack/react-query";
import { useNavigate } from "@tanstack/react-router";

import { useToast } from "@hooks/useToast";

import { SignInFormData } from "@libraries/types/signIn.types";
import { userSessionKey } from "@libraries/utilities/query-keys";

import { signIn } from "@services/sdk/supabase/wisp/user-management";

function useSignInMutation() {
  const queryClient = useQueryClient();
  const navigate = useNavigate();

  const { toast } = useToast();

  return useMutation({
    mutationFn: (data: SignInFormData) => signIn(data),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: [userSessionKey] });
      toast({
        title: "Sign In Successful",
        description: "You've successfully signed in",
        variant: "success",
      });
      navigate({ to: "/", from: "/sign-in", replace: true });
    },
    onError: (error) => {
      toast({
        title: "Sign In Failed",
        description: error.message,
        variant: "error",
      });
    },
  });
}

export { useSignInMutation };
