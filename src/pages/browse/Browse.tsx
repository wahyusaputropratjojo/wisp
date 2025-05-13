/* eslint-disable @typescript-eslint/no-unused-vars */
import { Filters } from "@components/filters";
import { GenreCard } from "@components/genre-card";
import { Card, CardContent, CardTitle } from "@components/ui/card";
import { Image } from "@components/ui/image";

function Browse() {
  return (
    <main className="container mb-24 grid gap-12">
      <div className="gap-4 space-y-4">
        <p className="text-3xl font-black">Popular Genres</p>
        <div className="flex gap-5">
          {[...Array(5)].map((_) => (
            <GenreCard />
          ))}
        </div>
      </div>
      <div className="grid grid-cols-5 gap-8">
        <div className="col-span-4 grid grid-cols-5 gap-x-4 gap-y-12">
          {[...Array(40)].map((_) => (
            <Card>
              <CardContent className="relative">
                <Image
                  src="https://cdn2.steamgriddb.com/thumb/f3949fa34208fe26a430aed32434ebc8.jpg"
                  className="aspect-classic-vertical"
                  fullWidth
                />
              </CardContent>
              <CardContent>
                <CardTitle>The Last of Us Part II Remastered</CardTitle>
              </CardContent>
            </Card>
          ))}
        </div>
        <Filters />
      </div>
    </main>
  );
}

export { Browse };
