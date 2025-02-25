import { Link } from "@tanstack/react-router";

import { WISPLogo } from "@assets/logos";

import { ResetPasswordForm } from "./ResetPasswordForm";

function ResetPassword() {
  return (
    <main className="container min-h-dvh sm:flex sm:items-center">
      <section className="mx-auto flex w-full max-w-lg flex-col items-center justify-center gap-16 rounded-sm p-4 sm:bg-neutral-800 sm:p-16">
        <Link to="/">
          <WISPLogo />
        </Link>
        <div className="flex w-full flex-col gap-4">
          <h1 className="rounded-sm text-center text-base font-bold">
            Reset Password
          </h1>
          <p className="text-sm text-neutral-300">
            Enter a new password for your account.
          </p>
          <ResetPasswordForm />
        </div>
      </section>
    </main>
  );
}

export { ResetPassword };
