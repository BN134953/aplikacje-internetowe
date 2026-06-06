--
-- PostgreSQL database dump
--

\restrict oC9fMWQI5XslW4lbzlU2MiuKbWDs1P3aqTKMiF5kngh5sDEtR1xwsLokW9UN6Qv

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.3

-- Started on 2026-06-06 17:14:59

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
-- TOC entry 224 (class 1259 OID 16758)
-- Name: game_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_user (
    id integer NOT NULL,
    user_id integer,
    game_id integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    purchase_price integer DEFAULT 0
);


ALTER TABLE public.game_user OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16757)
-- Name: game_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.game_user_id_seq OWNER TO postgres;

--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 223
-- Name: game_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_user_id_seq OWNED BY public.game_user.id;


--
-- TOC entry 222 (class 1259 OID 16742)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    developer character varying(255) NOT NULL,
    genre character varying(100) NOT NULL,
    release_date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    description text,
    image_url character varying(1000),
    price numeric(8,2) DEFAULT '0'::numeric NOT NULL
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16741)
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.games_id_seq OWNER TO postgres;

--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 221
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- TOC entry 226 (class 1259 OID 16780)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16779)
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
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 225
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 220 (class 1259 OID 16724)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    balance integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16723)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4879 (class 2604 OID 16761)
-- Name: game_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user ALTER COLUMN id SET DEFAULT nextval('public.game_user_id_seq'::regclass);


--
-- TOC entry 4875 (class 2604 OID 16745)
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- TOC entry 4882 (class 2604 OID 16783)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 4871 (class 2604 OID 16727)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 5049 (class 0 OID 16758)
-- Dependencies: 224
-- Data for Name: game_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game_user (id, user_id, game_id, created_at, purchase_price) FROM stdin;
\.


