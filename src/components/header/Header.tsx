import { Link } from "@tanstack/react-router";
import { Globe } from "lucide-react";

// import { ThemeMode } from "@components/theme-mode";

function Header() {
  return (
    <header className="flex h-16 items-center justify-between p-4 lg:p-10">
      <Link to="/">
        <p className="text-3xl font-black text-neutral-50">WISP</p>
      </Link>
      <div className="flex gap-4">
        <button className="cursor-pointer">
          <Globe className="size-6 text-neutral-50" />
        </button>
        {/* <ThemeMode /> */}
      </div>
    </header>
  );
}

export { Header };
