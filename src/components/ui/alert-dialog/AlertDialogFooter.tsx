import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type AlertDialogFooterProps = ComponentProps<"div">;

function AlertDialogFooter({ className, ...props }: AlertDialogFooterProps) {
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
AlertDialogFooter.displayName = "AlertDialogFooter";

export { type AlertDialogFooterProps, AlertDialogFooter };
