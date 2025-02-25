import { useQuery } from "@tanstack/react-query";

import { userSessionKey } from "@libraries/utilities/query-keys";

import { getSession } from "@services/sdk/supabase/wisp/user-management";

function useUserSessionQuery() {
  return useQuery({
    queryKey: [userSessionKey],
    queryFn: getSession,
    select: (data) => data.session,
  });
}

export { useUserSessionQuery };
