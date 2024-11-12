SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";
COMMENT ON SCHEMA "public" IS 'standard public schema';
CREATE EXTENSION IF NOT EXISTS "moddatetime" WITH SCHEMA "extensions";
CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";
CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";
CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";
CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";
CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";
SET default_tablespace = '';
SET default_table_access_method = "heap";
CREATE TABLE IF NOT EXISTS "public"."age_classification_system" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "organization" "text" NOT NULL,
    "category" "text" NOT NULL,
    "logo" "text",
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."age_classification_system" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."companies" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "established_date" "date" NOT NULL,
    "name" "text" NOT NULL,
    "country" "text" NOT NULL,
    "logo" "text",
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."companies" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "description" "text" NOT NULL,
    "release_date" "date" NOT NULL,
    "hero" "json" DEFAULT '{   "optimized": "",   "original": "" }'::"json" NOT NULL,
    "logo" "json" DEFAULT '{   "optimized": "",   "original": "" }'::"json" NOT NULL,
    "grid" "json" DEFAULT '{   "optimized": "",   "original": "" }'::"json" NOT NULL,
    "is_base" boolean DEFAULT false NOT NULL,
    "is_bundle" boolean DEFAULT false NOT NULL,
    "is_remaster" boolean DEFAULT false NOT NULL,
    "is_remake" boolean DEFAULT false NOT NULL,
    "is_expansion" boolean DEFAULT false NOT NULL,
    "is_standalone_expansion" boolean DEFAULT false NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "slug" "text" NOT NULL
);
ALTER TABLE "public"."games" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_age_classification_system" (
    "id_game" "uuid" NOT NULL,
    "id_age_classification_system" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_age_classification_system" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_bundles" (
    "id_game_bundle" "uuid" NOT NULL,
    "id_game" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_bundles" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_developers" (
    "id_game" "uuid" NOT NULL,
    "id_company" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_developers" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_expansions" (
    "id_base_game" "uuid" NOT NULL,
    "id_expansion_game" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_expansions" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_genres" (
    "id_game" "uuid" NOT NULL,
    "id_genre" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_genres" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_publishers" (
    "id_game" "uuid" NOT NULL,
    "id_company" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_publishers" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_release_information" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "id_game" "uuid" NOT NULL,
    "id_platform" "uuid" NOT NULL,
    "id_release_phase" "uuid" NOT NULL,
    "release_date" "date" NOT NULL
);
ALTER TABLE "public"."games_release_information" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_remakes" (
    "id_original_game" "uuid" NOT NULL,
    "id_remake_game" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_remakes" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_remasters" (
    "id_original_game" "uuid" NOT NULL,
    "id_remaster_game" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_remasters" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_standalone_expansions" (
    "id_base_game" "uuid" NOT NULL,
    "id_standalone_expansion_game" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_standalone_expansions" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_themes" (
    "id_game" "uuid" NOT NULL,
    "id_theme" "uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_themes" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."games_videos" (
    "id_game" "uuid" NOT NULL,
    "url" "text" NOT NULL,
    "thumbnail" "text" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."games_videos" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."genres" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "abbreviation_name" "text",
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."genres" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."how_long_to_beat" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id_game" "uuid" NOT NULL,
    "main_story" "json" DEFAULT '{   "hours": 0,   "minutes": 0 }'::"json" NOT NULL,
    "main_and_sides" "json" DEFAULT '{   "hours": 0,   "minutes": 0 }'::"json" NOT NULL,
    "completionist" "json" DEFAULT '{   "hours": 0,   "minutes": 0 }'::"json" NOT NULL,
    "all_styles" "json" DEFAULT '{   "hours": 0,   "minutes": 0 }'::"json" NOT NULL
);
ALTER TABLE "public"."how_long_to_beat" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."metacritic" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "meta_score" smallint NOT NULL,
    "user_score" real NOT NULL,
    "id_game" "uuid" NOT NULL
);
ALTER TABLE "public"."metacritic" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."platforms" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "release_date" "date" NOT NULL,
    "name" "text" NOT NULL,
    "alternative_name" "text"[],
    "family" "text" NOT NULL,
    "type" "text" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."platforms" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."release_phases" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."release_phases" OWNER TO "postgres";
CREATE TABLE IF NOT EXISTS "public"."themes" (
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);
ALTER TABLE "public"."themes" OWNER TO "postgres";
ALTER TABLE ONLY "public"."age_classification_system"
    ADD CONSTRAINT "age_classification_system_pkey" PRIMARY KEY ("id");
ALTER TABLE ONLY "public"."companies"
    ADD CONSTRAINT "companies_pkey" PRIMARY KEY ("id");
ALTER TABLE ONLY "public"."games_age_classification_system"
    ADD CONSTRAINT "games_age_classification_system_pkey" PRIMARY KEY ("id_game", "id_age_classification_system", "id");
ALTER TABLE ONLY "public"."games_bundles"
    ADD CONSTRAINT "games_bundles_pkey" PRIMARY KEY ("id_game_bundle", "id_game", "id");
ALTER TABLE ONLY "public"."games_developers"
    ADD CONSTRAINT "games_developers_pkey" PRIMARY KEY ("id_game", "id_company", "id");
ALTER TABLE ONLY "public"."games_expansions"
    ADD CONSTRAINT "games_expansions_pkey" PRIMARY KEY ("id_base_game", "id_expansion_game", "id");
ALTER TABLE ONLY "public"."games_genres"
    ADD CONSTRAINT "games_genres_pkey" PRIMARY KEY ("id_game", "id_genre", "id");
ALTER TABLE ONLY "public"."games"
    ADD CONSTRAINT "games_pkey" PRIMARY KEY ("id");
ALTER TABLE ONLY "public"."games_publishers"
    ADD CONSTRAINT "games_publishers_pkey" PRIMARY KEY ("id_game", "id_company", "id");
ALTER TABLE ONLY "public"."games_release_information"
    ADD CONSTRAINT "games_release_information_pkey" PRIMARY KEY ("id", "id_game", "id_platform", "id_release_phase");
ALTER TABLE ONLY "public"."games_remakes"
    ADD CONSTRAINT "games_remakes_pkey" PRIMARY KEY ("id_original_game", "id_remake_game", "id");
ALTER TABLE ONLY "public"."games_remasters"
    ADD CONSTRAINT "games_remasters_pkey" PRIMARY KEY ("id_original_game", "id_remaster_game", "id");
ALTER TABLE ONLY "public"."games"
    ADD CONSTRAINT "games_slug_key" UNIQUE ("slug");
ALTER TABLE ONLY "public"."games_standalone_expansions"
    ADD CONSTRAINT "games_standalone_expansions_pkey" PRIMARY KEY ("id_base_game", "id_standalone_expansion_game", "id");
ALTER TABLE ONLY "public"."games_themes"
    ADD CONSTRAINT "games_themes_pkey" PRIMARY KEY ("id_game", "id_theme", "id");
ALTER TABLE ONLY "public"."games_videos"
    ADD CONSTRAINT "games_videos_pkey" PRIMARY KEY ("id");
ALTER TABLE ONLY "public"."genres"
    ADD CONSTRAINT "genres_pkey" PRIMARY KEY ("id");
ALTER TABLE ONLY "public"."how_long_to_beat"
    ADD CONSTRAINT "how_long_to_beat_pkey" PRIMARY KEY ("id_game");
ALTER TABLE ONLY "public"."metacritic"
    ADD CONSTRAINT "metacritic_pkey" PRIMARY KEY ("id_game");
ALTER TABLE ONLY "public"."platforms"
    ADD CONSTRAINT "platforms_pkey" PRIMARY KEY ("id");
ALTER TABLE ONLY "public"."release_phases"
    ADD CONSTRAINT "release_phases_pkey" PRIMARY KEY ("id");
ALTER TABLE ONLY "public"."themes"
    ADD CONSTRAINT "themes_pkey" PRIMARY KEY ("id");
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."age_classification_system" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."companies" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."games" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."genres" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."how_long_to_beat" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."metacritic" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."platforms" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."release_phases" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
CREATE OR REPLACE TRIGGER "updated_at" BEFORE UPDATE ON "public"."themes" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('updated_at');
ALTER TABLE ONLY "public"."games_age_classification_system"
    ADD CONSTRAINT "games_age_classification_syst_id_age_classification_system_fkey" FOREIGN KEY ("id_age_classification_system") REFERENCES "public"."age_classification_system"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_age_classification_system"
    ADD CONSTRAINT "games_age_classification_system_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_bundles"
    ADD CONSTRAINT "games_bundles_id_game_bundle_fkey" FOREIGN KEY ("id_game_bundle") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_bundles"
    ADD CONSTRAINT "games_bundles_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_developers"
    ADD CONSTRAINT "games_developers_id_company_fkey" FOREIGN KEY ("id_company") REFERENCES "public"."companies"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_developers"
    ADD CONSTRAINT "games_developers_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_expansions"
    ADD CONSTRAINT "games_expansions_id_base_game_fkey" FOREIGN KEY ("id_base_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_expansions"
    ADD CONSTRAINT "games_expansions_id_expansion_game_fkey" FOREIGN KEY ("id_expansion_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_genres"
    ADD CONSTRAINT "games_genres_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_genres"
    ADD CONSTRAINT "games_genres_id_genre_fkey" FOREIGN KEY ("id_genre") REFERENCES "public"."genres"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_publishers"
    ADD CONSTRAINT "games_publishers_id_company_fkey" FOREIGN KEY ("id_company") REFERENCES "public"."companies"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_publishers"
    ADD CONSTRAINT "games_publishers_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_release_information"
    ADD CONSTRAINT "games_release_information_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_release_information"
    ADD CONSTRAINT "games_release_information_id_platform_fkey" FOREIGN KEY ("id_platform") REFERENCES "public"."platforms"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_release_information"
    ADD CONSTRAINT "games_release_information_id_release_phases_fkey" FOREIGN KEY ("id_release_phase") REFERENCES "public"."release_phases"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_remakes"
    ADD CONSTRAINT "games_remakes_id_original_game_fkey" FOREIGN KEY ("id_original_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_remakes"
    ADD CONSTRAINT "games_remakes_id_remake_game_fkey" FOREIGN KEY ("id_remake_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_remasters"
    ADD CONSTRAINT "games_remasters_id_original_game_fkey" FOREIGN KEY ("id_original_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_remasters"
    ADD CONSTRAINT "games_remasters_id_remaster_game_fkey" FOREIGN KEY ("id_remaster_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_standalone_expansions"
    ADD CONSTRAINT "games_standalone_expansions_id_base_game_fkey" FOREIGN KEY ("id_base_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_standalone_expansions"
    ADD CONSTRAINT "games_standalone_expansions_id_standalone_expansion_game_fkey" FOREIGN KEY ("id_standalone_expansion_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_themes"
    ADD CONSTRAINT "games_themes_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_themes"
    ADD CONSTRAINT "games_themes_id_theme_fkey" FOREIGN KEY ("id_theme") REFERENCES "public"."themes"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."games_videos"
    ADD CONSTRAINT "games_videos_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."how_long_to_beat"
    ADD CONSTRAINT "how_long_to_beat_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY "public"."metacritic"
    ADD CONSTRAINT "metacritic_id_game_fkey" FOREIGN KEY ("id_game") REFERENCES "public"."games"("id") ON UPDATE CASCADE ON DELETE CASCADE;
CREATE POLICY "Enable read access for all users" ON "public"."age_classification_system" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."companies" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_age_classification_system" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_bundles" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_developers" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_expansions" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_genres" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_publishers" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_release_information" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_remakes" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_remasters" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_standalone_expansions" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_themes" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."games_videos" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."genres" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."how_long_to_beat" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."metacritic" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."platforms" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."release_phases" FOR SELECT USING (true);
CREATE POLICY "Enable read access for all users" ON "public"."themes" FOR SELECT USING (true);
ALTER TABLE "public"."age_classification_system" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."companies" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_age_classification_system" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_bundles" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_developers" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_expansions" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_genres" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_publishers" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_release_information" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_remakes" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_remasters" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_standalone_expansions" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_themes" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."games_videos" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."genres" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."how_long_to_beat" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."metacritic" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."platforms" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."release_phases" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "public"."themes" ENABLE ROW LEVEL SECURITY;
ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";
GRANT ALL ON TABLE "public"."age_classification_system" TO "anon";
GRANT ALL ON TABLE "public"."age_classification_system" TO "authenticated";
GRANT ALL ON TABLE "public"."age_classification_system" TO "service_role";
GRANT ALL ON TABLE "public"."companies" TO "anon";
GRANT ALL ON TABLE "public"."companies" TO "authenticated";
GRANT ALL ON TABLE "public"."companies" TO "service_role";
GRANT ALL ON TABLE "public"."games" TO "anon";
GRANT ALL ON TABLE "public"."games" TO "authenticated";
GRANT ALL ON TABLE "public"."games" TO "service_role";
GRANT ALL ON TABLE "public"."games_age_classification_system" TO "anon";
GRANT ALL ON TABLE "public"."games_age_classification_system" TO "authenticated";
GRANT ALL ON TABLE "public"."games_age_classification_system" TO "service_role";
GRANT ALL ON TABLE "public"."games_bundles" TO "anon";
GRANT ALL ON TABLE "public"."games_bundles" TO "authenticated";
GRANT ALL ON TABLE "public"."games_bundles" TO "service_role";
GRANT ALL ON TABLE "public"."games_developers" TO "anon";
GRANT ALL ON TABLE "public"."games_developers" TO "authenticated";
GRANT ALL ON TABLE "public"."games_developers" TO "service_role";
GRANT ALL ON TABLE "public"."games_expansions" TO "anon";
GRANT ALL ON TABLE "public"."games_expansions" TO "authenticated";
GRANT ALL ON TABLE "public"."games_expansions" TO "service_role";
GRANT ALL ON TABLE "public"."games_genres" TO "anon";
GRANT ALL ON TABLE "public"."games_genres" TO "authenticated";
GRANT ALL ON TABLE "public"."games_genres" TO "service_role";
GRANT ALL ON TABLE "public"."games_publishers" TO "anon";
GRANT ALL ON TABLE "public"."games_publishers" TO "authenticated";
GRANT ALL ON TABLE "public"."games_publishers" TO "service_role";
GRANT ALL ON TABLE "public"."games_release_information" TO "anon";
GRANT ALL ON TABLE "public"."games_release_information" TO "authenticated";
GRANT ALL ON TABLE "public"."games_release_information" TO "service_role";
GRANT ALL ON TABLE "public"."games_remakes" TO "anon";
GRANT ALL ON TABLE "public"."games_remakes" TO "authenticated";
GRANT ALL ON TABLE "public"."games_remakes" TO "service_role";
GRANT ALL ON TABLE "public"."games_remasters" TO "anon";
GRANT ALL ON TABLE "public"."games_remasters" TO "authenticated";
GRANT ALL ON TABLE "public"."games_remasters" TO "service_role";
GRANT ALL ON TABLE "public"."games_standalone_expansions" TO "anon";
GRANT ALL ON TABLE "public"."games_standalone_expansions" TO "authenticated";
GRANT ALL ON TABLE "public"."games_standalone_expansions" TO "service_role";
GRANT ALL ON TABLE "public"."games_themes" TO "anon";
GRANT ALL ON TABLE "public"."games_themes" TO "authenticated";
GRANT ALL ON TABLE "public"."games_themes" TO "service_role";
GRANT ALL ON TABLE "public"."games_videos" TO "anon";
GRANT ALL ON TABLE "public"."games_videos" TO "authenticated";
GRANT ALL ON TABLE "public"."games_videos" TO "service_role";
GRANT ALL ON TABLE "public"."genres" TO "anon";
GRANT ALL ON TABLE "public"."genres" TO "authenticated";
GRANT ALL ON TABLE "public"."genres" TO "service_role";
GRANT ALL ON TABLE "public"."how_long_to_beat" TO "anon";
GRANT ALL ON TABLE "public"."how_long_to_beat" TO "authenticated";
GRANT ALL ON TABLE "public"."how_long_to_beat" TO "service_role";
GRANT ALL ON TABLE "public"."metacritic" TO "anon";
GRANT ALL ON TABLE "public"."metacritic" TO "authenticated";
GRANT ALL ON TABLE "public"."metacritic" TO "service_role";
GRANT ALL ON TABLE "public"."platforms" TO "anon";
GRANT ALL ON TABLE "public"."platforms" TO "authenticated";
GRANT ALL ON TABLE "public"."platforms" TO "service_role";
GRANT ALL ON TABLE "public"."release_phases" TO "anon";
GRANT ALL ON TABLE "public"."release_phases" TO "authenticated";
GRANT ALL ON TABLE "public"."release_phases" TO "service_role";
GRANT ALL ON TABLE "public"."themes" TO "anon";
GRANT ALL ON TABLE "public"."themes" TO "authenticated";
GRANT ALL ON TABLE "public"."themes" TO "service_role";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";
RESET ALL;
