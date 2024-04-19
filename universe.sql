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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    name character varying(30),
    mass integer NOT NULL,
    radius integer,
    black_holes_id integer NOT NULL
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_holes_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    size_m_lyrs numeric(4,1),
    num_stars integer,
    num_planets integer,
    num_black_holes integer,
    galaxy_id integer NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    atm boolean NOT NULL,
    type text NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer
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
    name character varying(30),
    atm boolean,
    type text NOT NULL,
    planet_id integer NOT NULL,
    star_id integer
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
    name character varying(30),
    diameter_km integer NOT NULL,
    luminosity numeric(4,1),
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_holes_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES ('big', 200, 24, 1);
INSERT INTO public.black_holes VALUES ('bigger', 500, 50, 2);
INSERT INTO public.black_holes VALUES ('biggest', 1000, 300, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky_way', 0.1, 180000, 80000, NULL, 1);
INSERT INTO public.galaxy VALUES ('andromeda', 0.8, 400000, 105000, NULL, 2);
INSERT INTO public.galaxy VALUES ('cigar', 1.2, 600000, 110000, NULL, 3);
INSERT INTO public.galaxy VALUES ('cartwheel', 0.5, 170000, 500, NULL, 4);
INSERT INTO public.galaxy VALUES ('pinwheel', 0.4, 800000, 95000, NULL, 5);
INSERT INTO public.galaxy VALUES ('black eye', 1.5, 220000, 90500, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', false, 'rock', 1, 1);
INSERT INTO public.moon VALUES ('titan', true, 'gas', 2, 5);
INSERT INTO public.moon VALUES ('enceladus', true, 'ice', 3, 5);
INSERT INTO public.moon VALUES ('mimas', false, 'rock', 4, 5);
INSERT INTO public.moon VALUES ('dione', false, 'ice', 5, 5);
INSERT INTO public.moon VALUES ('europa', true, 'ice', 6, 6);
INSERT INTO public.moon VALUES ('io', true, 'gas', 7, 6);
INSERT INTO public.moon VALUES ('callisto', false, 'rock', 8, 6);
INSERT INTO public.moon VALUES ('amalthea', false, 'rock', 9, 6);
INSERT INTO public.moon VALUES ('phobos', false, 'rock', 10, 4);
INSERT INTO public.moon VALUES ('deimos', false, 'rock', 11, 4);
INSERT INTO public.moon VALUES ('titania', false, 'rock', 12, 7);
INSERT INTO public.moon VALUES ('miranda', false, 'gas', 13, 7);
INSERT INTO public.moon VALUES ('oberon', true, 'ice', 14, 7);
INSERT INTO public.moon VALUES ('triton', true, 'ice', 15, 8);
INSERT INTO public.moon VALUES ('thalassa', true, 'ice', 16, 8);
INSERT INTO public.moon VALUES ('nereid', false, 'rock', 17, 8);
INSERT INTO public.moon VALUES ('galatea', false, 'rock', 18, 8);
INSERT INTO public.moon VALUES ('despina', false, 'rock', 19, 8);
INSERT INTO public.moon VALUES ('DF-89', true, 'gas', 20, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', true, 'rock', 1, 1);
INSERT INTO public.planet VALUES ('venus', true, 'rock', 2, 1);
INSERT INTO public.planet VALUES ('earth', true, 'rock', 3, 1);
INSERT INTO public.planet VALUES ('mars', true, 'rock', 4, 1);
INSERT INTO public.planet VALUES ('saturn', true, 'gas', 5, 1);
INSERT INTO public.planet VALUES ('jupiter', true, 'gas', 6, 1);
INSERT INTO public.planet VALUES ('uranus', true, 'ice', 7, 1);
INSERT INTO public.planet VALUES ('neptune', true, 'ice', 8, 1);
INSERT INTO public.planet VALUES ('LHS_2844b', false, 'rock', 9, 2);
INSERT INTO public.planet VALUES ('PSR-B1820', false, 'gas', 10, 3);
INSERT INTO public.planet VALUES ('XE-7', false, 'ice', 11, 6);
INSERT INTO public.planet VALUES ('OS', true, 'gas', 12, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, 1.0, 1, 1);
INSERT INTO public.star VALUES ('XE-2', 20, 45.0, 2, 3);
INSERT INTO public.star VALUES ('WO-032', 10, 20.0, 3, 5);
INSERT INTO public.star VALUES ('alpharetz', 3, 240.0, 4, 2);
INSERT INTO public.star VALUES ('capella', 4, 20.0, 5, 2);
INSERT INTO public.star VALUES ('sirius', 10, 130.0, 6, 5);


--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_holes_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: galaxy name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unq UNIQUE (name);


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

