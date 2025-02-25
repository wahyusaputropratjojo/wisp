import { type ComponentProps } from "react";

import { type VariantProps, cva } from "class-variance-authority";

import { cn } from "@libraries/utilities";

type CardTitleProps = ComponentProps<"p"> &
  VariantProps<typeof cardTitleVariants>;

const cardTitleVariants = cva(
  "line-clamp-2 font-bold text-pretty text-neutral-100",
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
      size: "md",
    },
  },
);

function CardTitle({ className, size, ref, ...props }: CardTitleProps) {
  return (
    <p
      ref={ref}
      className={cn(cardTitleVariants({ size, className }))}
      {...props}
    />
  );
}

CardTitle.displayName = "CardTitle";

export { CardTitle, type CardTitleProps };
