import { createClient } from "@supabase/supabase-js";

import { type Database } from "@libraries/types/database.types";

const supabase = createClient<Database>(
  import.meta.env.APP_WISP_SUPABASE_URL,
  import.meta.env.APP_WISP_SUPABASE_ANON_KEY,
  {
    auth: {
      storageKey: "session",
    },
  },
);

export { supabase };
