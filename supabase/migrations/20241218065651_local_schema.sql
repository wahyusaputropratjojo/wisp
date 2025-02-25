create table "public"."games_grid" (
    "id_game" uuid not null,
    "created_at" timestamp with time zone not null default now(),
    "thumbnail" text not null,
    "original" text not null
);


alter table "public"."games_grid" enable row level security;

create table "public"."games_hero" (
    "id_game" uuid not null,
    "created_at" timestamp with time zone not null default now(),
    "thumbnail" text not null,
    "original" text not null
);


alter table "public"."games_hero" enable row level security;

create table "public"."games_logo" (
    "id_game" uuid not null,
    "created_at" timestamp with time zone not null default now(),
    "thumbnail" text not null,
    "original" text not null
);


alter table "public"."games_logo" enable row level security;

alter table "public"."games" drop column "grid";

alter table "public"."games" drop column "hero";

alter table "public"."games" drop column "logo";

CREATE UNIQUE INDEX games_grid_pkey ON public.games_grid USING btree (id_game);

CREATE UNIQUE INDEX games_hero_pkey ON public.games_hero USING btree (id_game);

CREATE UNIQUE INDEX games_logo_pkey ON public.games_logo USING btree (id_game);

alter table "public"."games_grid" add constraint "games_grid_pkey" PRIMARY KEY using index "games_grid_pkey";

alter table "public"."games_hero" add constraint "games_hero_pkey" PRIMARY KEY using index "games_hero_pkey";

alter table "public"."games_logo" add constraint "games_logo_pkey" PRIMARY KEY using index "games_logo_pkey";

alter table "public"."games_grid" add constraint "games_grid_id_game_fkey" FOREIGN KEY (id_game) REFERENCES games(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."games_grid" validate constraint "games_grid_id_game_fkey";

alter table "public"."games_hero" add constraint "games_hero_id_game_fkey" FOREIGN KEY (id_game) REFERENCES games(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."games_hero" validate constraint "games_hero_id_game_fkey";

alter table "public"."games_logo" add constraint "games_logo_id_game_fkey" FOREIGN KEY (id_game) REFERENCES games(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."games_logo" validate constraint "games_logo_id_game_fkey";

grant delete on table "public"."games_grid" to "anon";

grant insert on table "public"."games_grid" to "anon";

grant references on table "public"."games_grid" to "anon";

grant select on table "public"."games_grid" to "anon";

grant trigger on table "public"."games_grid" to "anon";

grant truncate on table "public"."games_grid" to "anon";

grant update on table "public"."games_grid" to "anon";

grant delete on table "public"."games_grid" to "authenticated";

grant insert on table "public"."games_grid" to "authenticated";

grant references on table "public"."games_grid" to "authenticated";

grant select on table "public"."games_grid" to "authenticated";

grant trigger on table "public"."games_grid" to "authenticated";

grant truncate on table "public"."games_grid" to "authenticated";

grant update on table "public"."games_grid" to "authenticated";

grant delete on table "public"."games_grid" to "service_role";

grant insert on table "public"."games_grid" to "service_role";

grant references on table "public"."games_grid" to "service_role";

grant select on table "public"."games_grid" to "service_role";

grant trigger on table "public"."games_grid" to "service_role";

grant truncate on table "public"."games_grid" to "service_role";

grant update on table "public"."games_grid" to "service_role";

grant delete on table "public"."games_hero" to "anon";

grant insert on table "public"."games_hero" to "anon";

grant references on table "public"."games_hero" to "anon";

grant select on table "public"."games_hero" to "anon";

grant trigger on table "public"."games_hero" to "anon";

grant truncate on table "public"."games_hero" to "anon";

grant update on table "public"."games_hero" to "anon";

grant delete on table "public"."games_hero" to "authenticated";

grant insert on table "public"."games_hero" to "authenticated";

grant references on table "public"."games_hero" to "authenticated";

grant select on table "public"."games_hero" to "authenticated";

grant trigger on table "public"."games_hero" to "authenticated";

grant truncate on table "public"."games_hero" to "authenticated";

grant update on table "public"."games_hero" to "authenticated";

grant delete on table "public"."games_hero" to "service_role";

grant insert on table "public"."games_hero" to "service_role";

grant references on table "public"."games_hero" to "service_role";

grant select on table "public"."games_hero" to "service_role";

grant trigger on table "public"."games_hero" to "service_role";

grant truncate on table "public"."games_hero" to "service_role";

grant update on table "public"."games_hero" to "service_role";

grant delete on table "public"."games_logo" to "anon";

grant insert on table "public"."games_logo" to "anon";

grant references on table "public"."games_logo" to "anon";

grant select on table "public"."games_logo" to "anon";

grant trigger on table "public"."games_logo" to "anon";

grant truncate on table "public"."games_logo" to "anon";

grant update on table "public"."games_logo" to "anon";

grant delete on table "public"."games_logo" to "authenticated";

grant insert on table "public"."games_logo" to "authenticated";

grant references on table "public"."games_logo" to "authenticated";

grant select on table "public"."games_logo" to "authenticated";

grant trigger on table "public"."games_logo" to "authenticated";

grant truncate on table "public"."games_logo" to "authenticated";

grant update on table "public"."games_logo" to "authenticated";

grant delete on table "public"."games_logo" to "service_role";

grant insert on table "public"."games_logo" to "service_role";

grant references on table "public"."games_logo" to "service_role";

grant select on table "public"."games_logo" to "service_role";

grant trigger on table "public"."games_logo" to "service_role";

grant truncate on table "public"."games_logo" to "service_role";

grant update on table "public"."games_logo" to "service_role";


