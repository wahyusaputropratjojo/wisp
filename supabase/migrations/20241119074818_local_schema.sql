CREATE UNIQUE INDEX user_profiles_display_name_key ON public.user_profiles USING btree (display_name);

alter table "public"."user_profiles" add constraint "user_profiles_display_name_key" UNIQUE using index "user_profiles_display_name_key";


