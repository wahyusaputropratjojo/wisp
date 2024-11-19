import * as React from "react";

import {
  CircleCheckIcon,
  InfoIcon,
  CircleXIcon,
  CircleAlertIcon,
  LoaderCircleIcon,
  XIcon,
} from "lucide-react";
import { Toaster as Sonner } from "sonner";

type ToasterProps = React.ComponentProps<typeof Sonner>;

const Toaster = ({ ...props }: ToasterProps) => {
  return (
    <Sonner
      icons={{
        success: <CircleCheckIcon className="text-success-700" />,
        info: <InfoIcon />,
        error: <CircleXIcon className="text-error-700" />,
        warning: <CircleAlertIcon className="text-warning-700" />,
        loading: <LoaderCircleIcon className="animate-spin" />,
        close: <XIcon size={12} />,
      }}
      toastOptions={{
        unstyled: true,
        classNames: {
          toast: "bg-neutral-800 w-full p-4 flex rounded gap-2 items-center",
          title: "text-sm font-bold",
          description: "text-sm",
          closeButton: "text-neutral-900",
          icon: "size-min",
        },
      }}
      {...props}
    />
  );
};

export { Toaster };
