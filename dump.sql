--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: retail_db; Type: DATABASE; Schema: -; Owner: lesya
--

CREATE DATABASE retail_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE retail_db OWNER TO lesya;

\connect retail_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO lesya;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO lesya;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO lesya;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO lesya;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO lesya;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO lesya;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO lesya;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO lesya;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO lesya;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO lesya;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO lesya;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO lesya;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO lesya;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO lesya;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO lesya;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO lesya;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO lesya;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO lesya;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO lesya;

--
-- Name: shops_item; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.shops_item (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.shops_item OWNER TO lesya;

--
-- Name: shops_item_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.shops_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_item_id_seq OWNER TO lesya;

--
-- Name: shops_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.shops_item_id_seq OWNED BY public.shops_item.id;


--
-- Name: shops_order; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.shops_order (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    salesman_id integer NOT NULL,
    shop_id integer NOT NULL
);


ALTER TABLE public.shops_order OWNER TO lesya;

--
-- Name: shops_order_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.shops_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_order_id_seq OWNER TO lesya;

--
-- Name: shops_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.shops_order_id_seq OWNED BY public.shops_order.id;


--
-- Name: shops_orderitem; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.shops_orderitem (
    id integer NOT NULL,
    price numeric(6,2) NOT NULL,
    quantity integer NOT NULL,
    item_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.shops_orderitem OWNER TO lesya;

--
-- Name: shops_orderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.shops_orderitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_orderitem_id_seq OWNER TO lesya;

--
-- Name: shops_orderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.shops_orderitem_id_seq OWNED BY public.shops_orderitem.id;


--
-- Name: shops_salesman; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.shops_salesman (
    id integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    shop_id integer NOT NULL
);


ALTER TABLE public.shops_salesman OWNER TO lesya;

--
-- Name: shops_salesman_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.shops_salesman_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_salesman_id_seq OWNER TO lesya;

--
-- Name: shops_salesman_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.shops_salesman_id_seq OWNED BY public.shops_salesman.id;


--
-- Name: shops_shop; Type: TABLE; Schema: public; Owner: lesya
--

CREATE TABLE public.shops_shop (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.shops_shop OWNER TO lesya;

--
-- Name: shops_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: lesya
--

CREATE SEQUENCE public.shops_shop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_shop_id_seq OWNER TO lesya;

--
-- Name: shops_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lesya
--

ALTER SEQUENCE public.shops_shop_id_seq OWNED BY public.shops_shop.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_item ALTER COLUMN id SET DEFAULT nextval('public.shops_item_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_order ALTER COLUMN id SET DEFAULT nextval('public.shops_order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_orderitem ALTER COLUMN id SET DEFAULT nextval('public.shops_orderitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_salesman ALTER COLUMN id SET DEFAULT nextval('public.shops_salesman_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_shop ALTER COLUMN id SET DEFAULT nextval('public.shops_shop_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add salesman	7	add_salesman
26	Can change salesman	7	change_salesman
27	Can delete salesman	7	delete_salesman
28	Can view salesman	7	view_salesman
29	Can add shop	8	add_shop
30	Can change shop	8	change_shop
31	Can delete shop	8	delete_shop
32	Can view shop	8	view_shop
33	Can add item	9	add_item
34	Can change item	9	change_item
35	Can delete item	9	delete_item
36	Can view item	9	view_item
37	Can add order	10	add_order
38	Can change order	10	change_order
39	Can delete order	10	delete_order
40	Can view order	10	view_order
41	Can add order item	11	add_orderitem
42	Can change order item	11	change_orderitem
43	Can delete order item	11	delete_orderitem
44	Can view order item	11	view_orderitem
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$GCHe8ljerzui$RkHgOrYXET1EVio63FDlt6CODn9YAxfEcfsV2wfzLE4=	2018-10-20 14:58:23.043339+00	t	lesya			lesyaolexs852@gmail.com	t	t	2018-10-20 14:57:41.123349+00
2	pbkdf2_sha256$120000$SC9javqZIio6$X4okig0F++dV/ITuTKwXrMgNnXiEJUERiya9kxU+G24=	2018-10-20 15:09:57.342745+00	f	Olya			olya@xmail.com	f	t	2018-10-20 15:09:12.324409+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	shops	salesman
8	shops	shop
9	shops	item
10	shops	order
11	shops	orderitem
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-10-20 08:45:02.630438+00
2	auth	0001_initial	2018-10-20 08:45:02.746939+00
3	admin	0001_initial	2018-10-20 08:45:02.792405+00
4	admin	0002_logentry_remove_auto_add	2018-10-20 08:45:02.811927+00
5	admin	0003_logentry_add_action_flag_choices	2018-10-20 08:45:02.847146+00
6	contenttypes	0002_remove_content_type_name	2018-10-20 08:45:02.890723+00
7	auth	0002_alter_permission_name_max_length	2018-10-20 08:45:02.910428+00
8	auth	0003_alter_user_email_max_length	2018-10-20 08:45:02.953049+00
9	auth	0004_alter_user_username_opts	2018-10-20 08:45:02.990436+00
10	auth	0005_alter_user_last_login_null	2018-10-20 08:45:03.01483+00
11	auth	0006_require_contenttypes_0002	2018-10-20 08:45:03.022474+00
12	auth	0007_alter_validators_add_error_messages	2018-10-20 08:45:03.042999+00
13	auth	0008_alter_user_username_max_length	2018-10-20 08:45:03.079416+00
14	auth	0009_alter_user_last_name_max_length	2018-10-20 08:45:03.096217+00
15	sessions	0001_initial	2018-10-20 08:45:03.111233+00
16	shops	0001_initial	2018-10-20 09:07:57.506592+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
94vghcamcbtzcft5zbdp9h6zvnplntin	MzIwZDdmMjE3MGE0NzljMjljOWViMGYyZjRkZTcxYjA2ZjgxZTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMTdjMDBiNjQ4NTliMzhkYmZmOGU1ZjQ4NGZhOGRmM2UyMDQzODU1In0=	2018-11-03 15:09:57.345568+00
\.


--
-- Data for Name: shops_item; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.shops_item (id, name) FROM stdin;
1	товар1
\.


--
-- Name: shops_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.shops_item_id_seq', 1, true);


--
-- Data for Name: shops_order; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.shops_order (id, date, salesman_id, shop_id) FROM stdin;
2	2018-10-20 09:47:46.358+00	1	1
3	2018-10-20 14:10:33.831+00	2	1
4	2018-10-20 14:10:56.936+00	3	2
5	2018-10-20 14:11:28.391+00	1	1
6	2018-10-20 14:14:13.729+00	2	1
\.


--
-- Name: shops_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.shops_order_id_seq', 6, true);


--
-- Data for Name: shops_orderitem; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.shops_orderitem (id, price, quantity, item_id, order_id) FROM stdin;
3	35.00	6	1	2
8	35.00	21	1	3
9	35.00	2	1	4
10	35.00	2	1	5
11	35.00	5	1	6
\.


--
-- Name: shops_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.shops_orderitem_id_seq', 11, true);


--
-- Data for Name: shops_salesman; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.shops_salesman (id, first_name, last_name, email, shop_id) FROM stdin;
1	Иванов	Степан	ivanov@xmail.com	1
2	Петров	Виктор	petrov@xmail.com	1
3	Хохлов	Иван	hohlov@xmail.com	2
4	Барабаш	Юрий	bar@xmail.com	2
\.


--
-- Name: shops_salesman_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.shops_salesman_id_seq', 4, true);


--
-- Data for Name: shops_shop; Type: TABLE DATA; Schema: public; Owner: lesya
--

COPY public.shops_shop (id, name) FROM stdin;
1	Shop1
2	Shop2
5	Amazon
\.


--
-- Name: shops_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lesya
--

SELECT pg_catalog.setval('public.shops_shop_id_seq', 2, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shops_item_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_item
    ADD CONSTRAINT shops_item_pkey PRIMARY KEY (id);


--
-- Name: shops_order_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_order
    ADD CONSTRAINT shops_order_pkey PRIMARY KEY (id);


--
-- Name: shops_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_orderitem
    ADD CONSTRAINT shops_orderitem_pkey PRIMARY KEY (id);


--
-- Name: shops_salesman_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_salesman
    ADD CONSTRAINT shops_salesman_pkey PRIMARY KEY (id);


--
-- Name: shops_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_shop
    ADD CONSTRAINT shops_shop_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: shops_order_salesman_id_fc3815b7; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX shops_order_salesman_id_fc3815b7 ON public.shops_order USING btree (salesman_id);


--
-- Name: shops_order_shop_id_fcf59d7f; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX shops_order_shop_id_fcf59d7f ON public.shops_order USING btree (shop_id);


--
-- Name: shops_orderitem_item_id_5de48e72; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX shops_orderitem_item_id_5de48e72 ON public.shops_orderitem USING btree (item_id);


--
-- Name: shops_orderitem_order_id_d23fdad5; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX shops_orderitem_order_id_d23fdad5 ON public.shops_orderitem USING btree (order_id);


--
-- Name: shops_salesman_shop_id_5f456fcc; Type: INDEX; Schema: public; Owner: lesya
--

CREATE INDEX shops_salesman_shop_id_5f456fcc ON public.shops_salesman USING btree (shop_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shops_order_salesman_id_fc3815b7_fk_shops_salesman_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_order
    ADD CONSTRAINT shops_order_salesman_id_fc3815b7_fk_shops_salesman_id FOREIGN KEY (salesman_id) REFERENCES public.shops_salesman(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shops_order_shop_id_fcf59d7f_fk_shops_shop_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_order
    ADD CONSTRAINT shops_order_shop_id_fcf59d7f_fk_shops_shop_id FOREIGN KEY (shop_id) REFERENCES public.shops_shop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shops_orderitem_item_id_5de48e72_fk_shops_item_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_orderitem
    ADD CONSTRAINT shops_orderitem_item_id_5de48e72_fk_shops_item_id FOREIGN KEY (item_id) REFERENCES public.shops_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shops_orderitem_order_id_d23fdad5_fk_shops_order_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_orderitem
    ADD CONSTRAINT shops_orderitem_order_id_d23fdad5_fk_shops_order_id FOREIGN KEY (order_id) REFERENCES public.shops_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shops_salesman_shop_id_5f456fcc_fk_shops_shop_id; Type: FK CONSTRAINT; Schema: public; Owner: lesya
--

ALTER TABLE ONLY public.shops_salesman
    ADD CONSTRAINT shops_salesman_shop_id_5f456fcc_fk_shops_shop_id FOREIGN KEY (shop_id) REFERENCES public.shops_shop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

