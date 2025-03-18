import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type AlertDialogHeaderProps = ComponentProps<"div">;

function AlertDialogHeader({ className, ...props }: AlertDialogHeaderProps) {
  return (
    <div
      className={cn(
        "flex flex-col space-y-2 text-center sm:text-left",
        className,
      )}
      {...props}
    />
  );
}
AlertDialogHeader.displayName = "AlertDialogHeader";

export { type AlertDialogHeaderProps, AlertDialogHeader };
