import { z } from "zod";

const resetPasswordFormSchema = z
  .object({
    password: z.string().min(1, { message: "Required" }),
    confirmPassword: z.string().min(1, { message: "Required" }),
  })
  .refine(({ password, confirmPassword }) => confirmPassword === password, {
    message: "Passwords don't match",
    path: ["confirmPassword"],
  });

type ResetPasswordFormData = z.infer<typeof resetPasswordFormSchema>;

export { type ResetPasswordFormData, resetPasswordFormSchema };
