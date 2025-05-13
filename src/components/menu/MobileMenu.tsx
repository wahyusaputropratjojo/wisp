import { useState } from "react";

import { Link } from "@tanstack/react-router";
import { MenuIcon, XIcon } from "lucide-react";
import { Dialog } from "radix-ui";

import { WISPLogo } from "@assets/logos";

import { Button } from "@components/ui/button";

// import { useSignOutMutation } from "@hooks/mutation";
// import { useUserQuery } from "@hooks/query";

function MobileMenu() {
  // const { mutate: signOut } = useSignOutMutation();
  // const { data: user, isSuccess } = useUserQuery();

  const [open, setOpen] = useState<boolean>(false);

  function toggleOpen() {
    setOpen(!open);
  }

  return (
    <Dialog.Root open={open} onOpenChange={setOpen}>
      <Dialog.Trigger>
        <MenuIcon />
      </Dialog.Trigger>
      <Dialog.Portal>
        <Dialog.Overlay />
        <Dialog.Content className="fixed inset-0 z-100 flex size-full flex-col gap-4 bg-neutral-800 py-2">
          <section className="container flex w-full items-center justify-between">
            <Link
              to="/"
              className="flex h-12 items-center"
              onClick={toggleOpen}
            >
              <WISPLogo />
            </Link>
            <Dialog.Close>
              <XIcon />
            </Dialog.Close>
          </section>
          <section className="fixed bottom-0 z-200 container flex flex-col gap-2 py-8">
            <Link to="/sign-in" onClick={toggleOpen}>
              <Button fullWidth intent="secondary">
                Sign In
              </Button>
            </Link>
            <Link to="/sign-up" onClick={toggleOpen}>
              <Button fullWidth>Sign Up</Button>
            </Link>
          </section>
        </Dialog.Content>
      </Dialog.Portal>
    </Dialog.Root>
  );
}

export { MobileMenu };
