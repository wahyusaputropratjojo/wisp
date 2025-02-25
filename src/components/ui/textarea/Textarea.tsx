import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type TextareaProps = ComponentProps<"textarea">;

function Textarea({ className, ref, ...props }: TextareaProps) {
  return (
    <textarea
      className={cn(
        "flex min-h-[60px] w-full rounded-md border border-neutral-800 bg-transparent px-3 py-2 text-base shadow-xs placeholder:text-neutral-100 focus-visible:ring-1 focus-visible:ring-neutral-500 focus-visible:outline-hidden disabled:cursor-not-allowed disabled:opacity-50 md:text-sm",
        className,
      )}
      ref={ref}
      {...props}
    />
  );
}

Textarea.displayName = "Textarea";

export { Textarea, type TextareaProps };
