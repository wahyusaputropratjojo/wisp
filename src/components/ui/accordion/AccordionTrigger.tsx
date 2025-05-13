import { type ComponentProps } from "react";

import { ChevronDownIcon } from "lucide-react";
import { Accordion as AccordionPrimitive } from "radix-ui";

import { cn } from "@libraries/utilities";

type AccordionTriggerProps = ComponentProps<typeof AccordionPrimitive.Trigger>;

function AccordionTrigger({
  className,
  children,
  ref,
  ...props
}: AccordionTriggerProps) {
  return (
    <AccordionPrimitive.Header className="flex text-neutral-400 transition-all hover:text-neutral-100">
      <AccordionPrimitive.Trigger
        ref={ref}
        className={cn(
          "flex flex-1 items-center justify-between py-4 text-sm font-medium [&[data-state=open]>svg]:rotate-180",
          className,
        )}
        {...props}
      >
        {children}
        <ChevronDownIcon className="h-4 w-4 shrink-0 transition-transform duration-200 hover:text-neutral-100" />
      </AccordionPrimitive.Trigger>
    </AccordionPrimitive.Header>
  );
}
AccordionTrigger.displayName = AccordionPrimitive.Trigger.displayName;

export { type AccordionTriggerProps, AccordionTrigger };
