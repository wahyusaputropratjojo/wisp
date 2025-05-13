import { type ComponentProps } from "react";

import { Switch as SwitchPrimitives } from "radix-ui";

import { cn } from "@libraries/utilities";

type SwitchProps = ComponentProps<typeof SwitchPrimitives.Root>;

function Switch({ className, ref, ...props }: SwitchProps) {
  return (
    <SwitchPrimitives.Root
      className={cn(
        "peer focus-visible:ring-primary-100 inline-flex h-6 w-11 shrink-0 cursor-pointer items-center rounded-full border-2 border-transparent transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-offset-neutral-900 focus-visible:outline-none disabled:cursor-not-allowed disabled:opacity-50 data-[state=checked]:bg-neutral-100 data-[state=unchecked]:bg-neutral-700",
        className,
      )}
      {...props}
      ref={ref}
    >
      <SwitchPrimitives.Thumb
        className={cn(
          "pointer-events-none block h-5 w-5 rounded-full bg-neutral-900 shadow-lg ring-0 transition-transform data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0",
        )}
      />
    </SwitchPrimitives.Root>
  );
}
Switch.displayName = SwitchPrimitives.Root.displayName;

export { type SwitchProps, Switch };
