/** @type {import("prettier").Config} */
export default {
  arrowParens: "always",
  bracketSameLine: false,
  bracketSpacing: true,
  embeddedLanguageFormatting: "auto",
  endOfLine: "lf",
  experimentalTernaries: true,
  htmlWhitespaceSensitivity: "css",
  jsxSingleQuote: false,
  printWidth: 80,
  proseWrap: "preserve",
  quoteProps: "as-needed",
  semi: true,
  singleAttributePerLine: false,
  singleQuote: false,
  tabWidth: 2,
  trailingComma: "all",
  useTabs: false,

  // Prettier Plugin Sort Imports
  importOrder: [
    "^(react(/(.*))?$|react-dom(/(.*))?)$",
    "<THIRD_PARTY_MODULES>",
    "^@assets/(.*)$",
    "^@components/(.*)$",
    "^@contexts/(.*)$",
    "^@hooks/(.*)$",
    "^@libraries/(.*)$",
    "^@pages/(.*)$",
    "^@services/(.*)$",
    "^[./](?!.*\\.css$)",
    "^(.*/)?[^/]+\\.css$",
  ],
  importOrderSeparation: true,

  // Tailwind CSS
  tailwindConfig: "./tailwind.config.ts",
  tailwindFunctions: ["clsx", "cva", "cn"],

  plugins: [
    "@trivago/prettier-plugin-sort-imports",
    "prettier-plugin-tailwindcss",
    "prettier-plugin-packagejson",
  ],
};
