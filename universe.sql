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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million integer,
    galaxy_type text,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million integer,
    is_spherical boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric(5,2),
    age_in_million integer,
    description text,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million integer,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'aa', NULL);
INSERT INTO public.asteroid VALUES (2, 'bb', NULL);
INSERT INTO public.asteroid VALUES (3, 'cc', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Android', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'aaaaa', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'bbbb', 6, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'cccccc', 7, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'ddddd', 8, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', NULL, 2, NULL);
INSERT INTO public.star VALUES (3, 'star3', NULL, 3, NULL);
INSERT INTO public.star VALUES (4, 'star4', NULL, 4, NULL);
INSERT INTO public.star VALUES (5, 'star5', NULL, 5, NULL);
INSERT INTO public.star VALUES (6, 'star6', NULL, 6, NULL);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: moon uniquename; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniquename UNIQUE (name);


--
-- Name: planet uniqueplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniqueplanet UNIQUE (name);


--
-- Name: star uniquestar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniquestar UNIQUE (name);


--
-- Name: galaxy uniqugalaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniqugalaxy UNIQUE (name);


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

