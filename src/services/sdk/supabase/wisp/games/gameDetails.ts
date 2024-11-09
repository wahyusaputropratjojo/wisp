import { objectToCamel } from "ts-case-convert";

import { supabase } from "@services/sdk/supabase/wisp/config";

const gameDetailsQuery = () => {
  return supabase.from("games").select(
    `id,
    name,
    description,
    is_base,
    is_remake,
    is_remaster,
    is_expansion,
    is_standalone_expansion,
    is_bundle,
    hero: hero->>optimized,
    grid: grid->>optimized,
    metacritic(meta_score, user_score),
    how_long_to_beat(main_story, main_and_sides, completionist, all_styles, updated_at),
    developers: games_developers(companies(id, name)),
    publishers: games_publishers(companies(id, name))`,
  );
};

async function getGameDetails(slug: string) {
  const { data, error } = await gameDetailsQuery()
    .eq("slug", slug)
    .limit(1)
    .single();

  if (error) {
    throw new Error(error.message);
  }

  return objectToCamel(data);
}

export { getGameDetails };
