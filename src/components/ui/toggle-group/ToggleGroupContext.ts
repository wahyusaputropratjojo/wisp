import { createContext } from "react";

import { type VariantProps } from "class-variance-authority";

import { toggleVariants } from "../toggle";

const ToggleGroupContext = createContext<VariantProps<typeof toggleVariants>>({
  size: "default",
  variant: "default",
});

export { ToggleGroupContext };
