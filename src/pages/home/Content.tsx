function Content() {
  return (
    <section className="w-full grid-cols-3 grid-rows-1 gap-4">
      <div className="flex gap-4">
        <div className="w-48">
          <img
            className="aspect-classic-vertical rounded-sm object-cover"
            src="mr-grid.png"
            alt="Grid"
          />
          <p className="mt-[.5em] text-base font-bold">Metaphor: ReFantazio</p>
          <p className="mt-[.5em] text-xs">Atlus</p>
        </div>
      </div>
    </section>
  );
}

export { Content };
