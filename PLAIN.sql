--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-08-01 13:12:44

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

--
-- TOC entry 2 (class 3079 OID 445171)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 5857 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 232 (class 1259 OID 446341)
-- Name: geobookmark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geobookmark (
    id integer NOT NULL,
    usr_login text NOT NULL,
    bname text NOT NULL,
    bmap text NOT NULL,
    bparams text NOT NULL
);


ALTER TABLE public.geobookmark OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 446340)
-- Name: geobookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.geobookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.geobookmark_id_seq OWNER TO postgres;

--
-- TOC entry 5858 (class 0 OID 0)
-- Dependencies: 231
-- Name: geobookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.geobookmark_id_seq OWNED BY public.geobookmark.id;


--
-- TOC entry 222 (class 1259 OID 446271)
-- Name: jacl2_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jacl2_group (
    id_aclgrp character varying(60) NOT NULL,
    name character varying(150) DEFAULT ''::character varying NOT NULL,
    grouptype smallint NOT NULL,
    ownerlogin character varying(50)
);


ALTER TABLE public.jacl2_group OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 446304)
-- Name: jacl2_rights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jacl2_rights (
    id_aclsbj character varying(255) NOT NULL,
    id_aclgrp character varying(60) NOT NULL,
    id_aclres character varying(100) DEFAULT '-'::character varying NOT NULL,
    canceled smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.jacl2_rights OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 446282)
-- Name: jacl2_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jacl2_subject (
    id_aclsbj character varying(100) NOT NULL,
    label_key character varying(100) DEFAULT NULL::character varying,
    id_aclsbjgrp character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.jacl2_subject OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 446277)
-- Name: jacl2_subject_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jacl2_subject_group (
    id_aclsbjgrp character varying(50) NOT NULL,
    label_key character varying(60) NOT NULL
);


ALTER TABLE public.jacl2_subject_group OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 446294)
-- Name: jacl2_user_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jacl2_user_group (
    login character varying(50) NOT NULL,
    id_aclgrp character varying(60) NOT NULL
);


ALTER TABLE public.jacl2_user_group OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 446254)
-- Name: jlx_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jlx_user (
    usr_login character varying(255) NOT NULL,
    usr_email character varying(255) NOT NULL,
    usr_password character varying(120) DEFAULT NULL::character varying,
    firstname character varying(100) DEFAULT NULL::character varying,
    lastname character varying(100) DEFAULT NULL::character varying,
    organization character varying(100) DEFAULT NULL::character varying,
    phonenumber character varying(20) DEFAULT NULL::character varying,
    street character varying(150) DEFAULT NULL::character varying,
    postcode character varying(10) DEFAULT NULL::character varying,
    city character varying(150) DEFAULT NULL::character varying,
    country character varying(100) DEFAULT NULL::character varying,
    comment text,
    status integer,
    keyactivate character varying(50) DEFAULT NULL::character varying,
    request_date timestamp without time zone,
    create_date timestamp without time zone
);


ALTER TABLE public.jlx_user OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 446332)
-- Name: log_counter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_counter (
    id integer NOT NULL,
    key character varying(100) NOT NULL,
    counter integer,
    repository character varying,
    project character varying
);


ALTER TABLE public.log_counter OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 446331)
-- Name: log_counter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_counter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_counter_id_seq OWNER TO postgres;

--
-- TOC entry 5859 (class 0 OID 0)
-- Dependencies: 229
-- Name: log_counter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_counter_id_seq OWNED BY public.log_counter.id;


--
-- TOC entry 228 (class 1259 OID 446322)
-- Name: log_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_detail (
    id integer NOT NULL,
    log_key character varying(100) NOT NULL,
    log_timestamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    log_user character varying(100),
    log_content text,
    log_repository character varying(100),
    log_project character varying(100),
    log_ip character varying(40)
);


ALTER TABLE public.log_detail OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 446321)
-- Name: log_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5860 (class 0 OID 0)
-- Dependencies: 227
-- Name: log_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_detail_id_seq OWNED BY public.log_detail.id;


