import { Button } from "@components/ui/button";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@components/ui/form";
import { InputPassword } from "@components/ui/input";

import { useResetPasswordForm } from "@hooks/form";
import { useResetPasswordMutation } from "@hooks/mutation";

import { ResetPasswordFormData } from "@libraries/types/resetPassword.types";

function ResetPasswordForm() {
  const { mutate, isPending } = useResetPasswordMutation();
  const form = useResetPasswordForm();

  function onSubmit(data: Omit<ResetPasswordFormData, "confirmPassword">) {
    try {
      mutate(data);
    } catch (error) {
      console.error(error);
    }
  }
  return (
    <Form methods={form} onSubmit={form.handleSubmit(onSubmit)}>
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
        disabled={isPending}
        className="w-full uppercase"
        size="xl"
        type="submit"
      >
        Create New Password
      </Button>
    </Form>
  );
}

export { ResetPasswordForm };
