import { objectToCamel } from "ts-case-convert";

import { supabase } from "../client";

async function getNewestGames() {
  const { data, error } = await supabase
    .from("games")
    .select(`*, grid:games_grid(thumbnail, original)`);

  if (error) {
    throw new Error(error.message);
  }

  return objectToCamel(data);
}

export { getNewestGames };