--
-- TOC entry 5664 (class 2604 OID 446344)
-- Name: geobookmark id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geobookmark ALTER COLUMN id SET DEFAULT nextval('public.geobookmark_id_seq'::regclass);


--
-- TOC entry 5663 (class 2604 OID 446335)
-- Name: log_counter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_counter ALTER COLUMN id SET DEFAULT nextval('public.log_counter_id_seq'::regclass);


--
-- TOC entry 5661 (class 2604 OID 446325)
-- Name: log_detail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_detail ALTER COLUMN id SET DEFAULT nextval('public.log_detail_id_seq'::regclass);


--
-- TOC entry 5851 (class 0 OID 446341)
-- Dependencies: 232
-- Data for Name: geobookmark; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geobookmark (id, usr_login, bname, bmap, bparams) FROM stdin;
\.


--
-- TOC entry 5841 (class 0 OID 446271)
-- Dependencies: 222
-- Data for Name: jacl2_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jacl2_group (id_aclgrp, name, grouptype, ownerlogin) FROM stdin;
__anonymous	anonymous	0	\N
admins	admins	0	\N
users	users	1	\N
__priv_admin	admin	2	admin
publishers	Publishers	0	\N
__priv_oskardabrowski	oskardabrowski	2	oskardabrowski
\.


--
-- TOC entry 5845 (class 0 OID 446304)
-- Dependencies: 226
-- Data for Name: jacl2_rights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jacl2_rights (id_aclsbj, id_aclgrp, id_aclres, canceled) FROM stdin;
acl.group.modify	admins	-	0
acl.group.create	admins	-	0
acl.group.delete	admins	-	0
acl.group.view	admins	-	0
acl.user.modify	admins	-	0
acl.user.view	admins	-	0
auth.users.list	admins	-	0
auth.users.view	admins	-	0
auth.users.modify	admins	-	0
auth.users.create	admins	-	0
auth.users.delete	admins	-	0
auth.users.change.password	admins	-	0
auth.user.view	admins	-	0
auth.user.modify	admins	-	0
auth.user.change.password	admins	-	0
auth.user.view	users	-	0
auth.user.modify	users	-	0
auth.user.change.password	users	-	0
lizmap.admin.repositories.view	admins	-	0
lizmap.admin.services.view	admins	-	0
lizmap.admin.access	admins	-	0
lizmap.admin.repositories.create	admins	-	0
lizmap.admin.repositories.delete	admins	-	0
lizmap.admin.repositories.update	admins	-	0
lizmap.admin.services.update	admins	-	0
lizmap.admin.project.list.view	admins	-	0
lizmap.admin.home.page.update	admins	-	0
lizmap.admin.theme.view	admins	-	0
lizmap.admin.theme.update	admins	-	0
lizmap.admin.server.information.view	admins	-	0
lizmap.admin.lizmap.log.view	admins	-	0
lizmap.admin.lizmap.log.delete	admins	-	0
lizmap.admin.project.list.view	publishers	-	0
lizmap.admin.server.information.view	publishers	-	0
lizmap.repositories.view	publishers	examples	0
lizmap.tools.displayGetCapabilitiesLinks	admins	examples	0
lizmap.tools.displayGetCapabilitiesLinks	users	examples	0
lizmap.tools.edition.use	publishers	examples	0
lizmap.tools.layer.export	admins	examples	0
lizmap.tools.layer.export	users	examples	0
lizmap.tools.loginFilteredLayers.override	publishers	examples	0
lizmap.repositories.view	admins	examples	0
lizmap.repositories.view	users	examples	0
lizmap.tools.displayGetCapabilitiesLinks	publishers	examples	0
lizmap.tools.edition.use	admins	examples	0
lizmap.tools.edition.use	users	examples	0
lizmap.tools.layer.export	publishers	examples	0
lizmap.tools.loginFilteredLayers.override	admins	examples	0
lizmap.tools.loginFilteredLayers.override	users	examples	0
\.


