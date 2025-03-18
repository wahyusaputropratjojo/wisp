import { type ComponentProps } from "react";

import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

type CardDescriptionProps = ComponentProps<"p"> &
  VariantProps<typeof cardDescriptionVariants>;

const cardDescriptionVariants = cva(
  "line-clamp-2 max-w-[40ch] text-pretty text-neutral-400",
  {
    variants: {
      size: {
        xs: "text-xs",
        sm: "text-sm",
        md: "text-base",
        lg: "text-lg",
        xl: "text-xl",
      },
    },
    defaultVariants: {
      size: "sm",
    },
  },
);

function CardDescription({ className, ref, ...props }: CardDescriptionProps) {
  return (
    <p
      ref={ref}
      className={cn(cardDescriptionVariants({ className }))}
      {...props}
    />
  );
}

CardDescription.displayName = "CardDescription";

export { CardDescription };
