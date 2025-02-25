import {
  Card,
  CardContent,
  CardDescription,
  CardTitle,
} from "@components/ui/card";
import { Image } from "@components/ui/image";

function ThreeList() {
  const games = [
    {
      image:
        "https://cdn2.steamgriddb.com/hero/13d423c869d1f12c22c6544d405f891b.jpg",
      title: "Black Myth: Wukong",
      description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut quasi soluta et fugiat provident obcaecati dolore totam, pariatur commodi ad?",
    },
    {
      image:
        "https://cdn2.steamgriddb.com/hero/c09898488dddade675f309cabeca0c4e.png",
      title: "Metaphor: ReFantazio",
      description:
        "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iste esse fugit doloremque aperiam necessitatibus incidunt voluptate dicta voluptatum molestias maxime.",
    },
    {
      image:
        "https://cdn2.steamgriddb.com/hero/542a2ef216fcbc3348128461e2913137.jpg",
      title: "Final Fantasy VII: Rebirth",
      description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo aliquid et eveniet hic facere reiciendis, assumenda ab nisi harum officia.",
    },
  ];

  return (
    <div className="grid grid-flow-col grid-cols-3 gap-6">
      {games.map((game, index) => (
        <Card key={index} className="gap-4">
          <CardContent>
            <Image src={game.image} className="aspect-wide-horizontal" />
          </CardContent>
          <CardContent>
            <CardTitle size="xl">{game.title}</CardTitle>
            <CardDescription>{game.description}</CardDescription>
          </CardContent>
        </Card>
      ))}
    </div>
  );
}

export { ThreeList };
