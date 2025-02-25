import { objectToCamel } from "ts-case-convert";

import { supabase } from "../client";

async function getGames() {
  const { data, error } = await supabase.from("games").select("*");

  if (error) {
    throw new Error(error.message);
  }

  return objectToCamel(data);
}

export { getGames };
