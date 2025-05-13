import { WISPLogo } from "@assets/logos";

function Footer() {
  return (
    <footer className="bg-neutral-800 px-2 py-12">
      <section className="container space-y-6">
        <article className="flex justify-center sm:justify-start">
          <WISPLogo />
        </article>
        <hr className="text-neutral-100" />
        <article className="flex flex-col gap-8 sm:justify-between">
          <div className="max-w-[85ch] space-y-4">
            <p className="text-xs">
              2025, WISP. All rights reserved. WISP and the WISP logo are
              trademarks or registered trademarks of WISP in the Indonesia and
              elsewhere. Other brands or product names are the trademarks of
              their respective owners. Our website may contain links to other
              sites and resources provided by third parties. These links are
              provided for your convenience only. WISP has no control over the
              contents of those sites or resources and accepts no responsibility
              for them or for any loss or damage that may arise from your use of
              them.
            </p>
            <p className="text-xs">
              This is a personal project. Any copyright-related claims I make
              are purely fictional and included for aesthetic purposes only.
            </p>
          </div>
        </article>
      </section>
    </footer>
  );
}

export { Footer };
