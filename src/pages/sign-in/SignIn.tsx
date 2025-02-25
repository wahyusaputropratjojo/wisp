import { Link } from "@tanstack/react-router";

import { WISPLogo } from "@assets/logos";

import { Button } from "@components/ui/button";

import { SignInForm } from "./SignInForm";

function SignIn() {
  return (
    <main className="container min-h-dvh py-8 sm:flex sm:items-center">
      <section className="mx-auto flex w-full max-w-lg flex-col items-center justify-center gap-16 rounded p-4 sm:bg-neutral-800 sm:p-16">
        <Link to="/" from="/sign-in">
          <WISPLogo />
        </Link>
        <div className="flex w-full flex-col gap-4">
          <h1 className="rounded text-center text-base font-bold">Sign In</h1>
          <SignInForm />
        </div>
        <div className="flex items-baseline gap-1">
          <p className="text-sm">Don't have an account?</p>
          <Link to="/sign-up" from="/sign-in">
            <Button modifier="plain" intent="secondary">
              Sign Up
            </Button>
          </Link>
        </div>
      </section>
    </main>
  );
}

export { SignIn };
