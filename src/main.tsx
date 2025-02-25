import React, { Fragment } from "react";
import ReactDOM from "react-dom/client";

import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
// import { ReactQueryDevtools } from "@tanstack/react-query-devtools";
import { RouterProvider, createRouter } from "@tanstack/react-router";

import { Toaster } from "@components/ui/toaster";

import { useAuth } from "@hooks/useAuth";

import { AuthProvider } from "./contexts/auth";
import { routeTree } from "./routeTree.gen";

import "./main.css";

const queryClient = new QueryClient();

export const router = createRouter({
  routeTree,
  context: {
    isLoading: undefined!,
    isAuthenticated: undefined!,
    setIsAuthenticated: undefined!,
  },
});

declare module "@tanstack/react-router" {
  interface Register {
    router: typeof router;
  }
}

function App() {
  const { isAuthenticated, setIsAuthenticated } = useAuth();

  return (
    <Fragment>
      <RouterProvider
        router={router}
        context={{ isAuthenticated, setIsAuthenticated }}
      />
      <Toaster />
    </Fragment>
  );
}

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <QueryClientProvider client={queryClient}>
      <AuthProvider>
        <App />
      </AuthProvider>
      {/* <ReactQueryDevtools /> */}
    </QueryClientProvider>
  </React.StrictMode>,
);
