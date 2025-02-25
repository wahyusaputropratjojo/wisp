import { Link } from "@tanstack/react-router";
import { Loader2Icon } from "lucide-react";

import { Button } from "@components/ui/button";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@components/ui/form";
import { Input, InputPassword } from "@components/ui/input";

import { useSignInForm } from "@hooks/form";
import { useSignInMutation } from "@hooks/mutation";

import { type SignInFormData } from "@libraries/types/signIn.types";

function SignInForm() {
  const { mutate, isPending } = useSignInMutation();
  const form = useSignInForm();

  function onSubmit(data: SignInFormData) {
    mutate(data);
  }

  return (
    <Form methods={form} onSubmit={form.handleSubmit(onSubmit)}>
      <FormField
        control={form.control}
        name="email"
        render={({ field }) => (
          <FormItem>
            <FormLabel>Email Address</FormLabel>
            <FormControl>
              <Input disabled={isPending} className="pt-4" {...field} />
            </FormControl>
            <FormMessage />
          </FormItem>
        )}
      />
      <FormField
        control={form.control}
        name="password"
        render={({ field }) => (
          <FormItem>
            <FormLabel>Password</FormLabel>
            <FormControl>
              <InputPassword disabled={isPending} {...field} />
            </FormControl>
            <FormMessage />
          </FormItem>
        )}
      />
      <Link to="/forgot-password" from="/sign-in">
        <Button type="button" modifier="plain" intent="secondary">
          Forgot Password?
        </Button>
      </Link>
      <Button
        fullWidth
        size="large"
        disabled={isPending}
        className="gap-2"
        type="submit"
      >
        {isPending && (
          <span>
            <Loader2Icon className="animate-spin" />
          </span>
        )}
        Sign In
      </Button>
    </Form>
  );
}

export { SignInForm };