--
-- TOC entry 5047 (class 0 OID 16742)
-- Dependencies: 222
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, title, developer, genre, release_date, created_at, updated_at, description, image_url, price) FROM stdin;
13	Counter-Strike 2	Valve	FPS	2023-09-27	2026-06-06 15:11:19	2026-06-06 15:11:19	Taktyczna strzelanka dru?ynowa.	\N	0.00
14	Roblox	Roblox Corporation	Sandbox	2006-09-01	2026-06-06 15:11:19	2026-06-06 15:11:19	Platforma z grami tworzonymi przez spo?eczno??.	\N	0.00
15	The Elder Scrolls V: Skyrim	Bethesda Game Studios	RPG	2011-11-11	2026-06-06 15:11:19	2026-06-06 15:11:19	Fabularna gra RPG w ?wiecie fantasy.	\N	140.00
16	Elden Ring	FromSoftware	RPG	2022-02-25	2026-06-06 15:11:19	2026-06-06 15:11:19	Mroczne RPG akcji w otwartym ?wiecie.	\N	250.00
17	Valorant	Riot Games	FPS	2020-06-02	2026-06-06 15:11:19	2026-06-06 15:11:19	Taktyczny FPS z agentami i umiej?tno?ciami.	\N	0.00
18	World of Warcraft	Blizzard Entertainment	MMORPG	2004-11-23	2026-06-06 15:11:19	2026-06-06 15:11:19	Sieciowa gra MMORPG w ?wiecie Azeroth.	\N	120.00
19	The Last of Us Part I	Naughty Dog	Akcja	2022-09-02	2026-06-06 15:11:19	2026-06-06 15:11:19	Filmowa gra akcji o przetrwaniu.	\N	230.00
20	God of War Ragnar?k	Santa Monica Studio	Akcja	2022-11-09	2026-06-06 15:11:19	2026-06-06 15:11:19	Przygodowa gra akcji z nordyck? mitologi?.	\N	260.00
1	Wiedźmin 3: Dziki Gon	CD Projekt RED	RPG	2015-05-19	2026-05-25 16:53:19.896639	2026-06-05 11:36:51	You are Geralt of Rivia, mercenary monster slayer.	https://cdn2.steamgriddb.com/thumb/4904f82c12cecf6ec070fe77d7e913ce.jpg	100.00
2	Cyberpunk 2077	CD Projekt RED	RPG	2020-12-10	2026-05-25 16:53:19.896639	2026-06-05 11:36:55	Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.	https://cdn2.steamgriddb.com/thumb/f39b781760a403dedaa05587e8889c1a.jpg	100.00
21	Call of Duty: Warzone	Infinity Ward	Battle Royale	2020-03-10	2026-06-06 15:11:19	2026-06-06 15:11:19	Strzelanka battle royale z serii Call of Duty.	\N	0.00
4	Minecraft	Mojang	Survival	2011-11-18	2026-05-25 16:53:19.896639	2026-06-05 11:37:20	Sandbox Survival, Adventure\r\nSingle-player + Multiplayer	https://www.minecraft.net/content/dam/minecraftnet/games/minecraft/key-art/Homepage_Discover-our-games_MC-Vanilla-KeyArt_864x864.jpg	300.00
7	Call of Duty Moder Warfare 2	Infinity ward	Akcja	2020-09-09	2026-06-05 10:00:25	2026-06-05 12:24:56	Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the iconic Operators of Task Force 141.	https://cdn2.steamgriddb.com/thumb/5cef43602bc7486da26ba5fbf4483f43.jpg	200.00
22	Apex Legends	Respawn Entertainment	Battle Royale	2019-02-04	2026-06-06 15:11:19	2026-06-06 15:11:19	Battle royale z bohaterami i szybk? akcj?.	\N	0.00
23	Mario Kart 8 Deluxe	Nintendo	Wy?cigi	2017-04-28	2026-06-06 15:11:19	2026-06-06 15:11:19	Kolorowe wy?cigi gokart?w z postaciami Nintendo.	\N	180.00
24	Overwatch 2	Blizzard Entertainment	FPS	2022-10-04	2026-06-06 15:11:19	2026-06-06 15:11:19	Dru?ynowa strzelanka z bohaterami.	\N	0.00
26	Diablo IV	Blizzard Entertainment	RPG	2023-06-06	2026-06-06 15:11:19	2026-06-06 15:11:19	Mroczne RPG akcji z walk? z demonami.	\N	220.00
3	GTA V	Rockstar Games	Akcja	2013-09-17	2026-05-25 16:53:19.896639	2026-06-05 12:42:47	Experience entertainment blockbusters Grand Theft Auto V and Grand Theft Auto Online — now upgraded for a new generation with stunning visuals, faster loading, 3D audio, and more, plus exclusive content for GTA Online players.	https://cdn2.steamgriddb.com/thumb/af0a25e27510f77d97634a6bbe653b13.jpg	200.00
9	Tetris	The Tetris Company	Logiczna	1984-06-06	2026-06-06 15:11:19	2026-06-06 15:11:19	Klasyczna gra logiczna z uk?adaniem blok?w.	\N	50.00
10	Red Dead Redemption 2	Rockstar Games	Akcja	2018-10-26	2026-06-06 15:11:19	2026-06-06 15:11:19	Westernowa przygoda w otwartym ?wiecie.	\N	220.00
11	Fortnite	Epic Games	Battle Royale	2017-07-21	2026-06-06 15:11:19	2026-06-06 15:11:19	Dynamiczna gra battle royale online.	\N	0.00
12	League of Legends	Riot Games	MOBA	2009-10-27	2026-06-06 15:11:19	2026-06-06 15:11:19	Dru?ynowa gra MOBA z bohaterami.	\N	0.00
27	Dota 2	Valve	MOBA	2013-07-09	2026-06-06 15:11:19	2026-06-06 15:11:19	Strategiczna gra MOBA dla dw?ch dru?yn.	\N	0.00
28	PUBG: Battlegrounds	Krafton	Battle Royale	2017-12-20	2026-06-06 15:11:19	2026-06-06 15:11:19	Realistyczna gra battle royale.	\N	0.00
29	Assassin's Creed Valhalla	Ubisoft Montreal	Akcja	2020-11-10	2026-06-06 15:11:19	2026-06-06 15:11:19	Przygodowa gra akcji w czasach wiking?w.	\N	190.00
30	Horizon Forbidden West	Guerrilla Games	Akcja	2022-02-18	2026-06-06 15:11:19	2026-06-06 15:11:19	Przygoda akcji w ?wiecie maszyn.	\N	210.00
31	Ghost of Tsushima	Sucker Punch Productions	Akcja	2020-07-17	2026-06-06 15:11:19	2026-06-06 15:11:19	Samurajska przygoda w otwartym ?wiecie.	\N	200.00
32	Hollow Knight	Team Cherry	Platformowa	2017-02-24	2026-06-06 15:11:19	2026-06-06 15:11:19	Klimatyczna platformowa gra metroidvania.	\N	80.00
33	Stardew Valley	ConcernedApe	Symulacja	2016-02-26	2026-06-06 15:11:19	2026-06-06 15:11:19	Spokojna gra o farmie i ?yciu w miasteczku.	\N	70.00
34	Rocket League	Psyonix	Sportowa	2015-07-07	2026-06-06 15:11:19	2026-06-06 15:11:19	Pi?ka no?na z samochodami.	\N	0.00
25	Baldur's Gate 3	Larian Studios	RPG	2023-08-03	2026-06-06 15:11:19	2026-06-06 15:12:37	Rozbudowane RPG fantasy z wyborami fabularnymi.	\N	240.00
\.


