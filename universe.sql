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
-- Name: distance_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_from_earth (
    distance_in_ly numeric(10,3),
    is_reachable boolean,
    galaxy_id integer NOT NULL,
    distance_from_earth_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.distance_from_earth OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_from_earth_distance_from_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_from_earth_distance_from_earth_id_seq OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_from_earth_distance_from_earth_id_seq OWNED BY public.distance_from_earth.distance_from_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    radius integer NOT NULL,
    billions_of_stars integer,
    date_discovered date
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
    moon_id integer NOT NULL,
    name character varying(20),
    is_spherical boolean,
    radius_in_km integer,
    planet_id integer NOT NULL
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
    name character varying(20),
    has_life boolean,
    planet_type text,
    star_id integer NOT NULL
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
    name character varying(20),
    age_in_billions integer,
    description text,
    galaxy_id integer NOT NULL
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
-- Name: distance_from_earth distance_from_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth ALTER COLUMN distance_from_earth_id SET DEFAULT nextval('public.distance_from_earth_distance_from_earth_id_seq'::regclass);


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
-- Data for Name: distance_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance_from_earth VALUES (2537.000, false, 2, 1, 'Andromeda');
INSERT INTO public.distance_from_earth VALUES (1045.000, false, 3, 2, 'IC 1101');
INSERT INTO public.distance_from_earth VALUES (12.000, false, 4, 3, 'Messier 81');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 52850, 400, '1610-01-01');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 1000, '1612-01-01');
INSERT INTO public.galaxy VALUES (3, 'IC 1101', 19569, 100000, '1970-06-19');
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 45000, 250, '1774-12-31');
INSERT INTO public.galaxy VALUES (5, 'Messier 63', 49000, 400, '1779-06-14');
INSERT INTO public.galaxy VALUES (6, 'Messier 104', 25000, 100, '1781-01-01');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mimas', true, 198, 2);
INSERT INTO public.moon VALUES (2, 'Enceladus', true, 252, 2);
INSERT INTO public.moon VALUES (3, 'Tethys', true, 531, 2);
INSERT INTO public.moon VALUES (4, 'Dione', true, 561, 2);
INSERT INTO public.moon VALUES (5, 'Rhea', true, 763, 2);
INSERT INTO public.moon VALUES (6, 'Hyperion', false, 135, 2);
INSERT INTO public.moon VALUES (7, 'Epimetheus', false, 58, 2);
INSERT INTO public.moon VALUES (16, 'Europa', true, 1560, 4);
INSERT INTO public.moon VALUES (17, 'Io', true, 1821, 4);
INSERT INTO public.moon VALUES (18, 'Ganymede', true, 2634, 4);
INSERT INTO public.moon VALUES (19, 'Callisto', true, 2410, 4);
INSERT INTO public.moon VALUES (20, 'Amalthea', false, 83, 4);
INSERT INTO public.moon VALUES (21, 'Adrastea', false, 8, 4);
INSERT INTO public.moon VALUES (22, 'Valetudo', false, 1, 4);
INSERT INTO public.moon VALUES (23, 'Thebe', false, 49, 4);
INSERT INTO public.moon VALUES (24, 'Triton', true, 1353, 3);
INSERT INTO public.moon VALUES (25, 'Thalassa', false, 41, 3);
INSERT INTO public.moon VALUES (26, 'Hippocamp', false, 9, 3);
INSERT INTO public.moon VALUES (27, 'Nereid', false, 170, 3);
INSERT INTO public.moon VALUES (28, 'Galatea', false, 87, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', false, 'Rocky Planet', 1);
INSERT INTO public.planet VALUES (2, 'Saturn', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (3, 'Neptune', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (5, 'Mercury', false, 'Terrestrial Planet', 1);
INSERT INTO public.planet VALUES (6, 'Venus', false, 'Terrestrial Planet', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (8, 'Kepler-90 H', false, 'Gas Giant', 3);
INSERT INTO public.planet VALUES (9, 'Kepler-90 G', false, 'Super Puff', 3);
INSERT INTO public.planet VALUES (10, 'Kepler-90 F', false, 'Gas Giant', 3);
INSERT INTO public.planet VALUES (11, 'Kepler-90 E', false, 'Ice Giant', 3);
INSERT INTO public.planet VALUES (12, 'Kepler-90 D', false, 'Ice Giant', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4603, 'The Sun is at the center of the solar system', 1);
INSERT INTO public.star VALUES (2, 'Vega', 1, 'Vega is the brightest star in the northern constellation of Lyra', 1);
INSERT INTO public.star VALUES (3, 'Kepler-90', 2, 'Kepler-90 is a star that is approximately 120% the mass and radius of the Sun', 1);
INSERT INTO public.star VALUES (4, 'Alpheratz', 0, 'Alpheratz is the brightest mercury-magnese star in the sky', 2);
INSERT INTO public.star VALUES (5, 'Mirach', NULL, 'Mirach is used by stargazers to find the Andromeda Galaxy in the night sky', 2);
INSERT INTO public.star VALUES (6, 'Almach', NULL, 'Almach is a giant bright star appearing orange in color', 2);


--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_from_earth_distance_from_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: distance_from_earth distance_from_earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_name_key UNIQUE (name);


--
-- Name: distance_from_earth distance_from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_pkey PRIMARY KEY (distance_from_earth_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_namee; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_namee UNIQUE (name);


--
-- Name: planet unique_nameee; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_nameee UNIQUE (name);


--
-- Name: moon unique_nameeee; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_nameeee UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: distance_from_earth fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

 
