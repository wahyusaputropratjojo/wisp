import { type ComponentProps } from "react";

import { cn } from "@libraries/utilities";

type WISPLogoProps = ComponentProps<"p">;

function WISPLogo({ className, ...props }: WISPLogoProps) {
  return (
    <p
      className={cn(
        "font-inter w-min text-center text-xl font-black text-neutral-100 italic",
        className,
      )}
      {...props}
    >
      WISP
    </p>
  );
}

export { WISPLogo };
