import { Globe } from "lucide-react";

import { ThemeMode } from "@components/theme-mode";

function Header() {
  return (
    <header className="flex h-16 items-center justify-between bg-base-100 p-4 lg:p-10">
      <p className="text-3xl font-black text-primary-700">WISP</p>
      <nav></nav>
      <div className="flex gap-4">
        <button className="cursor-pointer">
          <Globe className="size-6 text-primary-700" />
        </button>
        <ThemeMode />
      </div>
    </header>
  );
}

export { Header };
