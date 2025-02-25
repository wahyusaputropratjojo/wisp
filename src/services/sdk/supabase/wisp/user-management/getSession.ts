import { objectToCamel } from "ts-case-convert";

import { supabase } from "../client";

async function getSession() {
  const { data, error } = await supabase.auth.getSession();

  if (error) {
    throw new Error(error.message);
  }

  return objectToCamel(data);
}

export { getSession };
