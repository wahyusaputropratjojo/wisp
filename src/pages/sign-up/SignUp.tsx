import { Link } from "@tanstack/react-router";

import { WISPLogo } from "@assets/logos";

import { Button } from "@components/ui/button";

import { SignUpForm } from "./SignUpForm";

function SignUp() {
  return (
    <main className="container min-h-dvh py-8 sm:flex sm:items-center">
      <section className="mx-auto flex w-full max-w-lg flex-col items-center justify-center gap-16 rounded p-4 sm:bg-neutral-800 sm:p-16">
        <Link to="/" from="/sign-up">
          <WISPLogo />
        </Link>
        <div className="flex w-full flex-col gap-4">
          <h1 className="rounded text-center text-base font-bold">Sign Up</h1>
          <SignUpForm />
        </div>
        <div className="flex items-baseline gap-1">
          <p className="text-sm">Already have an account?</p>
          <Link to="/sign-in" from="/sign-up">
            <Button intent="secondary" modifier="plain">
              Sign In
            </Button>
          </Link>
        </div>
      </section>
    </main>
  );
}

export { SignUp };
