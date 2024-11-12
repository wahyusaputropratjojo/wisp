SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '750ddf8a-98e0-4c2f-9987-063df7256b9c', '{"action":"user_confirmation_requested","actor_id":"0907865a-8b96-412c-b2fa-dc976d13ab82","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-11-09 13:24:32.711195+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e4e3991-0c6f-46f9-aa87-3f32d511734d', '{"action":"user_signedup","actor_id":"0907865a-8b96-412c-b2fa-dc976d13ab82","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"team"}', '2024-11-09 13:25:30.159323+00', ''),
	('00000000-0000-0000-0000-000000000000', '49c70254-a26b-415e-8fae-ef5667c336ed', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"wahyusaputropratjojo@gmail.com","user_id":"0907865a-8b96-412c-b2fa-dc976d13ab82","user_phone":""}}', '2024-11-09 14:02:01.456486+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: age_classification_system; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."age_classification_system" ("created_at", "organization", "category", "logo", "updated_at", "id") VALUES
	('2024-03-26 16:14:12.043611+00', 'Entertainment Software Rating Board', 'Mature 17+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/esrb-m17-plus.svg', '2024-04-26 07:12:54.72829+00', '18223da0-51ef-481b-8022-3d8a21f5a5d2'),
	('2024-03-26 16:14:12.043611+00', 'Australian Classification Board', 'Restricted 18+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/acb-r-18-plus.svg', '2024-04-26 07:22:31.476984+00', '10d667af-6f16-48ca-b59a-f6b784942d87'),
	('2024-03-26 16:14:12.043611+00', 'Australian Classification Board', 'Mature Accompanied 15+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/acb-ma-15-plus.svg', '2024-04-26 07:22:59.034418+00', 'aa2f8432-81d0-4c50-9ebc-0b59e73ab5df'),
	('2024-03-26 16:14:12.043611+00', 'Australian Classification Board', 'General', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/acb-g.svg', '2024-04-26 07:22:51.832066+00', '74802d8d-f56e-41e1-9e53-c555e9ed2e65'),
	('2024-03-26 16:14:12.043611+00', 'Australian Classification Board', 'Parental Guidance', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/acb-pg.svg', '2024-04-26 07:23:07.979357+00', 'f5c435fe-8e16-4d13-bab3-446b75b691eb'),
	('2024-03-26 16:14:12.043611+00', 'Australian Classification Board', 'Mature', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/acb-m.svg', '2024-04-26 07:23:32.218968+00', '732ebe66-21ab-4eb4-95a5-8aec0dd52094'),
	('2024-03-26 16:14:12.043611+00', 'Classificação Indicativa', '10', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/ci-10.svg', '2024-04-26 07:24:31.102302+00', 'afd473a1-09ce-498a-b952-71c0d50add90'),
	('2024-03-26 16:14:12.043611+00', 'Classificação Indicativa', 'L', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/ci-l.svg', '2024-04-26 07:24:40.580678+00', '984a5362-214d-4c05-9ef3-14c20c0d06b3'),
	('2024-03-26 16:14:12.043611+00', 'Computer Entertainment Rating Organization', 'CERO Z', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/cero-z.svg', '2024-04-26 07:24:54.991883+00', 'b6e7fbac-fc91-44d7-9144-c8e2918ae846'),
	('2024-03-26 16:14:12.043611+00', 'Computer Entertainment Rating Organization', 'CERO A', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/cero-a.svg', '2024-04-26 07:25:03.603585+00', 'a0e69cf3-7482-49bf-a073-71076ad99241'),
	('2024-03-26 16:14:12.043611+00', 'Computer Entertainment Rating Organization', 'CERO D', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/cero-d.svg', '2024-04-26 07:25:11.763095+00', 'e1f9e59b-28ba-4533-95cd-db4de81a8da7'),
	('2024-03-26 16:14:12.043611+00', 'Computer Entertainment Rating Organization', 'CERO B', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/cero-b.svg', '2024-04-26 07:25:23.880516+00', '6e0202ec-99d6-4c76-a24e-37bbef5ca1ef'),
	('2024-03-26 16:14:12.043611+00', 'Computer Entertainment Rating Organization', 'CERO C', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/cero-c.svg', '2024-04-26 07:25:37.135399+00', 'a66c44cc-21da-4c5c-9016-010fc7042962'),
	('2024-03-26 16:14:12.043611+00', 'Entertainment Software Rating Board', 'Everyone', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/esrb-e.svg', '2024-04-26 07:25:51.099014+00', '146d621d-36bb-4755-9989-15d008bb0c15'),
	('2024-03-26 16:14:12.043611+00', 'Entertainment Software Rating Board', 'Everyone 10+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/esrb-e10-plus.svg', '2024-04-26 07:26:02.676222+00', 'ed7dd35f-fd8e-40cf-b09d-4a7e4fa0138f'),
	('2024-03-26 16:14:12.043611+00', 'Entertainment Software Rating Board', 'Teen', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/esrb-t.svg', '2024-04-26 07:26:09.032928+00', '8c01a555-f9b2-41d1-a9b4-8f592044236e'),
	('2024-03-26 16:14:12.043611+00', 'Game Rating and Administration Committee', '15+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/grac-15.svg', '2024-04-26 07:27:33.242869+00', '6b44fdd4-fd13-44ad-8d19-606d40fa9d14'),
	('2024-03-26 16:14:12.043611+00', 'Entertainment Software Rating Board', 'Adults Only 18+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/esrb-a18-plus.svg', '2024-04-26 07:26:29.401932+00', '28757171-491e-47c4-a9ee-abf48beaba18'),
	('2024-03-26 16:14:12.043611+00', 'Game Rating and Administration Committee', '19+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/grac-19.svg', '2024-04-26 07:27:46.707941+00', '56138e16-3fd4-4e98-a4bd-991ecb404c71'),
	('2024-03-26 16:14:12.043611+00', 'Game Rating and Administration Committee', 'ALL', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/grac-all.svg', '2024-04-26 07:27:51.302987+00', 'd2454c35-ea54-4019-ad06-34193ff83ab1'),
	('2024-03-26 16:14:12.043611+00', 'Game Rating and Administration Committee', '12+', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/grac-12.svg', '2024-04-26 07:28:01.895379+00', 'b703cd5f-79f9-4e0a-9649-c5ee6aec494c'),
	('2024-03-26 16:14:12.043611+00', 'Pan European Game Information', 'PEGI 7', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/pegi-7.svg', '2024-04-26 07:28:17.906347+00', 'a4cf7a2f-4f06-4a98-b0e5-b1dad6fe6b7e'),
	('2024-03-26 16:14:12.043611+00', 'Pan European Game Information', 'PEGI 3', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/pegi-3.svg', '2024-04-26 07:28:24.790608+00', 'b55e4da7-144c-496f-82c2-d2c04d30ab63'),
	('2024-03-26 16:14:12.043611+00', 'Pan European Game Information', 'PEGI 16', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/pegi-16.svg', '2024-04-26 07:28:37.162544+00', 'b5dc3e5a-953f-4354-b75a-30e62bb6299a'),
	('2024-03-26 16:14:12.043611+00', 'Pan European Game Information', 'PEGI 18', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/pegi-18.svg', '2024-04-26 07:28:43.476203+00', '72eef3de-700d-484a-bcfc-a776b608a755'),
	('2024-03-26 16:14:12.043611+00', 'Pan European Game Information', 'PEGI 12', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/pegi-12.svg', '2024-04-26 07:28:52.837346+00', '3f9f2981-837b-48de-b868-a85af6455d39'),
	('2024-03-26 16:14:12.043611+00', 'Unterhaltungssoftware Selbstkontrolle', 'USK 16', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/usk-16.svg', '2024-04-26 07:29:08.954884+00', '611eb553-4a58-4cad-8655-2fff457aa4d4'),
	('2024-03-26 16:14:12.043611+00', 'Unterhaltungssoftware Selbstkontrolle', 'USK 6', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/usk-6.svg', '2024-04-26 07:29:19.789431+00', '92de6974-b2e5-4828-9637-07c370fbf3bb'),
	('2024-03-26 16:14:12.043611+00', 'Unterhaltungssoftware Selbstkontrolle', 'USK 0', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/usk-0.svg', '2024-04-26 07:29:27.259076+00', 'eb7832ca-42bf-49bc-b4a8-6aa69e3240c6'),
	('2024-03-26 16:14:12.043611+00', 'Unterhaltungssoftware Selbstkontrolle', 'USK 18', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/usk-18.svg', '2024-04-26 07:29:35.014263+00', '4b95415a-c1be-45db-9ed9-ff9c19784d79'),
	('2024-03-26 16:14:12.043611+00', 'Unterhaltungssoftware Selbstkontrolle', 'USK 12', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/usk-12.svg', '2024-04-26 07:29:44.70529+00', 'c75e72c6-4ef2-4b8c-80d9-0fc5514ab0d5'),
	('2024-03-26 16:14:12.043611+00', 'Classificação Indicativa', '14', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/ci-14.svg', '2024-04-26 07:23:59.80925+00', 'a40c4d4e-f18e-4358-a939-d3a078d63e41'),
	('2024-03-26 16:14:12.043611+00', 'Classificação Indicativa', '16', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/ci-16.svg', '2024-04-26 07:24:08.026046+00', 'a4903216-bc33-45f2-883b-904c2304cbbc'),
	('2024-03-26 16:14:12.043611+00', 'Classificação Indicativa', '12', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/ci-12.svg', '2024-04-26 07:24:15.417689+00', 'fa34ee8e-8634-4c7f-ae9a-a89ac2dab599'),
	('2024-03-26 16:14:12.043611+00', 'Classificação Indicativa', '18', 'https://wabrlwvrhzzixzyeqqsv.supabase.co/storage/v1/object/public/age-classification-system/ci-18.svg', '2024-04-26 07:24:24.102324+00', 'cb479fc1-02f5-4f28-8864-7ce2a048f1ce');


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."companies" ("created_at", "established_date", "name", "country", "logo", "updated_at", "id") VALUES
	('2024-03-26 15:39:45.871484+00', '2015-04-01', 'PocketPair', 'Japan', NULL, '2024-03-26 15:39:45.871484+00', 'f7da0d6c-ffd5-40f6-85c5-e7a0f3f6383c'),
	('2024-03-26 15:39:45.871484+00', '1986-03-28', 'Ubisoft Entertainment', 'France', NULL, '2024-03-26 15:39:45.871484+00', 'f69a07b9-6c3d-454f-86a3-383b4e3f6cf7'),
	('2024-03-26 15:39:45.871484+00', '1994-01-01', 'Ubisoft Montpellier', 'France', NULL, '2024-03-26 15:39:45.871484+00', 'd8a5f0a1-fa7c-479c-ae51-daef84aa112c'),
	('2024-03-26 15:39:45.871484+00', '2003-04-01', 'Square Enix', 'Japan', NULL, '2024-03-26 15:39:45.871484+00', '56193181-a2ba-4dea-94e2-2f5811e8e9ce'),
	('2024-03-26 15:39:45.871484+00', '1999-01-01', 'Santa Monica Studio', 'United States', NULL, '2024-03-26 15:39:45.871484+00', 'f2117ae3-156f-41d3-965f-8102323f883b'),
	('2024-03-26 15:39:45.871484+00', '2016-04-01', 'Sony Interactive Entertainment', 'Japan', NULL, '2024-03-26 15:39:45.871484+00', 'a94c9b36-023b-4737-a288-d1f17fd1acad'),
	('2024-03-26 15:39:45.871484+00', '1984-01-01', 'Naughty Dog', 'United States', NULL, '2024-03-26 15:39:45.871484+00', 'b37ca8d6-9df8-40db-8c68-5caacd92c882'),
	('2024-03-26 15:39:45.871484+00', '2020-04-01', 'Sega', 'Japan', NULL, '2024-03-26 15:39:45.871484+00', 'dfebe0ae-1151-47c0-9551-95a82f2b3161'),
	('2024-03-26 15:39:45.871484+00', '1986-04-07', 'Atlus', 'Japan', NULL, '2024-03-26 15:39:45.871484+00', '1f0c6d63-cb8f-451e-9107-b32655d08930'),
	('2024-03-26 15:39:45.871484+00', '2008-01-01', 'Arrowhead Game Studios', 'Sweden', NULL, '2024-03-26 15:39:45.871484+00', '7e9f3a1e-1276-4862-a172-a9c761206fb3'),
	('2024-03-26 15:39:45.871484+00', '2014-06-13', 'Game Science', 'China', NULL, '2024-03-26 15:39:45.871484+00', '9f8207fd-2312-44ae-b940-6151f688dfb3'),
	('2024-03-26 15:39:45.871484+00', '2000-01-01', 'Guerrilla Games', 'Netherlands', NULL, '2024-03-26 15:39:45.871484+00', 'bb86ac57-b62f-4d04-9efb-63a0ada92ba7'),
	('2024-03-26 15:39:45.871484+00', '1997-10-01', 'Sucker Punch Productions', 'United States', NULL, '2024-03-26 15:39:45.871484+00', '21a8d5af-84fe-4b21-a066-af8a483d5f2c');


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games" ("created_at", "name", "description", "release_date", "hero", "logo", "grid", "is_base", "is_bundle", "is_remaster", "is_remake", "is_expansion", "is_standalone_expansion", "updated_at", "id", "slug") VALUES
	('2024-03-26 15:43:11.536814+00', 'Final Fantasy VII Rebirth', 'Final Fantasy VII Rebirth is the new story in the Final Fantasy VII remake project, a reimagining of the iconic original game into three standalone titles by its original creators. In this game, players will enjoy various new elements as the story unfolds, culminating in the midpoint from the original Final Fantasy VII.', '2024-02-29', '{"original": "https://cdn2.steamgriddb.com/hero/542a2ef216fcbc3348128461e2913137.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/bkldgxwuwl5rk5crq90m"}', '{"original": "https://cdn2.steamgriddb.com/logo/e8afafac24a24dd767b87d9f8a596b0f.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/k32ovxxhme0disf1fqfu"}', '{"original": "https://cdn2.steamgriddb.com/grid/01639920c81fcc08b5b7a8db3d55723a.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/smu5rypxd7xvp9zumjzc"}', false, false, false, true, false, false, '2024-03-26 15:43:11.536814+00', '5c54046f-f0eb-4e19-a5a8-d76feab9b244', 'final-fantasy-vii-rebirth'),
	('2024-03-26 15:43:11.536814+00', 'Palworld', 'Palworld is a brand-new, multiplayer, open-world survival crafting game where you can befriend and collect mysterious creatures called "Pal" in a vast world! Make your Pals fight, build, farm, and work in factories.', '2024-01-19', '{"original": "https://cdn2.steamgriddb.com/hero/8e24d3c12fc3419717a7954b2594e14d.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/vab8mjdnmkxct4jhi304"}', '{"original": "https://cdn2.steamgriddb.com/logo/510bc22fbbcee5aa688a72fe81a52802.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/fgrf5uxapbvrvsxdet3j"}', '{"original": "https://cdn2.steamgriddb.com/grid/d0c2b1e87b18968832aec662ff2889dd.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/dympoa0eh6gsfbsth2v1"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '1b696350-e681-4f85-a0f3-814bddffd832', 'palworld'),
	('2024-03-26 15:43:11.536814+00', 'Prince of Persia: The Lost Crown', 'Dash into a stylish and thrilling action-adventure platformer set in a mythological Persian world where the boundaries of time and space are yours to manipulate.
Play as Sargon and evolve from sword-wielding prodigy to extraordinary legend as you master acrobatic combat and unlock new Time Powers and unique super abilities.', '2024-01-18', '{"original": "https://cdn2.steamgriddb.com/hero/5c04545bcfc26740bd85490463014eba.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/mmouljvitdbfqcjr9fyd"}', '{"original": "https://cdn2.steamgriddb.com/logo/54f83c905d32a810c7a5a2d224e290b4.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/r2lsrkzk2uhffumeg4js"}', '{"original": "https://cdn2.steamgriddb.com/grid/4bdc756c3e62c186cb05dc1cd927ec76.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/p7lxqt1gy6eeyvaeydud"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'prince-of-persia-the-lost-crown'),
	('2024-03-26 15:43:11.536814+00', 'God of War Ragnarök', 'God of War: Ragnarök is the ninth installment in the God of War series and the sequel to 2018''s God of War. Continuing with the Norse mythology theme, the game is set in ancient Norway and features series protagonists Kratos, the former Greek God of War, and his young son Atreus. The game kicked off the events of Ragnarök, where Kratos and Atreus must journey to each of the Nine Realms in search of answers as they prepare for the prophesied battle that will end the world.', '2022-11-09', '{"original": "https://cdn2.steamgriddb.com/hero/b65bef8cf417d931a62afdd5ff6b1ff1.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/mru9zrmipuqu4kc7bzib"}', '{"original": "https://cdn2.steamgriddb.com/logo/99042a495af06f062902ade0eacd4064.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/csgz6ge11jtqmseughoa"}', '{"original": "https://cdn2.steamgriddb.com/grid/fd93fd1de50e084dd7d3b0b9f6950450.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/i5n3gv64xbloloo85s0t"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'god-of-war-ragnarök'),
	('2024-03-26 15:43:11.536814+00', 'Horizon Forbidden West', 'Horizon Forbidden West continues Aloy’s story as she moves west to a far-future America to brave a majestic, but dangerous frontier where she’ll face awe-inspiring machines and mysterious new threats.', '2022-02-18', '{"original": "https://cdn2.steamgriddb.com/hero/4ef10445b952a8b3c93a9379d581146a.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/vpgmcvof9kl2s9ycovwf"}', '{"original": "https://cdn2.steamgriddb.com/logo/713db6add2b5e85a240d2daffd3e9dab.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/kdvls4zkqewauilpmk6v"}', '{"original": "https://cdn2.steamgriddb.com/grid/b54ebbed071f0e9265e88eb8ed58e10e.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/ox76om8skxvxjutode91"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'horizon-forbidden-west'),
	('2024-03-26 15:43:11.536814+00', 'HELLDIVERS 2', 'The Galaxy’s Last Line of Offence. Enlist in the Helldivers and join the fight for freedom across a hostile galaxy in a fast, frantic, and ferocious third-person shooter.', '2024-02-08', '{"original": "https://cdn2.steamgriddb.com/hero/cdde45d6c5c46b783372c07eae935bae.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/gddemo9ppzbeuysw4tzo"}', '{"original": "https://cdn2.steamgriddb.com/logo/ba58b28a8052477462e69bf3ebc76fb7.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/hgdurjhwxyukq2ckr9de"}', '{"original": "https://cdn2.steamgriddb.com/grid/104e491b5e538fc0ebca7459daeb2650.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/zrd53xwrogarkvnvnngb"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'aba3368c-5504-4205-b6d6-df059665dd7c', 'helldivers-2'),
	('2024-03-26 15:43:11.536814+00', 'Persona 3 Reload', 'Step into the shoes of a transfer student thrust into an unexpected fate when entering the hour "hidden" between one day and the next. Awaken an incredible power and chase the mysteries of the Dark Hour, fight for your friends, and leave a mark on their memories forever.
Persona 3 Reload is a captivating reimagining of the genre-defining RPG, reborn for the modern era.', '2024-02-02', '{"original": "https://cdn2.steamgriddb.com/hero/0055871c6bd13e2d1378d3779e84843c.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/gysgdxb6tbn5h4dggooe"}', '{"original": "https://cdn2.steamgriddb.com/logo/be9a22cb85032b37ebb2eee3938bdb9b.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/aigk7stl9mbywbaq3w7n"}', '{"original": "https://cdn2.steamgriddb.com/grid/13b553cc46dd50947c364769cfc84efe.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/klzuijv9tqoybfr5nxmy"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'd304a979-c997-4f6d-b342-a32d5dd5929d', 'persona-3-reload'),
	('2024-03-26 15:43:11.536814+00', 'Ghost of Tsushima', 'Uncover the hidden wonders of Tsushima in this open-world action adventure. Forge a new path and wage an unconventional war for the freedom of Tsushima. Challenge opponents with your katana, master the bow to eliminate distant threats, develop stealth tactics to ambush enemies in order to win over the mongols.', '2020-07-17', '{"original": "https://cdn2.steamgriddb.com/hero/104f7cbe857799ba883067a174bc01c1.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/nfimfosqrhsbybyi7cap"}', '{"original": "https://cdn2.steamgriddb.com/logo/e8630344970962450dbedfcd4cc6d718.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/jrxn2oasfo2sbsjocgcq"}', '{"original": "https://cdn2.steamgriddb.com/grid/188b51418888fd91619f06543f6fa824.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/qjxp9l4gzra5levcnfqw"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'c882a6f0-85d1-4333-85fa-41ed54198309', 'ghost-of-tsushima'),
	('2024-03-26 15:43:11.536814+00', 'Black Myth: Wukong', 'Black Myth: Wukong is an action RPG rooted in Chinese mythology. You shall set out as the Destined One to venture into the challenges and marvels ahead, to uncover the obscured truth beneath the veil of a glorious legend from the past.', '2024-08-20', '{"original": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/v1710070700/wisp/games/heroes/q8pxyatvdqejtkrhxuf3.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/q8pxyatvdqejtkrhxuf3"}', '{"original": "https://cdn2.steamgriddb.com/logo/59dce7652ebe3f1c66ea871560889d5c.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/h4kblfvtwccjfpomuaup"}', '{"original": "https://cdn2.steamgriddb.com/grid/9ac2641162c8716cdf59a40367e21b6e.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/cpqywrs5dgw8m1rt1fej"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '26e1bb94-7a5f-4127-882c-5baf78387932', 'black-myth-wukong'),
	('2024-03-26 15:43:11.536814+00', 'Ghost of Tsushima DIRECTOR''S CUT', 'Discover the expanded Ghost of Tsushima experience in this DIRECTOR’S CUT, featuring all additional content released to date.', '2024-05-16', '{"original": "https://image.api.playstation.com/vulcan/ap/rnd/202106/2322/FEhFbXbOMnlh1y8Mi9dPuJHQ.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/rri7dxu2nyxphjce8ktn"}', '{"original": "https://cdn2.steamgriddb.com/logo/f894cbc7551b7dea91a6aa9fbfc95c21.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/k5mhfykyf6omuz1vy2f1"}', '{"original": "https://image.api.playstation.com/vulcan/ap/rnd/202106/2322/v53I7qHvpWSQsL2oLxrM46NV.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/f0m1irraz7xhvx1aq74c"}', false, true, false, false, false, false, '2024-03-26 15:43:11.536814+00', '75c94e45-de09-4596-9dfe-f588b2da71a9', 'ghost-of-tsushima-directors-cut'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us', 'Joel, a ruthless survivor with few moral lines left to cross, lives in one of the last remaining Quarantine Zones. These walled-off, oppressive cities are run by what’s left of the military. Despite the strict martial law, Joel operates in the black market of the city, smuggling contraband for the right price.

Joel is asked by a dying friend to look after Ellie, a fourteen-year-old girl with courage beyond her years. What starts out as a simple job to deliver Ellie to another Quarantine Zone, soon transforms into a profound journey that will forever change Joel and Ellie.

As they journey across a post-pandemic United States, Joel and Ellie will encounter different factions of survivors that have each found a unique way of dealing with the infected humans, the lack of supplies, and the threat of other survivors. As Joel and Ellie struggle to persevere, they must learn to trust each other and work together in order to survive the realities of this new world.', '2013-06-14', '{"original": "https://cdn2.steamgriddb.com/hero/29fe9fa1194f3e4c69f9a5477839526e.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/xkefjoy8rowubiauvkpk"}', '{"original": "https://cdn2.steamgriddb.com/logo/5c333c4ffd55c7a3576e6a614d81af82.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/p69wt9wra5ugjigwpm9w"}', '{"original": "https://cdn2.steamgriddb.com/grid/849d7b8124e44421cf640466299db4dc.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/drmmkykrvgxgiidumadp"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'the-last-of-us'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Part II Remastered', 'Experience the winner of over 300 Game of the Year awards now with an array of technical enhancements that make The Last of Us Part Il Remastered the definitive way to play Ellie and Abby''s critically acclaimed story.', '2024-01-19', '{"original": "https://cdn2.steamgriddb.com/hero/adfe876ae8618aa5df77dd6946ba37c6.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/sljqfloi8ppq6mbm3cw0"}', '{"original": "https://cdn2.steamgriddb.com/logo/f8976d7778c70a12a6ab8d82a3a1e706.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/avtzdiurqfxsjnsl6nd9"}', '{"original": "https://cdn2.steamgriddb.com/grid/f3949fa34208fe26a430aed32434ebc8.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/buzn4vqmgddugogatnei"}', false, false, false, true, false, false, '2024-03-26 15:43:11.536814+00', '6e6958f7-cd84-47b3-be20-024a41bc85d3', 'the-last-of-us-part-ii-remastered'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Remastered', 'Winner of over 200 Game of the Year awards, The Last of Us has been rebuilt for the PlayStation 4 system. Now featuring full 1080p, higher-resolution character models, improved shadows and lighting, in addition to several other gameplay improvements.

20 years after a pandemic has radically changed known civilization, infected humans run wild and survivors are killing each other for food, weapons; whatever they can get their hands on. Joel, a violent survivor, is hired to smuggle a 14 year-old girl, Ellie, out of an oppressive military quarantine zone, but what starts as a small job soon transforms into a brutal journey across the U.S.

The Last of Us Remastered includes the Abandoned Territories Map Pack, Reclaimed Territories Map Pack, and the critically acclaimed The Last of Us: Left Behind Single Player campaign that combines themes of survival, loyalty, and love with tense, survival-action gameplay.', '2014-07-26', '{"original": "https://cdn2.steamgriddb.com/hero/3e851d689e10f4b1b1385ce82cf0cd1f.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/krzgncsyv65x851wvwqy"}', '{"original": "https://cdn2.steamgriddb.com/logo/ddd21fdd3158de79052d4dd683573113.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/rily0vloe8okeow7ab1z"}', '{"original": "https://cdn2.steamgriddb.com/grid/e8e576d226e2da4b7a270eaa0c20448a.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/evzhnwgzgpxs7swl1gh7"}', true, false, true, false, false, false, '2024-03-26 15:43:11.536814+00', 'e426b1fe-f692-4dd7-b411-101cfabba94a', 'the-last-of-us-remastered'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Part II', 'Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Jackson, Wyoming. Living amongst a thriving community of survivors has allowed them peace and stability, despite the constant threat of the infected and other, more desperate survivors.

When a violent event disrupts that peace, Ellie embarks on a relentless journey to carry out justice and find closure. As she hunts those responsible one by one, she is confronted with the devastating physical and emotional repercussions of her actions.

Experience the escalating moral conflicts created by Ellie’s relentless pursuit of vengeance. The cycle of violence left in her wake will challenge your notions of right versus wrong, good versus evil, and hero versus villain.

New and evolved gameplay systems deliver upon the life-or-death stakes of Ellie’s journey through the hostile world. Feel her desperate struggle for survival through improved features such as high-intensity melee combat, fluid movement, and dynamic stealth. A broad variety of weapons, crafting items, skills, and upgrades allows you to personalize Ellie’s capabilities to your play style.

Set out on Ellie’s journey, taking her from the peaceful mountains and forests of Jackson to the lush, overgrown ruins of greater Seattle. Encounter new survivor groups, unfamiliar and treacherous environments, and terrifying evolutions of the infected. Brought to life by the latest iteration of the Naughty Dog engine, the deadly characters and world are more realistic and meticulously detailed than ever before.', '2020-06-19', '{"original": "https://cdn2.steamgriddb.com/hero/0e2c2cfc6030399c82c70cad3c81c290.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/bqqiche8gmlqoytlo4zv"}', '{"original": "https://cdn2.steamgriddb.com/logo/edd407e7a5c6cd76b8fc6a7435b7e316.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/lszqwej94ditzadajjna"}', '{"original": "https://cdn2.steamgriddb.com/grid/f17d1fd257fd64a218e91a21a8ef18ab.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/yl7pgizlr7bwgndxv325"}', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '281a84f5-377e-4b35-b1c1-e7152461c3e1', 'the-last-of-us-part-ii'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Part I', 'Completely rebuilt from the ground up using Naughty Dog’s latest PS5™ engine technology with advanced visual fidelity, fully integrated DualSense™ wireless controller features and more.

Experience the emotional storytelling and unforgettable characters of Joel and Ellie in The Last of Us, and explore the events that changed the lives of Ellie and her best friend Riley forever in the critically acclaimed prequel chapter, Left Behind.
A total overhaul of the original experience, faithfully reproduced but incorporating modernized gameplay mechanics, improved controls and expanded accessibility options. 

Feel immersed in improved environmental storytelling, effects, facial animations, and enhanced exploration and combat.', '2022-09-01', '{"original": "https://cdn2.steamgriddb.com/hero/044c326638b59e6c638ce6abe8635a01.jpg", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/heroes/hnjgoy4tbvb6k8hcu38p"}', '{"original": "https://cdn2.steamgriddb.com/logo/ef1b6b4a07817420f1500c894d273b98.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/logos/wtpdpt79izaucbiokdbh"}', '{"original": "https://cdn2.steamgriddb.com/grid/c840da4d342a29827b6c907c03a76f80.png", "optimized": "https://res.cloudinary.com/wahyusaputropratjojo/image/upload/f_auto,q_auto/v1/wisp/games/grids/sks7sp1pufz5yzsmuhoa"}', true, false, false, true, false, false, '2024-03-26 15:43:11.536814+00', '8a15b39f-a057-4fe6-babf-f6dd301c5bbb', 'the-last-of-us-part-i');


--
-- Data for Name: games_age_classification_system; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_age_classification_system" ("id_game", "id_age_classification_system", "id") VALUES
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '18223da0-51ef-481b-8022-3d8a21f5a5d2', '8b0b12f7-0146-44ce-8dd2-32be665ecf0f'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '72eef3de-700d-484a-bcfc-a776b608a755', '904637d3-a47c-4e59-9e7c-91e5227131b7'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', 'b6e7fbac-fc91-44d7-9144-c8e2918ae846', '82a2aaea-eaea-4aea-8a61-680a16b72bb2'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '4b95415a-c1be-45db-9ed9-ff9c19784d79', 'c80d2813-3b13-4a24-89a5-c287ddfa727b'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '56138e16-3fd4-4e98-a4bd-991ecb404c71', '875e7dfb-a88b-4a3e-852d-193add343b94'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', 'cb479fc1-02f5-4f28-8864-7ce2a048f1ce', '1f1c7b75-a934-45e1-ae61-ce3f85a32938'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '10d667af-6f16-48ca-b59a-f6b784942d87', '22892267-7197-4933-8b5a-eec2281db7f6'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', '8c01a555-f9b2-41d1-a9b4-8f592044236e', '4385357f-ba56-48dd-a8f4-1de10ef06bf1'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', 'b5dc3e5a-953f-4354-b75a-30e62bb6299a', '1457de51-f9c7-4c7b-890c-20ae8eef7c22'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '8c01a555-f9b2-41d1-a9b4-8f592044236e', '940ac35a-47fc-4623-8bfd-0a680c2eb6eb'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'b5dc3e5a-953f-4354-b75a-30e62bb6299a', 'cfd9de42-79f4-4dbd-a270-3dbc90425964'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'a66c44cc-21da-4c5c-9016-010fc7042962', '92ff6f52-65bc-45e6-ad24-6e5d8ff3b9a9'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'c75e72c6-4ef2-4b8c-80d9-0fc5514ab0d5', 'd2f2ebd1-1ca7-4ffe-894f-f53c7b07c780'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '56138e16-3fd4-4e98-a4bd-991ecb404c71', 'd8c13bbe-5556-41c8-bc2b-360985e0528b'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'fa34ee8e-8634-4c7f-ae9a-a89ac2dab599', '00d0a4b4-a6c9-46d7-85a3-9dea76cd051f'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '732ebe66-21ab-4eb4-95a5-8aec0dd52094', '151818a9-2f07-44a1-bd0f-3fbb7ec833b3'),
	('1b696350-e681-4f85-a0f3-814bddffd832', '8c01a555-f9b2-41d1-a9b4-8f592044236e', '2140333a-2ee1-45be-9576-649f6e57f107'),
	('1b696350-e681-4f85-a0f3-814bddffd832', '3f9f2981-837b-48de-b868-a85af6455d39', 'baa3f7e1-cb29-453d-8e3f-ef5fb2f163ed'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'c75e72c6-4ef2-4b8c-80d9-0fc5514ab0d5', '85fc8fc2-ec1d-4d27-8808-a4c04c848328'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'd2454c35-ea54-4019-ad06-34193ff83ab1', '93652102-1992-4101-9faa-e107fabdf16d'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'afd473a1-09ce-498a-b952-71c0d50add90', 'e82848b1-9b65-4fca-9e1a-da8a5abf2138'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'f5c435fe-8e16-4d13-bab3-446b75b691eb', 'b6270f7e-dc7d-4ec5-9d73-031a71cde3e5'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '18223da0-51ef-481b-8022-3d8a21f5a5d2', 'c4e6cdd3-9a98-4ab0-ae31-0c254ed356fd'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '72eef3de-700d-484a-bcfc-a776b608a755', '736c8c94-bfbb-4b00-8f87-e515399362e2'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'b6e7fbac-fc91-44d7-9144-c8e2918ae846', '16370016-1b8a-4faa-9fdd-bf2b0396681a'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '4b95415a-c1be-45db-9ed9-ff9c19784d79', '0da7a148-74b3-4f19-860c-d6cb134192ad'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '56138e16-3fd4-4e98-a4bd-991ecb404c71', '5dd55749-c684-40f9-ae49-e9c5e38a062c'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'cb479fc1-02f5-4f28-8864-7ce2a048f1ce', '113dbd12-f487-4dc8-9f6c-cf3178e47350'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'aa2f8432-81d0-4c50-9ebc-0b59e73ab5df', 'e5afb731-2dae-49fb-9d19-a8d2f9a2cc49'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'b5dc3e5a-953f-4354-b75a-30e62bb6299a', '44697e8d-1239-4e3f-b0cd-de325b4fc467'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'a66c44cc-21da-4c5c-9016-010fc7042962', 'b39ab59f-c488-407f-9209-7f3ab8dadfec'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '611eb553-4a58-4cad-8655-2fff457aa4d4', '05f87f02-010e-467b-8679-354ed4e0c323'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '6b44fdd4-fd13-44ad-8d19-606d40fa9d14', '3da27742-37b2-43b1-b443-2561daf02f6c'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'a4903216-bc33-45f2-883b-904c2304cbbc', '0ade32ef-3ceb-4672-ac4a-4a33b3a50aef'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'aa2f8432-81d0-4c50-9ebc-0b59e73ab5df', 'dcfd9dfd-799f-445f-9a87-e7ce17530570'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', '18223da0-51ef-481b-8022-3d8a21f5a5d2', 'e61c65a1-d49e-491e-b529-3e1f87eaa676'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '18223da0-51ef-481b-8022-3d8a21f5a5d2', '9fff33b2-e483-4d34-bad9-862f5db45381'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', 'b5dc3e5a-953f-4354-b75a-30e62bb6299a', 'bbc473db-b641-4326-bdda-f4cfdf9f8aeb'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '4b95415a-c1be-45db-9ed9-ff9c19784d79', '72c2094a-ba3a-4858-b58b-2abc81915890'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', 'a4903216-bc33-45f2-883b-904c2304cbbc', 'b1a4a6a6-7938-4f30-b4a9-4d64556c60d6'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', '8c01a555-f9b2-41d1-a9b4-8f592044236e', '84dbfae3-e4c6-4b6f-8635-427aa423abf7'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'b5dc3e5a-953f-4354-b75a-30e62bb6299a', '6dcf0426-f432-4eaa-ab45-9538ff148a24'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'e1f9e59b-28ba-4533-95cd-db4de81a8da7', '5c617317-b4ec-4020-b286-25922c6cf41b'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'c75e72c6-4ef2-4b8c-80d9-0fc5514ab0d5', '7f47c80e-1ebd-45cf-a61d-604b61c7656a'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', '56138e16-3fd4-4e98-a4bd-991ecb404c71', 'c18b7bbe-b470-446e-894d-cf826d3db662'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'a40c4d4e-f18e-4358-a939-d3a078d63e41', '67e05c8e-f578-4bd5-81ab-543a9b68a30f'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', '732ebe66-21ab-4eb4-95a5-8aec0dd52094', 'fa9aedb3-b755-45c4-9bcd-e739bcf445fd'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '18223da0-51ef-481b-8022-3d8a21f5a5d2', '11117ed7-3d25-465a-ba64-458fd48ef133'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '72eef3de-700d-484a-bcfc-a776b608a755', '813607ee-a365-4d86-88a0-f23a479937dd'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'b6e7fbac-fc91-44d7-9144-c8e2918ae846', '94c196e0-c6c8-4d91-a9f5-c9e733e5b413'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '4b95415a-c1be-45db-9ed9-ff9c19784d79', '45038529-0f2c-4757-9845-a3c303e07b9a'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '56138e16-3fd4-4e98-a4bd-991ecb404c71', '9aa46875-d931-4e0f-88ee-e58e0e29208a'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'cb479fc1-02f5-4f28-8864-7ce2a048f1ce', 'df500b50-a20e-4dd4-b32f-b3a1c97e5b9e'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'aa2f8432-81d0-4c50-9ebc-0b59e73ab5df', 'a6380e97-21e8-41b8-99a8-f82cf807e58f'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '18223da0-51ef-481b-8022-3d8a21f5a5d2', '10b0b821-1b82-411b-baaf-33004c849af2'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '72eef3de-700d-484a-bcfc-a776b608a755', 'e2fede5d-89d1-4657-88a1-a38531c596a0'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', 'b6e7fbac-fc91-44d7-9144-c8e2918ae846', 'e87747fe-c46c-40ee-8f68-2ad1a41047d8'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '4b95415a-c1be-45db-9ed9-ff9c19784d79', '727e6190-a8dd-4aa5-b6b1-22a4e6b6034e'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '56138e16-3fd4-4e98-a4bd-991ecb404c71', '3f0bdf3d-3c26-4cd8-8fa8-a0b69140e68f'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', 'aa2f8432-81d0-4c50-9ebc-0b59e73ab5df', '6a2b5666-f57d-42d8-aeda-c68db5bf364a'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '18223da0-51ef-481b-8022-3d8a21f5a5d2', '23343eaa-eff2-460d-ae05-0024ddba6667');


--
-- Data for Name: games_bundles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_bundles" ("id_game_bundle", "id_game", "id") VALUES
	('75c94e45-de09-4596-9dfe-f588b2da71a9', 'c882a6f0-85d1-4333-85fa-41ed54198309', '1952c3c2-77a5-4e29-94ce-e6c637a00743');


--
-- Data for Name: games_developers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_developers" ("id_game", "id_company", "id") VALUES
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', '56193181-a2ba-4dea-94e2-2f5811e8e9ce', '35ab1c0b-8c01-43a1-abce-9e8aadaf299d'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'd8a5f0a1-fa7c-479c-ae51-daef84aa112c', '39fb0404-ce05-454a-8436-ee48f6ed7483'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'f7da0d6c-ffd5-40f6-85c5-e7a0f3f6383c', '9260cb33-3b5b-4bc2-a548-d3959af1ccfd'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'f2117ae3-156f-41d3-965f-8102323f883b', '91a012ce-fb78-4c2e-bf19-9051201d0bcd'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', 'b37ca8d6-9df8-40db-8c68-5caacd92c882', '125d864d-979a-4efb-b2c6-79fc8fa57201'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '1f0c6d63-cb8f-451e-9107-b32655d08930', '7cae597a-721d-416b-aa14-cdf121b7f712'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', '7e9f3a1e-1276-4862-a172-a9c761206fb3', 'e760bfef-2b06-46f9-890f-53d22a8db748'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '9f8207fd-2312-44ae-b940-6151f688dfb3', 'c208f343-5374-4c85-aace-c70414528e17'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'bb86ac57-b62f-4d04-9efb-63a0ada92ba7', 'f9f868a5-3631-4d0a-80d2-a41054d7d44c'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '21a8d5af-84fe-4b21-a066-af8a483d5f2c', '3990537f-92a0-4d99-9565-c89712d6727c'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '21a8d5af-84fe-4b21-a066-af8a483d5f2c', '9698407f-1fe0-4550-bc4e-a67a39f9b403'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'b37ca8d6-9df8-40db-8c68-5caacd92c882', '2dd7ed05-d484-4bd2-9d69-612c6ec2377f'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', 'b37ca8d6-9df8-40db-8c68-5caacd92c882', '07b501c9-06a1-4147-9974-3fa78df0ea5d'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', 'b37ca8d6-9df8-40db-8c68-5caacd92c882', '9ff464db-24a9-4b3e-8de1-9236f874a787'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', 'b37ca8d6-9df8-40db-8c68-5caacd92c882', '1fbc49c4-0202-4747-a48f-6a56b03977e0');


--
-- Data for Name: games_expansions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."genres" ("created_at", "name", "abbreviation_name", "updated_at", "id") VALUES
	('2024-03-26 15:44:54.530196+00', 'Action', NULL, '2024-03-26 15:44:54.530196+00', 'be5c7723-337a-4317-9367-29008ce9baa0'),
	('2024-03-26 15:44:54.530196+00', 'Arcade', NULL, '2024-03-26 15:44:54.530196+00', '681356d7-c3c7-4b86-9191-dcf81c3684e7'),
	('2024-03-26 15:44:54.530196+00', 'Fighting', NULL, '2024-03-26 15:44:54.530196+00', 'd29a8011-e183-4759-8c95-1fdda1ef15c5'),
	('2024-03-26 15:44:54.530196+00', 'Shooter', NULL, '2024-03-26 15:44:54.530196+00', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e'),
	('2024-03-26 15:44:54.530196+00', 'Hack & Slash', NULL, '2024-03-26 15:44:54.530196+00', '00e1cff7-0aa5-496a-aeb5-125497d20814'),
	('2024-03-26 15:44:54.530196+00', 'Adventure', NULL, '2024-03-26 15:44:54.530196+00', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146'),
	('2024-03-26 15:44:54.530196+00', 'Strategy', NULL, '2024-03-26 15:44:54.530196+00', '5c92f7f3-acb9-4b29-9e6a-2fb7578dcecd'),
	('2024-03-26 15:44:54.530196+00', 'Rogue Like', NULL, '2024-03-26 15:44:54.530196+00', '9fc6741a-a79c-4cfc-9cb1-3c745a54b9f6'),
	('2024-03-26 15:44:54.530196+00', 'Turn Based', NULL, '2024-03-26 15:44:54.530196+00', '8faa05f2-50d3-42c9-823d-3e188fe63a69'),
	('2024-03-26 15:44:54.530196+00', 'Tower Defense', NULL, '2024-03-26 15:44:54.530196+00', 'd070c6cb-5f99-40ec-a36f-a0cc39459aa0'),
	('2024-03-26 15:44:54.530196+00', 'Card', NULL, '2024-03-26 15:44:54.530196+00', '2d0be712-e834-4bcc-a9fa-41195981a3e0'),
	('2024-03-26 15:44:54.530196+00', 'Board', NULL, '2024-03-26 15:44:54.530196+00', 'f9a71663-6ecf-47b1-8b5b-e99144369d4e'),
	('2024-03-26 15:44:54.530196+00', 'Casual', NULL, '2024-03-26 15:44:54.530196+00', '75340297-076c-4815-a18a-42d40de308f3'),
	('2024-03-26 15:44:54.530196+00', 'Metroidvania', NULL, '2024-03-26 15:44:54.530196+00', 'caa983d3-0c12-4a7a-9222-e69e5afbdf6a'),
	('2024-03-26 15:44:54.530196+00', 'Souls Like', NULL, '2024-03-26 15:44:54.530196+00', '40d7dc08-39ae-486b-9b30-b82d6e77bddc'),
	('2024-03-26 15:44:54.530196+00', 'Puzzle', NULL, '2024-03-26 15:44:54.530196+00', '79c5684f-9f36-4d17-b828-a180ee351e70'),
	('2024-03-26 15:44:54.530196+00', 'Visual Novel', NULL, '2024-03-26 15:44:54.530196+00', '1dce5cec-fe95-45bb-b061-e73b0159ca09'),
	('2024-03-26 15:44:54.530196+00', 'Simulation', NULL, '2024-03-26 15:44:54.530196+00', '92b69d8a-09c3-4454-bd8f-2a94e7cd5aaa'),
	('2024-03-26 15:44:54.530196+00', 'Building', NULL, '2024-03-26 15:44:54.530196+00', '925645e5-58df-4466-a3eb-895156dc2360'),
	('2024-03-26 15:44:54.530196+00', 'Dating', NULL, '2024-03-26 15:44:54.530196+00', '8c7bb133-380e-4f15-a71e-44518a06eef9'),
	('2024-03-26 15:44:54.530196+00', 'Farming', NULL, '2024-03-26 15:44:54.530196+00', 'ec552bab-fa7c-4d8a-b63d-0af1883299d4'),
	('2024-03-26 15:44:54.530196+00', 'Sandbox', NULL, '2024-03-26 15:44:54.530196+00', '963f5883-b145-414e-a09e-5cb2b453c469'),
	('2024-03-26 15:44:54.530196+00', 'Sport', NULL, '2024-03-26 15:44:54.530196+00', '3c1a1712-405a-4233-9fed-9b5c1fd8311e'),
	('2024-03-26 15:44:54.530196+00', 'Racing', NULL, '2024-03-26 15:44:54.530196+00', '176b2dda-b430-436f-8dc3-2302e5a9ac40'),
	('2024-03-26 15:44:54.530196+00', 'Fishing', NULL, '2024-03-26 15:44:54.530196+00', 'a1f2fcaa-99f3-4ca1-a973-24a1ce861be7'),
	('2024-03-26 15:44:54.530196+00', 'Hunting', NULL, '2024-03-26 15:44:54.530196+00', '30a345c7-7235-443d-b8e8-21f19dc6b0c4'),
	('2024-03-26 15:44:54.530196+00', 'Battle Royale', NULL, '2024-03-26 15:44:54.530196+00', '707fe372-ffb2-40ba-9f1b-e6f11bac4229'),
	('2024-03-26 15:44:54.530196+00', 'Japanese Role-playing Game', 'JRPG', '2024-03-26 15:44:54.530196+00', '55ee18c3-ded5-40f9-b02a-8f8cf802cf08'),
	('2024-03-26 15:44:54.530196+00', 'Multiplayer Online Battle Arena', 'MOBA', '2024-03-26 15:44:54.530196+00', '0c85f8af-ab44-45c9-8d48-51a5c6f4ebc5'),
	('2024-03-26 15:44:54.530196+00', 'Real Time Strategy', 'RTS', '2024-03-26 15:44:54.530196+00', 'f72d7466-e9c6-4e57-b79a-0f47a7c268d6'),
	('2024-03-26 15:44:54.530196+00', 'Role-playing Game', 'RPG', '2024-03-26 15:44:54.530196+00', 'be103531-3473-4b30-aaa9-183bb01f686c'),
	('2024-03-26 15:44:54.530196+00', 'Platform', NULL, '2024-03-26 15:44:54.530196+00', '3d9e2642-a5ce-4350-b356-4e9d835cd757'),
	('2024-03-26 15:44:54.530196+00', 'Tactical', NULL, '2024-03-26 15:44:54.530196+00', 'bdc53d2c-b290-4267-a5ac-fb58ec3a5ba7');


--
-- Data for Name: games_genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_genres" ("id_game", "id_genre", "id") VALUES
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', '16a998e7-ad2e-43f5-9711-e10bb6b42895'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e', '4e7cfcbf-8ba7-46e6-b787-75cadca69a43'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', 'be5c7723-337a-4317-9367-29008ce9baa0', '355d6279-d3ae-4c40-bb51-33ace396206d'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', 'f686f47f-542a-4b8c-8658-40ee41023033'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', 'be103531-3473-4b30-aaa9-183bb01f686c', '98c664ec-fc01-4802-a618-94f34f680e9c'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', 'e6c0714a-d297-4cc0-88bf-28e898625e84'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '3d9e2642-a5ce-4350-b356-4e9d835cd757', '6fc91b07-80c9-4caf-bc56-5decb5988649'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', '44319411-94c0-4d33-92f8-8c18861979c0'),
	('1b696350-e681-4f85-a0f3-814bddffd832', '00e1cff7-0aa5-496a-aeb5-125497d20814', '3b11f4ff-2dcb-4c9a-8fa1-5b56e02b7aec'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'be103531-3473-4b30-aaa9-183bb01f686c', '08ec5883-e7dc-4cf7-80a4-8d0c791eac41'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e', '7e9fea79-3761-4a37-8727-303138071ad7'),
	('1b696350-e681-4f85-a0f3-814bddffd832', '963f5883-b145-414e-a09e-5cb2b453c469', 'dde168cc-4c3a-43fd-801f-5d57d9870681'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', '3fda2dba-b35f-45f4-b8bd-6c21e9f6f106'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '00e1cff7-0aa5-496a-aeb5-125497d20814', 'cfca4a8f-2caa-4db2-a2b0-06a7d027fbb5'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', 'bb0810ad-e49b-4532-8b38-9a3dc55a5005'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'be103531-3473-4b30-aaa9-183bb01f686c', '166348e8-1e94-4be4-b317-b14df8039c9f'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '5c92f7f3-acb9-4b29-9e6a-2fb7578dcecd', '2062c54a-cca2-46e3-b988-0798f9f6d4d7'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '8faa05f2-50d3-42c9-823d-3e188fe63a69', '37c96d56-70ab-4852-8a0e-c037fd8be5b2'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e', '9125499d-5b2c-440d-8d13-9ca0a0638d68'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', 'bdc53d2c-b290-4267-a5ac-fb58ec3a5ba7', 'e2d86e5d-372d-4542-b789-bacf0f0607dc'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', '8b3872e5-c2ee-416d-99e3-525892a4e9e2'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '40d7dc08-39ae-486b-9b30-b82d6e77bddc', '866bc462-b4c0-4ec8-ad08-05867bce5ace'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', 'be103531-3473-4b30-aaa9-183bb01f686c', '80f3d3bb-4a13-4649-8cfe-169d37df2ae2'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', '677b7a78-90ab-42bf-8737-f4611904ffdf'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'be103531-3473-4b30-aaa9-183bb01f686c', '91508ecd-38ef-4dd2-99aa-7352094dacea'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', '52e6fc05-5ee3-4054-959f-d80fa6384e10'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '00e1cff7-0aa5-496a-aeb5-125497d20814', '8f0a294c-17a6-4c3a-b0a9-51271d048a73'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'be103531-3473-4b30-aaa9-183bb01f686c', '28e14a4d-bac5-4959-8ceb-ec2cc301fe01'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', 'fc053782-4b75-48df-a5ad-6c3f1731faff'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', 'be103531-3473-4b30-aaa9-183bb01f686c', 'fb70dd5d-2136-49b9-8fd3-2d6845b9bcfd'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', 'f9fb3b9e-f07b-4a3d-b59e-74eacdd70ff3'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e', '10617aa8-0c99-4d47-8e9e-e8808d49178e'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', 'be5c7723-337a-4317-9367-29008ce9baa0', 'ab0cf2a3-306e-40fd-b9b6-70fb9420c43e'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e', '7ff76777-9fd0-4917-8479-9362a185ee17'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', 'be5c7723-337a-4317-9367-29008ce9baa0', '84798b11-74e5-4240-8888-728f43f568fe'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e', 'd21375db-d3bb-4c8f-b5d4-1fe91b6850a8'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', 'c51d3abc-c003-4faf-8f03-d4f99ebb6146', '25f0aef3-4f7c-4340-b857-585323168807'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', 'de8f7d8c-78b2-42dd-a165-9fa276f8704e', '1e5424c3-e7d6-4850-883b-68a3c8df0e0f');


--
-- Data for Name: games_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_publishers" ("id_game", "id_company", "id") VALUES
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', '56193181-a2ba-4dea-94e2-2f5811e8e9ce', '00e493a0-a342-429a-ae65-acde9b527aca'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'f69a07b9-6c3d-454f-86a3-383b4e3f6cf7', 'd190b4bc-04bf-4c2a-99a1-402818cddbc7'),
	('1b696350-e681-4f85-a0f3-814bddffd832', 'f7da0d6c-ffd5-40f6-85c5-e7a0f3f6383c', 'eafb5e9a-3c0e-45d7-b3e5-3367f263b2df'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'a94c9b36-023b-4737-a288-d1f17fd1acad', 'cb00ba6e-8f32-406e-a2a2-f0e2fd6678f7'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', 'a94c9b36-023b-4737-a288-d1f17fd1acad', '17fcc919-61c4-4d9e-b3eb-96595711789b'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'dfebe0ae-1151-47c0-9551-95a82f2b3161', '807800d4-b205-4ba6-843c-51fcaf7894aa'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', 'a94c9b36-023b-4737-a288-d1f17fd1acad', '762fec10-67f3-4446-b43f-f619c778d17e'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '9f8207fd-2312-44ae-b940-6151f688dfb3', 'b7779b15-2094-43a2-b0ba-60b82e987b88'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'a94c9b36-023b-4737-a288-d1f17fd1acad', '300e50e7-718f-4f2f-bdee-ce2a98dd5fe6'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'a94c9b36-023b-4737-a288-d1f17fd1acad', 'eca4231b-4838-47c4-aaf3-25c68056ec90'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', 'a94c9b36-023b-4737-a288-d1f17fd1acad', '7f4fcf0b-e6c2-4eef-886e-b140037f182c'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'a94c9b36-023b-4737-a288-d1f17fd1acad', '2eb3c9bf-2d5e-4643-ac67-2715e041886a'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', 'a94c9b36-023b-4737-a288-d1f17fd1acad', 'dbb9ab91-438b-457d-80ef-be905ba80f6a'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', 'a94c9b36-023b-4737-a288-d1f17fd1acad', '106bd084-0996-4f62-bf19-f087fa2f3a74'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', 'a94c9b36-023b-4737-a288-d1f17fd1acad', '71bae55a-5b86-467d-b9e2-e86044d7ff2c');


--
-- Data for Name: platforms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."platforms" ("created_at", "release_date", "name", "alternative_name", "family", "type", "updated_at", "id") VALUES
	('2024-03-26 15:46:45.540009+00', '2000-03-04', 'PlayStation 2', '{PS2}', 'PlayStation', 'Console', '2024-03-26 15:46:45.540009+00', '78b7c90d-fc57-43bd-967b-98f80323b34a'),
	('2024-03-26 15:46:45.540009+00', '1994-12-03', 'PlayStation', '{PS,PS1,"PS One",PSX}', 'PlayStation', 'Console', '2024-03-26 15:46:45.540009+00', 'cab1b2b2-9f06-4b0d-be86-2f00ec569c81'),
	('2024-03-26 15:46:45.540009+00', '2006-11-11', 'PlayStation 3', '{PS3}', 'PlayStation', 'Console', '2024-03-26 15:46:45.540009+00', 'b0ed8dd5-a9c8-4bef-91c4-fcba78fe244e'),
	('2024-03-26 15:46:45.540009+00', '2013-11-15', 'PlayStation 4', '{PS4}', 'PlayStation', 'Console', '2024-03-26 15:46:45.540009+00', 'e8e982a9-8609-4403-8e2d-8387e0e84358'),
	('2024-03-26 15:46:45.540009+00', '2020-11-19', 'PlayStation 5', '{PS5}', 'PlayStation', 'Console', '2024-03-26 15:46:45.540009+00', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed'),
	('2024-03-26 15:46:45.540009+00', '2004-12-12', 'PlayStation Portable', '{PSP}', 'PlayStation', 'Console', '2024-03-26 15:46:45.540009+00', '1677c3ba-b5f8-4959-b3cc-144f55ae94c7'),
	('2024-03-26 15:46:45.540009+00', '2011-12-17', 'PlayStation Vita', '{"PS Vita"}', 'PlayStation', 'Console', '2024-03-26 15:46:45.540009+00', 'c0c94c15-020e-49b4-adc1-dc71493cff06'),
	('2024-03-26 15:46:45.540009+00', '2001-11-15', 'Xbox', NULL, 'Xbox', 'Console', '2024-03-26 15:46:45.540009+00', '2f5c44c8-e81c-40d5-a64b-071ec4fe23c8'),
	('2024-03-26 15:46:45.540009+00', '2005-11-22', 'Xbox 360', NULL, 'Xbox', 'Console', '2024-03-26 15:46:45.540009+00', 'd0ab71ee-e996-40a1-a15d-d423f15ba818'),
	('2024-03-26 15:46:45.540009+00', '2013-11-22', 'Xbox One', NULL, 'Xbox', 'Console', '2024-03-26 15:46:45.540009+00', 'e9e92e64-d4ad-41fd-b4bb-7eb995d60088'),
	('2024-03-26 15:46:45.540009+00', '2020-11-10', 'Xbox Series S', NULL, 'Xbox', 'Console', '2024-03-26 15:46:45.540009+00', 'f2e5a1a5-9659-4853-8ac9-55474d22347a'),
	('2024-03-26 15:46:45.540009+00', '2020-11-10', 'Xbox Series X', NULL, 'Xbox', 'Console', '2024-03-26 15:46:45.540009+00', '4ef1c4c0-42d7-4142-947f-6635d787345b'),
	('2024-03-26 15:46:45.540009+00', '1983-07-15', 'Nintendo Entertainment System', '{NES,Famicom}', 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '929d3616-f2b8-4939-bba4-3c93f2e23a7d'),
	('2024-03-26 15:46:45.540009+00', '1990-11-21', 'Super Nintendo Entertainment System', '{SNES,"Super Famicom"}', 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', 'd980dbab-eeb3-46e7-b13f-762d2dc1a8ae'),
	('2024-03-26 15:46:45.540009+00', '1996-06-23', 'Nintendo 64', '{N64}', 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '3a48e337-100f-45f1-b2a1-32f2f4ea4423'),
	('2024-03-26 15:46:45.540009+00', '2001-09-14', 'GameCube', NULL, 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '2b0fdde2-6cee-4100-b86f-21bc04a2f54a'),
	('2024-03-26 15:46:45.540009+00', '2006-11-19', 'Wii', NULL, 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '20122e8e-8d47-441f-8c4d-e2fbf45a94ba'),
	('2024-03-26 15:46:45.540009+00', '2012-11-18', 'Wii U', NULL, 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', 'aa12f750-cc40-43d5-8843-43570799f2f4'),
	('2024-03-26 15:46:45.540009+00', '1989-04-21', 'Game Boy', NULL, 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '3049352e-e07e-4ee0-a0ec-57e9dc2660a8'),
	('2024-03-26 15:46:45.540009+00', '1998-10-21', 'Game Boy Color', '{GBC}', 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '13dad35f-cc14-4da4-9a18-4ddc27bb9865'),
	('2024-03-26 15:46:45.540009+00', '2001-03-21', 'Game Boy Advance', '{GBA}', 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '31f31598-f58b-425e-9308-a99f7e587ed5'),
	('2024-03-26 15:46:45.540009+00', '2004-11-21', 'Nintendo DS', '{NDS}', 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '9a8ea5b4-2a18-4eac-a5f6-7ca9cd39ae8c'),
	('2024-03-26 15:46:45.540009+00', '2011-02-26', 'Nintendo 3DS', '{N3DS}', 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '8cabe6c6-2bd3-42c2-955d-1e8c6ac03d10'),
	('2024-03-26 15:46:45.540009+00', '2017-03-03', 'Nintendo Switch', NULL, 'Nintendo', 'Console', '2024-03-26 15:46:45.540009+00', '426fadcf-6144-41e4-96b8-3478ee58a844'),
	('2024-03-26 15:46:45.540009+00', '2003-09-12', 'Steam', NULL, 'Personal Computer', 'Personal Computer', '2024-03-26 15:46:45.540009+00', '91aeb1d4-af3e-4099-adf5-6604fd339640'),
	('2024-03-26 15:46:45.540009+00', '2012-10-26', 'Microsoft Store', NULL, 'Personal Computer', 'Personal Computer', '2024-03-26 15:46:45.540009+00', '1642e79e-f540-42b6-ac5a-a02fde645484'),
	('2024-03-26 15:46:45.540009+00', '2018-12-06', 'Epic Games', NULL, 'Personal Computer', 'Personal Computer', '2024-03-26 15:46:45.540009+00', 'abe65a18-e5c3-4c22-bc60-694f181922db');


--
-- Data for Name: release_phases; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."release_phases" ("created_at", "name", "updated_at", "id") VALUES
	('2024-03-26 15:48:01.083655+00', 'Pre-Alpha', '2024-03-26 15:48:01.083655+00', '40c2fc00-7d65-4154-914e-1027e69078a3'),
	('2024-03-26 15:48:01.083655+00', 'Alpha', '2024-03-26 15:48:01.083655+00', 'f5253b3d-da30-4d81-bdb6-4028df72557c'),
	('2024-03-26 15:48:01.083655+00', 'Beta', '2024-03-26 15:48:01.083655+00', '12604342-cadb-44c5-86e8-58eafda3a332'),
	('2024-03-26 15:48:01.083655+00', 'Open Beta', '2024-03-26 15:48:01.083655+00', '01b0e2e4-07ee-4b3c-9b89-18aa6ed478df'),
	('2024-03-26 15:48:01.083655+00', 'Early Access', '2024-03-26 15:48:01.083655+00', 'd00547ac-2d4d-4b9d-94af-25a48a85c70a'),
	('2024-03-26 15:48:01.083655+00', 'Full Release', '2024-03-26 15:48:01.083655+00', '39343e86-c7d2-4fef-b8be-b93d566cab46');


--
-- Data for Name: games_release_information; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_release_information" ("id", "id_game", "id_platform", "id_release_phase", "release_date") VALUES
	('fc7fe980-7532-45ad-a521-7115b15e5517', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '4ef1c4c0-42d7-4142-947f-6635d787345b', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('e81831f2-82ae-4cb1-979b-7d1e3ebea381', '1b696350-e681-4f85-a0f3-814bddffd832', '4ef1c4c0-42d7-4142-947f-6635d787345b', 'd00547ac-2d4d-4b9d-94af-25a48a85c70a', '2024-01-19'),
	('e7a6d59c-ae89-465e-b40d-a802e1892244', '26e1bb94-7a5f-4127-882c-5baf78387932', 'abe65a18-e5c3-4c22-bc60-694f181922db', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-08-20'),
	('e2d9e53a-3eae-4705-9377-965ee5a4a193', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'e8e982a9-8609-4403-8e2d-8387e0e84358', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('e0069c24-e068-47be-a1d5-57a039c25327', '1b696350-e681-4f85-a0f3-814bddffd832', 'e9e92e64-d4ad-41fd-b4bb-7eb995d60088', 'd00547ac-2d4d-4b9d-94af-25a48a85c70a', '2024-01-19'),
	('d6e019b5-a638-4fd2-9a6d-22996bfa9ae7', '5c54046f-f0eb-4e19-a5a8-d76feab9b244', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-29'),
	('cd98c785-69b7-43cf-bd1f-2cd94f514fff', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '426fadcf-6144-41e4-96b8-3478ee58a844', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('c33c77f7-4968-4570-a41b-1eea7af23c8e', '6e6958f7-cd84-47b3-be20-024a41bc85d3', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-19'),
	('abba3f91-a736-4d55-9d25-9de1205bb0fc', 'aba3368c-5504-4205-b6d6-df059665dd7c', '91aeb1d4-af3e-4099-adf5-6604fd339640', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-08'),
	('a7ea1efb-9d11-4670-896f-0de41387dff4', '26e1bb94-7a5f-4127-882c-5baf78387932', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-08-20'),
	('a675545e-3cad-4cfd-97d7-a9be2a9857ad', '26e1bb94-7a5f-4127-882c-5baf78387932', 'f2e5a1a5-9659-4853-8ac9-55474d22347a', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-08-20'),
	('9f97d4d8-6848-4e36-9c7e-e65a6cd033a1', 'd304a979-c997-4f6d-b342-a32d5dd5929d', '91aeb1d4-af3e-4099-adf5-6604fd339640', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-02'),
	('967712a0-ac1a-4f97-a4b9-e5df675b7b24', '75c94e45-de09-4596-9dfe-f588b2da71a9', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2021-08-20'),
	('93bac47d-a7bf-4d6f-a577-b27fece0f9bd', '26e1bb94-7a5f-4127-882c-5baf78387932', '4ef1c4c0-42d7-4142-947f-6635d787345b', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-08-20'),
	('939d6d93-c669-4e59-b23b-98d2680a6efa', 'aba3368c-5504-4205-b6d6-df059665dd7c', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-08'),
	('91331304-a5e1-48fe-988d-7789aaa7910b', 'd304a979-c997-4f6d-b342-a32d5dd5929d', 'e9e92e64-d4ad-41fd-b4bb-7eb995d60088', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-02'),
	('7f975cc7-5238-40b1-9630-acacfc07e6ee', 'd304a979-c997-4f6d-b342-a32d5dd5929d', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-02'),
	('7707ab41-7bae-4c0e-83be-3d358c4b5308', 'cb5a3341-7c0c-40e5-b5c8-f046a820c760', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2022-02-18'),
	('7697f07d-f8c8-4942-afe3-91c998becb40', '26e1bb94-7a5f-4127-882c-5baf78387932', '91aeb1d4-af3e-4099-adf5-6604fd339640', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-08-20'),
	('73676cd4-a688-4f4a-a06d-92af1a44c2cf', '1b696350-e681-4f85-a0f3-814bddffd832', 'f2e5a1a5-9659-4853-8ac9-55474d22347a', 'd00547ac-2d4d-4b9d-94af-25a48a85c70a', '2024-01-19'),
	('711890b8-2968-4348-ad69-fad6eb9bb682', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '91aeb1d4-af3e-4099-adf5-6604fd339640', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('59420e91-0d5e-47e0-9abe-b64148617db7', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'abe65a18-e5c3-4c22-bc60-694f181922db', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('551ecd44-e4c4-407f-ae03-8bc1ace9964d', 'cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'e8e982a9-8609-4403-8e2d-8387e0e84358', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2022-02-18'),
	('53f7c096-8009-4643-8453-f52d0a84e646', 'd304a979-c997-4f6d-b342-a32d5dd5929d', '4ef1c4c0-42d7-4142-947f-6635d787345b', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-02'),
	('52621efe-46e4-4ccc-b08e-e1a3b965ed40', 'bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2022-11-09'),
	('4b947133-23ae-429a-8570-2afbca1c765a', 'bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'e8e982a9-8609-4403-8e2d-8387e0e84358', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2022-11-09'),
	('4b23d937-f183-4b32-bfe4-6b5d3bcd4883', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'f2e5a1a5-9659-4853-8ac9-55474d22347a', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('429e05fc-d01b-458c-894f-bce162c8dd20', '1b696350-e681-4f85-a0f3-814bddffd832', '91aeb1d4-af3e-4099-adf5-6604fd339640', 'd00547ac-2d4d-4b9d-94af-25a48a85c70a', '2024-01-19'),
	('2eaa5bc0-66e8-42f6-95c9-a8179100d69c', '75c94e45-de09-4596-9dfe-f588b2da71a9', '91aeb1d4-af3e-4099-adf5-6604fd339640', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-05-16'),
	('26df1847-3ebc-424e-9879-0f46bb224189', 'd304a979-c997-4f6d-b342-a32d5dd5929d', '1642e79e-f540-42b6-ac5a-a02fde645484', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-02'),
	('24568c12-e62b-4a69-b5ff-097e2548f0ef', '75c94e45-de09-4596-9dfe-f588b2da71a9', 'abe65a18-e5c3-4c22-bc60-694f181922db', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-05-16'),
	('22720fc8-175d-44e8-abbe-63bd7a9113f8', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'e9e92e64-d4ad-41fd-b4bb-7eb995d60088', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('1a622a98-342a-4d34-aa8c-a429f07b1345', 'd304a979-c997-4f6d-b342-a32d5dd5929d', 'e8e982a9-8609-4403-8e2d-8387e0e84358', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-02'),
	('0be22cc5-f4f5-47ef-bd19-7684b66d7fce', '75c94e45-de09-4596-9dfe-f588b2da71a9', 'e8e982a9-8609-4403-8e2d-8387e0e84358', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2021-08-20'),
	('08c3e2b7-0a0c-4646-a5b7-ecff9fec4571', 'd304a979-c997-4f6d-b342-a32d5dd5929d', 'f2e5a1a5-9659-4853-8ac9-55474d22347a', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-02-02'),
	('05b4cbab-a2f2-4c2f-86fa-6f1de7989dea', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '5a16c4bf-00f2-42a6-b0f8-11bb95b762ed', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2024-01-18'),
	('03bc3812-0086-4725-8ce6-af83e7242a47', 'c882a6f0-85d1-4333-85fa-41ed54198309', 'e8e982a9-8609-4403-8e2d-8387e0e84358', '39343e86-c7d2-4fef-b8be-b93d566cab46', '2020-07-17');


--
-- Data for Name: games_remakes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_remakes" ("id_original_game", "id_remake_game", "id") VALUES
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', '8a15b39f-a057-4fe6-babf-f6dd301c5bbb', '2616d159-94e8-4325-a04c-d05bbf70e156');


--
-- Data for Name: games_remasters; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_remasters" ("id_original_game", "id_remaster_game", "id") VALUES
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'e426b1fe-f692-4dd7-b411-101cfabba94a', 'cadb6a20-3c5b-41cc-a645-813c6601f63a'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', '6e6958f7-cd84-47b3-be20-024a41bc85d3', '470d1dd8-a2a3-4c1f-b1cb-7d5eea3de316');


--
-- Data for Name: games_standalone_expansions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: themes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."themes" ("created_at", "name", "updated_at", "id") VALUES
	('2024-03-26 15:49:08.458301+00', 'Fantasy', '2024-03-26 15:49:08.458301+00', 'c326f0ca-3d03-44ed-9f79-4954ff5dc9c8'),
	('2024-03-26 15:49:08.458301+00', 'Superhero', '2024-03-26 15:49:08.458301+00', 'cde95b58-8190-4e35-962d-f7ac3143604f'),
	('2024-03-26 15:49:08.458301+00', 'Pirates', '2024-03-26 15:49:08.458301+00', 'b4d9b3de-0f1e-4197-b04e-a143823c83bb'),
	('2024-03-26 15:49:08.458301+00', 'Espionage', '2024-03-26 15:49:08.458301+00', '12c7a404-76cd-452c-ada6-f79707396b98'),
	('2024-03-26 15:49:08.458301+00', 'Science Fiction', '2024-03-26 15:49:08.458301+00', '39eacf71-6b60-4cee-8c5b-52887a732aba'),
	('2024-03-26 15:49:08.458301+00', 'Horror', '2024-03-26 15:49:08.458301+00', 'c485f6ce-923f-4b0a-99bd-bc0a78c194f5'),
	('2024-03-26 15:49:08.458301+00', 'Geography', '2024-03-26 15:49:08.458301+00', 'e8cfa5e4-defc-46da-8adf-b11d5f865534'),
	('2024-03-26 15:49:08.458301+00', 'Detectives', '2024-03-26 15:49:08.458301+00', '3f36153e-87a2-4792-8bd8-3ef9433115b4'),
	('2024-03-26 15:49:08.458301+00', 'Zombie', '2024-03-26 15:49:08.458301+00', '027fb77f-592c-4577-91a3-b7b8d12cb02b'),
	('2024-03-26 15:49:08.458301+00', 'Ninja', '2024-03-26 15:49:08.458301+00', '0491d39f-298c-4819-8df7-064700e82f3d'),
	('2024-03-26 15:49:08.458301+00', 'Vampire', '2024-03-26 15:49:08.458301+00', '90e28894-6d4a-4117-aecf-5ccbb5c6ff20'),
	('2024-03-26 15:49:08.458301+00', 'Thriller', '2024-03-26 15:49:08.458301+00', 'eae30f56-e200-40e1-954a-2667b511b111'),
	('2024-03-26 15:49:08.458301+00', 'Historical', '2024-03-26 15:49:08.458301+00', 'edad2811-eccd-45af-8b8f-76e261ccc5a2'),
	('2024-03-26 15:49:08.458301+00', 'Bussiness', '2024-03-26 15:49:08.458301+00', 'afb213bc-e429-401f-80ae-8a2d1ff3fd5f'),
	('2024-03-26 15:49:08.458301+00', 'Comedy', '2024-03-26 15:49:08.458301+00', 'e8e8cb9c-b5e7-4653-90d6-ed67761fbc02'),
	('2024-03-26 15:49:08.458301+00', 'Drama', '2024-03-26 15:49:08.458301+00', 'f86f542b-a1b6-44dd-8576-69c3cb6dc7a8'),
	('2024-03-26 15:49:08.458301+00', 'Educational', '2024-03-26 15:49:08.458301+00', 'e149a910-d9d7-4e8f-bba2-6ebdbc97b7d2'),
	('2024-03-26 15:49:08.458301+00', 'Erotic', '2024-03-26 15:49:08.458301+00', '5fb9d7e2-b0b2-403a-95e1-1620cbb573c3'),
	('2024-03-26 15:49:08.458301+00', 'Mystery', '2024-03-26 15:49:08.458301+00', '3e4bb141-dde5-4db3-bf44-27f5d5ef321d'),
	('2024-03-26 15:49:08.458301+00', 'Party', '2024-03-26 15:49:08.458301+00', '90884c8c-ed50-4ffd-9762-3ece0646885d'),
	('2024-03-26 15:49:08.458301+00', 'Romance', '2024-03-26 15:49:08.458301+00', '6a2eb18b-3612-40cb-abba-8d5698afb7cb');


--
-- Data for Name: games_themes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_themes" ("id_game", "id_theme", "id") VALUES
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', 'c485f6ce-923f-4b0a-99bd-bc0a78c194f5', '77f987d5-0248-4b21-97bf-be2793a4de36'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', 'c326f0ca-3d03-44ed-9f79-4954ff5dc9c8', '1286dab1-2238-43f2-9c73-6f932e5e2a70'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'c326f0ca-3d03-44ed-9f79-4954ff5dc9c8', '55c365c1-b8f2-4337-9e2e-e188cac7bab6'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'c326f0ca-3d03-44ed-9f79-4954ff5dc9c8', 'bc9f7c09-cbce-4607-b06b-c4b0bb11529b'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'edad2811-eccd-45af-8b8f-76e261ccc5a2', 'a01825c9-c68b-4258-8533-be0ddc373519'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', 'c326f0ca-3d03-44ed-9f79-4954ff5dc9c8', '97de6be5-9d1b-419f-badd-2d7b03c2beb2'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', '39eacf71-6b60-4cee-8c5b-52887a732aba', '870e7e5a-e653-4af8-a032-1a6faa096511'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', 'c326f0ca-3d03-44ed-9f79-4954ff5dc9c8', '06d307d7-3021-430f-a6e4-6900eb12bde0'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', '39eacf71-6b60-4cee-8c5b-52887a732aba', '645169cb-e0ec-45bd-97d1-e40ad0476861'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'edad2811-eccd-45af-8b8f-76e261ccc5a2', '7a66c768-dad7-4b5a-9596-e68addc34d1b'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', 'f86f542b-a1b6-44dd-8576-69c3cb6dc7a8', 'ef82415d-8333-44cf-bee3-8e2487bcd42f'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', 'edad2811-eccd-45af-8b8f-76e261ccc5a2', '8f3f84cf-01b3-4fa0-b3fa-3695e4c2ca39'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'c485f6ce-923f-4b0a-99bd-bc0a78c194f5', '36c331d3-bdb1-4a29-aa11-6cf26e2efdf5'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', 'c485f6ce-923f-4b0a-99bd-bc0a78c194f5', '1d795592-c296-401a-878d-e05cce55f9ce'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', 'c485f6ce-923f-4b0a-99bd-bc0a78c194f5', 'b523f8aa-f186-45be-97f2-4d5506c9aaaf'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', 'c485f6ce-923f-4b0a-99bd-bc0a78c194f5', 'e5642e3d-e56f-4725-b995-75d950dc0971');


--
-- Data for Name: games_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_videos" ("id_game", "url", "thumbnail", "id") VALUES
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'www.youtube.com/embed/W01L70IGBgE', 'https://i.ytimg.com/vi/W01L70IGBgE/maxresdefault.jpg', '34ae66fd-b4d4-4378-b375-0861257c1e9d'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'www.youtube.com/embed/OQpdSVF_k_w', 'https://i.ytimg.com/vi/OQpdSVF_k_w/maxresdefault.jpg', '08c62b35-395f-4c38-9776-c7049867798b'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', 'www.youtube.com/embed/ygVPHxkokAE', 'https://i.ytimg.com/vi/ygVPHxkokAE/maxresdefault.jpg', '360b147b-c333-49c2-b04e-e2b336f91004'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', 'www.youtube.com/embed/AaOWRvmtEFQ', 'https://i.ytimg.com/vi/AaOWRvmtEFQ/maxresdefault.jpg', '18222f41-13fe-435d-b1e9-f7b7e7659c8c');


--
-- Data for Name: how_long_to_beat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."how_long_to_beat" ("created_at", "updated_at", "id_game", "main_story", "main_and_sides", "completionist", "all_styles") VALUES
	('2024-05-01 07:58:20.871718+00', '2024-05-01 08:12:22.347052+00', '6e6958f7-cd84-47b3-be20-024a41bc85d3', '{"hours":28,"minutes":30}', '{   "hours": 0,   "minutes": 0 }', '{   "hours": 0,   "minutes": 0 }', '{   "hours": 0,   "minutes": 0 }');


--
-- Data for Name: metacritic; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."metacritic" ("created_at", "updated_at", "meta_score", "user_score", "id_game") VALUES
	('2024-04-27 08:58:02.251519+00', '2024-04-27 09:15:13.081984+00', 90, 8.3, '6e6958f7-cd84-47b3-be20-024a41bc85d3');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('age-classification-system', 'age-classification-system', NULL, '2024-04-26 06:37:13.258674+00', '2024-04-26 06:37:13.258674+00', true, false, 204800, '{image/svg+xml}', NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('34d10e53-bada-41c4-8032-6c30d9e18a8d', 'age-classification-system', '.emptyFolderPlaceholder', NULL, '2024-04-26 06:53:33.842966+00', '2024-04-26 06:53:33.842966+00', '2024-04-26 06:53:33.842966+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:53:34.000Z", "contentLength": 0, "httpStatusCode": 200}', '005c282a-afd1-4a74-8d3b-ceecca3c09dc', NULL, NULL),
	('654d2d88-97c7-48f2-987c-2a73cf54f28e', 'age-classification-system', 'acb-pg.svg', NULL, '2024-04-26 06:55:33.02571+00', '2024-04-26 06:55:33.02571+00', '2024-04-26 06:55:33.02571+00', '{"eTag": "\"1470493ff379f1e65f7347efc2dbef7e\"", "size": 1376, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:33.000Z", "contentLength": 1376, "httpStatusCode": 200}', '59d79869-5cfb-4147-8d85-4173d6f76fda', NULL, NULL),
	('aef93496-ec84-44c8-9862-a42b9c866021', 'age-classification-system', 'cero-a.svg', NULL, '2024-04-26 06:55:33.115437+00', '2024-04-26 06:55:33.115437+00', '2024-04-26 06:55:33.115437+00', '{"eTag": "\"593263e7ee608e8d6ff895550f1f1d7f\"", "size": 5882, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 5882, "httpStatusCode": 200}', '225d77e1-b294-4327-a8c1-643a2f037961', NULL, NULL),
	('3b40ed5f-3ec8-4970-a827-c0f340eb05d3', 'age-classification-system', 'acb-g.svg', NULL, '2024-04-26 06:55:33.128414+00', '2024-04-26 06:55:33.128414+00', '2024-04-26 06:55:33.128414+00', '{"eTag": "\"9e0f67d07eeb0a3ae47a470937f196ad\"", "size": 1192, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 1192, "httpStatusCode": 200}', '82b739ce-fb02-4394-90aa-3bc159ae1d21', NULL, NULL),
	('23e5134a-9558-47df-bbb8-e751db1172e7', 'age-classification-system', 'acb-m.svg', NULL, '2024-04-26 06:55:33.172652+00', '2024-04-26 06:55:33.172652+00', '2024-04-26 06:55:33.172652+00', '{"eTag": "\"15dd44772f67ff8f24aa406d17b36a01\"", "size": 973, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 973, "httpStatusCode": 200}', '0bb94850-9da5-4dac-bb16-52c0c2dc344b', NULL, NULL),
	('62bcc2ff-2cfd-464b-bf55-6be3f03f515d', 'age-classification-system', 'cero-z.svg', NULL, '2024-04-26 06:55:33.256514+00', '2024-04-26 06:55:33.256514+00', '2024-04-26 06:55:33.256514+00', '{"eTag": "\"3c1ae118e14bed793679a2edad4777d1\"", "size": 6493, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 6493, "httpStatusCode": 200}', '13fb6776-615a-4c7c-bb2d-d8262b42c8e6', NULL, NULL),
	('5f414eaf-7643-44a4-b37a-7746cbe5bffe', 'age-classification-system', 'cero-d.svg', NULL, '2024-04-26 06:55:33.209067+00', '2024-04-26 06:55:33.209067+00', '2024-04-26 06:55:33.209067+00', '{"eTag": "\"7ee4e542b952115ffed8dbf1fecb9c0e\"", "size": 5787, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 5787, "httpStatusCode": 200}', '7e6a799d-8545-426c-a6c6-de6ce8c9613e', NULL, NULL),
	('4e36b7e4-a2d1-44a2-9de4-6fa5f4472458', 'age-classification-system', 'acb-ma-15-plus.svg', NULL, '2024-04-26 06:55:33.221222+00', '2024-04-26 06:55:33.221222+00', '2024-04-26 06:55:33.221222+00', '{"eTag": "\"7de3839c1d1d2f68b32718a6b6382b9d\"", "size": 4724, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 4724, "httpStatusCode": 200}', '3f17a721-6ae4-40d8-ad51-8595d595990d', NULL, NULL),
	('59b12dd2-f448-4fb1-aefd-3f4141216251', 'age-classification-system', 'acb-r-18-plus.svg', NULL, '2024-04-26 06:55:33.233806+00', '2024-04-26 06:55:33.233806+00', '2024-04-26 06:55:33.233806+00', '{"eTag": "\"9c5eca0cac6cea59378bb2fb4ac9f9f6\"", "size": 4631, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 4631, "httpStatusCode": 200}', '9dd1bf19-2db6-44d0-9ab1-a6425b328de1', NULL, NULL),
	('f6d7cfb1-bdbc-4703-842c-564ce0f853bb', 'age-classification-system', 'cero-b.svg', NULL, '2024-04-26 06:55:33.327744+00', '2024-04-26 06:55:33.327744+00', '2024-04-26 06:55:33.327744+00', '{"eTag": "\"1a44b588f7208c8a3b56956dccdce448\"", "size": 6069, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 6069, "httpStatusCode": 200}', '73bf2f27-56eb-4cee-bd60-84a0dcf4bcb1', NULL, NULL),
	('f991a327-fd81-4580-b7be-0579a32b7384', 'age-classification-system', 'cero-c.svg', NULL, '2024-04-26 06:55:33.305099+00', '2024-04-26 06:55:33.305099+00', '2024-04-26 06:55:33.305099+00', '{"eTag": "\"c35aab465e350aa6c4181bfca59400f9\"", "size": 6604, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:34.000Z", "contentLength": 6604, "httpStatusCode": 200}', '0131bc20-5d62-4a11-ba48-e5ccb2f4be23', NULL, NULL),
	('1cc10bfe-39dc-40ce-b013-eb77b180ddbb', 'age-classification-system', 'ci-10.svg', NULL, '2024-04-26 06:55:34.250357+00', '2024-04-26 06:55:34.250357+00', '2024-04-26 06:55:34.250357+00', '{"eTag": "\"d4beb83bb09f5b51c522901d1ce88d80\"", "size": 1066, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 1066, "httpStatusCode": 200}', '56dce0b3-ae5c-414a-ab46-45f75c092628', NULL, NULL),
	('b40a9452-ecd2-46fe-82b1-d0c01c876875', 'age-classification-system', 'ci-14.svg', NULL, '2024-04-26 06:55:34.206182+00', '2024-04-26 06:55:34.206182+00', '2024-04-26 06:55:34.206182+00', '{"eTag": "\"05714e0e8b792aa7d4d80212c51b77ca\"", "size": 734, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 734, "httpStatusCode": 200}', 'daad05a2-b387-49d5-a0e5-3f546ea3f429', NULL, NULL),
	('01ab0ab5-020f-4ed8-84db-95785c7d7fbf', 'age-classification-system', 'ci-12.svg', NULL, '2024-04-26 06:55:34.240494+00', '2024-04-26 06:55:34.240494+00', '2024-04-26 06:55:34.240494+00', '{"eTag": "\"bd71fa54074813d822fa1821cc586a4e\"", "size": 1020, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 1020, "httpStatusCode": 200}', '8df617e0-264c-4295-a4c6-30cb7d74e545', NULL, NULL),
	('3e6d9ea3-68d2-4653-8570-53c2117a4c07', 'age-classification-system', 'ci-18.svg', NULL, '2024-04-26 06:55:34.327643+00', '2024-04-26 06:55:34.327643+00', '2024-04-26 06:55:34.327643+00', '{"eTag": "\"3bad4a1cf3429416b2f35c40f0062755\"", "size": 1432, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 1432, "httpStatusCode": 200}', '3fd800e2-1838-4427-9c44-2d65b179ffd5', NULL, NULL),
	('5f92aedf-2e45-431f-ba87-21f118942c9a', 'age-classification-system', 'pegi-12.svg', NULL, '2024-04-26 06:55:35.44947+00', '2024-04-26 06:55:35.44947+00', '2024-04-26 06:55:35.44947+00', '{"eTag": "\"d5281638ac73f7e6ff7e93b04eb43bb4\"", "size": 3932, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 3932, "httpStatusCode": 200}', 'dfdcf1cb-a83e-474c-9592-a63efe2a8091', NULL, NULL),
	('31962e89-4efa-490b-b697-34513f476c25', 'age-classification-system', 'usk-16.svg', NULL, '2024-04-26 06:55:36.523372+00', '2024-04-26 06:55:36.523372+00', '2024-04-26 06:55:36.523372+00', '{"eTag": "\"61f76b8885641835273c2999ab1e8276\"", "size": 7940, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:37.000Z", "contentLength": 7940, "httpStatusCode": 200}', '43e07b90-dc37-471e-b66e-4595420abc79', NULL, NULL),
	('88319d71-6ec8-44db-b219-f87f08cab0d7', 'age-classification-system', 'ci-16.svg', NULL, '2024-04-26 06:55:34.252643+00', '2024-04-26 06:55:34.252643+00', '2024-04-26 06:55:34.252643+00', '{"eTag": "\"3de25c197ca061948891f0c09ce52b2a\"", "size": 1304, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 1304, "httpStatusCode": 200}', '128d5f50-2513-47fd-a41d-05053e37d629', NULL, NULL),
	('b92fdfbe-d3b9-42c4-a2ad-6f82ffd3d329', 'age-classification-system', 'pegi-!.svg', NULL, '2024-04-26 06:55:35.340924+00', '2024-04-26 06:55:35.340924+00', '2024-04-26 06:55:35.340924+00', '{"eTag": "\"f6d6b27537b6b4d68316e5b1a0742b3f\"", "size": 3783, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 3783, "httpStatusCode": 200}', '7c89b0a7-40ce-463e-845d-d03691923a2f', NULL, NULL),
	('b31c846f-1b31-4ee1-821f-665220c49c35', 'age-classification-system', 'pegi-16.svg', NULL, '2024-04-26 06:55:35.560491+00', '2024-04-26 06:55:35.560491+00', '2024-04-26 06:55:35.560491+00', '{"eTag": "\"e87a64aa51f4a5a3063a0b41b088114a\"", "size": 4169, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 4169, "httpStatusCode": 200}', 'fe446b0e-1940-42d6-a068-33562dfd5e81', NULL, NULL),
	('7e90418b-827a-426b-be6b-fd32a7c61554', 'age-classification-system', 'pegi-18.svg', NULL, '2024-04-26 06:55:36.462302+00', '2024-04-26 06:55:36.462302+00', '2024-04-26 06:55:36.462302+00', '{"eTag": "\"4bde5f9c6d6e7a1e35d60b963fc023b5\"", "size": 4167, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:37.000Z", "contentLength": 4167, "httpStatusCode": 200}', 'e8385190-a14c-4580-bbba-a0d866d556d9', NULL, NULL),
	('f8359a78-59fa-4045-8573-8bc37f9bea02', 'age-classification-system', 'esrb-e10-plus.svg', NULL, '2024-04-26 06:55:34.379201+00', '2024-04-26 06:55:34.379201+00', '2024-04-26 06:55:34.379201+00', '{"eTag": "\"19b6762612ca982c4ebafb83e89f6852\"", "size": 6873, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 6873, "httpStatusCode": 200}', 'd39f7246-876b-4ad1-9d28-18993c722a8a', NULL, NULL),
	('ff9c7725-c75c-4a1d-8b20-78f7529e9b3d', 'age-classification-system', 'esrb-t.svg', NULL, '2024-04-26 06:55:35.392478+00', '2024-04-26 06:55:35.392478+00', '2024-04-26 06:55:35.392478+00', '{"eTag": "\"0213bedeea6b43452f266810f072e206\"", "size": 3088, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 3088, "httpStatusCode": 200}', '6613b3e1-20bd-4999-9f38-6bd7a6a5f76c', NULL, NULL),
	('c5f5a8f0-31af-46ca-aefa-350f984e2600', 'age-classification-system', 'usk-18.svg', NULL, '2024-04-26 06:55:36.55614+00', '2024-04-26 06:55:36.55614+00', '2024-04-26 06:55:36.55614+00', '{"eTag": "\"71f12cc424fdc014c0ba6bd4675046d6\"", "size": 4412, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:37.000Z", "contentLength": 4412, "httpStatusCode": 200}', '44f60a31-7711-4b13-8937-9aa6e1679249', NULL, NULL),
	('27df0380-07e8-4f01-ba81-f4d2166a91a6', 'age-classification-system', 'esrb-m17-plus.svg', NULL, '2024-04-26 06:55:34.46163+00', '2024-04-26 06:55:34.46163+00', '2024-04-26 06:55:34.46163+00', '{"eTag": "\"7da128a58b418f2e6e81283fe58a8f5e\"", "size": 4882, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 4882, "httpStatusCode": 200}', 'e5264c02-7896-4feb-8512-6ad0e9275b99', NULL, NULL),
	('4442fdc6-7fcd-4b43-83cd-82590bd06505', 'age-classification-system', 'esrb-a18-plus.svg', NULL, '2024-04-26 06:55:34.407468+00', '2024-04-26 06:55:34.407468+00', '2024-04-26 06:55:34.407468+00', '{"eTag": "\"2e8282da6b77f013cc9f812b64b828c8\"", "size": 8692, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 8692, "httpStatusCode": 200}', 'd379fbb9-2cc9-4bde-a7b9-9f04a02a5d46', NULL, NULL),
	('8a785541-3c09-44f6-9246-4fb928af7d0c', 'age-classification-system', 'grac-15.svg', NULL, '2024-04-26 06:55:35.381504+00', '2024-04-26 06:55:35.381504+00', '2024-04-26 06:55:35.381504+00', '{"eTag": "\"f3a0003f410bdb3136be76f9726431db\"", "size": 4332, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 4332, "httpStatusCode": 200}', '224c3ed0-0e18-4c28-ba4b-14f68dc2e0cb', NULL, NULL),
	('c7eef233-c693-44d2-81ab-4d5babcda9c3', 'age-classification-system', 'usk-12.svg', NULL, '2024-04-26 06:55:36.639905+00', '2024-04-26 06:55:36.639905+00', '2024-04-26 06:55:36.639905+00', '{"eTag": "\"9de43534fc6926ac5fd09b95d5b34489\"", "size": 7679, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:37.000Z", "contentLength": 7679, "httpStatusCode": 200}', 'c1c86e82-1d22-45f5-bb49-7397a3eda5fb', NULL, NULL),
	('2ef84e86-2fbe-45f7-9439-4368c7593c4b', 'age-classification-system', 'ci-l.svg', NULL, '2024-04-26 06:55:34.409439+00', '2024-04-26 06:55:34.409439+00', '2024-04-26 06:55:34.409439+00', '{"eTag": "\"07cb3ba17ad52791baf8509503a64a02\"", "size": 526, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 526, "httpStatusCode": 200}', '4da16088-c250-4a14-9b04-be8c663efe17', NULL, NULL),
	('65452850-5905-4298-a3ad-add49eac744b', 'age-classification-system', 'grac-19.svg', NULL, '2024-04-26 06:55:35.350188+00', '2024-04-26 06:55:35.350188+00', '2024-04-26 06:55:35.350188+00', '{"eTag": "\"afcfc5b27b4bd77a5303a3948a753510\"", "size": 5546, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 5546, "httpStatusCode": 200}', '0b01cd11-f8f2-4f71-8257-ba33e3142e06', NULL, NULL),
	('fba45a37-0d56-434a-9003-81bd39c43b56', 'age-classification-system', 'esrb-e.svg', NULL, '2024-04-26 06:55:34.48045+00', '2024-04-26 06:55:34.48045+00', '2024-04-26 06:55:34.48045+00', '{"eTag": "\"bf9131a772f59585f8b7182170d579a0\"", "size": 4965, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:35.000Z", "contentLength": 4965, "httpStatusCode": 200}', 'd226fbfa-1515-4686-9be9-5f7ccb6ac0e5', NULL, NULL),
	('bbdf1932-a527-4936-aa47-a57e7f2724ea', 'age-classification-system', 'pegi-7.svg', NULL, '2024-04-26 06:55:35.575237+00', '2024-04-26 06:55:35.575237+00', '2024-04-26 06:55:35.575237+00', '{"eTag": "\"bfba4be351a4b15169f2d919196af051\"", "size": 3701, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 3701, "httpStatusCode": 200}', '66253ec1-1fba-476a-89ea-f182f2d77661', NULL, NULL),
	('71f9b6ba-8eed-4682-8eb0-28005c19a65b', 'age-classification-system', 'usk-6.svg', NULL, '2024-04-26 06:55:36.520583+00', '2024-04-26 06:55:36.520583+00', '2024-04-26 06:55:36.520583+00', '{"eTag": "\"109553ffcf3ad80e9e3ebaef35d26eaa\"", "size": 7804, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:37.000Z", "contentLength": 7804, "httpStatusCode": 200}', '9734eeb9-b065-4a65-b322-76c9a0418f6a', NULL, NULL),
	('ad77507d-32aa-4a25-9721-0344d393c539', 'age-classification-system', 'grac-all.svg', NULL, '2024-04-26 06:55:35.426211+00', '2024-04-26 06:55:35.426211+00', '2024-04-26 06:55:35.426211+00', '{"eTag": "\"d02388f4ab4a1fdbea67df08e30981a8\"", "size": 3776, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 3776, "httpStatusCode": 200}', 'fb85957e-5cb7-4406-8aba-528276873786', NULL, NULL),
	('878a59f1-481d-49c2-ae14-67a001d08b78', 'age-classification-system', 'grac-12.svg', NULL, '2024-04-26 06:55:35.40127+00', '2024-04-26 06:55:35.40127+00', '2024-04-26 06:55:35.40127+00', '{"eTag": "\"168be6dc615ebda3e5a240d1d67fed6a\"", "size": 4283, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 4283, "httpStatusCode": 200}', '4d2e20cb-7c19-4f17-8c5c-dfea69fd2a66', NULL, NULL),
	('9a36f556-b8d2-4c3b-a1a8-f6d3a049ad1a', 'age-classification-system', 'pegi-3.svg', NULL, '2024-04-26 06:55:35.588499+00', '2024-04-26 06:55:35.588499+00', '2024-04-26 06:55:35.588499+00', '{"eTag": "\"10d0fc3606192b100401715faa2ff5df\"", "size": 3974, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:36.000Z", "contentLength": 3974, "httpStatusCode": 200}', '9c04ad13-241c-4e76-ab4e-eca6f3f3b2cb', NULL, NULL),
	('bd3565bd-4cc6-4a9a-bd83-757ace1eb630', 'age-classification-system', 'usk-0.svg', NULL, '2024-04-26 06:55:36.573459+00', '2024-04-26 06:55:36.573459+00', '2024-04-26 06:55:36.573459+00', '{"eTag": "\"0b0cd3fdbc6b14cdf84aa14b25f33238\"", "size": 7558, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2024-04-26T06:55:37.000Z", "contentLength": 7558, "httpStatusCode": 200}', 'ca5ef886-4a3e-42fc-8dcb-a39697bf57bd', NULL, NULL);


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
