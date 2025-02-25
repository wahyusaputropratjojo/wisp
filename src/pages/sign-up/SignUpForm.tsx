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

import { useSignUpForm } from "@hooks/form";
import { useSignUpMutation } from "@hooks/mutation";

import { SignUpFormData } from "@libraries/types/signUp.types";

function SignUpForm() {
  const { mutate, isPending } = useSignUpMutation();
  const form = useSignUpForm();

  function onSubmit(data: SignUpFormData) {
    try {
      mutate(data);
    } catch (error) {
      console.log(error);
    }
  }
  return (
    <Form methods={form} onSubmit={form.handleSubmit(onSubmit)}>
      <FormField
        control={form.control}
        name="firstName"
        render={({ field }) => (
          <FormItem>
            <FormLabel>First Name</FormLabel>
            <FormControl>
              <Input disabled={isPending} className="pt-4" {...field} />
            </FormControl>
            <FormMessage />
          </FormItem>
        )}
      />
      <FormField
        control={form.control}
        name="lastName"
        render={({ field }) => (
          <FormItem>
            <FormLabel>Last Name</FormLabel>
            <FormControl>
              <Input disabled={isPending} className="pt-4" {...field} />
            </FormControl>
            <FormMessage />
          </FormItem>
        )}
      />
      <FormField
        control={form.control}
        name="displayName"
        render={({ field }) => (
          <FormItem>
            <FormLabel>Display Name</FormLabel>
            <FormControl>
              <Input disabled={isPending} className="pt-4" {...field} />
            </FormControl>
            <FormMessage />
          </FormItem>
        )}
      />
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
      <FormField
        control={form.control}
        name="confirmPassword"
        render={({ field }) => (
          <FormItem>
            <FormLabel>Confirm Password</FormLabel>
            <FormControl>
              <InputPassword disabled={isPending} {...field} />
            </FormControl>
            <FormMessage />
          </FormItem>
        )}
      />
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
        Sign Up
      </Button>
    </Form>
  );
}

export { SignUpForm };
