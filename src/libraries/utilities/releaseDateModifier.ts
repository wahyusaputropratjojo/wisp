function releaseDateModifier(releaseDate: string) {
  const date = new Date(releaseDate);
  const currentDate = new Date();

  if (date < currentDate) {
    return "Available Now";
  } else {
    return "Coming Soon";
  }
}

export { releaseDateModifier };
