function RelatedGameContentDisplay() {
  return (
    <section className="grid gap-3 rounded-xl bg-base-100 p-6 lg:p-8">
      <h2 className="text-xl font-bold">Related Content</h2>
      <div className="relative grid grid-flow-col overflow-hidden rounded-xl hover:cursor-pointer">
        <img
          src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/bqqiche8gmlqoytlo4zv"
          alt=""
          className="h-40 max-h-60 w-full rounded-xl object-cover md:h-48 lg:h-60"
        />
        <img
          src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/lszqwej94ditzadajjna"
          alt=""
          className="absolute bottom-1/2 left-4 z-10 aspect-auto w-32 translate-y-1/2 sm:w-40 md:w-48 lg:left-8 lg:w-72"
        />
        <div className="absolute inset-0 z-0 bg-gradient-to-r from-base-50 from-30%" />
        <div className="absolute inset-0 z-50 transition-colors hover:bg-base-900/10" />
      </div>
    </section>
  );
}

export { RelatedGameContentDisplay };
