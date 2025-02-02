--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1738456227986', 1, 134);
INSERT INTO public.users VALUES (1, 'user_1738456227987', 1, 565);
INSERT INTO public.users VALUES (18, 'user_1738457258539', 2, 80);
INSERT INTO public.users VALUES (17, 'user_1738457258540', 5, 153);
INSERT INTO public.users VALUES (5, 'user_1738456306274', 1, 248);
INSERT INTO public.users VALUES (4, 'user_1738456306275', 1, 451);
INSERT INTO public.users VALUES (3, 'J', 1, 18);
INSERT INTO public.users VALUES (38, 'user_1738457757887', 2, 221);
INSERT INTO public.users VALUES (7, 'user_1738456428460', 1, 782);
INSERT INTO public.users VALUES (20, 'user_1738457362142', 2, 332);
INSERT INTO public.users VALUES (6, 'user_1738456428461', 1, 880);
INSERT INTO public.users VALUES (19, 'user_1738457362143', 5, 145);
INSERT INTO public.users VALUES (9, 'user_1738456522406', 1, 408);
INSERT INTO public.users VALUES (37, 'user_1738457757888', 5, 482);
INSERT INTO public.users VALUES (8, 'user_1738456522407', 1, 849);
INSERT INTO public.users VALUES (11, 'user_1738456574544', 2, 655);
INSERT INTO public.users VALUES (22, 'user_1738457404008', 2, 174);
INSERT INTO public.users VALUES (10, 'user_1738456574545', 5, 258);
INSERT INTO public.users VALUES (21, 'user_1738457404009', 5, 166);
INSERT INTO public.users VALUES (13, 'user_1738456710497', 2, 91);
INSERT INTO public.users VALUES (40, 'user_1738457802409', 2, 126);
INSERT INTO public.users VALUES (12, 'user_1738456710498', 5, 26);
INSERT INTO public.users VALUES (16, 'user_1738456766154', 2, 530);
INSERT INTO public.users VALUES (24, 'user_1738457437205', 2, 116);
INSERT INTO public.users VALUES (39, 'user_1738457802410', 5, 51);
INSERT INTO public.users VALUES (15, 'user_1738456766155', 5, 100);
INSERT INTO public.users VALUES (14, 'Giwell', 2, NULL);
INSERT INTO public.users VALUES (23, 'user_1738457437206', 5, 132);
INSERT INTO public.users VALUES (26, 'user_1738457493977', 2, 768);
INSERT INTO public.users VALUES (25, 'user_1738457493978', 5, 21);
INSERT INTO public.users VALUES (42, 'user_1738457936271', 2, 8);
INSERT INTO public.users VALUES (28, 'user_1738457505697', 2, 71);
INSERT INTO public.users VALUES (41, 'user_1738457936272', 5, 24);
INSERT INTO public.users VALUES (27, 'user_1738457505698', 5, 214);
INSERT INTO public.users VALUES (30, 'user_1738457559103', 2, 720);
INSERT INTO public.users VALUES (44, 'user_1738457944211', 2, 97);
INSERT INTO public.users VALUES (29, 'user_1738457559104', 5, 129);
INSERT INTO public.users VALUES (32, 'user_1738457617080', 2, 679);
INSERT INTO public.users VALUES (43, 'user_1738457944212', 5, 83);
INSERT INTO public.users VALUES (31, 'user_1738457617081', 5, 233);
INSERT INTO public.users VALUES (34, 'user_1738457645831', 2, 401);
INSERT INTO public.users VALUES (46, 'user_1738457948502', 2, 43);
INSERT INTO public.users VALUES (33, 'user_1738457645832', 5, 161);
INSERT INTO public.users VALUES (36, 'user_1738457649054', 2, 486);
INSERT INTO public.users VALUES (45, 'user_1738457948503', 5, 89);
INSERT INTO public.users VALUES (35, 'user_1738457649055', 5, 281);
INSERT INTO public.users VALUES (48, 'user_1738457996468', 2, 550);
INSERT INTO public.users VALUES (47, 'user_1738457996469', 5, 408);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 48, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--
