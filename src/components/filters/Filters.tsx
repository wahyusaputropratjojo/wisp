import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@components/ui/accordion";

const Genres = [
  "Action",
  "Adventure",
  "Casual",
  "Fantasy",
  "Fighting",
  "Horror",
  "Indie",
  "MOBA",
  "Open World",
  "Racing",
  "Rhythm",
  "RPG",
  "RTS",
  "Shooter",
  "Simulation",
  "Space",
  "Turn-Based",
];

const Types = ["Base Game", "Remastered", "Remake", "Expansion"];

const Platforms = ["Steam", "Epic Games", "PlayStation", "XBOX"];

function Filters() {
  return (
    <div>
      <p className="font-bold">Filters</p>
      <Accordion type="multiple">
        <AccordionItem value="item-1">
          <AccordionTrigger>Genre</AccordionTrigger>
          <AccordionContent>
            <ul className="space-y-1">
              {Genres.map((genre) => (
                <li className="rounded p-2 transition-all hover:bg-neutral-800">
                  {genre}
                </li>
              ))}
            </ul>
          </AccordionContent>
        </AccordionItem>
        <AccordionItem value="item-2">
          <AccordionTrigger>Type</AccordionTrigger>
          <AccordionContent>
            <ul className="space-y-1">
              {Types.map((genre) => (
                <li className="rounded p-2 transition-all hover:bg-neutral-800">
                  {genre}
                </li>
              ))}
            </ul>
          </AccordionContent>
        </AccordionItem>
        <AccordionItem value="item-3">
          <AccordionTrigger>Platform</AccordionTrigger>
          <AccordionContent>
            <ul className="space-y-1">
              {Platforms.map((genre) => (
                <li className="rounded p-2 transition-all hover:bg-neutral-800">
                  {genre}
                </li>
              ))}
            </ul>
          </AccordionContent>
        </AccordionItem>
      </Accordion>
    </div>
  );
}

export { Filters };
