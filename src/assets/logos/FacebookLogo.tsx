import { SVGProps } from "react";

function FacebookLogo(props: SVGProps<SVGSVGElement>) {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 18 18"
      {...props}
    >
      <path
        fill="currentColor"
        d="M18 9.055C18 4.055 13.97 0 9 0S0 4.054 0 9.055c0 4.52 3.291 8.266 7.594 8.945v-6.328H5.309V9.055h2.285V7.06c0-2.27 1.343-3.523 3.4-3.523.984 0 2.014.177 2.014.177v2.228h-1.135c-1.118 0-1.467.698-1.467 1.415v1.698h2.496l-.399 2.617h-2.097V18C14.71 17.32 18 13.575 18 9.055Z"
      />
    </svg>
  );
}

export { FacebookLogo };