--
-- TOC entry 5843 (class 0 OID 446282)
-- Dependencies: 224
-- Data for Name: jacl2_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jacl2_subject (id_aclsbj, label_key, id_aclsbjgrp) FROM stdin;
acl.user.view	jacl2db~acl2db.acl.user.view	acl.grp.user.management
acl.user.modify	jacl2db~acl2db.acl.user.modify	acl.grp.user.management
acl.group.modify	jacl2db~acl2db.acl.group.modify	acl.grp.group.management
acl.group.create	jacl2db~acl2db.acl.group.create	acl.grp.group.management
acl.group.delete	jacl2db~acl2db.acl.group.delete	acl.grp.group.management
acl.group.view	jacl2db~acl2db.acl.group.view	acl.grp.group.management
auth.users.list	jelix~auth.acl.users.list	auth.grp.user.management
auth.users.view	jelix~auth.acl.users.view	auth.grp.user.management
auth.users.modify	jelix~auth.acl.users.modify	auth.grp.user.management
auth.users.create	jelix~auth.acl.users.create	auth.grp.user.management
auth.users.delete	jelix~auth.acl.users.delete	auth.grp.user.management
auth.users.change.password	jelix~auth.acl.users.change.password	auth.grp.user.management
auth.user.view	jelix~auth.acl.user.view	auth.grp.user.management
auth.user.modify	jelix~auth.acl.user.modify	auth.grp.user.management
auth.user.change.password	jelix~auth.acl.user.change.password	auth.grp.user.management
lizmap.admin.access	admin~jacl2.lizmap.admin.access	lizmap.admin.grp
lizmap.admin.services.update	admin~jacl2.lizmap.admin.services.update	lizmap.admin.grp
lizmap.admin.repositories.create	admin~jacl2.lizmap.admin.repositories.create	lizmap.admin.grp
lizmap.admin.repositories.update	admin~jacl2.lizmap.admin.repositories.update	lizmap.admin.grp
lizmap.admin.repositories.delete	admin~jacl2.lizmap.admin.repositories.delete	lizmap.admin.grp
lizmap.admin.repositories.view	admin~jacl2.lizmap.admin.repositories.view	lizmap.admin.grp
lizmap.admin.services.view	admin~jacl2.lizmap.admin.services.view	lizmap.admin.grp
lizmap.admin.project.list.view	admin~jacl2.lizmap.admin.project.list.view	lizmap.admin.grp
lizmap.admin.home.page.update	admin~jacl2.lizmap.admin.home.page.update	lizmap.admin.grp
lizmap.admin.theme.update	admin~jacl2.lizmap.admin.theme.update	lizmap.admin.grp
lizmap.admin.theme.view	admin~jacl2.lizmap.admin.theme.view	lizmap.admin.grp
lizmap.admin.server.information.view	admin~jacl2.lizmap.admin.server.information.view	lizmap.admin.grp
lizmap.admin.lizmap.log.view	admin~jacl2.lizmap.admin.lizmap.log.view	lizmap.admin.grp
lizmap.admin.lizmap.log.delete	admin~jacl2.lizmap.admin.lizmap.log.delete	lizmap.admin.grp
lizmap.repositories.view	admin~jacl2.lizmap.repositories.view	lizmap.grp
lizmap.tools.edition.use	admin~jacl2.lizmap.tools.edition.use	lizmap.grp
lizmap.tools.loginFilteredLayers.override	admin~jacl2.lizmap.tools.loginFilteredLayers.override	lizmap.grp
lizmap.tools.displayGetCapabilitiesLinks	admin~jacl2.lizmap.tools.displayGetCapabilitiesLinks	lizmap.grp
lizmap.tools.layer.export	admin~jacl2.lizmap.tools.layer.export	lizmap.grp
\.


