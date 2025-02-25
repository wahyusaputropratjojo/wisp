import { Link } from "@tanstack/react-router";

import { WISPLogo } from "@assets/logos";

import { Button } from "@components/ui/button";

import { ForgotPasswordForm } from "./ForgotPasswordForm";

function ForgotPassword() {
  return (
    <main className="container min-h-dvh sm:flex sm:items-center">
      <section className="mx-auto flex w-full max-w-lg flex-col items-center justify-center gap-16 rounded-sm p-4 sm:bg-neutral-800 sm:p-16">
        <Link to="/">
          <WISPLogo />
        </Link>
        <div className="flex w-full flex-col gap-4">
          <h1 className="rounded-sm text-center text-base font-bold">
            Forgot Password
          </h1>
          <p className="text-sm text-neutral-300">
            Enter your account email address to receive a security code.
          </p>
          <ForgotPasswordForm />
        </div>
        <div className="flex items-baseline gap-1">
          <p className="text-sm">Back to</p>
          <Link to="/sign-in" from="/forgot-password">
            <Button intent="secondary" modifier="plain">
              Sign In
            </Button>
          </Link>
        </div>
      </section>
    </main>
  );
}

export { ForgotPassword };
