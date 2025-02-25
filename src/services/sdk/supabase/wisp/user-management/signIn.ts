import { SignInFormData } from "@libraries/types/signIn.types";

import { supabase } from "../client";

async function signIn({ email, password }: SignInFormData) {
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });

  if (error) {
    throw new Error(error.message);
  }

  return data;
}

export { signIn };
