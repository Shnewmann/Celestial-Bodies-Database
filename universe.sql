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
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    is_spherical boolean,
    size character varying(10),
    galaxy_type_id integer,
    galaxy_types_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    colour character varying(30),
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    landing_success_rate numeric(3,1),
    is_spherical boolean,
    size character varying(10),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    size character varying(10),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    is_spherical boolean,
    size character varying(10),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', true, 5, false, 'Big', NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'G2', true, 5, false, 'Big', NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'G3', true, 5, false, 'Big', NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'G4', true, 5, false, 'Big', NULL, 1);
INSERT INTO public.galaxy VALUES (5, 'G5', true, 5, false, 'Big', NULL, 1);
INSERT INTO public.galaxy VALUES (6, 'G6', true, 5, false, 'Big', NULL, 1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'GalaxyOne', 'BLUE', 'LIT');
INSERT INTO public.galaxy_types VALUES (2, 'GalaxyTwo', 'RED', 'DUST');
INSERT INTO public.galaxy_types VALUES (3, 'GalaxyThree', 'BLUE', 'CHILL');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (2, 'M2', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (3, 'M3', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (4, 'M4', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (5, 'M5', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (6, 'M6', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (7, 'M7', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (8, 'M8', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (9, 'M9', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (10, 'M10', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (11, 'M11', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (12, 'M12', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (13, 'M13', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (14, 'M14', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (15, 'M15', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (16, 'M16', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (17, 'M17', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (18, 'M18', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (19, 'M19', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (20, 'M20', false, 0.9, true, 'Smallest', 1);
INSERT INTO public.moon VALUES (21, 'M21', false, 0.9, true, 'Smallest', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (2, 'P2', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (3, 'P3', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (4, 'P4', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (6, 'P5', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (7, 'P7', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (8, 'P8', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (9, 'P9', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (10, 'P10', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (11, 'P11', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (12, 'P12', true, true, 'Small', 1);
INSERT INTO public.planet VALUES (13, 'P13', true, true, 'Small', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', false, 5, true, 'Medium', 1);
INSERT INTO public.star VALUES (2, 'S2', false, 5, true, 'Medium', 1);
INSERT INTO public.star VALUES (3, 'S3', false, 5, true, 'Medium', 2);
INSERT INTO public.star VALUES (4, 'S4', false, 5, true, 'Medium', 3);
INSERT INTO public.star VALUES (5, 'S5', false, 5, true, 'Medium', 1);
INSERT INTO public.star VALUES (6, 'S6', false, 5, true, 'Medium', 1);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_base_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_base_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

