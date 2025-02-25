import js from "@eslint/js";
import tanstackQuery from "@tanstack/eslint-plugin-query";
import tanstackRouter from "@tanstack/eslint-plugin-router";
import react from "eslint-plugin-react";
import storybook from "eslint-plugin-storybook";
// import tailwindcss from "eslint-plugin-tailwindcss";
import globals from "globals";
import ts from "typescript-eslint";

export default [
  js.configs.recommended,
  react.configs.flat["jsx-runtime"],
  ...ts.configs.recommended,
  ...tanstackQuery.configs["flat/recommended"],
  ...tanstackRouter.configs["flat/recommended"],
  // ...tailwindcss.configs["flat/recommended"],
  ...storybook.configs["flat/recommended"],
  { files: ["**/*.{js,mjs,cjs,ts,jsx,tsx}"] },
  { languageOptions: { globals: globals.browser } },
  {
    settings: {
      tailwindcss: {
        callees: ["classnames", "clsx", "ctl", "cva", "cn"],
        cssFiles: [
          "**/*.css",
          "!**/node_modules",
          "!**/.*",
          "!**/dist",
          "!**/build",
        ],
        cssFilesRefreshRate: 5_000,
        removeDuplicates: true,
        skipClassAttribute: false,
        whitelist: [],
        tags: [],
        classRegex: "^class(Name)?$",
      },
    },
  },
];
