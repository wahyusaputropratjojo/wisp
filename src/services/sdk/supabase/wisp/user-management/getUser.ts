import { objectToCamel } from "ts-case-convert";

import { supabase } from "../client";

async function getUser() {
  const { data, error } = await supabase.auth.getUser();

  if (error) {
    throw new Error(error.message);
  }

  return objectToCamel(data);
}

export { getUser };
