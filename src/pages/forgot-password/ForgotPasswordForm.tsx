import { Button } from "@components/ui/button";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@components/ui/form";
import { Input } from "@components/ui/input";

import { useForgotPasswordForm } from "@hooks/form";
import { useForgotPasswordMutation } from "@hooks/mutation";

import { type ForgotPasswordFormData } from "@libraries/types/forgotPassword.types";

function ForgotPasswordForm() {
  const { mutate, isPending } = useForgotPasswordMutation();
  const form = useForgotPasswordForm();

  function onSubmit(data: ForgotPasswordFormData) {
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
      <Button fullWidth size="large" disabled={isPending} type="submit">
        Continue
      </Button>
    </Form>
  );
}

export { ForgotPasswordForm };
