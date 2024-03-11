import { supabase } from "@services/sdk/supabase/wisp/config";

async function getNewReleaseGamesForHeroCarousel() {
  const { data, error } = await supabase
    .from("Games")
    .select(
      "id, name, description, releaseDate, grid: grid->>optimized, hero: hero->>optimized, logo: logo->>optimized",
    )
    .order("releaseDate", { ascending: false })
    .limit(5);

  if (error) {
    throw new Error(error.message);
  }

  return data;
}

async function getNewReleaseGames() {
  const { data, error } = await supabase
    .from("Games")
    .select("id, name, grid: grid->>optimized")
    .order("releaseDate", { ascending: false })
    .limit(15);

  if (error) {
    throw new Error(error.message);
  }

  return data;
}

export { getNewReleaseGamesForHeroCarousel, getNewReleaseGames };
