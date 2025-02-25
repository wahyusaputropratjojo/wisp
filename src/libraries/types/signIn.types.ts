import { z } from "zod";

const signInFormSchema = z.object({
  email: z
    .string()
    .trim()
    .min(1, { message: "Required" })
    .email({ message: "Invalid email" }),
  password: z.string().trim().min(1, { message: "Required" }),
});

type SignInFormData = z.infer<typeof signInFormSchema>;

export { signInFormSchema, type SignInFormData };