--
-- TOC entry 5842 (class 0 OID 446277)
-- Dependencies: 223
-- Data for Name: jacl2_subject_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jacl2_subject_group (id_aclsbjgrp, label_key) FROM stdin;
acl.grp.user.management	jacl2db~acl2db.acl.grp.user.management
acl.grp.group.management	jacl2db~acl2db.acl.grp.group.management
auth.grp.user.management	jelix~auth.acl.grp.user.management
lizmap.admin.grp	admin~jacl2.lizmap.admin.grp
lizmap.grp	admin~jacl2.lizmap.grp
\.


--
-- TOC entry 5844 (class 0 OID 446294)
-- Dependencies: 225
-- Data for Name: jacl2_user_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jacl2_user_group (login, id_aclgrp) FROM stdin;
admin	__priv_admin
admin	admins
oskardabrowski	__priv_oskardabrowski
oskardabrowski	admins
\.


--
-- TOC entry 5840 (class 0 OID 446254)
-- Dependencies: 221
-- Data for Name: jlx_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jlx_user (usr_login, usr_email, usr_password, firstname, lastname, organization, phonenumber, street, postcode, city, country, comment, status, keyactivate, request_date, create_date) FROM stdin;
admin	admin@localhost.localdomain	$2y$10$.zZnoXZFuOLE2GtDi562q.Fc4zvj/6.ghiXSf1NyULNFIunhR/LuK	Oskar	Dąbrowski	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	2024-07-30 08:19:12.670609
oskardabrowski	oskar.dabrowski12890@wp.pl	$2y$10$rhZOrOp0It63dS9kM5AYJeQMSCF9sbCIUA5sD6/Gfi3YcTxV6yifO	\N	Dąbrowski	Enviro	444444444	NoStreet	87-134	GD	Polska	\N	1	\N	\N	2024-07-31 12:27:56.62169
\.


--
-- TOC entry 5849 (class 0 OID 446332)
-- Dependencies: 230
-- Data for Name: log_counter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_counter (id, key, counter, repository, project) FROM stdin;
2	viewmap	1	examples	events
3	viewmap	1	examples	montpellier
4	popup	2	examples	montpellier
1	login	8	\N	\N
\.


--
-- TOC entry 5847 (class 0 OID 446322)
-- Dependencies: 228
-- Data for Name: log_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_detail (id, log_key, log_timestamp, log_user, log_content, log_repository, log_project, log_ip) FROM stdin;
1	login	2024-07-30 08:29:05.190957	admin	\N	\N	\N	\N
2	login	2024-07-30 09:23:54.901424	admin	\N	\N	\N	\N
3	viewmap	2024-07-30 10:29:20.991786	admin	\N	examples	events	\N
4	login	2024-07-30 10:33:55.25763	admin	\N	\N	\N	\N
5	login	2024-07-30 10:34:05.291671	admin	\N	\N	\N	\N
6	viewmap	2024-07-30 10:45:48.098047	admin	\N	examples	montpellier	\N
7	login	2024-07-31 11:16:05.711853	admin	\N	\N	\N	\N
8	login	2024-07-31 19:44:12.295261	admin	\N	\N	\N	\N
9	login	2024-07-31 20:52:29.111176	admin	\N	\N	\N	\N
10	login	2024-08-01 09:50:41.270301	admin	\N	\N	\N	\N
\.


--
-- TOC entry 5645 (class 0 OID 445489)
-- Dependencies: 217
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5861 (class 0 OID 0)
-- Dependencies: 231
-- Name: geobookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.geobookmark_id_seq', 1, false);


--
-- TOC entry 5862 (class 0 OID 0)
-- Dependencies: 229
-- Name: log_counter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_counter_id_seq', 4, true);


--
-- TOC entry 5863 (class 0 OID 0)
-- Dependencies: 227
-- Name: log_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_detail_id_seq', 10, true);


--
-- TOC entry 5685 (class 2606 OID 446348)
-- Name: geobookmark geobookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geobookmark
    ADD CONSTRAINT geobookmark_pkey PRIMARY KEY (id);


