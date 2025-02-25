import { cn } from "@libraries/utilities";

function VerticalList() {
  return (
    <div className="grid grid-flow-col gap-2">
      {Array.from({ length: 3 }).map((_, index) => (
        <div
          key={index}
          className={cn("flex flex-col gap-2 border-neutral-800")}
        >
          <h2 className="text-xl font-bold">Group Title</h2>
          <div>
            {Array.from({ length: 5 }).map((_, index) => (
              <div
                key={index}
                className="flex cursor-pointer items-center gap-6 rounded-xl p-3 transition-all hover:bg-neutral-800"
              >
                <div className="aspect-standard-vertical h-24 rounded-xl bg-neutral-700" />
                <div>
                  <p className="line-clamp-1 font-bold">Title {index + 1}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      ))}
    </div>
  );
}

export { VerticalList };
