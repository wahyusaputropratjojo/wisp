import { useQuery } from "@tanstack/react-query";

import { userKey } from "@libraries/utilities/query-keys";

import { getUser } from "@services/sdk/supabase/wisp/user-management";

import { useAuth } from "../useAuth";

function useUserQuery() {
  const { isAuthenticated } = useAuth();

  return useQuery({
    queryKey: [userKey],
    queryFn: getUser,
    select: (data) => data.user.userMetadata,
    enabled: isAuthenticated,
    retry: 1,
  });
}

export { useUserQuery };
