import { createClient } from "@supabase/supabase-js";

import type { Database } from "@libraries/types/supabase/wisp";

const supabase = createClient<Database>(
  import.meta.env.APP_WISP_SUPABASE_URL,
  import.meta.env.APP_WISP_SUPABASE_ANON_KEY,
);

export { supabase };
