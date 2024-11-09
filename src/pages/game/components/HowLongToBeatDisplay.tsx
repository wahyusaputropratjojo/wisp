type HowLongToBeatDisplayProps = {
  howLongToBeat: {
    mainStory: {
      hours: number;
      minutes: number;
    };
    mainAndSides: {
      hours: number;
      minutes: number;
    };
    completionist: {
      hours: number;
      minutes: number;
    };
    allStyles: {
      hours: number;
      minutes: number;
    };
  } | null;
};

type HowLongToBeatData = {
  hours: number;
  minutes: number;
};

function howLongToBeatDataConverter(data: HowLongToBeatData): string {
  function minuteConverter(minutes: number) {
    if (minutes !== 0 && minutes <= 15) {
      return "¼";
    } else if (minutes !== 0 && minutes <= 30) {
      return "½";
    } else if (minutes !== 0 && minutes <= 45) {
      return "¾";
    } else {
      return "";
    }
  }

  return `${data.hours}${minuteConverter(data.minutes)} Hour${data.hours !== 1 ? "s" : ""}`;
}

function HowLongToBeatDisplay(props: HowLongToBeatDisplayProps) {
  const { howLongToBeat } = props;

  if (!howLongToBeat) {
    return null;
  }

  return (
    <section className="grid place-items-center gap-8 rounded-xl bg-base-100 p-6 lg:p-8">
      <p className="text-xl font-black">HowLongToBeat</p>
      <div className="grid w-full gap-3 lg:grid-cols-4 ">
        <div className="grid grid-flow-col justify-between gap-1 lg:grid-flow-row lg:justify-normal lg:text-center">
          <p className="text-base font-bold lg:order-2 lg:text-xs lg:uppercase">
            Main Story
          </p>
          <p className="font-bold lg:text-xl">
            {howLongToBeatDataConverter(howLongToBeat.mainStory)}
          </p>
        </div>
        <div className="grid grid-flow-col justify-between gap-1 lg:grid-flow-row lg:justify-normal lg:text-center">
          <p className="text-base font-bold lg:order-2 lg:text-xs lg:uppercase">
            Main + Sides
          </p>
          <p className="font-bold lg:text-xl">
            {howLongToBeatDataConverter(howLongToBeat.mainAndSides)}
          </p>
        </div>
        <div className="grid grid-flow-col justify-between gap-1 lg:grid-flow-row lg:justify-normal lg:text-center">
          <p className="text-base font-bold lg:order-2 lg:text-xs lg:uppercase">
            Completionist
          </p>
          <p className="font-bold lg:text-xl">
            {howLongToBeatDataConverter(howLongToBeat.completionist)}
          </p>
        </div>
        <div className="grid grid-flow-col justify-between gap-1 lg:grid-flow-row lg:justify-normal lg:text-center">
          <p className="text-base font-bold lg:order-2 lg:text-xs lg:uppercase">
            All Styles
          </p>
          <p className="font-bold lg:text-xl">
            {howLongToBeatDataConverter(howLongToBeat.allStyles)}
          </p>
        </div>
      </div>
    </section>
  );
}

export { HowLongToBeatDisplay };
