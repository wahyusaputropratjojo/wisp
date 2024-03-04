import { useQuery } from "@tanstack/react-query";

import { Carousel } from "@components/carousel";

import { supabase } from "@services/sdk/supabase/wisp/config";

function Home() {
  const { data, isSuccess } = useQuery({
    queryKey: ["games"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("Games")
        .select("id, name, description, releaseDate, grid, hero, logo");

      if (error) {
        throw new Error(error.message);
      }

      return data;
    },
  });

  if (isSuccess) {
    return (
      <main className="container space-y-40 pb-64 pt-8">
        <Carousel data={data} />
      </main>
    );
  }
}

export { Home };
