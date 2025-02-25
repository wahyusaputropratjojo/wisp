alter table "public"."user_profiles" add column "display_name" text not null;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.add_user_profiles()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
 SET search_path TO ''
AS $function$
begin
  insert into public.user_profiles (id, first_name, last_name, display_name)
  values (new.id, new.raw_user_meta_data ->> 'first_name', new.raw_user_meta_data ->> 'last_name', new.raw_user_meta_data ->> 'display_name');
  return new;
end;
$function$
;


