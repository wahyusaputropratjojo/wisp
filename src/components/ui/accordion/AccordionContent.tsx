import { type ComponentProps } from "react";

import * as AccordionPrimitive from "@radix-ui/react-accordion";

import { cn } from "@libraries/utilities";

type AccordionContentProps = ComponentProps<typeof AccordionPrimitive.Content>;

function AccordionContent({
  className,
  children,
  ref,
  ...props
}: AccordionContentProps) {
  return (
    <AccordionPrimitive.Content
      ref={ref}
      className="data-[state=closed]:animate-accordion-up data-[state=open]:animate-accordion-down overflow-hidden text-sm transition-all"
      {...props}
    >
      <div className={cn("pt-0 pb-4", className)}>{children}</div>
    </AccordionPrimitive.Content>
  );
}
AccordionContent.displayName = AccordionPrimitive.Content.displayName;

export { type AccordionContentProps, AccordionContent };
