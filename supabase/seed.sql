SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.8

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
	('00000000-0000-0000-0000-000000000000', '49c70254-a26b-415e-8fae-ef5667c336ed', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"wahyusaputropratjojo@gmail.com","user_id":"0907865a-8b96-412c-b2fa-dc976d13ab82","user_phone":""}}', '2024-11-09 14:02:01.456486+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a110c9ed-b320-4d11-bf22-80e7763776ad', '{"action":"user_signedup","actor_id":"afeca35e-832c-49f3-b665-3db0408b4bf0","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:17:11.494859+00', ''),
	('00000000-0000-0000-0000-000000000000', '03518cb0-f081-48ef-b80c-6373f5ddb56d', '{"action":"login","actor_id":"afeca35e-832c-49f3-b665-3db0408b4bf0","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:17:11.50142+00', ''),
	('00000000-0000-0000-0000-000000000000', '991a2606-4cf3-4dee-80c6-15f731b305ce', '{"action":"user_signedup","actor_id":"c678e29c-f459-4be8-8054-58196b40acd2","actor_username":"aprilia@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:20:48.861054+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5ac3253-b844-43c8-bf3d-b0f2979aaf0c', '{"action":"login","actor_id":"c678e29c-f459-4be8-8054-58196b40acd2","actor_username":"aprilia@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:20:48.867331+00', ''),
	('00000000-0000-0000-0000-000000000000', '47b3e343-dee7-45d6-8013-a6d1fa453608', '{"action":"user_signedup","actor_id":"c8c974a1-dd8d-43fb-bbb1-2de2a5ebfb8e","actor_username":"wahyupratjojo@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:23:39.869883+00', ''),
	('00000000-0000-0000-0000-000000000000', '48c43dca-e453-4612-8d76-20f21d610495', '{"action":"login","actor_id":"c8c974a1-dd8d-43fb-bbb1-2de2a5ebfb8e","actor_username":"wahyupratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:23:39.875549+00', ''),
	('00000000-0000-0000-0000-000000000000', '83659f5c-f1d9-4881-b0f3-c8fe5967989a', '{"action":"user_signedup","actor_id":"5d30f64e-a0b1-4d40-b83b-8e72db366ad7","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:24:48.288968+00', ''),
	('00000000-0000-0000-0000-000000000000', '77224da9-be64-41cd-af2c-5e1c1e5f719b', '{"action":"login","actor_id":"5d30f64e-a0b1-4d40-b83b-8e72db366ad7","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:24:48.293877+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acf7c497-3609-44d5-88fa-de15a086ca5d', '{"action":"logout","actor_id":"5d30f64e-a0b1-4d40-b83b-8e72db366ad7","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 05:25:03.795814+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c38f7bd-3867-44b2-aaba-8d8cf0876e58', '{"action":"user_signedup","actor_id":"99068f0c-9f91-4474-a036-297423374add","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:30:17.285249+00', ''),
	('00000000-0000-0000-0000-000000000000', '1425d662-bc71-45b5-a322-6c775a4d4ea9', '{"action":"login","actor_id":"99068f0c-9f91-4474-a036-297423374add","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:30:17.292153+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6507f30-d8be-4c2a-b08f-e43ea0c4a82a', '{"action":"user_signedup","actor_id":"924c09e3-9921-46b2-8638-4268e65cfc09","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:37:49.710665+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d03824a-ba74-473f-9f74-3d41ae61cdeb', '{"action":"login","actor_id":"924c09e3-9921-46b2-8638-4268e65cfc09","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:37:49.716866+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c446023-34f9-41c7-b442-f93a36c28ef5', '{"action":"user_signedup","actor_id":"b291cedd-6cad-40f0-9d18-327fcba0a69b","actor_username":"april@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:39:46.690464+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c61fb1a-daff-400f-b43f-94444fb379c2', '{"action":"login","actor_id":"b291cedd-6cad-40f0-9d18-327fcba0a69b","actor_username":"april@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:39:46.69482+00', ''),
	('00000000-0000-0000-0000-000000000000', '39a32356-394d-4fa9-b92c-c74a223a306d', '{"action":"user_signedup","actor_id":"d0f5af6f-8db3-4c2b-aaf0-f80075b58dff","actor_username":"hizkia@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:43:10.270289+00', ''),
	('00000000-0000-0000-0000-000000000000', '21906a1f-ed7d-4d48-8ada-49f1e193531c', '{"action":"login","actor_id":"d0f5af6f-8db3-4c2b-aaf0-f80075b58dff","actor_username":"hizkia@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:43:10.274768+00', ''),
	('00000000-0000-0000-0000-000000000000', '8902cd9b-8370-466b-8b6e-097b232372da', '{"action":"user_signedup","actor_id":"92b2e56a-a62a-4c86-8be7-0a244f194eb4","actor_username":"berlian@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:44:07.718174+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea31fdbb-2ccf-4739-a9d0-50068049a22c', '{"action":"login","actor_id":"92b2e56a-a62a-4c86-8be7-0a244f194eb4","actor_username":"berlian@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:44:07.72313+00', ''),
	('00000000-0000-0000-0000-000000000000', '98aecaee-7bc8-4b14-8785-242fbd5836f5', '{"action":"user_repeated_signup","actor_id":"924c09e3-9921-46b2-8638-4268e65cfc09","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-11-15 05:45:25.916192+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd52b3cc-9bb9-4e47-86ea-ec49024c0e68', '{"action":"user_signedup","actor_id":"cfd16796-22ec-4332-8cad-8c9912eccca8","actor_username":"anaspratjojo@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:45:31.611788+00', ''),
	('00000000-0000-0000-0000-000000000000', '26b3ee83-efa6-4b06-927d-9f7a890abc52', '{"action":"login","actor_id":"cfd16796-22ec-4332-8cad-8c9912eccca8","actor_username":"anaspratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:45:31.615552+00', ''),
	('00000000-0000-0000-0000-000000000000', '81441bd8-5a38-44fb-adcf-e0b69db53f2f', '{"action":"user_signedup","actor_id":"0aafacd3-9a18-499a-a773-d24d57494394","actor_username":"nigel@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:47:07.914639+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cad2b920-96c5-40f8-b3ae-a84bc280da8f', '{"action":"login","actor_id":"0aafacd3-9a18-499a-a773-d24d57494394","actor_username":"nigel@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:47:07.919432+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bea56dec-4bd4-4b9f-b704-cde338aea7c6', '{"action":"user_signedup","actor_id":"ea1bad6a-f15e-4afe-ae10-b8c3c3dbbe90","actor_username":"frangly@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:47:52.809135+00', ''),
	('00000000-0000-0000-0000-000000000000', '290a9fab-d654-42b8-b51c-529557df623c', '{"action":"login","actor_id":"ea1bad6a-f15e-4afe-ae10-b8c3c3dbbe90","actor_username":"frangly@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:47:52.813871+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1c26e45-2873-476a-936d-9423ff211f57', '{"action":"user_signedup","actor_id":"a910f4bc-3ad7-4806-ae24-ef39bafcbf41","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:48:51.734231+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd53eca31-2643-4319-b60f-92203ed5954d', '{"action":"login","actor_id":"a910f4bc-3ad7-4806-ae24-ef39bafcbf41","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:48:51.739641+00', ''),
	('00000000-0000-0000-0000-000000000000', '23d3d90b-83fe-42dd-bd6b-77a2665560e7', '{"action":"user_signedup","actor_id":"777dc9d7-dcd5-4e3a-ac7c-fc64f4233c8b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 05:51:36.639237+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb656a01-9245-4e79-b65a-3547eec4fb5e', '{"action":"login","actor_id":"777dc9d7-dcd5-4e3a-ac7c-fc64f4233c8b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 05:51:36.644214+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b09ba7ec-902d-478b-bd66-0a4b67eac2a1', '{"action":"user_repeated_signup","actor_id":"777dc9d7-dcd5-4e3a-ac7c-fc64f4233c8b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-11-15 06:04:33.193843+00', ''),
	('00000000-0000-0000-0000-000000000000', '410e3bbe-561e-4acb-b864-da71e568cc1e', '{"action":"user_repeated_signup","actor_id":"777dc9d7-dcd5-4e3a-ac7c-fc64f4233c8b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-11-15 06:04:51.354059+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad657c5a-0e93-4245-864b-63377b8eabea', '{"action":"user_repeated_signup","actor_id":"777dc9d7-dcd5-4e3a-ac7c-fc64f4233c8b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-11-15 06:17:38.35079+00', ''),
	('00000000-0000-0000-0000-000000000000', '96eebc95-0437-4af5-84a9-018ce1fb412f', '{"action":"user_signedup","actor_id":"2d343c92-b9f5-4ead-bacd-4fa54c751662","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 06:24:01.784588+00', ''),
	('00000000-0000-0000-0000-000000000000', '33b855f3-e7fc-4e02-9750-596685344954', '{"action":"login","actor_id":"2d343c92-b9f5-4ead-bacd-4fa54c751662","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 06:24:01.790395+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d29db54-b909-47b4-aa6c-0303553390e3', '{"action":"user_signedup","actor_id":"9b277bdd-4417-4024-bea3-eeb3233ddaba","actor_username":"aprilia@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 06:24:55.361834+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e2f5ab9-bf71-419e-b10c-e55f2bcbf16b', '{"action":"login","actor_id":"9b277bdd-4417-4024-bea3-eeb3233ddaba","actor_username":"aprilia@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 06:24:55.36611+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7311d62-a7ac-465a-b46c-97bb08bc4cd1', '{"action":"user_signedup","actor_id":"75f01b30-4784-43f4-ac2d-9d98bf1b5ff2","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 06:28:04.770528+00', ''),
	('00000000-0000-0000-0000-000000000000', '30edca62-7f6e-4fd8-9cef-62a11b10ec7a', '{"action":"login","actor_id":"75f01b30-4784-43f4-ac2d-9d98bf1b5ff2","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 06:28:04.775166+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aae3a520-205d-42d7-ab8d-478a1e054a10', '{"action":"token_refreshed","actor_id":"75f01b30-4784-43f4-ac2d-9d98bf1b5ff2","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-15 07:30:06.755977+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f448f4e-eab0-4941-a3f2-741a8a67ee96', '{"action":"token_revoked","actor_id":"75f01b30-4784-43f4-ac2d-9d98bf1b5ff2","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-15 07:30:06.761605+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a496ff2c-4617-4544-8051-fd5c71df00c6', '{"action":"user_signedup","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 08:23:07.645572+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc25b869-4fb9-47c4-b238-32c57d03172f', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 08:23:07.653913+00', ''),
	('00000000-0000-0000-0000-000000000000', '180cc9f6-6e0c-4135-9d97-ae7ef0d291e4', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 08:24:26.683187+00', ''),
	('00000000-0000-0000-0000-000000000000', '25e8b86a-5add-4116-b2c4-81f7a7779a23', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 08:25:45.178252+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc86b631-5481-48bd-99e6-0b015eb95929', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 08:25:48.447224+00', ''),
	('00000000-0000-0000-0000-000000000000', '770c9f4c-0dac-4e04-857c-6d21b686934f', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 08:25:59.954503+00', ''),
	('00000000-0000-0000-0000-000000000000', '2dacc767-bab3-45ca-9851-5210f0708682', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 08:27:04.538035+00', ''),
	('00000000-0000-0000-0000-000000000000', '0871b711-8c30-4b99-882e-dec89c1d905e', '{"action":"user_signedup","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 08:27:30.425894+00', ''),
	('00000000-0000-0000-0000-000000000000', '64820c0d-afe7-478a-ab1e-9600c83f08be', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 08:27:30.431228+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0ba3d1d-b99b-48a3-b926-750314c2bfed', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 08:28:30.158327+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abdc5c73-ce28-4e8d-92d4-645c55181a96', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 08:28:42.87867+00', ''),
	('00000000-0000-0000-0000-000000000000', '6bb5f9e5-5382-4adc-890f-6dc1342661bb', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 08:29:30.241797+00', ''),
	('00000000-0000-0000-0000-000000000000', '40587997-54bb-4c11-aa77-19bd4016ef2a', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 08:29:51.214696+00', ''),
	('00000000-0000-0000-0000-000000000000', '79289a0b-a5ba-434a-a3fb-687e975b64f8', '{"action":"token_refreshed","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-15 12:28:41.746526+00', ''),
	('00000000-0000-0000-0000-000000000000', '6919ea94-83c1-4504-a2c7-090e0b4ad761', '{"action":"token_revoked","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-15 12:28:41.750994+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e774044-00b7-408c-949f-d0fc6c1f80f1', '{"action":"user_signedup","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-15 12:31:26.174618+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a1c7456-297e-4b20-a2a8-32d7bab135ac', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 12:31:26.183072+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cde67f67-c645-46e3-9cd3-a7ba4a61dc94', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 12:34:37.483596+00', ''),
	('00000000-0000-0000-0000-000000000000', '64a24702-3d64-4e29-9213-f2ce80c90d3d', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 12:34:52.397783+00', ''),
	('00000000-0000-0000-0000-000000000000', '21a093b7-1fdc-4648-be3d-0bb0f0a9a3e6', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 12:35:33.217092+00', ''),
	('00000000-0000-0000-0000-000000000000', '62698446-1b90-4bee-bc48-5bf3967cf471', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 12:35:43.70761+00', ''),
	('00000000-0000-0000-0000-000000000000', '138a5d6d-a622-4037-9ccb-8b8095892e3b', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 12:36:28.77084+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c32ab1d-c525-4cbb-8b36-c3c405e3d93d', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 12:36:32.963219+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd90e118a-303d-4107-9f06-78d88a8ef429', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 12:38:13.98619+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b43500d-60e3-4d70-9565-ff94fc3645a2', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 12:38:18.736698+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d3a5fc6-8cf2-4849-9662-689778c42507', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 12:44:53.876422+00', ''),
	('00000000-0000-0000-0000-000000000000', '349c278f-7508-43c4-9ef7-203a52d7e78e', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 12:56:23.76474+00', ''),
	('00000000-0000-0000-0000-000000000000', '09e15e55-915d-4213-a6a4-3ac672f998b9', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 12:56:33.872195+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f324feec-3614-4626-97b7-90c65b1f7128', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:14:33.877085+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f88b8c9a-ad52-4a85-b3d7-ba2ed6f6df39', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:18:33.512924+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4679ef5-6d79-403c-a6f6-d5ab663851a6', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:27:42.239175+00', ''),
	('00000000-0000-0000-0000-000000000000', '0856b565-9114-41c8-88bf-eed4a8ca2c2d', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:27:54.709671+00', ''),
	('00000000-0000-0000-0000-000000000000', '6fcc3520-91bf-4b86-b3b4-3397645f756e', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:30:47.679708+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c98da6e9-e277-4716-821c-b4951e20f779', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:31:25.710569+00', ''),
	('00000000-0000-0000-0000-000000000000', '5737a7c2-60bc-40ab-ac15-a5774d2194e6', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:31:28.393942+00', ''),
	('00000000-0000-0000-0000-000000000000', '5bc22154-00c2-47b8-b158-f8cbb2422fbd', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:33:12.907258+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f4badb7-d9b1-41b8-8d5d-b654900129a3', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:37:52.993854+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3a8ae6f-e8d1-4a80-a2b2-6c637f5654dc', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:38:53.818918+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd58e5552-c131-4768-9771-2a72f4bee78f', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:38:57.091662+00', ''),
	('00000000-0000-0000-0000-000000000000', '346dcd64-8857-4b30-a687-4f3a3cd2197b', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:39:20.349686+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f034778a-78bd-4f93-93f2-08b46687bf67', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:39:47.055421+00', ''),
	('00000000-0000-0000-0000-000000000000', '970b0da3-5a1e-4fb1-a1ba-54cf8d4d4ad7', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:39:52.565294+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d9c8d67-5414-4450-8440-f4bed155f3e1', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:40:15.208912+00', ''),
	('00000000-0000-0000-0000-000000000000', '15a63317-e444-4c11-b89a-251d7d34a64e', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:40:19.83531+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f17f217-5b0f-4946-94be-6a5e7b7abc36', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:40:32.874427+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd750290d-0eb8-4daa-9ab8-84f1b0b88b02', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:42:39.636439+00', ''),
	('00000000-0000-0000-0000-000000000000', '2df3b7b6-657f-4a9d-9f31-1b9d2e2fcef4', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:42:53.258231+00', ''),
	('00000000-0000-0000-0000-000000000000', '44c22923-4d61-408e-b529-d056ae36aa8a', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:44:12.261871+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef00535b-e3fa-40d6-b52d-c82c0186b173', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:44:26.964748+00', ''),
	('00000000-0000-0000-0000-000000000000', '48ff154e-e8dd-41f3-8b8b-eb2ac9675841', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:44:37.721497+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e6b527b-8e08-4c7d-8b74-6127410911fc', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:44:59.033128+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bcdd5f0-8cb4-4974-8f01-f7628dc6f989', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:46:15.426372+00', ''),
	('00000000-0000-0000-0000-000000000000', '92a4eea3-1995-4fd1-bfec-f766b95a8c27', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:46:24.567545+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb4d13ad-a4e1-48db-b396-57d71aae0a18', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:46:35.884555+00', ''),
	('00000000-0000-0000-0000-000000000000', '38c0e61e-58a9-4400-9ffb-170661cdf557', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:46:39.051553+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c7ba5be-cca8-4f1b-93d8-1c303d3b0a5e', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:46:45.756521+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e3ffaf8-8795-47e1-99f8-77c7f2342fe2', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:46:49.270811+00', ''),
	('00000000-0000-0000-0000-000000000000', '0cb31f7e-0ce4-4408-bf4b-ad05a7b3197b', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:46:56.225108+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef0d7671-95b5-481e-bf2b-70af8ff63113', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:47:00.215223+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae077a5f-3c4d-45e4-905a-f9bd8f1acb04', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:47:03.610264+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c01540e-b675-40dc-a8e4-325aa2580bf1', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:47:06.596353+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c035908-4a24-4b38-8481-d83fc535c576', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:47:09.401589+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc71c687-e03d-4c19-8c77-ea22925d8678', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:47:12.059119+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3472fc9-f450-46d2-b6a7-b213f2234f40', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:47:44.727823+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab2ffa60-859f-444d-9fdb-4d1c0a24b43a', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:47:47.719738+00', ''),
	('00000000-0000-0000-0000-000000000000', '12d0f35f-62b4-47d3-82b9-09628e80667c', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:47:50.439824+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bda0a30f-daa8-49bc-8798-0545140eccda', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:47:53.42523+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f2211d0-6a6a-4167-ad5f-b1b11714a002', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:48:01.745653+00', ''),
	('00000000-0000-0000-0000-000000000000', '4527bc42-60db-4139-8aac-2e26088266b2', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:48:04.851439+00', ''),
	('00000000-0000-0000-0000-000000000000', '75fd8e28-3a89-4fae-9e30-bbb5f0a044a1', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:50:21.327544+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d386442-4282-41ce-a7b4-81229f4be448', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 13:50:24.574335+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a3b4848-3f1f-47ac-95aa-ef54fd91e18d', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:50:36.278992+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee7af0ec-bfc9-4640-9d33-1c73a23405f4', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 13:50:48.651172+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c711a0f-354b-47a1-9eba-15cfdec33267', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:51:02.265452+00', ''),
	('00000000-0000-0000-0000-000000000000', '156675b1-4a86-4f92-a0be-04ea681411c5', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 13:54:14.745248+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ede5fab0-1465-4766-9d5e-1e88ffc4756f', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:54:29.27565+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c799e331-889a-4288-a062-d26947d43f44', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 13:54:57.989851+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd23603b5-6a53-4122-98e9-dd04d0815bfd', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:55:11.011479+00', ''),
	('00000000-0000-0000-0000-000000000000', '2beeb864-ce9d-4741-9bcd-fd26982093f5', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 13:55:50.012261+00', ''),
	('00000000-0000-0000-0000-000000000000', '51fe9977-faff-4e59-aab6-fd4121207ef5', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:55:55.696731+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4f66ae1-e7aa-410c-a845-aa1008c738bc', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 13:58:51.756135+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f293334c-b912-4831-b1bc-3cf0017ae9f2', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 13:58:55.473376+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da711d76-538e-4e4a-aae1-a294888a059d', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 14:00:29.760123+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d7c52d4-4794-4f9a-a24a-c9031175d264', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:00:32.633315+00', ''),
	('00000000-0000-0000-0000-000000000000', '181c7e4e-65b5-4ff1-967c-ab75ffdd6a2a', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:01:31.331093+00', ''),
	('00000000-0000-0000-0000-000000000000', '6471a55f-d5e6-4137-89b6-994feeb1a22b', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 14:08:46.053077+00', ''),
	('00000000-0000-0000-0000-000000000000', '6434b42a-fdcd-42cc-af73-3f80934645e5', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:08:48.584711+00', ''),
	('00000000-0000-0000-0000-000000000000', '35b38c1e-c668-43b9-8f86-bb0b36e975d4', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 14:08:59.720179+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e72d8070-82ed-48a8-8aa1-896e549e7c2a', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:09:03.178097+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a31877ed-44eb-4f69-939d-6d3d12b0867c', '{"action":"user_updated_password","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 14:09:20.860611+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e887273-a9e2-4a36-9b41-ef2d73a8dff3', '{"action":"user_modified","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 14:09:20.861279+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d191c04-4f54-4617-9d0a-a102c497cf88', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:09:42.352424+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e3d73d5-7edd-4cce-b923-ed44652bc4d3', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 14:09:59.338605+00', ''),
	('00000000-0000-0000-0000-000000000000', '36c8a79c-110c-444c-9d1d-2b538e726c6a', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:10:01.430993+00', ''),
	('00000000-0000-0000-0000-000000000000', 'adc69455-64db-46ee-948d-57ba396e1916', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 14:13:53.775216+00', ''),
	('00000000-0000-0000-0000-000000000000', '380bfe6a-e751-4841-a246-219275ceec0e', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:13:56.157756+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce1a8031-31c1-430f-988a-5890165451be', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 14:13:59.825493+00', ''),
	('00000000-0000-0000-0000-000000000000', '608cb94a-4bed-4ec4-ba4a-189811d40d46', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:14:04.667818+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1e06b9e-5d21-45f0-a777-0b09b3bb726c', '{"action":"user_updated_password","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 14:14:21.776146+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2359107-5716-4884-883e-76929d732138', '{"action":"user_modified","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-15 14:14:21.777175+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d23db4f-75dc-42b1-bdc7-828419d19f6e', '{"action":"logout","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-15 14:14:25.836641+00', ''),
	('00000000-0000-0000-0000-000000000000', '522b8e9c-bf74-4e6a-ba88-4232f7deba78', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-15 14:14:41.220915+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f71a09aa-8368-4243-9814-6eb21ffd87e5', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-18 11:15:24.346778+00', ''),
	('00000000-0000-0000-0000-000000000000', 'adf5804f-73a3-43e0-9e8d-8d150d12d6bc', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-18 11:16:44.61013+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bdfaa413-72b6-4ffe-8673-cc5242f89cb5', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 08:16:37.121935+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5ff67a9-176f-4892-8efd-afa6f90aaa3a', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 08:19:01.586898+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe938cee-940b-44ea-88e1-8f0d7b5a3d95', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 08:31:20.253368+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ac1ed5b-51dc-46dc-b7c5-4aae0bfad69e', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 08:32:37.432286+00', ''),
	('00000000-0000-0000-0000-000000000000', '111ea8cb-9a50-41ca-ad5f-28636e84cb9c', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 08:33:42.593811+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de6c2518-f310-41a9-a699-941af54b7d6a', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 08:37:23.863928+00', ''),
	('00000000-0000-0000-0000-000000000000', '53c3aa71-0b75-4d52-9ce3-98cd12a023fc', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 08:45:20.822234+00', ''),
	('00000000-0000-0000-0000-000000000000', '51c06482-fa46-494f-b33b-5461627fe53a', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 08:47:53.224913+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b2b6a9e-35a6-4bde-87ba-212759cf7ff4', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 08:48:03.939054+00', ''),
	('00000000-0000-0000-0000-000000000000', '0888b06e-c596-497e-aa3b-5d44eccc8eef', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 08:56:06.338403+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f1d3b4b-4008-4bf3-95a6-248f56ca2451', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 08:56:46.065782+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca8a0c6a-7b4c-400e-869d-6af6785e6275', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 09:03:17.076992+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fb0cd45-3168-4c76-8238-a54e612b788c', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 09:03:32.020571+00', ''),
	('00000000-0000-0000-0000-000000000000', '76b5a964-f182-4535-b84b-41265d66107a', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 09:46:11.041541+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd41a0f1b-0dba-4174-9e59-00c3879dcf14', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 12:06:46.236407+00', ''),
	('00000000-0000-0000-0000-000000000000', '17eb0e04-0a66-40cb-ba74-bc1369a0f973', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 12:30:38.599546+00', ''),
	('00000000-0000-0000-0000-000000000000', '87a8d3d8-dd51-4c1c-a6f8-3011d1f15b1b', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 12:30:51.522508+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae083b19-73df-4837-8e44-c37b59fa7b33', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 12:30:56.1486+00', ''),
	('00000000-0000-0000-0000-000000000000', '436d7c6b-437c-4e16-ac93-3ff3199cc547', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 12:31:49.786545+00', ''),
	('00000000-0000-0000-0000-000000000000', '126df36a-ee0e-447e-b40c-72d19a4b9cd8', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 12:32:27.359345+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e82ea56-a818-48e4-90eb-20be04481a43', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 12:32:40.926079+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ddcdbc9-5465-488d-be46-c6eaef9160c8', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 12:32:49.004084+00', ''),
	('00000000-0000-0000-0000-000000000000', '4dea22c6-8b4e-4b1b-a94f-bb6572e81eb3', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 12:33:00.577877+00', ''),
	('00000000-0000-0000-0000-000000000000', '25e5615c-34d2-426c-b5b8-db2344916e9e', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 12:33:51.649276+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b88253b-1391-439b-9c08-e6316312b6e2', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 12:34:05.609756+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fdfcd033-c90a-40f5-a3e2-465fe5f04d01', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 12:39:04.119138+00', ''),
	('00000000-0000-0000-0000-000000000000', 'efed0b32-98ea-42b2-ba9b-3bbcd4c21972', '{"action":"login","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-19 12:39:24.581735+00', ''),
	('00000000-0000-0000-0000-000000000000', '4451c686-a227-4406-a425-7b74056089c3', '{"action":"logout","actor_id":"6f718142-757b-4bc6-adf6-43265be0013f","actor_username":"wahyusaputropratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-19 12:40:14.104212+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a07b0b6-beba-4a08-a421-ace92ed4a4b6', '{"action":"user_recovery_requested","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-20 10:55:19.800867+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f9468b8-7ae8-4968-9fff-02120f74365a', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-20 10:55:31.694973+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a44833d3-4e1a-4fb0-8327-c98c56e9f6b5', '{"action":"user_updated_password","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-20 10:55:55.555902+00', ''),
	('00000000-0000-0000-0000-000000000000', '91da7ac3-5217-4b91-9a68-d6b6291a7d29', '{"action":"user_modified","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-20 10:55:55.55691+00', ''),
	('00000000-0000-0000-0000-000000000000', 'daabdfb6-2640-4af6-bc6f-a10393978c99', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-20 10:56:01.530714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4b26d23-bc95-424e-bdca-4abe40e11d53', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-20 10:56:11.922417+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2b51509-8c9e-4730-a4e5-2c62a0d844a1', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-20 10:56:17.002031+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c7757de-51b0-436c-9b1c-95af92bc7dfe', '{"action":"user_recovery_requested","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-20 10:57:39.844459+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dda5420d-e2cd-427a-870a-79942e8bacc3', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-20 10:57:51.672755+00', ''),
	('00000000-0000-0000-0000-000000000000', '36da44bc-d0d2-401b-bb2e-33494162edc6', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-20 11:02:31.630152+00', ''),
	('00000000-0000-0000-0000-000000000000', '97e34af7-b0a7-4f62-9269-4fa9fe38ad1d', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-20 11:02:41.295636+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab889c33-e94f-4fc0-86f6-6fe78ec8a31f', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-20 11:07:40.232962+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ae3f3ac-d6be-44ff-80db-66b712d2cdb2', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-20 11:07:44.735846+00', ''),
	('00000000-0000-0000-0000-000000000000', '6448f8b8-c35c-4823-ac6a-f348a80d575a', '{"action":"user_recovery_requested","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-20 11:10:52.195564+00', ''),
	('00000000-0000-0000-0000-000000000000', '31648286-3adc-4d96-bea7-4452e0bc0833', '{"action":"login","actor_id":"57ff6269-854a-48c5-b9c7-7606f89bb928","actor_username":"anas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-20 11:10:55.629075+00', ''),
	('00000000-0000-0000-0000-000000000000', '078c82da-4c55-46f9-af5b-3e4606155c8c', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-20 11:41:36.313928+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd70b232c-e583-47d5-bab7-aa03ac8716ad', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-20 11:43:53.110175+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b5a8ca4-2176-406a-b41c-41a1cadf046d', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 06:07:07.687279+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddbc91c4-f5bc-44de-b4ef-2cf99736882e', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 06:19:11.802955+00', ''),
	('00000000-0000-0000-0000-000000000000', '4cf431fd-0298-4d8b-817a-3709c8dcaffa', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 06:19:27.76351+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1ecdc4a-45f2-48ea-8e07-395dfd1570fd', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 06:31:30.819788+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b5f83f8-db4a-4d16-a583-ed0621a75c8e', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 06:31:50.0912+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b694861-5896-4ce0-8b04-7df9b916c6e0', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 06:33:39.012254+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a02e091e-acb6-4651-b7ab-8929c890d5e1', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 06:36:56.181036+00', ''),
	('00000000-0000-0000-0000-000000000000', '1df1c271-cefc-4d0c-a4c3-801412d6225e', '{"action":"token_refreshed","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-23 08:56:01.449653+00', ''),
	('00000000-0000-0000-0000-000000000000', '61e4c491-8f00-4acb-bf3e-8ccd64606a54', '{"action":"token_revoked","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-23 08:56:01.453811+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c48f8289-5222-416e-8763-5db38da1e8e8', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 09:41:57.778816+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a45a839e-1db6-4124-ae40-3ad84e7db229', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 09:42:14.660012+00', ''),
	('00000000-0000-0000-0000-000000000000', '6cb4e3bf-8b60-40f8-9b8b-fa30cc622bd6', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 09:51:33.850451+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac3178da-65ed-414b-91f1-bca907b9b20d', '{"action":"user_signedup","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-23 09:52:35.050616+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acdf1fe4-9e00-4451-82a0-ab7547716974', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 09:52:35.071669+00', ''),
	('00000000-0000-0000-0000-000000000000', '9fe03996-a5f5-4e7b-ac60-8e663dc932f6', '{"action":"logout","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 09:53:47.740994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e970675d-f95a-4e59-878d-9e84b84187ea', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 10:07:23.369279+00', ''),
	('00000000-0000-0000-0000-000000000000', '303f5f19-e05b-458b-905c-c18e845821a5', '{"action":"logout","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 10:08:13.654406+00', ''),
	('00000000-0000-0000-0000-000000000000', '69af967d-04eb-4005-9f04-0efc8a779f6a', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 10:08:25.28272+00', ''),
	('00000000-0000-0000-0000-000000000000', '7654d98f-070d-4119-883d-49a56bbbb3d9', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 10:08:53.418994+00', ''),
	('00000000-0000-0000-0000-000000000000', '89daf19d-e99e-40d8-83d2-4d6340757704', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 10:21:51.305255+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e803b616-35eb-4d98-a191-01951d8face1', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 10:25:23.565878+00', ''),
	('00000000-0000-0000-0000-000000000000', '6245ef65-ae9f-474c-8d23-0fe4b7a2eee9', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 10:25:49.775571+00', ''),
	('00000000-0000-0000-0000-000000000000', '035e7b5f-8b12-428d-beca-094c95eec5c5', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 10:37:36.044897+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4eba828-35de-4d4a-aba3-972ab42f2c18', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 10:55:14.878426+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aed27911-2f9f-4e6b-acb4-2f2f1d0f04ce', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 11:05:11.558691+00', ''),
	('00000000-0000-0000-0000-000000000000', '40d0a42b-129c-4ad7-bea8-91b74563fd17', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 11:08:41.422371+00', ''),
	('00000000-0000-0000-0000-000000000000', '862d8c85-d791-4fb7-a29f-a1288444433a', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 11:09:04.686171+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc3836d9-1b62-442f-873c-72f0025b65ec', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 11:53:58.148597+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e09f55e-50d2-4786-8d50-30d5cf0a00fd', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 11:54:10.484022+00', ''),
	('00000000-0000-0000-0000-000000000000', '7460d882-8879-41f3-8bf0-160a662f9f25', '{"action":"logout","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 11:54:40.289288+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e789c37-93bc-4041-b4fa-4c987f9e1152', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 11:54:51.676373+00', ''),
	('00000000-0000-0000-0000-000000000000', '46d392ad-b62b-4506-97af-8f6f2c2e4f4d', '{"action":"logout","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 12:02:09.568979+00', ''),
	('00000000-0000-0000-0000-000000000000', '39d7bf40-35df-48dd-9df2-a3a89b9a2831', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 12:02:25.677882+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abb20b33-57c0-4846-a6e3-f3cee71fe9d6', '{"action":"logout","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 12:03:18.40971+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0403ab4-e991-44c2-861b-56b184e6d0b8', '{"action":"login","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-23 12:03:45.692689+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a371471c-af7a-4d93-91b8-362467c0f55b', '{"action":"logout","actor_id":"390780ea-1a02-4d55-9fbd-456717453036","actor_username":"vinky@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-23 12:21:18.462416+00', ''),
	('00000000-0000-0000-0000-000000000000', '6bd51a2e-c388-4f71-aba5-3c29b74d977d', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-25 12:11:32.11304+00', ''),
	('00000000-0000-0000-0000-000000000000', '282b6da4-0b26-4d28-b589-a2391bb5da23', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-25 12:12:30.820898+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a29cbdf-904b-4be3-88b2-839c402585a8', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-25 12:29:33.606713+00', ''),
	('00000000-0000-0000-0000-000000000000', '279d439d-296b-4c43-a7f6-a3f3878dd731', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-25 12:30:30.253486+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4c402e9-9a6e-49c4-9108-d070ec02b8f8', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-25 12:32:11.949872+00', ''),
	('00000000-0000-0000-0000-000000000000', '41888d70-98cc-4e47-8d3b-f22f98f26dc4', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-25 12:37:18.282927+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3c04298-9c08-4134-9ab2-8dcb15125967', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-26 09:43:16.157396+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bbea0c34-778e-46e0-b641-db55df766bda', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-26 12:53:24.232174+00', ''),
	('00000000-0000-0000-0000-000000000000', '5511220f-4408-43b5-bae8-834788435f6b', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 03:08:47.845104+00', ''),
	('00000000-0000-0000-0000-000000000000', '71397fdc-4b31-4018-9310-76769d34342a', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 03:22:46.615175+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0fc87ac-3b37-44df-ac29-a00aa9c2307b', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:07:52.449549+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0ed0dde-78e5-4624-a13d-4cb633d4f178', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:08:27.013481+00', ''),
	('00000000-0000-0000-0000-000000000000', '41e5b996-4979-47ee-9b60-64e03dfd6c96', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 04:08:33.280222+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c18445a-c10d-47d8-90a8-4d52f8adaa4c', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:09:52.798578+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7a36be2-dfb6-4066-bd47-aecea0cf3988', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:13:30.645472+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a6f00846-c045-48f9-b6ad-2603c981d3e8', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 04:13:40.924637+00', ''),
	('00000000-0000-0000-0000-000000000000', '351348f9-8ebd-48cc-ab21-a2f6c74368e4', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:15:19.140516+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aacf405a-e3ac-4e5f-982c-2a9714b0de54', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:16:35.454491+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa48a76d-1b42-450e-9f7c-603b58beb325', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:26:29.634691+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f322e63-1a4b-4d3a-a410-ce4ea42d73e7', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 04:45:35.402914+00', ''),
	('00000000-0000-0000-0000-000000000000', '769fb2e1-f89b-4707-ab80-87e812a3e7d3', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:47:49.980937+00', ''),
	('00000000-0000-0000-0000-000000000000', '696dae7a-521c-4c55-947d-f3b09d6057b2', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 04:51:10.235766+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd9b658df-4445-41cd-9df8-f9ae3020248b', '{"action":"user_recovery_requested","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-27 04:51:20.763482+00', ''),
	('00000000-0000-0000-0000-000000000000', '19a80001-93ec-4830-b752-45e5916c848e', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 04:51:26.743988+00', ''),
	('00000000-0000-0000-0000-000000000000', '9893eda0-24fb-4a5f-91f4-ae647ad449f1', '{"action":"user_updated_password","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-27 04:51:40.952136+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd27da46-f9e6-4e7f-805e-14fd9eb100a7', '{"action":"user_modified","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-11-27 04:51:40.953296+00', ''),
	('00000000-0000-0000-0000-000000000000', '5a9477c4-4ff2-4748-b240-557b271198fc', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 04:51:53.688825+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ac03609-8e6d-4c2f-a08e-c0938a701829', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 04:52:10.806102+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5710340-f66b-40e8-b0c6-f571e55f6ebb', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 05:09:18.771441+00', ''),
	('00000000-0000-0000-0000-000000000000', '76717469-7b83-4662-8005-2c9f641e32f1', '{"action":"login","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 05:12:41.369905+00', ''),
	('00000000-0000-0000-0000-000000000000', '521c6611-b6af-4718-90a4-e3916a7e9282', '{"action":"logout","actor_id":"1eab3912-a3a4-4f47-9b4b-736c8138624e","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 05:26:59.218886+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c96ed1a2-daf2-49f5-aadb-cfd7bb98ae5e', '{"action":"user_signedup","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-11-29 06:23:50.964242+00', ''),
	('00000000-0000-0000-0000-000000000000', '25626064-15f4-4552-b3bb-2553f011c961', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-29 06:23:50.971005+00', ''),
	('00000000-0000-0000-0000-000000000000', '3787a835-e7f5-47d7-b1d5-1ebeeb6c6cfe', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-29 07:22:07.085209+00', ''),
	('00000000-0000-0000-0000-000000000000', '1db0ce86-c919-4a2c-9409-2528216c19bb', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-11-29 07:22:07.089458+00', ''),
	('00000000-0000-0000-0000-000000000000', '167393b6-a693-4142-8975-16a674745f04', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 05:15:28.029479+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e143a19d-5a6a-4167-b5ef-5077031e17f1', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 05:15:28.033324+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d2ab350-d64f-41d6-9480-943228fd96e1', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 06:13:54.423569+00', ''),
	('00000000-0000-0000-0000-000000000000', '52f93a38-9d43-4021-b65d-ac15f43b3610', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 06:13:54.429187+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f149e67c-59b5-4f70-9208-a8da6bb0358d', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 07:12:12.838147+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8f80aea-af4d-41c8-9c95-5bb12c4f8e41', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 07:12:12.842784+00', ''),
	('00000000-0000-0000-0000-000000000000', '60803e07-c4f7-44d7-b7a0-5f543cc12780', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-02 07:21:38.458642+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb90604b-9c2e-414b-843a-6ad9f4cd5337', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 05:19:41.54586+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2b4104d-75ef-4762-af59-807d62247df7', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-04 05:34:52.949551+00', ''),
	('00000000-0000-0000-0000-000000000000', '3514ed26-fc91-406a-9839-9a67f73dd067', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 05:35:03.177373+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7103f34-b9af-467e-b520-392bce12775a', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 06:34:32.113864+00', ''),
	('00000000-0000-0000-0000-000000000000', '00f442c0-52a0-476c-b0dc-04d3faef91b6', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 06:34:32.117916+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eec2d78f-5c98-4ad4-bb02-18d2ccbfc53b', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-04 06:58:09.284055+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd11bc313-b0ca-4915-98b3-5778e3130260', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 06:58:20.935993+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6947414-dc46-40f2-9512-51c8f3a196a7', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 07:57:48.470628+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c34419f2-99ae-4670-a252-383fdbec7b3a', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 07:57:48.474413+00', ''),
	('00000000-0000-0000-0000-000000000000', '25a4b51d-b476-4897-bfd7-212048816d5c', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 08:56:17.819225+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b7ca734-b772-4954-bbe5-03241e3ddf4c', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 08:56:17.823268+00', ''),
	('00000000-0000-0000-0000-000000000000', '06824efc-76f0-4e37-ad38-02d7c1b26ae2', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 06:32:18.339435+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5d49d0b-9810-4be8-ba2b-8d3745e12d5a', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 06:32:18.343899+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b08476d-745c-416a-a3e0-4c64533a4f08', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 07:34:43.878531+00', ''),
	('00000000-0000-0000-0000-000000000000', '35a2f6fa-8b88-4734-94e1-4dc0a5e7adec', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 07:34:43.883713+00', ''),
	('00000000-0000-0000-0000-000000000000', '17983bd5-8a61-4c50-bc4a-f590a80a1908', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 07:57:58.168339+00', ''),
	('00000000-0000-0000-0000-000000000000', '5afb7cfd-eb66-4ffa-bbcc-9f39f7eb1d1b', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 07:58:09.814584+00', ''),
	('00000000-0000-0000-0000-000000000000', '24f33fa3-a3a6-4d6a-9501-47588063d5b0', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 09:22:32.988314+00', ''),
	('00000000-0000-0000-0000-000000000000', '981e3879-95bc-4247-b286-8f16f5c82adc', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 09:22:32.992758+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3a9351a-346a-4f95-9f13-471848121dde', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 10:20:56.159994+00', ''),
	('00000000-0000-0000-0000-000000000000', '382d467d-d88d-42ff-8a5b-f6e88d251e1a', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 10:20:56.165136+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d09df96-7a1f-485d-b250-76164bcc1050', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 11:25:45.131233+00', ''),
	('00000000-0000-0000-0000-000000000000', '91f8198a-6dbe-45e8-adf6-be3305b70b5a', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 11:25:45.134972+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bd98063-b222-4904-9ed7-f6b2d908db49', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-07 06:52:30.445332+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b44533e-56c1-46de-9683-c0d25e8a7c6b', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-07 06:52:30.449344+00', ''),
	('00000000-0000-0000-0000-000000000000', '50100e31-5f4a-433e-9c26-87068898a2d2', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-07 07:51:12.524851+00', ''),
	('00000000-0000-0000-0000-000000000000', '446000d4-b67a-4c05-97cb-4f5d51d1be62', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-07 07:51:12.530581+00', ''),
	('00000000-0000-0000-0000-000000000000', '99b997af-2c87-4f6b-9a9f-97c0eb17a1bb', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-07 08:23:41.844124+00', ''),
	('00000000-0000-0000-0000-000000000000', '662405a9-971b-40ab-8aaa-c55f081a79af', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 08:23:52.640527+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5d3d140-6d56-4fb2-89a4-1a6229680538', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-07 08:26:11.697478+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e77c38b8-207b-4270-80f6-e496e78d5779', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 08:26:20.529544+00', ''),
	('00000000-0000-0000-0000-000000000000', '6de936a0-06d3-4176-a960-d83910321adb', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-07 08:29:19.669087+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9d7589b-4d37-4617-bc79-658a93a2d2b0', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 08:33:36.307306+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa8e5751-9b46-4a7c-ad93-ec87e5d1fb05', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-07 08:43:22.990767+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a34b5d9-0616-4d19-9495-ac07b2ae8b31', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 08:45:45.910954+00', ''),
	('00000000-0000-0000-0000-000000000000', '3770c15c-946b-4068-92f1-6eb1ce4c3711', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-07 08:59:13.34528+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1b890e6-6e8b-41ca-9741-bfc4e2e9a5bc', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 09:00:29.159398+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ab50748-2bd4-4286-a2a4-1998a412d7f6', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-07 09:02:04.344815+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c97c31df-369e-447b-a433-720f57d0e892', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 09:27:39.836244+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c306c3f-d9fa-4390-ade9-1f65b159861d', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 04:15:37.44137+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8f303f0-517b-4d8f-9761-8c824d27a246', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 04:15:37.444563+00', ''),
	('00000000-0000-0000-0000-000000000000', '8eb08aa4-95b0-4216-8bc1-f7e8677da6cd', '{"action":"token_refreshed","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 06:11:17.068505+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d57b24d-744a-47e6-9744-d524268e2028', '{"action":"token_revoked","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-12-09 06:11:17.072951+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8813626-d3de-4beb-9761-1bfde0f4a1b5', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-12 06:03:42.854711+00', ''),
	('00000000-0000-0000-0000-000000000000', '62771e58-faa9-4f2c-b0b4-0d9a42ae4830', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-12 06:06:21.392875+00', ''),
	('00000000-0000-0000-0000-000000000000', '75c5fd78-1c15-41ed-986d-e94ad39e6935', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-12 06:09:57.82677+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f907a45-d0d5-4241-b3aa-8620bd0e0094', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-12 06:19:50.465982+00', ''),
	('00000000-0000-0000-0000-000000000000', '121528bb-1604-4188-a36d-6a58ceab0cc4', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-12 06:19:58.985917+00', ''),
	('00000000-0000-0000-0000-000000000000', '2948802e-3427-4d73-a936-0a743eb6ce86', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 03:54:42.776901+00', ''),
	('00000000-0000-0000-0000-000000000000', '93263787-c5f2-4d38-b7e0-0aaa911e9499', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 03:56:46.176664+00', ''),
	('00000000-0000-0000-0000-000000000000', '59a7d7c0-c364-4bfd-a3d0-f825c52ea007', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 03:57:06.086803+00', ''),
	('00000000-0000-0000-0000-000000000000', '71a2a49d-ac2c-4d5e-af4a-e9dac3f61976', '{"action":"logout","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 04:20:05.041135+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7591320-77ab-42a8-8e07-9f5feda663c9', '{"action":"login","actor_id":"c423eefc-e331-4340-8943-e6b02db7ec6b","actor_username":"opos@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 07:03:26.722476+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d15407c-6ab8-43ed-bb8d-9f2b7644664e', '{"action":"user_signedup","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-02-25 08:15:30.496547+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c837a8ca-d9b2-41f4-acf9-9a7beeffabdb', '{"action":"login","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-25 08:15:30.50853+00', ''),
	('00000000-0000-0000-0000-000000000000', '29d64094-4be3-4041-97de-35967e3a832b', '{"action":"logout","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-02-25 08:15:45.164175+00', ''),
	('00000000-0000-0000-0000-000000000000', '47b36a20-8b81-4ba2-9640-cf2b1c4c5f17', '{"action":"login","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-25 08:16:05.840007+00', ''),
	('00000000-0000-0000-0000-000000000000', '392264cc-b635-4d84-9377-eb78b9fa6e49', '{"action":"logout","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-02-25 08:35:25.606781+00', ''),
	('00000000-0000-0000-0000-000000000000', '4be3eba8-f7f6-461a-8574-490a9ad9b2bb', '{"action":"login","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-25 08:38:01.605796+00', ''),
	('00000000-0000-0000-0000-000000000000', '39f1c0fe-7169-45c3-b4ff-9b8c5625f604', '{"action":"logout","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-02-25 08:45:27.45736+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ec2a205-867b-4a95-a94d-422bbbc10962', '{"action":"login","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-26 04:31:42.632241+00', ''),
	('00000000-0000-0000-0000-000000000000', '9435092f-05f0-4160-a627-142833bed681', '{"action":"token_refreshed","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-12 03:35:35.177596+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dde17af1-d908-426f-bde5-8cc99d31355c', '{"action":"token_revoked","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-12 03:35:35.185032+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c46bf788-a83e-42a7-9ddf-d77eb8f98df1', '{"action":"logout","actor_id":"6251b3fe-35ab-4f9e-a861-fe4040f2c1db","actor_username":"apriliasapan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-12 03:36:59.91409+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f49a9261-37ec-4045-96f3-35575cddca52', '{"action":"user_signedup","actor_id":"4d96829c-eaa5-46f4-83ba-46ca85823368","actor_username":"wahyupratjojo@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-03-18 04:32:06.154103+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ca58b98-de4f-4822-ab1c-b41ce2badda7', '{"action":"login","actor_id":"4d96829c-eaa5-46f4-83ba-46ca85823368","actor_username":"wahyupratjojo@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-18 04:32:06.163348+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa5609f4-7055-4d06-9c6f-7d8ffafbc20e', '{"action":"logout","actor_id":"4d96829c-eaa5-46f4-83ba-46ca85823368","actor_username":"wahyupratjojo@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-18 04:32:32.583119+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'c423eefc-e331-4340-8943-e6b02db7ec6b', 'authenticated', 'authenticated', 'opos@gmail.com', '$2a$10$eIzztIxAv.iXcOnBPfCituS.uzU0rRQFgsyp.IYgNEjwwucO.tIC6', '2024-11-29 06:23:50.966736+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-18 07:03:26.724849+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "c423eefc-e331-4340-8943-e6b02db7ec6b", "email": "opos@gmail.com", "last_name": "Pratjojo", "first_name": "Wahyu Saputro", "display_name": "opos___", "email_verified": false, "phone_verified": false}', NULL, '2024-11-29 06:23:50.948492+00', '2024-12-18 07:03:26.731219+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '4d96829c-eaa5-46f4-83ba-46ca85823368', 'authenticated', 'authenticated', 'wahyupratjojo@gmail.com', '$2a$10$ZHG0hrUPH.MGClyITp4.lOX/3k4DzVbutFP/M/MBAYl32Xl50FN72', '2025-03-18 04:32:06.157489+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-03-18 04:32:06.164449+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "4d96829c-eaa5-46f4-83ba-46ca85823368", "email": "wahyupratjojo@gmail.com", "last_name": "Pratjojo", "first_name": "Wahyu", "display_name": "opos___", "email_verified": false, "phone_verified": false}', NULL, '2025-03-18 04:32:06.135697+00', '2025-03-18 04:32:06.174115+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '6251b3fe-35ab-4f9e-a861-fe4040f2c1db', 'authenticated', 'authenticated', 'apriliasapan@gmail.com', '$2a$10$HeElCeJcnjfXVWltYRwjzOhgCrEUYN2V3EqI3Y3HqgqwRbuOygu7G', '2025-02-25 08:15:30.500919+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-26 04:31:42.643246+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "6251b3fe-35ab-4f9e-a861-fe4040f2c1db", "email": "apriliasapan@gmail.com", "last_name": "Sapan", "first_name": "Aprilia", "display_name": "apriliahs", "email_verified": false, "phone_verified": false}', NULL, '2025-02-25 08:15:30.459668+00', '2025-03-12 03:35:35.196993+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('c423eefc-e331-4340-8943-e6b02db7ec6b', 'c423eefc-e331-4340-8943-e6b02db7ec6b', '{"sub": "c423eefc-e331-4340-8943-e6b02db7ec6b", "email": "opos@gmail.com", "last_name": "Pratjojo", "first_name": "Wahyu Saputro", "display_name": "opos___", "email_verified": false, "phone_verified": false}', 'email', '2024-11-29 06:23:50.958535+00', '2024-11-29 06:23:50.958595+00', '2024-11-29 06:23:50.958595+00', 'ffef3b35-9f55-4c9d-bd6d-8d092b196b29'),
	('6251b3fe-35ab-4f9e-a861-fe4040f2c1db', '6251b3fe-35ab-4f9e-a861-fe4040f2c1db', '{"sub": "6251b3fe-35ab-4f9e-a861-fe4040f2c1db", "email": "apriliasapan@gmail.com", "last_name": "Sapan", "first_name": "Aprilia", "display_name": "apriliahs", "email_verified": false, "phone_verified": false}', 'email', '2025-02-25 08:15:30.488501+00', '2025-02-25 08:15:30.488565+00', '2025-02-25 08:15:30.488565+00', 'd83c4229-72fe-4779-beff-3f78ab072c52'),
	('4d96829c-eaa5-46f4-83ba-46ca85823368', '4d96829c-eaa5-46f4-83ba-46ca85823368', '{"sub": "4d96829c-eaa5-46f4-83ba-46ca85823368", "email": "wahyupratjojo@gmail.com", "last_name": "Pratjojo", "first_name": "Wahyu", "display_name": "opos___", "email_verified": false, "phone_verified": false}', 'email', '2025-03-18 04:32:06.147188+00', '2025-03-18 04:32:06.147293+00', '2025-03-18 04:32:06.147293+00', 'bf732637-72d6-4b8e-8707-cb2d60c3a43f');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('4c21759e-27b6-4413-8c38-81d88644cac6', 'c423eefc-e331-4340-8943-e6b02db7ec6b', '2024-12-18 07:03:26.724937+00', '2024-12-18 07:03:26.724937+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('4c21759e-27b6-4413-8c38-81d88644cac6', '2024-12-18 07:03:26.73255+00', '2024-12-18 07:03:26.73255+00', 'password', '29ca0053-c073-475b-92e3-2e0248a7373a');


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

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 223, 'a0FGCcu6V_819GF7C1fIRA', 'c423eefc-e331-4340-8943-e6b02db7ec6b', false, '2024-12-18 07:03:26.727582+00', '2024-12-18 07:03:26.727582+00', NULL, '4c21759e-27b6-4413-8c38-81d88644cac6');


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

INSERT INTO "public"."games" ("created_at", "name", "description", "release_date", "is_base", "is_bundle", "is_remaster", "is_remake", "is_expansion", "is_standalone_expansion", "updated_at", "id", "slug") VALUES
	('2024-03-26 15:43:11.536814+00', 'Palworld', 'Palworld is a brand-new, multiplayer, open-world survival crafting game where you can befriend and collect mysterious creatures called "Pal" in a vast world! Make your Pals fight, build, farm, and work in factories.', '2024-01-19', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '1b696350-e681-4f85-a0f3-814bddffd832', 'palworld'),
	('2024-03-26 15:43:11.536814+00', 'Prince of Persia: The Lost Crown', 'Dash into a stylish and thrilling action-adventure platformer set in a mythological Persian world where the boundaries of time and space are yours to manipulate.
Play as Sargon and evolve from sword-wielding prodigy to extraordinary legend as you master acrobatic combat and unlock new Time Powers and unique super abilities.', '2024-01-18', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '97c65b82-cd2a-4f2e-9c3b-8b47698865fa', 'prince-of-persia-the-lost-crown'),
	('2024-03-26 15:43:11.536814+00', 'God of War Ragnarök', 'God of War: Ragnarök is the ninth installment in the God of War series and the sequel to 2018''s God of War. Continuing with the Norse mythology theme, the game is set in ancient Norway and features series protagonists Kratos, the former Greek God of War, and his young son Atreus. The game kicked off the events of Ragnarök, where Kratos and Atreus must journey to each of the Nine Realms in search of answers as they prepare for the prophesied battle that will end the world.', '2022-11-09', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', 'god-of-war-ragnarök'),
	('2024-03-26 15:43:11.536814+00', 'Horizon Forbidden West', 'Horizon Forbidden West continues Aloy’s story as she moves west to a far-future America to brave a majestic, but dangerous frontier where she’ll face awe-inspiring machines and mysterious new threats.', '2022-02-18', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'cb5a3341-7c0c-40e5-b5c8-f046a820c760', 'horizon-forbidden-west'),
	('2024-03-26 15:43:11.536814+00', 'HELLDIVERS 2', 'The Galaxy’s Last Line of Offence. Enlist in the Helldivers and join the fight for freedom across a hostile galaxy in a fast, frantic, and ferocious third-person shooter.', '2024-02-08', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'aba3368c-5504-4205-b6d6-df059665dd7c', 'helldivers-2'),
	('2024-03-26 15:43:11.536814+00', 'Persona 3 Reload', 'Step into the shoes of a transfer student thrust into an unexpected fate when entering the hour "hidden" between one day and the next. Awaken an incredible power and chase the mysteries of the Dark Hour, fight for your friends, and leave a mark on their memories forever.
Persona 3 Reload is a captivating reimagining of the genre-defining RPG, reborn for the modern era.', '2024-02-02', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'd304a979-c997-4f6d-b342-a32d5dd5929d', 'persona-3-reload'),
	('2024-03-26 15:43:11.536814+00', 'Ghost of Tsushima', 'Uncover the hidden wonders of Tsushima in this open-world action adventure. Forge a new path and wage an unconventional war for the freedom of Tsushima. Challenge opponents with your katana, master the bow to eliminate distant threats, develop stealth tactics to ambush enemies in order to win over the mongols.', '2020-07-17', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'c882a6f0-85d1-4333-85fa-41ed54198309', 'ghost-of-tsushima'),
	('2024-03-26 15:43:11.536814+00', 'Black Myth: Wukong', 'Black Myth: Wukong is an action RPG rooted in Chinese mythology. You shall set out as the Destined One to venture into the challenges and marvels ahead, to uncover the obscured truth beneath the veil of a glorious legend from the past.', '2024-08-20', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '26e1bb94-7a5f-4127-882c-5baf78387932', 'black-myth-wukong'),
	('2024-03-26 15:43:11.536814+00', 'Ghost of Tsushima DIRECTOR''S CUT', 'Discover the expanded Ghost of Tsushima experience in this DIRECTOR’S CUT, featuring all additional content released to date.', '2024-05-16', false, true, false, false, false, false, '2024-03-26 15:43:11.536814+00', '75c94e45-de09-4596-9dfe-f588b2da71a9', 'ghost-of-tsushima-directors-cut'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us', 'Joel, a ruthless survivor with few moral lines left to cross, lives in one of the last remaining Quarantine Zones. These walled-off, oppressive cities are run by what’s left of the military. Despite the strict martial law, Joel operates in the black market of the city, smuggling contraband for the right price.

Joel is asked by a dying friend to look after Ellie, a fourteen-year-old girl with courage beyond her years. What starts out as a simple job to deliver Ellie to another Quarantine Zone, soon transforms into a profound journey that will forever change Joel and Ellie.

As they journey across a post-pandemic United States, Joel and Ellie will encounter different factions of survivors that have each found a unique way of dealing with the infected humans, the lack of supplies, and the threat of other survivors. As Joel and Ellie struggle to persevere, they must learn to trust each other and work together in order to survive the realities of this new world.', '2013-06-14', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', 'bf0c0bfb-09f2-4af1-a3e1-234201f5d692', 'the-last-of-us'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Remastered', 'Winner of over 200 Game of the Year awards, The Last of Us has been rebuilt for the PlayStation 4 system. Now featuring full 1080p, higher-resolution character models, improved shadows and lighting, in addition to several other gameplay improvements.

20 years after a pandemic has radically changed known civilization, infected humans run wild and survivors are killing each other for food, weapons; whatever they can get their hands on. Joel, a violent survivor, is hired to smuggle a 14 year-old girl, Ellie, out of an oppressive military quarantine zone, but what starts as a small job soon transforms into a brutal journey across the U.S.

The Last of Us Remastered includes the Abandoned Territories Map Pack, Reclaimed Territories Map Pack, and the critically acclaimed The Last of Us: Left Behind Single Player campaign that combines themes of survival, loyalty, and love with tense, survival-action gameplay.', '2014-07-26', true, false, true, false, false, false, '2024-03-26 15:43:11.536814+00', 'e426b1fe-f692-4dd7-b411-101cfabba94a', 'the-last-of-us-remastered'),
	('2024-03-26 15:43:11.536814+00', 'Final Fantasy VII Rebirth', 'Final Fantasy VII Rebirth is the new story in the Final Fantasy VII remake project, a reimagining of the iconic original game into three standalone titles by its original creators. In this game, players will enjoy various new elements as the story unfolds, culminating in the midpoint from the original Final Fantasy VII.', '2024-02-29', true, false, false, true, false, false, '2024-12-18 07:56:10.081256+00', '5c54046f-f0eb-4e19-a5a8-d76feab9b244', 'final-fantasy-vii-rebirth'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Part II Remastered', 'Experience the winner of over 300 Game of the Year awards now with an array of technical enhancements that make The Last of Us Part Il Remastered the definitive way to play Ellie and Abby''s critically acclaimed story.', '2024-01-19', true, false, false, true, false, false, '2024-12-18 07:56:42.871682+00', '6e6958f7-cd84-47b3-be20-024a41bc85d3', 'the-last-of-us-part-ii-remastered'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Part II', 'Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Jackson, Wyoming. Living amongst a thriving community of survivors has allowed them peace and stability, despite the constant threat of the infected and other, more desperate survivors.

When a violent event disrupts that peace, Ellie embarks on a relentless journey to carry out justice and find closure. As she hunts those responsible one by one, she is confronted with the devastating physical and emotional repercussions of her actions.

Experience the escalating moral conflicts created by Ellie’s relentless pursuit of vengeance. The cycle of violence left in her wake will challenge your notions of right versus wrong, good versus evil, and hero versus villain.

New and evolved gameplay systems deliver upon the life-or-death stakes of Ellie’s journey through the hostile world. Feel her desperate struggle for survival through improved features such as high-intensity melee combat, fluid movement, and dynamic stealth. A broad variety of weapons, crafting items, skills, and upgrades allows you to personalize Ellie’s capabilities to your play style.

Set out on Ellie’s journey, taking her from the peaceful mountains and forests of Jackson to the lush, overgrown ruins of greater Seattle. Encounter new survivor groups, unfamiliar and treacherous environments, and terrifying evolutions of the infected. Brought to life by the latest iteration of the Naughty Dog engine, the deadly characters and world are more realistic and meticulously detailed than ever before.', '2020-06-19', true, false, false, false, false, false, '2024-03-26 15:43:11.536814+00', '281a84f5-377e-4b35-b1c1-e7152461c3e1', 'the-last-of-us-part-ii'),
	('2024-03-26 15:43:11.536814+00', 'The Last of Us Part I', 'Completely rebuilt from the ground up using Naughty Dog’s latest PS5™ engine technology with advanced visual fidelity, fully integrated DualSense™ wireless controller features and more.

Experience the emotional storytelling and unforgettable characters of Joel and Ellie in The Last of Us, and explore the events that changed the lives of Ellie and her best friend Riley forever in the critically acclaimed prequel chapter, Left Behind.
A total overhaul of the original experience, faithfully reproduced but incorporating modernized gameplay mechanics, improved controls and expanded accessibility options. 

Feel immersed in improved environmental storytelling, effects, facial animations, and enhanced exploration and combat.', '2022-09-01', true, false, false, true, false, false, '2024-03-26 15:43:11.536814+00', '8a15b39f-a057-4fe6-babf-f6dd301c5bbb', 'the-last-of-us-part-i');


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
-- Data for Name: games_grid; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_grid" ("id_game", "created_at", "thumbnail", "original") VALUES
	('1b696350-e681-4f85-a0f3-814bddffd832', '2024-12-18 06:03:34.130942+00', 'https://cdn2.steamgriddb.com/thumb/e672f47d8a67d62f7ff7da2e58e1df39.jpg', 'https://cdn2.steamgriddb.com/grid/e672f47d8a67d62f7ff7da2e58e1df39.png'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '2024-12-18 06:05:22.874527+00', 'https://cdn2.steamgriddb.com/thumb/8ab3f37f8e80cced2c23d4d59f4102b9.jpg', 'https://cdn2.steamgriddb.com/grid/8ab3f37f8e80cced2c23d4d59f4102b9.png'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', '2024-12-18 06:08:28.089174+00', 'https://cdn2.steamgriddb.com/thumb/3a96a1164364c063f40ce33aaf971783.jpg', 'https://cdn2.steamgriddb.com/grid/3a96a1164364c063f40ce33aaf971783.png'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', '2024-12-18 06:10:16.188713+00', 'https://cdn2.steamgriddb.com/thumb/01639920c81fcc08b5b7a8db3d55723a.jpg', 'https://cdn2.steamgriddb.com/grid/01639920c81fcc08b5b7a8db3d55723a.png'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '2024-12-18 06:11:57.348241+00', 'https://cdn2.steamgriddb.com/thumb/f3949fa34208fe26a430aed32434ebc8.jpg', 'https://cdn2.steamgriddb.com/grid/f3949fa34208fe26a430aed32434ebc8.jpg'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '2024-12-18 06:13:16.523376+00', 'https://cdn2.steamgriddb.com/thumb/b13b57c93aa09536490f30a89d645072.jpg', 'https://cdn2.steamgriddb.com/grid/b13b57c93aa09536490f30a89d645072.jpg'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', '2024-12-18 06:15:00.587807+00', 'https://cdn2.steamgriddb.com/thumb/c840da4d342a29827b6c907c03a76f80.jpg', 'https://cdn2.steamgriddb.com/grid/c840da4d342a29827b6c907c03a76f80.png'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '2024-12-18 06:16:22.41358+00', 'https://cdn2.steamgriddb.com/thumb/4bdc756c3e62c186cb05dc1cd927ec76.jpg', 'https://cdn2.steamgriddb.com/grid/4bdc756c3e62c186cb05dc1cd927ec76.png'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', '2024-12-18 06:18:21.124142+00', 'https://cdn2.steamgriddb.com/thumb/949c1d90f6cb6e857139dc47dc2f3313.jpg', 'https://cdn2.steamgriddb.com/grid/949c1d90f6cb6e857139dc47dc2f3313.jpg'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '2024-12-18 06:20:26.977843+00', 'https://cdn2.steamgriddb.com/thumb/fd93fd1de50e084dd7d3b0b9f6950450.jpg', 'https://cdn2.steamgriddb.com/grid/fd93fd1de50e084dd7d3b0b9f6950450.png'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', '2024-12-18 06:22:05.219521+00', 'https://cdn2.steamgriddb.com/thumb/849d7b8124e44421cf640466299db4dc.jpg', 'https://cdn2.steamgriddb.com/grid/849d7b8124e44421cf640466299db4dc.png'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '2024-12-18 06:23:45.647007+00', 'https://cdn2.steamgriddb.com/thumb/188b51418888fd91619f06543f6fa824.jpg', 'https://cdn2.steamgriddb.com/grid/188b51418888fd91619f06543f6fa824.jpg'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', '2024-12-18 06:25:16.768086+00', 'https://cdn2.steamgriddb.com/thumb/b54ebbed071f0e9265e88eb8ed58e10e.jpg', 'https://cdn2.steamgriddb.com/grid/b54ebbed071f0e9265e88eb8ed58e10e.png'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '2024-12-18 06:27:16.807374+00', 'https://cdn2.steamgriddb.com/thumb/7ca49777a71420e1d492a56ded84864e.jpg', 'https://cdn2.steamgriddb.com/grid/7ca49777a71420e1d492a56ded84864e.png'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', '2024-12-18 06:28:32.391654+00', 'https://cdn2.steamgriddb.com/thumb/e8e576d226e2da4b7a270eaa0c20448a.jpg', 'https://cdn2.steamgriddb.com/grid/e8e576d226e2da4b7a270eaa0c20448a.png');


--
-- Data for Name: games_hero; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_hero" ("id_game", "created_at", "thumbnail", "original") VALUES
	('1b696350-e681-4f85-a0f3-814bddffd832', '2024-12-18 05:20:48.173589+00', 'https://cdn2.steamgriddb.com/hero_thumb/9df46297a76837ba9cea33042ae8fc0a.jpg', 'https://cdn2.steamgriddb.com/hero/9df46297a76837ba9cea33042ae8fc0a.jpg'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '2024-12-18 05:22:31.367825+00', 'https://cdn2.steamgriddb.com/hero_thumb/13d423c869d1f12c22c6544d405f891b.jpg', 'https://cdn2.steamgriddb.com/hero/13d423c869d1f12c22c6544d405f891b.jpg'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', '2024-12-18 05:46:33.051966+00', 'https://cdn2.steamgriddb.com/hero_thumb/0e2c2cfc6030399c82c70cad3c81c290.jpg', 'https://cdn2.steamgriddb.com/hero/0e2c2cfc6030399c82c70cad3c81c290.png'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', '2024-12-18 05:49:43.013489+00', 'https://cdn2.steamgriddb.com/hero_thumb/3bc0ce119f001e824f80ad2333c5c420.jpg', 'https://cdn2.steamgriddb.com/hero/3bc0ce119f001e824f80ad2333c5c420.png'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '2024-12-18 05:51:41.578129+00', 'https://cdn2.steamgriddb.com/hero_thumb/adfe876ae8618aa5df77dd6946ba37c6.jpg', 'https://cdn2.steamgriddb.com/hero/adfe876ae8618aa5df77dd6946ba37c6.jpg'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '2024-12-18 05:52:40.788511+00', 'https://cdn2.steamgriddb.com/hero_thumb/f6bd2a3672ec73783ad8f4b3dd1d18f4.jpg', 'https://cdn2.steamgriddb.com/hero/f6bd2a3672ec73783ad8f4b3dd1d18f4.jpg'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', '2024-12-18 05:53:41.836127+00', 'https://cdn2.steamgriddb.com/hero_thumb/5c02ec1f19fedba505619c3623a19a77.jpg', 'https://cdn2.steamgriddb.com/hero/5c02ec1f19fedba505619c3623a19a77.jpg'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '2024-12-18 05:54:52.728457+00', 'https://cdn2.steamgriddb.com/hero_thumb/82fd34f734dfb70f685134cbbd66876a.jpg', 'https://cdn2.steamgriddb.com/hero/82fd34f734dfb70f685134cbbd66876a.png'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', '2024-12-18 05:55:38.622393+00', 'https://cdn2.steamgriddb.com/hero_thumb/51837925fa3567e7e97c71de9f2a49bd.jpg', 'https://cdn2.steamgriddb.com/hero/51837925fa3567e7e97c71de9f2a49bd.jpg'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '2024-12-18 05:56:25.533573+00', 'https://cdn2.steamgriddb.com/hero_thumb/41a9bc427ade9d587aa7762c1e9350f6.jpg', 'https://cdn2.steamgriddb.com/hero/41a9bc427ade9d587aa7762c1e9350f6.jpg'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', '2024-12-18 05:57:00.455367+00', 'https://cdn2.steamgriddb.com/hero_thumb/5416967f58f1726f626753b88ecefd40.jpg', 'https://cdn2.steamgriddb.com/hero/5416967f58f1726f626753b88ecefd40.jpg'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '2024-12-18 05:57:53.69106+00', 'https://cdn2.steamgriddb.com/hero_thumb/104f7cbe857799ba883067a174bc01c1.jpg', 'https://cdn2.steamgriddb.com/hero/104f7cbe857799ba883067a174bc01c1.jpg'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', '2024-12-18 05:58:50.639332+00', 'https://cdn2.steamgriddb.com/hero_thumb/279b369266fbc65a0f271fe465b9e8e0.jpg', 'https://cdn2.steamgriddb.com/hero/279b369266fbc65a0f271fe465b9e8e0.png'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '2024-12-18 06:00:09.811104+00', 'https://cdn2.steamgriddb.com/hero_thumb/915464a6b655320681a2a2557623a88c.jpg', 'https://cdn2.steamgriddb.com/hero/915464a6b655320681a2a2557623a88c.png'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', '2024-12-18 06:00:49.885639+00', 'https://cdn2.steamgriddb.com/hero_thumb/3e851d689e10f4b1b1385ce82cf0cd1f.jpg', 'https://cdn2.steamgriddb.com/hero/3e851d689e10f4b1b1385ce82cf0cd1f.jpg');


--
-- Data for Name: games_logo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."games_logo" ("id_game", "created_at", "thumbnail", "original") VALUES
	('1b696350-e681-4f85-a0f3-814bddffd832', '2024-12-18 06:04:10.230024+00', 'https://cdn2.steamgriddb.com/logo_thumb/510bc22fbbcee5aa688a72fe81a52802.png', 'https://cdn2.steamgriddb.com/logo/510bc22fbbcee5aa688a72fe81a52802.png'),
	('26e1bb94-7a5f-4127-882c-5baf78387932', '2024-12-18 06:06:11.646218+00', 'https://cdn2.steamgriddb.com/logo_thumb/2cb20cf1015104c145ddd098f482005e.png', 'https://cdn2.steamgriddb.com/logo/2cb20cf1015104c145ddd098f482005e.png'),
	('281a84f5-377e-4b35-b1c1-e7152461c3e1', '2024-12-18 06:09:02.585711+00', 'https://cdn2.steamgriddb.com/logo_thumb/edd407e7a5c6cd76b8fc6a7435b7e316.png', 'https://cdn2.steamgriddb.com/logo/edd407e7a5c6cd76b8fc6a7435b7e316.png'),
	('5c54046f-f0eb-4e19-a5a8-d76feab9b244', '2024-12-18 06:11:01.490437+00', 'https://cdn2.steamgriddb.com/logo_thumb/e8afafac24a24dd767b87d9f8a596b0f.png', 'https://cdn2.steamgriddb.com/logo/e8afafac24a24dd767b87d9f8a596b0f.png'),
	('6e6958f7-cd84-47b3-be20-024a41bc85d3', '2024-12-18 06:12:26.122315+00', 'https://cdn2.steamgriddb.com/logo_thumb/f8976d7778c70a12a6ab8d82a3a1e706.png', 'https://cdn2.steamgriddb.com/logo/f8976d7778c70a12a6ab8d82a3a1e706.png'),
	('75c94e45-de09-4596-9dfe-f588b2da71a9', '2024-12-18 06:14:08.203214+00', 'https://cdn2.steamgriddb.com/logo_thumb/fa452b182b73101ac1fd47b220a15231.png', 'https://cdn2.steamgriddb.com/logo/fa452b182b73101ac1fd47b220a15231.png'),
	('8a15b39f-a057-4fe6-babf-f6dd301c5bbb', '2024-12-18 06:15:25.285081+00', 'https://cdn2.steamgriddb.com/logo_thumb/ef1b6b4a07817420f1500c894d273b98.png', 'https://cdn2.steamgriddb.com/logo/ef1b6b4a07817420f1500c894d273b98.png'),
	('97c65b82-cd2a-4f2e-9c3b-8b47698865fa', '2024-12-18 06:17:38.601277+00', 'https://cdn2.steamgriddb.com/logo_thumb/54f83c905d32a810c7a5a2d224e290b4.png', 'https://cdn2.steamgriddb.com/logo/54f83c905d32a810c7a5a2d224e290b4.png'),
	('aba3368c-5504-4205-b6d6-df059665dd7c', '2024-12-18 06:18:51.655671+00', 'https://cdn2.steamgriddb.com/logo_thumb/75eec3e3a4ec4323809ab18c543a27d7.png', 'https://cdn2.steamgriddb.com/logo/75eec3e3a4ec4323809ab18c543a27d7.png'),
	('bef4aedf-ce20-45e4-a3fa-67cfb0a120e6', '2024-12-18 06:21:00.849575+00', 'https://cdn2.steamgriddb.com/logo_thumb/05898ab6c993d67fc345429aa63ebbfe.png', 'https://cdn2.steamgriddb.com/logo/05898ab6c993d67fc345429aa63ebbfe.png'),
	('bf0c0bfb-09f2-4af1-a3e1-234201f5d692', '2024-12-18 06:22:41.888117+00', 'https://cdn2.steamgriddb.com/logo_thumb/5c333c4ffd55c7a3576e6a614d81af82.png', 'https://cdn2.steamgriddb.com/logo/5c333c4ffd55c7a3576e6a614d81af82.png'),
	('c882a6f0-85d1-4333-85fa-41ed54198309', '2024-12-18 06:24:19.819397+00', 'https://cdn2.steamgriddb.com/logo_thumb/e8630344970962450dbedfcd4cc6d718.png', 'https://cdn2.steamgriddb.com/logo/e8630344970962450dbedfcd4cc6d718.png'),
	('cb5a3341-7c0c-40e5-b5c8-f046a820c760', '2024-12-18 06:25:51.749679+00', 'https://cdn2.steamgriddb.com/logo_thumb/713db6add2b5e85a240d2daffd3e9dab.png', 'https://cdn2.steamgriddb.com/logo/713db6add2b5e85a240d2daffd3e9dab.png'),
	('d304a979-c997-4f6d-b342-a32d5dd5929d', '2024-12-18 06:27:51.164051+00', 'https://cdn2.steamgriddb.com/logo_thumb/847aacbddf9f9098bafde14889ab4b36.png', 'https://cdn2.steamgriddb.com/logo/847aacbddf9f9098bafde14889ab4b36.png'),
	('e426b1fe-f692-4dd7-b411-101cfabba94a', '2024-12-18 06:29:01.825234+00', 'https://cdn2.steamgriddb.com/logo_thumb/ddd21fdd3158de79052d4dd683573113.png', 'https://cdn2.steamgriddb.com/logo/ddd21fdd3158de79052d4dd683573113.png');


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
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--



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
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 229, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
