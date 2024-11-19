import React from "react";
import ReactDOM from "react-dom/client";

import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { ReactQueryDevtools } from "@tanstack/react-query-devtools";
import { RouterProvider, createRouter } from "@tanstack/react-router";

import { Toaster } from "@components/ui/toaster/Toaster";

import { useAuthentication } from "@hooks/useAuthentication";

import { AuthenticationProvider } from "./contexts/authentication";
import { routeTree } from "./routeTree.gen";

import "./index.css";

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      refetchOnWindowFocus: false,
    },
  },
});

const router = createRouter({
  routeTree,
  context: {
    isAuthenticated: undefined!,
    setIsAuthenticated: undefined!,
    isLoading: undefined!,
  },
});

declare module "@tanstack/react-router" {
  interface Register {
    router: typeof router;
  }
}

function App() {
  const auth = useAuthentication();
  return (
    <>
      <RouterProvider router={router} context={auth} />
      <Toaster visibleToasts={3} offset={32} gap={16} />
    </>
  );
}

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <QueryClientProvider client={queryClient}>
      <AuthenticationProvider>
        <App />
      </AuthenticationProvider>
      <ReactQueryDevtools />
    </QueryClientProvider>
  </React.StrictMode>,
);
