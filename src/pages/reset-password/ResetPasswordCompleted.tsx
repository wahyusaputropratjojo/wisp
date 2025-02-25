import { Link } from "@tanstack/react-router";

import { Button } from "@components/ui/button";

function ResetPasswordCompleted() {
  return (
    <main className="container min-h-dvh sm:flex sm:items-center">
      <section className="mx-auto flex w-full max-w-lg flex-col items-center justify-center gap-16 rounded-sm p-4 sm:bg-neutral-800 sm:p-16">
        <Link to="/">
          <p className="w-min rounded-md bg-neutral-100 p-2 text-center text-2xl font-black text-neutral-800">
            WISP
          </p>
        </Link>
        <div className="flex w-full flex-col gap-4">
          <h1 className="rounded-sm text-center text-base font-bold">
            You're All Set
          </h1>
          <p className="text-sm text-neutral-300">
            You've successfully changed your password. We've signed you out from
            your other devices to help protect your account.
          </p>
          <Link to="/sign-in">
            <Button className="w-full uppercase" size="xl">
              Sign In
            </Button>
          </Link>
        </div>
      </section>
    </main>
  );
}

export { ResetPasswordCompleted };
