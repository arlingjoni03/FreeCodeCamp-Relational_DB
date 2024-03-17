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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    name character varying(30),
    is_spherical boolean,
    galaxy_types integer,
    prova integer NOT NULL,
    unico text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_prova_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_prova_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_prova_seq OWNER TO freecodecamp;

--
-- Name: galaxy_prova_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_prova_seq OWNED BY public.galaxy.prova;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    moon_type text
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    star_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: prova; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.prova (
    prova1 integer,
    prova2 integer,
    prova0 integer,
    prova_id integer NOT NULL,
    name character varying(30),
    unico integer NOT NULL,
    boh text
);


ALTER TABLE public.prova OWNER TO freecodecamp;

--
-- Name: prova_prova_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.prova_prova_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prova_prova_id_seq OWNER TO freecodecamp;

--
-- Name: prova_prova_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.prova_prova_id_seq OWNED BY public.prova.prova_id;


--
-- Name: prova_unico_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.prova_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prova_unico_seq OWNER TO freecodecamp;

--
-- Name: prova_unico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.prova_unico_seq OWNED BY public.prova.unico;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    distance_from_earth numeric(4,1),
    has_life boolean,
    galaxy_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    star_types integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy prova; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN prova SET DEFAULT nextval('public.galaxy_prova_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: prova prova_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.prova ALTER COLUMN prova_id SET DEFAULT nextval('public.prova_prova_id_seq'::regclass);


--
-- Name: prova unico; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.prova ALTER COLUMN unico SET DEFAULT nextval('public.prova_unico_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, true, 'Star1', true, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 2, true, 'Star2', true, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 2, true, 'Star3', true, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 2, true, 'Star4', true, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 2, true, 'Star5', true, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 2, true, 'Star6', true, NULL, 6, NULL);
INSERT INTO public.galaxy VALUES (17, 7, true, 'Star7', true, NULL, 7, NULL);
INSERT INTO public.galaxy VALUES (18, NULL, true, 'Star8', NULL, NULL, 8, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, '1', NULL, NULL);
INSERT INTO public.moon VALUES (2, 1, '2', NULL, NULL);
INSERT INTO public.moon VALUES (3, 1, '3', NULL, NULL);
INSERT INTO public.moon VALUES (4, 1, '4', NULL, NULL);
INSERT INTO public.moon VALUES (5, 1, '5', NULL, NULL);
INSERT INTO public.moon VALUES (6, 1, '6', NULL, NULL);
INSERT INTO public.moon VALUES (7, 1, '7', NULL, NULL);
INSERT INTO public.moon VALUES (8, 1, '8', NULL, NULL);
INSERT INTO public.moon VALUES (9, 1, '9', NULL, NULL);
INSERT INTO public.moon VALUES (10, 1, '10', NULL, NULL);
INSERT INTO public.moon VALUES (11, 1, '11', NULL, NULL);
INSERT INTO public.moon VALUES (12, 1, '12', NULL, NULL);
INSERT INTO public.moon VALUES (13, 1, '13', NULL, NULL);
INSERT INTO public.moon VALUES (14, 1, '14', NULL, NULL);
INSERT INTO public.moon VALUES (15, 1, '15', NULL, NULL);
INSERT INTO public.moon VALUES (16, 1, '16', NULL, NULL);
INSERT INTO public.moon VALUES (17, 1, '17', NULL, NULL);
INSERT INTO public.moon VALUES (18, 1, '18', NULL, NULL);
INSERT INTO public.moon VALUES (19, 1, '19', NULL, NULL);
INSERT INTO public.moon VALUES (20, 1, '20', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 1, 'planet1', NULL);
INSERT INTO public.planet VALUES (29, NULL, 1, 'planet2', NULL);
INSERT INTO public.planet VALUES (30, NULL, 1, 'planet3', NULL);
INSERT INTO public.planet VALUES (31, NULL, 1, 'planet4', NULL);
INSERT INTO public.planet VALUES (32, NULL, 1, 'planet5', NULL);
INSERT INTO public.planet VALUES (33, NULL, 1, 'planet6', NULL);
INSERT INTO public.planet VALUES (34, NULL, 1, 'planet7', NULL);
INSERT INTO public.planet VALUES (35, NULL, 1, 'planet8', NULL);
INSERT INTO public.planet VALUES (36, NULL, 1, 'planet9', NULL);
INSERT INTO public.planet VALUES (37, NULL, 1, 'planet10', NULL);
INSERT INTO public.planet VALUES (38, NULL, 1, 'planet11', NULL);
INSERT INTO public.planet VALUES (39, NULL, 1, 'planet12', NULL);
INSERT INTO public.planet VALUES (40, NULL, 1, 'planet13', NULL);
INSERT INTO public.planet VALUES (41, NULL, 1, 'planet14', NULL);
INSERT INTO public.planet VALUES (42, NULL, 1, 'planet15', NULL);
INSERT INTO public.planet VALUES (43, NULL, 1, 'planet16', NULL);
INSERT INTO public.planet VALUES (44, NULL, 1, 'planet17', NULL);
INSERT INTO public.planet VALUES (45, NULL, 1, 'planet18', NULL);
INSERT INTO public.planet VALUES (46, NULL, 1, 'planet19', NULL);
INSERT INTO public.planet VALUES (47, NULL, 1, 'planet20', NULL);


--
-- Data for Name: prova; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.prova VALUES (NULL, NULL, 1, 1, NULL, 1, NULL);
INSERT INTO public.prova VALUES (1, NULL, NULL, 2, NULL, 2, NULL);
INSERT INTO public.prova VALUES (NULL, 1, NULL, 3, NULL, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, 1, 'Star1', NULL, NULL);
INSERT INTO public.star VALUES (2, NULL, NULL, 2, 'Star2', NULL, NULL);
INSERT INTO public.star VALUES (3, NULL, NULL, 3, 'Star3', NULL, NULL);
INSERT INTO public.star VALUES (4, NULL, NULL, 4, 'Star4', NULL, NULL);
INSERT INTO public.star VALUES (5, NULL, NULL, 5, 'Star5', NULL, NULL);
INSERT INTO public.star VALUES (6, NULL, NULL, 6, 'Star6', NULL, NULL);
INSERT INTO public.star VALUES (40, NULL, NULL, 18, 'Star7', NULL, NULL);
INSERT INTO public.star VALUES (44, NULL, NULL, 1, 'Star9', NULL, NULL);
INSERT INTO public.star VALUES (45, NULL, NULL, 1, 'Star10', NULL, NULL);
INSERT INTO public.star VALUES (46, NULL, NULL, 1, 'Star11', NULL, NULL);
INSERT INTO public.star VALUES (47, NULL, NULL, 1, 'Star12', NULL, NULL);
INSERT INTO public.star VALUES (48, NULL, NULL, 1, 'Star13', NULL, NULL);
INSERT INTO public.star VALUES (49, NULL, NULL, 1, 'Star14', NULL, NULL);
INSERT INTO public.star VALUES (50, NULL, NULL, 1, 'Star15', NULL, NULL);
INSERT INTO public.star VALUES (51, NULL, NULL, 1, 'Star16', NULL, NULL);
INSERT INTO public.star VALUES (52, NULL, NULL, 1, 'Star17', NULL, NULL);
INSERT INTO public.star VALUES (53, NULL, NULL, 1, 'Star18', NULL, NULL);
INSERT INTO public.star VALUES (54, NULL, NULL, 1, 'Star19', NULL, NULL);
INSERT INTO public.star VALUES (55, NULL, NULL, 1, 'Star20', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 18, true);


--
-- Name: galaxy_prova_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_prova_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 47, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 27, true);


--
-- Name: prova_prova_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.prova_prova_id_seq', 3, true);


--
-- Name: prova_unico_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.prova_unico_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 55, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unico_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unico_key UNIQUE (unico);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: prova prova_boh_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.prova
    ADD CONSTRAINT prova_boh_key UNIQUE (boh);


--
-- Name: prova prova_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.prova
    ADD CONSTRAINT prova_pkey PRIMARY KEY (prova_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

