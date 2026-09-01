--
-- PostgreSQL database dump
--

\restrict Nzbr7Go3DC3vf13DTRgNiF8R1UyibRhgIXFrETkapimyhd5fUtH632iogXqIvon

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO postgres;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO postgres;

--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: game_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_user (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    game_id bigint NOT NULL,
    purchase_price integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.game_user OWNER TO postgres;

--
-- Name: game_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.game_user_id_seq OWNER TO postgres;

--
-- Name: game_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_user_id_seq OWNED BY public.game_user.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    developer character varying(255) NOT NULL,
    genre character varying(255) NOT NULL,
    release_date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    price numeric(8,2) DEFAULT '0'::numeric NOT NULL,
    image_url character varying(255)
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.games_id_seq OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO postgres;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    balance integer DEFAULT 0 NOT NULL,
    is_admin boolean DEFAULT false NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: game_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user ALTER COLUMN id SET DEFAULT nextval('public.game_user_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: game_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game_user (id, user_id, game_id, purchase_price, created_at, updated_at) FROM stdin;
20	4	7	200	2026-09-02 00:05:14	\N
21	4	29	190	2026-09-02 00:05:18	\N
22	4	2	100	2026-09-02 00:05:21	\N
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, title, description, developer, genre, release_date, created_at, updated_at, price, image_url) FROM stdin;
1	Wiedźmin 3: Dziki Gon	You are Geralt of Rivia, mercenary monster slayer.	CD Projekt RED	RPG	2015-05-19	2026-05-25 16:53:20	2026-06-05 11:36:51	100.00	https://cdn2.steamgriddb.com/thumb/4904f82c12cecf6ec070fe77d7e913ce.jpg
2	Cyberpunk 2077	Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.	CD Projekt RED	RPG	2020-12-10	2026-05-25 16:53:20	2026-06-05 11:36:55	100.00	https://cdn2.steamgriddb.com/thumb/f39b781760a403dedaa05587e8889c1a.jpg
3	GTA V	Experience entertainment blockbusters Grand Theft Auto V and Grand Theft Auto Online — now upgraded for a new generation with stunning visuals, faster loading, 3D audio, and more, plus exclusive content for GTA Online players.	Rockstar Games	Akcja	2013-09-17	2026-05-25 16:53:20	2026-06-05 12:42:47	200.00	https://cdn2.steamgriddb.com/thumb/af0a25e27510f77d97634a6bbe653b13.jpg
4	Minecraft	Sandbox Survival, Adventure\r\nSingle-player + Multiplayer	Mojang	Survival	2011-11-18	2026-05-25 16:53:20	2026-06-05 11:37:20	300.00	https://www.minecraft.net/content/dam/minecraftnet/games/minecraft/key-art/Homepage_Discover-our-games_MC-Vanilla-KeyArt_864x864.jpg
7	Call of Duty Moder Warfare 2	Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the iconic Operators of Task Force 141.	Infinity ward	Akcja	2020-09-09	2026-06-05 10:00:25	2026-06-05 12:24:56	200.00	https://cdn2.steamgriddb.com/thumb/5cef43602bc7486da26ba5fbf4483f43.jpg
9	Tetris	Klasyczna gra logiczna z uk?adaniem blok?w.	The Tetris Company	Logiczna	1984-06-06	2026-06-06 15:11:19	2026-06-06 15:11:19	50.00	\N
10	Red Dead Redemption 2	Westernowa przygoda w otwartym ?wiecie.	Rockstar Games	Akcja	2018-10-26	2026-06-06 15:11:19	2026-06-06 15:11:19	220.00	\N
11	Fortnite	Dynamiczna gra battle royale online.	Epic Games	Battle Royale	2017-07-21	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
12	League of Legends	Dru?ynowa gra MOBA z bohaterami.	Riot Games	MOBA	2009-10-27	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
13	Counter-Strike 2	Taktyczna strzelanka dru?ynowa.	Valve	FPS	2023-09-27	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
14	Roblox	Platforma z grami tworzonymi przez spo?eczno??.	Roblox Corporation	Sandbox	2006-09-01	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
15	The Elder Scrolls V: Skyrim	Fabularna gra RPG w ?wiecie fantasy.	Bethesda Game Studios	RPG	2011-11-11	2026-06-06 15:11:19	2026-06-06 15:11:19	140.00	\N
16	Elden Ring	Mroczne RPG akcji w otwartym ?wiecie.	FromSoftware	RPG	2022-02-25	2026-06-06 15:11:19	2026-06-06 15:11:19	250.00	\N
17	Valorant	Taktyczny FPS z agentami i umiej?tno?ciami.	Riot Games	FPS	2020-06-02	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
18	World of Warcraft	Sieciowa gra MMORPG w ?wiecie Azeroth.	Blizzard Entertainment	MMORPG	2004-11-23	2026-06-06 15:11:19	2026-06-06 15:11:19	120.00	\N
19	The Last of Us Part I	Filmowa gra akcji o przetrwaniu.	Naughty Dog	Akcja	2022-09-02	2026-06-06 15:11:19	2026-06-06 15:11:19	230.00	\N
20	God of War Ragnar?k	Przygodowa gra akcji z nordyck? mitologi?.	Santa Monica Studio	Akcja	2022-11-09	2026-06-06 15:11:19	2026-06-06 15:11:19	260.00	\N
21	Call of Duty: Warzone	Strzelanka battle royale z serii Call of Duty.	Infinity Ward	Battle Royale	2020-03-10	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
22	Apex Legends	Battle royale z bohaterami i szybk? akcj?.	Respawn Entertainment	Battle Royale	2019-02-04	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
23	Mario Kart 8 Deluxe	Kolorowe wy?cigi gokart?w z postaciami Nintendo.	Nintendo	Wy?cigi	2017-04-28	2026-06-06 15:11:19	2026-06-06 15:11:19	180.00	\N
24	Overwatch 2	Dru?ynowa strzelanka z bohaterami.	Blizzard Entertainment	FPS	2022-10-04	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
25	Baldur's Gate 3	Rozbudowane RPG fantasy z wyborami fabularnymi.	Larian Studios	RPG	2023-08-03	2026-06-06 15:11:19	2026-06-06 15:12:37	240.00	\N
26	Diablo IV	Mroczne RPG akcji z walk? z demonami.	Blizzard Entertainment	RPG	2023-06-06	2026-06-06 15:11:19	2026-06-06 15:11:19	220.00	\N
27	Dota 2	Strategiczna gra MOBA dla dw?ch dru?yn.	Valve	MOBA	2013-07-09	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
28	PUBG: Battlegrounds	Realistyczna gra battle royale.	Krafton	Battle Royale	2017-12-20	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
29	Assassin's Creed Valhalla	Przygodowa gra akcji w czasach wiking?w.	Ubisoft Montreal	Akcja	2020-11-10	2026-06-06 15:11:19	2026-06-06 15:11:19	190.00	\N
30	Horizon Forbidden West	Przygoda akcji w ?wiecie maszyn.	Guerrilla Games	Akcja	2022-02-18	2026-06-06 15:11:19	2026-06-06 15:11:19	210.00	\N
31	Ghost of Tsushima	Samurajska przygoda w otwartym ?wiecie.	Sucker Punch Productions	Akcja	2020-07-17	2026-06-06 15:11:19	2026-06-06 15:11:19	200.00	\N
32	Hollow Knight	Klimatyczna platformowa gra metroidvania.	Team Cherry	Platformowa	2017-02-24	2026-06-06 15:11:19	2026-06-06 15:11:19	80.00	\N
33	Stardew Valley	Spokojna gra o farmie i ?yciu w miasteczku.	ConcernedApe	Symulacja	2016-02-26	2026-06-06 15:11:19	2026-06-06 15:11:19	70.00	\N
34	Rocket League	Pi?ka no?na z samochodami.	Psyonix	Sportowa	2015-07-07	2026-06-06 15:11:19	2026-06-06 15:11:19	0.00	\N
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2026_05_17_084827_create_games_table	1
5	2026_06_05_113540_add_price_to_games_table	1
6	2026_06_05_113600_add_balance_to_users_table	1
7	2026_06_05_113610_add_image_url_to_games_table	1
8	2026_06_05_113620_create_game_user_table	1
9	2026_09_01_214000_add_updated_at_to_game_user_table	1
10	2026_09_02_003000_add_is_admin_to_users_table	2
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password, remember_token, created_at, updated_at, balance, is_admin) FROM stdin;
4	user1	user1@gmail.com	$2y$12$/8zDRPjEWolFPnuiTJMqx.62Pdwt6kc40b446sucFYzJb1lbAiVqS	\N	2026-05-25 15:02:00	2026-09-01 22:05:20	10	f
6	User 01	user01@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
7	User 02	user02@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
8	User 03	user03@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
9	User 04	user04@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
10	User 05	user05@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
11	User 06	user06@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
12	User 07	user07@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
13	User 08	user08@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
14	User 09	user09@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
15	User 10	user10@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
16	User 11	user11@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
17	User 12	user12@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
18	User 13	user13@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
19	User 14	user14@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
20	User 15	user15@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
21	User 16	user16@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
22	User 17	user17@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
23	User 18	user18@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
24	User 19	user19@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
25	User 20	user20@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
26	User 21	user21@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
27	User 22	user22@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
28	User 23	user23@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
29	User 24	user24@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
30	User 25	user25@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
31	User 26	user26@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
32	User 27	user27@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
33	User 28	user28@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
34	User 29	user29@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	\N	2026-06-06 15:05:49	2026-06-06 15:05:49	1000	f
3	admin	admin@gamehub.pl	$2y$12$/HwkvZIotAFP2LuBHdWtIOVaq0oPQbgiudjJaujCJUf1lNUzKKnmW	\N	2026-05-25 15:00:57	2026-05-25 15:00:57	0	t
36	User301	user301@wp.pl	$2y$12$PcZDIqHBiv7X34llLnyRleywYeDhEw3EjrG.Hilhu/l4KyMIONnsG	\N	2026-09-01 23:07:58	2026-09-01 23:07:58	0	f
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: game_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_user_id_seq', 22, true);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 35, true);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 36, true);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: game_user game_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_pkey PRIMARY KEY (id);


--
-- Name: game_user game_user_user_id_game_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_user_id_game_id_unique UNIQUE (user_id, game_id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: cache_expiration_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cache_expiration_index ON public.cache USING btree (expiration);


--
-- Name: cache_locks_expiration_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cache_locks_expiration_index ON public.cache_locks USING btree (expiration);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: game_user game_user_game_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_game_id_foreign FOREIGN KEY (game_id) REFERENCES public.games(id) ON DELETE CASCADE;


--
-- Name: game_user game_user_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict Nzbr7Go3DC3vf13DTRgNiF8R1UyibRhgIXFrETkapimyhd5fUtH632iogXqIvon

