--
-- PostgreSQL database cluster dump
--

-- Started on 2020-06-14 22:52:18

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION NOBYPASSRLS PASSWORD 'md5244af1e2823d5eaeeffc42c5096d8260';






--
-- Database creation
--

CREATE DATABASE "desafioSefazDB" WITH TEMPLATE = template0 OWNER = postgres;
REVOKE ALL ON DATABASE template1 FROM PUBLIC;
REVOKE ALL ON DATABASE template1 FROM postgres;
GRANT ALL ON DATABASE template1 TO postgres;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


\connect "desafioSefazDB"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.26
-- Dumped by pg_dump version 9.5.5

-- Started on 2020-06-14 22:52:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 174 (class 1259 OID 16414)
-- Name: serialuser; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serialuser
    START WITH 82
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 92000000000
    CACHE 1;


ALTER TABLE serialuser OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 16400)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    login character varying,
    password character varying,
    id bigint DEFAULT nextval('serialuser'::regclass) NOT NULL,
    email character varying,
    dd character varying,
    numero character varying,
    tipo character varying
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 174
-- Name: serialuser; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serialuser', 87, true);


--
-- TOC entry 1992 (class 0 OID 16400)
-- Dependencies: 173
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (login, password, id, email, dd, numero, tipo) FROM stdin;
admin	admin	82	\N	\N	\N	\N
asdafga	admin	83	\N	\N	\N	\N
asdasdaacfa	geeq	87	\N	\N	\N	\N
asdasd54654	123412414	86	\N	\N	\N	\N
admindsadas	adminasdasd	0		\N	\N	\N
admin123123	admin	0	qweqwe@aadas	\N	\N	\N
admin	admin	0	dasdas@asda	\N	\N	\N
\.


--
-- TOC entry 2000 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-06-14 22:52:19

--
-- PostgreSQL database dump complete
--

\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.26
-- Dumped by pg_dump version 9.5.5

-- Started on 2020-06-14 22:52:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1996 (class 1262 OID 12135)
-- Dependencies: 1995
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 2 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2000 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 16393)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    login character varying,
    password character varying
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 1990 (class 0 OID 16393)
-- Dependencies: 174
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (login, password) FROM stdin;
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
teste	teste
admin	admin
casa	casa
ola	ola
\.


--
-- TOC entry 1998 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-06-14 22:52:19

--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.26
-- Dumped by pg_dump version 9.5.5

-- Started on 2020-06-14 22:52:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1989 (class 1262 OID 1)
-- Dependencies: 1988
-- Name: template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- TOC entry 1 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-06-14 22:52:19

--
-- PostgreSQL database dump complete
--

-- Completed on 2020-06-14 22:52:19

--
-- PostgreSQL database cluster dump complete
--

