import { useMutation, useQueryClient } from "@tanstack/react-query";

import { useToast } from "@hooks/useToast";

import { userSessionKey } from "@libraries/utilities/query-keys";

import { signOut } from "@services/sdk/supabase/wisp/user-management";

function useSignOutMutation() {
  const queryClient = useQueryClient();

  const { toast } = useToast();

  return useMutation({
    mutationFn: () => signOut(),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: [userSessionKey] });

      toast({
        title: "Sign Out Successful",
        description: "You've successfully signed out",
        variant: "success",
      });
    },
    onError: (error) => {
      toast({
        title: "Sign Out Failed",
        description: error.message,
        variant: "error",
      });
    },
  });
}

export { useSignOutMutation };
