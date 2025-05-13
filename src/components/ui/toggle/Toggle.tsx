import { type ComponentProps } from "react";

import { type VariantProps, cva } from "class-variance-authority";
import { Toggle as TogglePrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type ToggleProps = ComponentProps<typeof TogglePrimitive.Root> &
  VariantProps<typeof toggleVariants> & {
    asChild?: boolean;
  };

const toggleVariants = cva(
  "ring-offset-background focus-visible:ring-ring inline-flex cursor-pointer items-center justify-center gap-2 rounded-md text-sm font-medium text-neutral-100 transition-colors hover:bg-neutral-700 hover:text-neutral-100/50 focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 data-[state=on]:bg-neutral-700 data-[state=on]:text-neutral-100 [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0",
  {
    variants: {
      variant: {
        default: "bg-transparent",
        outline:
          "border border-neutral-700 bg-transparent hover:bg-neutral-700 hover:text-neutral-100/50",
      },
      size: {
        default: "h-10 min-w-10 px-3",
        sm: "h-9 min-w-9 px-2.5",
        lg: "h-11 min-w-11 px-5",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  },
);

function Toggle({ className, variant, size, ref, ...props }: ToggleProps) {
  return (
    <TogglePrimitive.Root
      ref={ref}
      className={cn(toggleVariants({ variant, size, className }))}
      {...props}
    />
  );
}
Toggle.displayName = TogglePrimitive.Root.displayName;

export { type ToggleProps, Toggle, toggleVariants };
