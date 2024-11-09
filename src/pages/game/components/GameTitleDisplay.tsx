import { Fragment } from "react";

import { Badge } from "@components/ui/badge";

import { useWindowSize } from "@hooks/useWindowSize";

import { cn } from "@libraries/utilities/cn";

type GameTitleDisplayProps = {
  name: string;
  hero: string;
  grid: string;
  isBase: boolean;
  isBundle: boolean;
  isRemaster: boolean;
  isRemake: boolean;
  isExpansion: boolean;
  isStandaloneExpansion: boolean;
  metacritic: {
    metaScore: number;
    userScore: number;
  } | null;
};

function GameTitleDisplay(props: GameTitleDisplayProps) {
  const {
    grid,
    hero,
    isBase,
    isBundle,
    isExpansion,
    isRemake,
    isRemaster,
    isStandaloneExpansion,
    name,
    metacritic,
  } = props;

  const { width } = useWindowSize();

  return (
    <section className="relative flex size-full flex-col gap-4 overflow-hidden rounded-xl bg-gradient-to-t from-base-100 to-base-50 to-70% p-8 md:gap-6 lg:flex-row lg:bg-base-100 lg:bg-none xl:gap-8">
      <div className="z-20 flex justify-center">
        <img
          src={grid}
          alt=""
          className="w-40 max-w-44 rounded-md object-cover lg:w-full"
        />
      </div>
      <div className="z-20 flex flex-col items-center justify-between gap-8 lg:items-start lg:gap-0 lg:py-6">
        <div className="flex flex-col items-center gap-3 lg:items-start">
          <div className="flex flex-wrap gap-2">
            {isBase && (
              <Badge variant="outline" size="sm" className="uppercase">
                Base Game
              </Badge>
            )}
            {isRemaster && (
              <Badge variant="outline" size="sm" className="uppercase">
                Remaster
              </Badge>
            )}
            {isRemake && (
              <Badge variant="outline" size="sm" className="uppercase">
                Remake
              </Badge>
            )}
            {isExpansion && (
              <Badge variant="outline" size="sm" className="uppercase">
                Expansion
              </Badge>
            )}
            {isStandaloneExpansion && (
              <Badge variant="outline" size="sm" className="uppercase">
                Standalone Expansion
              </Badge>
            )}
            {isBundle && (
              <Badge variant="outline" size="sm" className="uppercase">
                Bundle
              </Badge>
            )}
          </div>
          <h1 className="line-clamp-2 text-center text-2xl font-bold md:text-3xl lg:text-4xl xl:text-5xl">
            {name}
          </h1>
        </div>
        <div className="grid grid-flow-col place-items-center gap-4">
          <div className="flex flex-col items-center gap-1.5">
            <p
              className={cn(
                "flex size-12 items-center justify-center rounded-xl  text-xl font-bold text-base-900 md:size-14",
                metacritic?.metaScore && metacritic?.metaScore >= 75 ?
                  "bg-success-600"
                : metacritic?.metaScore && metacritic?.metaScore >= 50 ?
                  "bg-warning-600"
                : "bg-error-600",
              )}
            >
              {metacritic?.metaScore}
            </p>
            <p className="text-[10px] uppercase">Metascore</p>
          </div>
          <div className="flex flex-col items-center gap-1.5">
            <p
              className={cn(
                "flex size-12 items-center justify-center rounded-xl  text-xl font-bold text-base-900 md:size-14",
                metacritic?.userScore && metacritic?.userScore >= 7.5 ?
                  "bg-success-600"
                : metacritic?.userScore && metacritic?.userScore >= 5 ?
                  "bg-warning-600"
                : "bg-error-600",
              )}
            >
              {metacritic?.userScore}
            </p>
            <p className="text-[10px] uppercase">User Score</p>
          </div>
        </div>
      </div>
      {width >= 1024 ?
        <Fragment>
          <div className="absolute inset-0 z-10 size-full bg-gradient-to-r from-base-100 from-50%" />
          <img
            src={hero}
            alt=""
            className="absolute inset-0 left-96 z-0 size-full object-cover opacity-40"
          />
        </Fragment>
      : null}
    </section>
  );
}

export { GameTitleDisplay };
export type { GameTitleDisplayProps };
