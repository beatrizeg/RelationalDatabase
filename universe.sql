--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    name character varying(19) NOT NULL,
    dummy_id integer NOT NULL,
    finishhh text
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    year integer,
    kms numeric,
    human character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    planet_id integer,
    life boolean,
    isround boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    year integer NOT NULL,
    star_id integer,
    humans boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    galaxy_id integer,
    scientific_name text NOT NULL,
    fancy character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES ('gnoewi', 1, 'ioewngi');
INSERT INTO public.dummy VALUES ('knoiewi', 2, 'nbiie');
INSERT INTO public.dummy VALUES ('kdiowei', 3, 'newi');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Hoiewhg', 1800, 345678, 'no');
INSERT INTO public.galaxy VALUES (2, 'oewing', 1848, 394834, 'yes');
INSERT INTO public.galaxy VALUES (3, 'ewiogw', 1784, 394839, 'yes');
INSERT INTO public.galaxy VALUES (4, 'ioewgh', 3849, 284938, 'no');
INSERT INTO public.galaxy VALUES (5, 'eiohweg', 2984, 1823948, 'no');
INSERT INTO public.galaxy VALUES (6, 'hwqnig', 2849, 1929804, 'no');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (13, 'kksldnio', 1, true, true);
INSERT INTO public.moon VALUES (14, 'klwekng', 3, false, false);
INSERT INTO public.moon VALUES (15, 'klweng', 4, false, false);
INSERT INTO public.moon VALUES (16, 'klsndg', 4, false, true);
INSERT INTO public.moon VALUES (17, 'sdklng', 2, false, false);
INSERT INTO public.moon VALUES (18, 'oiwegu', 4, false, false);
INSERT INTO public.moon VALUES (19, 'qinbn', 4, false, true);
INSERT INTO public.moon VALUES (20, 'bnnbf', 1, false, true);
INSERT INTO public.moon VALUES (21, 'cnsnzb', 2, true, false);
INSERT INTO public.moon VALUES (22, 'qupriue', 4, false, false);
INSERT INTO public.moon VALUES (23, 'queigue', 6, false, true);
INSERT INTO public.moon VALUES (24, 'iewuuwie', 4, true, false);
INSERT INTO public.moon VALUES (25, 'mcnbnv', 6, false, true);
INSERT INTO public.moon VALUES (26, 'nnxmnvn', 2, false, false);
INSERT INTO public.moon VALUES (27, 'nnueii', 5, true, true);
INSERT INTO public.moon VALUES (28, 'iewnie', 5, false, false);
INSERT INTO public.moon VALUES (29, 'qwinbkd', 3, true, true);
INSERT INTO public.moon VALUES (30, 'kewng', 5, false, true);
INSERT INTO public.moon VALUES (31, 'wiieng', 3, false, true);
INSERT INTO public.moon VALUES (32, 'kdskeq', 5, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', 1893, 1, false);
INSERT INTO public.planet VALUES (2, 'tierra', 1928, 2, true);
INSERT INTO public.planet VALUES (3, 'venus', 2948, 3, false);
INSERT INTO public.planet VALUES (4, 'marte', 1939, 5, false);
INSERT INTO public.planet VALUES (5, 'jupiter', 2984, 5, false);
INSERT INTO public.planet VALUES (6, 'saturno', 1938, 4, false);
INSERT INTO public.planet VALUES (7, 'urano', 1938, 6, false);
INSERT INTO public.planet VALUES (8, 'pluto', 1839, 2, true);
INSERT INTO public.planet VALUES (9, 'ngoeng', 1938, 2, false);
INSERT INTO public.planet VALUES (10, 'nekgn', 1938, 4, false);
INSERT INTO public.planet VALUES (11, 'ekngl', 1827, 3, false);
INSERT INTO public.planet VALUES (12, 'kngken', 2984, 1, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'hoieng', 1, 'weingnbja', 'yes');
INSERT INTO public.star VALUES (2, 'ioewngn', 1, 'ionsndg', 'no');
INSERT INTO public.star VALUES (3, 'nbnskng', 2, 'kdngl', 'yes');
INSERT INTO public.star VALUES (4, 'nbkdsnkg', 3, 'nblkds', 'no');
INSERT INTO public.star VALUES (5, 'nsdlkng', 2, 'nlsn', 'yes');
INSERT INTO public.star VALUES (6, 'kklkdsg', 4, 'klsnd', 'yes');


--
-- Name: dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniq UNIQUE (name);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: dummy uniques_dumm; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT uniques_dumm UNIQUE (dummy_id);


--
-- Name: star galaxy_rel; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_rel FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_rel; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_rel FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_rel; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_rel FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

