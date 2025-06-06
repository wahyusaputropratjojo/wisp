import tailwindcss from "@tailwindcss/vite";
import { TanStackRouterVite } from "@tanstack/router-vite-plugin";
import react from "@vitejs/plugin-react";
import path from "path";
import { defineConfig } from "vite";

export default defineConfig({
  resolve: {
    alias: {
      "@assets": path.resolve(__dirname, "./src/assets"),
      "@components": path.resolve(__dirname, "./src/components"),
      "@contexts": path.resolve(__dirname, "./src/contexts"),
      "@hooks": path.resolve(__dirname, "./src/hooks"),
      "@libraries": path.resolve(__dirname, "./src/libraries"),
      "@pages": path.resolve(__dirname, "./src/pages"),
      "@services": path.resolve(__dirname, "./src/services"),
    },
  },
  envPrefix: "APP_",
  plugins: [
    tailwindcss(),
    TanStackRouterVite({ target: "react", autoCodeSplitting: true }),
    react(),
  ],
  server: {
    port: 3000,
  },
});
