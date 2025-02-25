import { type SignUpFormData } from "@libraries/types/signUp.types";

import { supabase } from "../client";

async function signUp({
  email,
  password,
  firstName,
  lastName,
  displayName,
}: Omit<SignUpFormData, "confirmPassword">) {
  const { data, error } = await supabase.auth.signUp({
    email,
    password,
    options: {
      data: {
        first_name: firstName,
        last_name: lastName,
        display_name: displayName,
      },
    },
  });

  if (error) {
    if (error.message === "Database error saving new user") {
      throw new Error("Display name already in use");
    }
    throw new Error(error.message);
  }

  return data;
}

export { signUp };
