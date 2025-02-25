import {
  type Dispatch,
  type ReactNode,
  type SetStateAction,
  createContext,
  useLayoutEffect,
  useState,
} from "react";

import { useUserSessionQuery } from "@hooks/query";

type AuthContextValue = {
  isLoading: boolean;
  isAuthenticated: boolean;
  setIsAuthenticated: Dispatch<SetStateAction<boolean>>;
};

type AuthParams = {
  children: ReactNode;
};

const AuthContext = createContext<AuthContextValue | null>(null);

function AuthProvider({ children }: AuthParams) {
  const [isAuthenticated, setIsAuthenticated] = useState<boolean>(false);

  const { data, isSuccess, isLoading, isError } = useUserSessionQuery();

  useLayoutEffect(() => {
    if (isSuccess) {
      setIsAuthenticated(!!data);
      console.log(data);
    }
  }, [data, isSuccess]);

  if (isLoading) {
    return <p>Loading...</p>;
  }

  if (isError) {
    return <p>Error</p>;
  }

  return (
    <AuthContext value={{ isLoading, isAuthenticated, setIsAuthenticated }}>
      {children}
    </AuthContext>
  );
}

export { AuthProvider, AuthContext, type AuthContextValue };