--
-- TOC entry 5051 (class 0 OID 16780)
-- Dependencies: 226
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2026_06_05_113540_add_price_to_games_table	1
\.


--
-- TOC entry 5045 (class 0 OID 16724)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password, balance, created_at, updated_at) FROM stdin;
3	admin	admin@gamehub.pl	$2y$12$/HwkvZIotAFP2LuBHdWtIOVaq0oPQbgiudjJaujCJUf1lNUzKKnmW	0	2026-05-25 15:00:57	2026-05-25 15:00:57
4	user1	user1@gmail.com	$2y$12$/8zDRPjEWolFPnuiTJMqx.62Pdwt6kc40b446sucFYzJb1lbAiVqS	300	2026-05-25 15:02:00	2026-06-05 12:43:20
6	User 01	user01@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
7	User 02	user02@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
8	User 03	user03@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
9	User 04	user04@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
10	User 05	user05@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
11	User 06	user06@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
12	User 07	user07@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
13	User 08	user08@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
14	User 09	user09@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
15	User 10	user10@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
16	User 11	user11@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
17	User 12	user12@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
18	User 13	user13@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
19	User 14	user14@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
20	User 15	user15@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
21	User 16	user16@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
22	User 17	user17@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
23	User 18	user18@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
24	User 19	user19@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
25	User 20	user20@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
26	User 21	user21@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
27	User 22	user22@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
28	User 23	user23@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
29	User 24	user24@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
30	User 25	user25@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
31	User 26	user26@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
32	User 27	user27@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
33	User 28	user28@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
34	User 29	user29@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
35	User 30	user30@gamehub.pl	$2y$12$PyC5cNqHDAtvC.6woqWT.eEb.TuixI7gqAGXwlsNgUe7ql1J7uyPW	1000	2026-06-06 15:05:49	2026-06-06 15:05:49
\.


--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 223
-- Name: game_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_user_id_seq', 18, true);


--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 221
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 34, true);


--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 225
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);


--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 35, true);


--
-- TOC entry 4890 (class 2606 OID 16765)
-- Name: game_user game_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_pkey PRIMARY KEY (id);


--
-- TOC entry 4892 (class 2606 OID 16767)
-- Name: game_user game_user_user_id_game_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_user_id_game_id_key UNIQUE (user_id, game_id);


--
-- TOC entry 4888 (class 2606 OID 16756)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- TOC entry 4894 (class 2606 OID 16788)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4884 (class 2606 OID 16740)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4886 (class 2606 OID 16738)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4895 (class 2606 OID 16773)
-- Name: game_user game_user_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(id) ON DELETE CASCADE;


--
-- TOC entry 4896 (class 2606 OID 16768)
-- Name: game_user game_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2026-06-06 17:14:59

--
-- PostgreSQL database dump complete
--

\unrestrict oC9fMWQI5XslW4lbzlU2MiuKbWDs1P3aqTKMiF5kngh5sDEtR1xwsLokW9UN6Qv

