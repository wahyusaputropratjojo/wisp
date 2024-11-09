function GameDetailDisplay() {
  return (
    <section className="grid gap-8 rounded-xl bg-base-100 p-6 lg:p-8">
      <div className="flex flex-col gap-8">
        <div className="space-y-2">
          <p className="lg:text-xl lg:leading-relaxed">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur
            ipsam asperiores molestias magni accusamus perferendis dolorum odit
            labore nesciunt, ratione consequuntur quam doloribus optio unde,
            explicabo nam pariatur nulla nihil corporis quisquam dicta. Soluta
            nihil voluptas molestias consectetur quae, obcaecati ea, illum
            voluptate aliquid accusamus, cupiditate qui excepturi sed
            dignissimos?
          </p>
        </div>
      </div>
      <div className="grid gap-4 lg:grid-cols-3 lg:gap-12">
        <div className="flex flex-col gap-1">
          <p className="font-bold">Developers</p>
          <div className="flex flex-wrap gap-2">
            <p>Naughty Dog</p>
          </div>
        </div>
        <div className="flex flex-col gap-1">
          <p className="font-bold">Publishers</p>
          <div className="flex flex-wrap gap-2">
            <p>Sony Interactive Entertainment</p>
          </div>
        </div>
        <div className="flex flex-col gap-1">
          <p className="font-bold">Genre</p>
          <div className="flex flex-wrap gap-2">
            <p>Adventure</p>
            <p>Shooter</p>
          </div>
        </div>
        <div className="flex flex-col gap-1">
          <p className="font-bold">Theme</p>
          <div className="flex flex-wrap gap-2">
            <p>Horror</p>
            <p>Survival</p>
          </div>
        </div>
        <div className="flex flex-col gap-1">
          <p className="font-bold">Platform</p>
          <div className="flex flex-wrap gap-2">
            <p>PS5</p>
          </div>
        </div>
        <div className="flex flex-col gap-3 lg:col-span-2">
          <p className="font-bold">Age Classification</p>
          <div className="flex flex-wrap items-start gap-3">
            <img
              src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1709358065/wisp/age-rating-systems/auiwanyz1majuefqga5v.svg"
              className="max-w-12"
            />
            <img
              src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1709357945/wisp/age-rating-systems/fsrk7ydd6ts8yu0g6pt3.svg"
              className="max-w-12"
            />
            <img
              src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1709358429/wisp/age-rating-systems/jiarmshesixvg8t6mqer.svg"
              className="max-w-12"
            />
            <img
              src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1709358397/wisp/age-rating-systems/flz5yp4joiodx9bxbnvr.svg"
              className="max-w-12"
            />
            <img
              src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1709358462/wisp/age-rating-systems/wigbr5jzp1ziqn8ntwmn.svg"
              className="max-w-12"
            />
            <img
              src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1709358001/wisp/age-rating-systems/dv6xdr76toarbb5k9aqd.svg"
              className="max-w-12"
            />
            <img
              src="https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1709357819/wisp/age-rating-systems/vbcqt1rols815oaqz9ou.svg"
              className="max-w-12"
            />
          </div>
        </div>
      </div>
    </section>
  );
}

export { GameDetailDisplay };
