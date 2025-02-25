async function searchGames(name: string) {
  try {
    const response = await fetch(import.meta.env.APP_STEAM_GRID_DB_URL);
    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }
  } catch (error) {}
}

export { searchGames };
