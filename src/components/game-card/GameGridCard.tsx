import { Card, CardContent, CardTitle } from "@components/ui/card";
import { Image } from "@components/ui/image";

type GameGridCardProps = {
  thumbnail: string;
  title: string;
};

function GameGridCard({ thumbnail, title }: GameGridCardProps) {
  return (
    <Card>
      <CardContent className="relative">
        <Image src={thumbnail} className="aspect-classic-vertical" fullWidth />
      </CardContent>
      <CardContent>
        <CardTitle>{title}</CardTitle>
      </CardContent>
    </Card>
  );
}

export { GameGridCard };