--
-- TOC entry 5671 (class 2606 OID 446276)
-- Name: jacl2_group jacl2_group_id_aclgrp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_group
    ADD CONSTRAINT jacl2_group_id_aclgrp_pk PRIMARY KEY (id_aclgrp);


--
-- TOC entry 5679 (class 2606 OID 446310)
-- Name: jacl2_rights jacl2_rights_id_aclsbj_id_aclgrp_id_aclres_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_rights
    ADD CONSTRAINT jacl2_rights_id_aclsbj_id_aclgrp_id_aclres_pk PRIMARY KEY (id_aclsbj, id_aclgrp, id_aclres);


--
-- TOC entry 5673 (class 2606 OID 446281)
-- Name: jacl2_subject_group jacl2_subject_group_id_aclsbjgrp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_subject_group
    ADD CONSTRAINT jacl2_subject_group_id_aclsbjgrp_pk PRIMARY KEY (id_aclsbjgrp);


--
-- TOC entry 5675 (class 2606 OID 446288)
-- Name: jacl2_subject jacl2_subject_id_aclsbj_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_subject
    ADD CONSTRAINT jacl2_subject_id_aclsbj_pk PRIMARY KEY (id_aclsbj);


--
-- TOC entry 5677 (class 2606 OID 446298)
-- Name: jacl2_user_group jacl2_user_group_login_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_user_group
    ADD CONSTRAINT jacl2_user_group_login_pk PRIMARY KEY (login, id_aclgrp);


--
-- TOC entry 5669 (class 2606 OID 446379)
-- Name: jlx_user jlx_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jlx_user
    ADD CONSTRAINT jlx_user_pkey PRIMARY KEY (usr_login);


--
-- TOC entry 5683 (class 2606 OID 446339)
-- Name: log_counter log_counter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_counter
    ADD CONSTRAINT log_counter_pkey PRIMARY KEY (id);


--
-- TOC entry 5681 (class 2606 OID 446330)
-- Name: log_detail log_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_detail
    ADD CONSTRAINT log_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 5686 (class 1259 OID 446400)
-- Name: geobookmark_usr_login_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX geobookmark_usr_login_idx ON public.geobookmark USING btree (usr_login);


--
-- TOC entry 5691 (class 2606 OID 446395)
-- Name: geobookmark geobookmark_usr_login_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geobookmark
    ADD CONSTRAINT geobookmark_usr_login_fkey FOREIGN KEY (usr_login) REFERENCES public.jlx_user(usr_login) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5689 (class 2606 OID 446311)
-- Name: jacl2_rights jacl2_rights_id_aclgrp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_rights
    ADD CONSTRAINT jacl2_rights_id_aclgrp_fkey FOREIGN KEY (id_aclgrp) REFERENCES public.jacl2_group(id_aclgrp);


--
-- TOC entry 5690 (class 2606 OID 446316)
-- Name: jacl2_rights jacl2_rights_id_aclsbj_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_rights
    ADD CONSTRAINT jacl2_rights_id_aclsbj_fkey FOREIGN KEY (id_aclsbj) REFERENCES public.jacl2_subject(id_aclsbj);


--
-- TOC entry 5687 (class 2606 OID 446289)
-- Name: jacl2_subject jacl2_subject_id_aclsbjgrp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_subject
    ADD CONSTRAINT jacl2_subject_id_aclsbjgrp_fkey FOREIGN KEY (id_aclsbjgrp) REFERENCES public.jacl2_subject_group(id_aclsbjgrp);


--
-- TOC entry 5688 (class 2606 OID 446299)
-- Name: jacl2_user_group jacl2_user_group_id_aclgrp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jacl2_user_group
    ADD CONSTRAINT jacl2_user_group_id_aclgrp_fkey FOREIGN KEY (id_aclgrp) REFERENCES public.jacl2_group(id_aclgrp);


-- Completed on 2024-08-01 13:12:44

--
-- PostgreSQL database dump complete
--

