import { ChevronUpIcon } from "lucide-react";

function Footer() {
  return (
    <footer className="flex items-center justify-between bg-primary-200 p-12">
      <section>
        <p className="text-3xl font-black text-base-900">WISP</p>
        {/* <SteamGridDBLogo className="fill-white" /> */}
      </section>
      <section>
        <ChevronUpIcon className="text-base-900" />
      </section>
    </footer>
  );
}

export { Footer };
