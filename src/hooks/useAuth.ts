import { useContext } from "react";

import { AuthContext, type AuthContextValue } from "@contexts/auth";

export function useAuth(): AuthContextValue {
  const authContext = useContext(AuthContext);

  if (!authContext) {
    throw new Error(
      "The useAuth hook can only be used within an AuthProvider component.",
    );
  }

  return authContext;
}
