import { Card, CardContent, CardTitle } from "@components/ui/card";
import { Image } from "@components/ui/image";

function GameStripCard() {
  return (
    <Card className="flex items-center gap-4 rounded-lg p-2 transition-all hover:bg-neutral-800">
      <CardContent orientation="horizontal" className="items-center gap-6">
        <Image
          className="w-12 shrink-0 sm:w-24"
          src={
            "https://cdn2.steamgriddb.com/thumb/a7147fd59ab64d16e49e819733ad2187.jpg"
          }
        />
        <div>
          <CardTitle>Alan Wake 2</CardTitle>
        </div>
      </CardContent>
    </Card>
  );
}

export { GameStripCard };
