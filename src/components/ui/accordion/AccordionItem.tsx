import { type ComponentProps } from "react";

import { Accordion as AccordionPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type AccordionItemProps = ComponentProps<typeof AccordionPrimitive.Item>;

function AccordionItem({ className, ref, ...props }: AccordionItemProps) {
  return (
    <AccordionPrimitive.Item
      ref={ref}
      className={cn("border-b border-neutral-400", className)}
      {...props}
    />
  );
}
AccordionItem.displayName = "AccordionItem";

export { type AccordionItemProps, AccordionItem };
