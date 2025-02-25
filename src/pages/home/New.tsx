function New() {
  return (
    <section className="grid min-h-screen w-full grid-cols-4 grid-rows-4 gap-6">
      <div className="relative col-span-2 col-start-1 row-span-3 overflow-hidden rounded-lg bg-neutral-800">
        <p className="bg-neutral-800 p-8 text-7xl font-black uppercase text-neutral-100">
          Metaphor: ReFantazio
        </p>
        <img
          className="absolute size-full object-cover"
          src="mr-protagonist-head.jpg"
          alt=""
        />
      </div>
      <div className="col-start-1 flex items-center justify-center overflow-hidden rounded-lg bg-[#fff]">
        <img className="max-h-full" src="mr-logo.jpg" alt="" />
      </div>
      <div className="col-start-2 rounded-lg bg-error-800">
        <p></p>
      </div>
      <div className="relative col-span-2 col-start-3 row-span-4 row-start-1 overflow-hidden rounded-lg bg-neutral-800">
        <img
          className="absolute size-full object-cover"
          src="mr-key-artwork.jpg"
          alt=""
        />
      </div>
    </section>
  );
}

export { New };
