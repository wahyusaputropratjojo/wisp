import { z } from "zod";

const forgotPasswordFormSchema = z.object({
  email: z
    .string()
    .min(1, { message: "Required" })
    .email({ message: "Invalid email" }),
});

type ForgotPasswordFormData = z.infer<typeof forgotPasswordFormSchema>;

export { type ForgotPasswordFormData, forgotPasswordFormSchema };
