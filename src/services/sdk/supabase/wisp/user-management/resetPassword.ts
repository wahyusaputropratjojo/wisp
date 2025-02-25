import { supabase } from "../client";

async function resetPassword(email: string) {
  const { data, error } = await supabase.auth.resetPasswordForEmail(email, {
    redirectTo: "http://localhost:5173/reset-password",
  });

  if (error) {
    throw new Error(error.message);
  }

  return data;
}

export { resetPassword };
