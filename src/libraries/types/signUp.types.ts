import { z } from "zod";

const signUpFormSchema = z
  .object({
    email: z
      .string()
      .trim()
      .toLowerCase()
      .min(1, { message: "Required" })
      .email({ message: "Invalid email" }),
    password: z.string().trim().min(1, { message: "Required" }),
    confirmPassword: z.string().trim().min(1, { message: "Required" }),
    firstName: z.string().trim().min(1, { message: "Required" }),
    lastName: z.string().trim().min(1, { message: "Required" }),
    displayName: z
      .string()
      .trim()
      .toLowerCase()
      .min(3, { message: "Required" })
      .max(16, { message: "Maximum 16 Character" }),
  })
  .refine(({ password, confirmPassword }) => confirmPassword === password, {
    message: "Passwords don't match",
    path: ["confirmPassword"],
  });

type SignUpFormData = z.infer<typeof signUpFormSchema>;

export { signUpFormSchema, type SignUpFormData };
