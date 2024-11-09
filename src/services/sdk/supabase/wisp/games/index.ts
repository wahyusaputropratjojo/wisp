import { objectToCamel } from "ts-case-convert";

import { supabase } from "@services/sdk/supabase/wisp/config";

async function getNewReleaseGamesForHeroCarousel() {
  const { data, error } = await supabase
    .from("games")
    .select(
      "id, name, description, release_date, grid: grid->>optimized, hero: hero->>optimized, logo: logo->>optimized, slug",
    )
    .order("release_date", { ascending: false })
    .limit(5);

  if (error) {
    throw new Error(error.message);
  }

  return objectToCamel(data);
}

async function getNewReleaseGames() {
  const { data, error } = await supabase
    .from("games")
    .select("id, name, grid: grid->>optimized, slug")
    .order("release_date", { ascending: false })
    .limit(15);

  if (error) {
    throw new Error(error.message);
  }

  return objectToCamel(data);
}

async function getGameDetails(slug: string) {
  const games = await supabase
    .from("games")
    .select(
      "id, name, grid: grid->>optimized, hero: hero->>optimized, is_base, is_remake, is_remaster, is_expansion, is_standalone_expansion, is_bundle, description, companies(*)",
    )
    .eq("id", "1b696350-e681-4f85-a0f3-814bddffd832")
    .limit(1)
    .single();

  if (games.error) {
    throw new Error(games.error.message);
  }

  return objectToCamel(games.data);
}

export {
  getNewReleaseGamesForHeroCarousel,
  getNewReleaseGames,
  getGameDetails,
};
