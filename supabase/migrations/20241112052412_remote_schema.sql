create table "public"."user_profiles" (
    "id" uuid not null,
    "created_at" timestamp with time zone not null default now(),
    "updated_at" timestamp with time zone not null default now(),
    "first_name" text not null,
    "last_name" text not null
);
alter table "public"."user_profiles" enable row level security;
CREATE UNIQUE INDEX user_profiles_pkey ON public.user_profiles USING btree (id);
alter table "public"."user_profiles" add constraint "user_profiles_pkey" PRIMARY KEY using index "user_profiles_pkey";
alter table "public"."user_profiles" add constraint "user_profiles_id_fkey" FOREIGN KEY (id) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;
alter table "public"."user_profiles" validate constraint "user_profiles_id_fkey";
grant delete on table "public"."user_profiles" to "anon";
grant insert on table "public"."user_profiles" to "anon";
grant references on table "public"."user_profiles" to "anon";
grant select on table "public"."user_profiles" to "anon";
grant trigger on table "public"."user_profiles" to "anon";
grant truncate on table "public"."user_profiles" to "anon";
grant update on table "public"."user_profiles" to "anon";
grant delete on table "public"."user_profiles" to "authenticated";
grant insert on table "public"."user_profiles" to "authenticated";
grant references on table "public"."user_profiles" to "authenticated";
grant select on table "public"."user_profiles" to "authenticated";
grant trigger on table "public"."user_profiles" to "authenticated";
grant truncate on table "public"."user_profiles" to "authenticated";
grant update on table "public"."user_profiles" to "authenticated";
grant delete on table "public"."user_profiles" to "service_role";
grant insert on table "public"."user_profiles" to "service_role";
grant references on table "public"."user_profiles" to "service_role";
grant select on table "public"."user_profiles" to "service_role";
grant trigger on table "public"."user_profiles" to "service_role";
grant truncate on table "public"."user_profiles" to "service_role";
grant update on table "public"."user_profiles" to "service_role";
CREATE TRIGGER updated_at BEFORE UPDATE ON public.user_profiles FOR EACH ROW EXECUTE FUNCTION moddatetime('updated_at');
