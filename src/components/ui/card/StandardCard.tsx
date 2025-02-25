import { type Ref } from "react";

interface StandardCardProps {
  src: string;
  alt: string;
  title: string;
  ref?: Ref<HTMLDivElement>;
}

function StandardCard({ src, alt, title, ref }: StandardCardProps) {
  return (
    <div ref={ref} className="grid cursor-pointer">
      <img
        src={src}
        alt={alt}
        className="aspect-classic-horizontal rounded-lg bg-neutral-800 object-cover"
      />
      <div className="max-w-[90%]">
        <p className="mt-[1em] text-sm text-neutral-400">Base Game</p>
        <p className="mt-[.3em] line-clamp-2 text-base font-bold text-neutral-100">
          {title}
        </p>
      </div>
    </div>
  );
}

export { StandardCard };
