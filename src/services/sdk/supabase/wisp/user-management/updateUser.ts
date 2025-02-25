import { supabase } from "../client";

type UpdateUser = {
  email?: string;
  password?: string;
};

async function updateUser({ email, password }: UpdateUser) {
  const { data, error } = await supabase.auth.updateUser({ email, password });

  if (error) {
    throw new Error(error.message);
  }

  return data;
}

export { updateUser };
