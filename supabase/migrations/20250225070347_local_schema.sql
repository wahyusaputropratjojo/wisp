alter table "public"."games_grid" drop constraint "games_grid_id_game_fkey";

alter table "public"."games_grid" add constraint "games_grid_id_game_fkey" FOREIGN KEY (id_game) REFERENCES games(id) not valid;

alter table "public"."games_grid" validate constraint "games_grid_id_game_fkey";

create policy "Enable read access for all users"
on "public"."games_grid"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."games_hero"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."games_logo"
as permissive
for select
to public
using (true);



