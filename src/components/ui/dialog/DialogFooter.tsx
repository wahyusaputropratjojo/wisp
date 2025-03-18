import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type DialogFooterProps = ComponentProps<"div">;

function DialogFooter({ className, ...props }: DialogFooterProps) {
  return (
    <div
      className={cn(
        "flex flex-col-reverse sm:flex-row sm:justify-end sm:space-x-2",
        className,
      )}
      {...props}
    />
  );
}
DialogFooter.displayName = "DialogFooter";

export { type DialogFooterProps, DialogFooter };
