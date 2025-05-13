import { Image } from "@components/ui/image";

function GenreCard() {
  return (
    <article className="flex w-fit cursor-pointer flex-col items-center gap-4 rounded-xl bg-neutral-800 p-6">
      <div className="relative grid max-w-60 grid-cols-2 items-center justify-center overflow-hidden rounded shadow-lg">
        <Image
          src="https://cdn2.steamgriddb.com/thumb/01639920c81fcc08b5b7a8db3d55723a.jpg"
          className="z-10 rounded-none"
        />
        <div className="absolute z-20 size-full bg-neutral-950/30" />
        <Image
          src="https://cdn2.steamgriddb.com/thumb/f3949fa34208fe26a430aed32434ebc8.jpg"
          className="absolute z-30 h-full translate-x-1/2"
        />
        <Image
          src="https://cdn2.steamgriddb.com/thumb/b13b57c93aa09536490f30a89d645072.jpg"
          className="z-10 rounded-none"
        />
      </div>
      <p>Action</p>
    </article>
  );
}

export { GenreCard };
