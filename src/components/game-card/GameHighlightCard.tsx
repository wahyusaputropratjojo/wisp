import {
  Card,
  CardContent,
  CardDescription,
  CardTitle,
} from "@components/ui/card";
import { Image } from "@components/ui/image";

type GameHighlightCardProps = {
  thumbnail: string;
  title: string;
  description: string;
};

function GameHighlightCard({
  thumbnail,
  description,
  title,
}: GameHighlightCardProps) {
  return (
    <Card className="gap-3">
      <CardContent>
        <Image src={thumbnail} className="aspect-wide-horizontal" />
      </CardContent>
      <CardContent>
        <CardTitle size="lg">{title}</CardTitle>
        <CardDescription>{description}</CardDescription>
      </CardContent>
    </Card>
  );
}

export { GameHighlightCard };
