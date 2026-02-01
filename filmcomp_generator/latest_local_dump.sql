--
-- PostgreSQL database dump
--

\restrict ROsDLpzHhPoUedRMjokRbCBBfXHbZLyf7Oby6CZTosAHET01YO0Azax4ll7L9YO

-- Dumped from database version 14.20 (Homebrew)
-- Dumped by pg_dump version 16.11 (Homebrew)

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: bosstoner
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO bosstoner;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: directors; Type: TABLE; Schema: public; Owner: bosstoner
--

CREATE TABLE public.directors (
    director_id integer NOT NULL,
    director_name character varying(255),
    picture_url character varying(255),
    director_description character varying,
    director_name_url character varying
);


ALTER TABLE public.directors OWNER TO bosstoner;

--
-- Name: directors_director_id_seq; Type: SEQUENCE; Schema: public; Owner: bosstoner
--

CREATE SEQUENCE public.directors_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directors_director_id_seq OWNER TO bosstoner;

--
-- Name: directors_director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bosstoner
--

ALTER SEQUENCE public.directors_director_id_seq OWNED BY public.directors.director_id;


--
-- Name: movies; Type: TABLE; Schema: public; Owner: bosstoner
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title character varying(255),
    year_made integer,
    poster_url character varying(255),
    director_id integer,
    movie_description_url character varying(10485760),
    seen boolean
);


ALTER TABLE public.movies OWNER TO bosstoner;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: bosstoner
--

CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.movies_movie_id_seq OWNER TO bosstoner;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bosstoner
--

ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies.movie_id;


--
-- Name: directors director_id; Type: DEFAULT; Schema: public; Owner: bosstoner
--

ALTER TABLE ONLY public.directors ALTER COLUMN director_id SET DEFAULT nextval('public.directors_director_id_seq'::regclass);


--
-- Name: movies movie_id; Type: DEFAULT; Schema: public; Owner: bosstoner
--

ALTER TABLE ONLY public.movies ALTER COLUMN movie_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: bosstoner
--

COPY public.directors (director_id, director_name, picture_url, director_description, director_name_url) FROM stdin;
1020	Alfred Hitchcock	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/108fiNM6poRieMg7RIqLJRxdAwG.jpg	https://www.theyshootpictures.com/hitchcockalfred.htm	alfred_hitchcock
1045	Andrei Tarkovsky	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/mytn9s5kc6CqzKZtbuJ73oA6ujy.jpg	https://www.theyshootpictures.com/tarkovskyandrei.htm	andrei_tarkovsky
1032	George Miller	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/35NQ8HjFXQlGYDz9UkhT08lKl5C.jpg	https://www.theyshootpictures.com/millergeorge.htm	george_miller
1023	Buster Keaton	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/kEybBFkO5AX83o3WKyNDfuvfVrn.jpg	https://www.theyshootpictures.com/keatonbuster.htm	buster_keaton
1046	Béla Tarr	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/mgS00m5ITUjx8bkhJISwVcirMoi.jpg	https://www.theyshootpictures.com/tarrbela.htm	bela_tarr
1036	Christopher Nolan	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/xuAIuYSmsUzKlUMBFGVZaWsY3DZ.jpg	https://www.theyshootpictures.com/nolanchristopher.htm	christopher_nolan
1062	Clint Eastwood	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/dU35NnjZ4aGw5abIJe3WXVf3Eey.jpg	https://www.theyshootpictures.com/eastwoodclint.htm	clint_eastwood
1057	Coen Brothers	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/rgVaJNkZCgMarUcZuUAsVfXMWk3.jpg	https://www.theyshootpictures.com/coenjoel.htm	coen_brothers
1009	Danny Boyle	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/b5qQpFHmgNyvV1t81ou17Jt2fRj.jpg	https://www.theyshootpictures.com/boyledanny.htm	danny_boyle
1003	Darren Aronofsky	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/tOjz8mVI2HeQBvU6KNjIExMBsXL.jpg	https://www.theyshootpictures.com/aronofskydarren.htm	darren_aronofsky
1053	David Fincher	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/yV36WTsLBAGyYVUQshNdI8hyk9l.jpg	https://www.theyshootpictures.com/fincherdavid.htm	david_fincher
1031	David Lynch	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/b6TnSpuqeOlbq7aHH9G4inmQ1v9.jpg	https://www.theyshootpictures.com/lynchdavid.htm	david_lynch
1051	Denis Villeneuve	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zdDx9Xs93UIrJFWYApYR28J8M6b.jpg	https://www.theyshootpictures.com/villeneuvedenis.htm	denis_villeneuve
1060	Frank Capra	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/ekvnffPsTGHyukMHpxprNxRt3g5.jpg	https://www.theyshootpictures.com/caprafrank.htm	frank_capra
1028	Fritz Lang	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zb7VF00t04zBaU4OJEihrD5O56s.jpg	https://www.theyshootpictures.com/langfritz.htm	fritz_lang
1035	Gaspar Noé	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/ePc4J6iliJ4YYhC4DpPMtVhSdYF.jpg	https://www.theyshootpictures.com/noegaspar.htm	gaspar_noe
1022	Bong Joon-ho	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/tKLJBqbdH6HFj2QxLA5o8Zk7IVs.jpg	https://www.theyshootpictures.com/bongjoonho.htm	bong_joon_ho
1066	Guillermo del Toro	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/gldeyCtKcaqnK1v4Vu9vqayhzUQ.jpg	https://www.theyshootpictures.com/deltoroguillermo.htm	guillermo_del_toro
1033	Hayao Miyazaki	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/mG3cfxtA5jqDc7fpKgyzZMKoXDh.jpg	https://www.theyshootpictures.com/miyazakihayao.htm	hayao_miyazaki
1007	Ingmar Bergman	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/nkmOaXNRoioViN9OQf2n9Iu6akA.jpg	https://www.theyshootpictures.com/bergmaningmar.htm	ingmar_bergman
1011	James Cameron	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/9NAZnTjBQ9WcXAQEzZpKy4vdQto.jpg	https://www.theyshootpictures.com/cameronjames.htm	james_cameron
1019	Jean-Luc Godard	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zP5EDY5MstfkdBmPXNCj8Y6v5KR.jpg	https://www.theyshootpictures.com/godardjeanluc.htm	jean_luc_godard
1055	John Ford	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/ffgVJWV8pDomSdTkjOqdrwMX9G6.jpg	https://www.theyshootpictures.com/fordjohn.htm	john_ford
1006	Kathryn Bigelow	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/llfsTIvItT7IEmX5qK1qUX0dbqc.jpg	https://www.theyshootpictures.com/bigelowkathryn.htm	kathryn_bigelow
1048	Lars von Trier	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/rlUAvvpXwSA3Qihl3vDW7RtWagH.jpg	https://www.theyshootpictures.com/vontrierlars.htm	lars_von_trier
1041	Martin Scorsese	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/9U9Y5GQuWX3EZy39B8nkk4NY01S.jpg	https://www.theyshootpictures.com/scorsesemartin.htm	martin_scorsese
1014	Miloš Forman	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/bVuTuyfkEnAmm7IUucMXjKHV3YC.jpg	https://www.theyshootpictures.com/formanmilos.htm	milos_forman
1005	Noah Baumbach	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/wRfV5qYIJHk4NH9gkKQnk99E5Qn.jpg	https://www.theyshootpictures.com/baumbachnoah.htm	noah_baumbach
1058	Paul Thomas Anderson	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/wKAs2LtLYSUzt3ZZ8pnxMwuEWuR.jpg	https://www.theyshootpictures.com/andersonpaulthomas.htm	paul_thomas_anderson
1002	Pedro Almodóvar	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/dKlaXJk3NLcsC1CKMx6xmyW5BZD.jpg	https://www.theyshootpictures.com/almodovarpedro.htm	pedro_almodovar
1043	Quentin Tarantino	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/1gjcpAa99FAOWGnrUvHEXXsRs7o.jpg	https://www.theyshootpictures.com/tarantinoquentin.htm	quentin_tarantino
1042	Ridley Scott	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zABJmN9opmqD4orWl3KSdCaSo7Q.jpg	https://www.theyshootpictures.com/scottridley.htm	ridley_scott
1016	Ruben Östlund	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/o4SdiMI5CyF1BrYL9aUhRQl58Xw.jpg	https://www.theyshootpictures.com/ostlundruben.htm	ruben_ostlund
1030	Sergio Leone	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/2576qoW8l9Z1nKGM10ar60aIwUu.jpg	https://www.theyshootpictures.com/leonesergio.htm	sergio_leone
1039	Sofia Coppola	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/dzHC2LxmarkBxWLhjp2DRa5oCev.jpg	https://www.theyshootpictures.com/coppolasofia.htm	sofia_coppola
1040	Spike Lee	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/2KOHXgk2uoRXl6u7V9xpAIo3uay.jpg	https://www.theyshootpictures.com/leespike.htm	spike_lee
1025	Stanley Kubrick	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/yFT0VyIelI9aegZrsAwOG5iVP4v.jpg	https://www.theyshootpictures.com/kubrickstanley.htm	stanley_kubrick
1026	Akira Kurosawa	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/eGexa6MZ22T1MZxce1qR3RcAYaS.jpg	https://www.theyshootpictures.com/kurosawaakira.htm	akira_kurosawa
1103	Bernardo Bertolucci	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/b0W7CtXxbo24sX8TPnDlLTYfc2E.jpg	https://www.theyshootpictures.com/bertoluccibernardo.htm	bernardo_bertolucci
1102	Billy Wilder	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/tfVte6h2dlLn59Q0Mi6AvWAyRLP.jpg	https://www.theyshootpictures.com/wilderbilly.htm	billy_wilder
1073	Brian De Palma	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/4xleWFdhtVC7faer6Ru2eyEgfTv.jpg	https://www.theyshootpictures.com/depalmabrian.htm	brian_de_palma
1068	Chantal Akerman	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/6Q59Air1EjLHfq8NvvBpbTTgnWZ.jpg	https://www.theyshootpictures.com/akermanchantal.htm	chantal_akerman
1084	David Lean	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/dzwMuydy2x3JwaTBfBSq8c02qz4.jpg	https://www.theyshootpictures.com/leandavid.htm	david_lean
1082	Elia Kazan	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/6aXiaOiM4rpgNv7Nj8kqetd1aEn.jpg	https://www.theyshootpictures.com/kazanelia.htm	elia_kazan
1107	Guy Ritchie	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/9pLUnjMgIEWXi0mlHYzie9cKUTD.jpg	https://www.theyshootpictures.com/ritchieguy.htm	guy_ritchie
1008	Francis Ford Coppola	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/3Pblihd6KjXliie9vj4iQJwbNPU.jpg	https://www.theyshootpictures.com/coppolafrancis.htm	francis_ford_coppola
1078	Howard Hawks	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/hG2oF9wZlqwGqP6EhG0qaN9Afg7.jpg	https://www.theyshootpictures.com/hawkshoward.htm	howard_hawks
1095	Jean Renoir	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/oN93wdY94BIVDQVbFfHGOBCk3L.jpg	https://www.theyshootpictures.com/renoirjean.htm	jean_renoir
1072	John Cassavetes	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/2Bo1ipVthg8uKP26mNGykChukA8.jpg	https://www.theyshootpictures.com/cassavetesjohn.htm	john_cassavetes
1099	Josef von Sternberg	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vOCR477NWfBYraTJJaBXtVfr2O7.jpg	https://www.theyshootpictures.com/vonsternbergjosef.htm	josef_von_sternberg
1088	Kenji Mizoguchi	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/ngKRZZPKh8d7GaeMgcM0eXbzMte.jpg	https://www.theyshootpictures.com/mizoguchikenji.htm	kenji_mizoguchi
1090	Max Ophüls	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/m1e8TJOJs57IS5A0SJw4NFN1IQO.jpg	https://www.theyshootpictures.com/ophulsmax.htm	max_ophuls
1077	Michael Haneke	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/9wDbsPQ5lu9A04FJ1pVi9y1dRjn.jpg	https://www.theyshootpictures.com/hanekemichael.htm	michael_haneke
1070	Michelangelo Antonioni	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/aGrzCeNCEZEI1DhLS8HjWDKNude.jpg	https://www.theyshootpictures.com/antonionimichelangelo.htm	michelangelo_antonioni
1093	Nicholas Ray	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/xnbQQUI6pwelsfHGnw5A9yGu5tK.jpg	https://www.theyshootpictures.com/raynicholas.htm	nicholas_ray
1101	Orson Welles	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/e9lGmqQq3EsHeUQgQLByo275hcc.jpg	https://www.theyshootpictures.com/wellesorson.htm	orson_welles
1076	R. W. Fassbinder	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/xll1qAg0TOzcuNlfZWEEKB1JxqR.jpg	https://www.theyshootpictures.com/fassbinderrw.htm	r_w_fassbinder
1069	Robert Altman	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/wB1R6patGi35oaxKU5PWEGJlIZg.jpg	https://www.theyshootpictures.com/altmanrobert.htm	robert_altman
1097	Roberto Rossellini	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/dEfCuU0CoIqhgoEDtHZpIoNWNVj.jpg	https://www.theyshootpictures.com/rosselliniroberto.htm	roberto_rossellini
1094	Satyajit Ray	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/s2qKZ4NnVECFsj1OqGkJIZrhoNo.jpg	https://www.theyshootpictures.com/rosselliniroberto.htm	satyajit_ray
1044	Steven Soderbergh	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/872DPaUxTlAOhxBb70h3vaWhMvz.jpg	https://www.theyshootpictures.com/soderberghsteven.htm	steven_soderbergh
1001	Steven Spielberg	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/tZxcg19YQ3e8fJ0pOs7hjlnmmr6.jpg	https://www.theyshootpictures.com/spielbergsteven.htm	steven_spielberg
1086	Terrence Malick	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/6FSi5aeyCNxJp96gxOmX7R4hCFu.jpg	https://www.theyshootpictures.com/malickterrence.htm	terrence_malick
1061	Vittorio De Sica	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/SObzAVAFAzCSM5nmpvpNdX7oxq.jpg	https://www.theyshootpictures.com/desicavittorio.htm	vittorio_de_sica
1079	Werner Herzog	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/izA2CVVphluvszmMgZ0g02KFjoD.jpg	https://www.theyshootpictures.com/herzogwerner.htm	werner_herzog
1056	Woody Allen	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/wcPQgZLDibuej1RwNTy1R2U2ZJw.jpg	https://www.theyshootpictures.com/allenwoody.htm	woody_allen
1037	Yasujiro Ozu	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/s0KBnwAxr6Aujbi6cA3inDqH8Fe.jpg	https://www.theyshootpictures.com/ozuyasujiro.htm	yasujiro_ozu
1089	F. W. Murnau	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/ulUA4GiMNFcVDTyQZ5b6Samri72.jpg	https://www.theyshootpictures.com/murnaufw.htm	f_w_murnau
1104	Michael Mann	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/syowcptZIOosLMwVWbXFOU8jVvd.jpg	https://www.theyshootpictures.com/mannmichael.htm	michael_mann
1106	Adam McKay	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vOyZXNJq7Oo01LPtSD5AZHjctgH.jpg	https://www.theyshootpictures.com/mckayadam.htm	adam_mckay
1108	Tim Burton	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/oWZDgLRr4zgRiJEsOAtgntPd5bI.jpg	https://www.theyshootpictures.com/burtontim.htm	tim_burton
1109	Peter Jackson	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/bNc908d59Ba8VDNr4eCcm4G1cR.jpg	https://www.theyshootpictures.com/jacksonpeter.htm	peter_jackson
1111	Martin McDonagh	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/pyDaAVKa8akTLHXzeTyF8oGymXN.jpg	https://www.theyshootpictures.com/mcdonaghmartin.htm	martin_mcdonagh
1112	Nuri Bilge Ceylan	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/5jH5pWhdE0Xe0renmFjCBdJV9aQ.jpg	https://www.theyshootpictures.com/ceylannuribilge.htm	nuri_bilge_ceylan
1113	Gus Van Sant	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/kICHgrSh4eiICjz8piy9fTXIgph.jpg	https://www.theyshootpictures.com/vansantgus.htm	gus_van_sant
1114	Wong Kar-wai	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/gWfo3lseDx5h9YzsfnaVblG3S6c.jpg	https://www.theyshootpictures.com/karwaiwong.htm	wong_kar_wai
1120	Vera Chytilová	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/cSb6gIVeHl3tj8u0zP8CqQQwdt4.jpg	https://www.theyshootpictures.com/chytilovavera.htm	vera_chytilova
1122	George Lucas	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/WCSZzWdtPmdRxH9LUCVi2JPCSJ.jpg	https://www.theyshootpictures.com/lucasgeorge.htm	george_lucas
1124	Ken Loach	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vGtkrPgNeK3xkbbKTQ4vWD1VsEm.jpg	https://www.theyshootpictures.com/loachken.htm	ken_loach
1125	George Cukor	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/rJc1VoMfPasdWYhGyNOGn9EgfcR.jpg	https://www.theyshootpictures.com/cukorgeorge.htm	george_cukor
1127	Eric Rohmer	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/4VUnQk2yA6m58uak9LguIAzZ8Re.jpg	https://www.theyshootpictures.com/rohmereric.htm	eric_rohmer
1116	Jacques Tati	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/eNZoS6LrQE2E4o71w7A6dBUhYoo.jpg	https://www.theyshootpictures.com/tatijacques.htm	jacques_tati
1047	Agnès Varda	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/1QvnMnTHthIJhu3q6z8nIpWZ9AN.jpg	https://www.theyshootpictures.com/vardaagnes.htm	agnes_varda
1067	Alfonso Cuarón	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/eoCHiXaQzGgx9RiwXnt3k239FLc.jpg	https://www.theyshootpictures.com/cuaronalfonso.htm	alfonso_cuaron
1063	Asghar Farhadi	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/iJB0ZFCOpWVBlehfOeuZOK8eWh5.jpg	https://www.theyshootpictures.com/farhadiasghar.htm	asghar_farhadi
1012	Charlie Chaplin	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/qQZ2qDAyX9aw8KCkj9VZAQLKysK.jpg	https://www.theyshootpictures.com/chaplincharles.htm	charlie_chaplin
1034	Cristian Mungiu	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/3ECIvZzvUw4DOdQj797BsqH3bRb.jpg	https://www.theyshootpictures.com/mungiucristian.htm	cristian_mungiu
1013	David Cronenberg	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/kLHnBnUomcH96PdLRBnuZUzRoY1.jpg	https://www.theyshootpictures.com/cronenbergdavid.htm	david_cronenberg
1027	Emir Kusturica	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/fOseFlKN7CH0UfieRw735QrRYJ5.jpg	https://www.theyshootpictures.com/kusturicaemir.htm	emir_kusturica
1050	François Truffaut	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/75zp0S5OTo8Y6nLOzherJ9s656A.jpg	https://www.theyshootpictures.com/truffautfrancois.htm	françois_truffaut
1017	Greta Gerwig	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/3H0xzU12GTNJyQTpGysEuI9KyiQ.jpg	https://www.theyshootpictures.com/gerwiggreta.htm	greta_gerwig
1021	Jim Jarmusch	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/iMpIrvhoO9SZWhiDkSzaUt9Yd4N.jpg	https://www.theyshootpictures.com/jarmuschjim.htm	jim_jarmusch
1010	Luis Buñuel	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/a7wib1eRG6TyonDXpAbF7PZd0f8.jpg	https://www.theyshootpictures.com/bunuelluis.htm	luis_bunuel
1052	Nicolas Winding Refn	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/o1PZZaqPbYt6f6e8PJkES73QKTG.jpg	https://www.theyshootpictures.com/refnnicolaswinding.htm	nicolas_winding_refn
1049	Paul Verhoeven	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/wxkroRBtM6NKZdx9sYLFfFSGnaR.jpg	https://www.theyshootpictures.com/verhoevenpaul.htm	paul_verhoeven
1038	Roman Polanski	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/yHwHSXdZatkoLgIjPeW14GKlrZs.jpg	https://www.theyshootpictures.com/polanskiroman.htm	roman_polanski
1054	Sidney Lumet	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/hjj3V2DkPJ46zo5uz9bsZQzAk6R.jpg	https://www.theyshootpictures.com/lumetsidney.htm	sidney_lumet
1100	A. Weerasethakul	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zZyGqhaPNzeb88bHkYiCQHHXyhY.jpg	https://www.theyshootpictures.com/weerasethakulapichatpong.htm	a_weerasethakul
1096	Alain Resnais	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/cy0Qs0zoAOPBeJbKShANf0jBOEK.jpg	https://www.theyshootpictures.com/resnaisalain.htm	alain_resnais
1074	Carl Theodor Dreyer	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/cPH6zLHp3otZkluppZcErWmxCXT.jpg	https://www.theyshootpictures.com/dreyercarl.htm	carl_theodor_dreyer
1080	Hou Hsiao-hsien	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/rqP4CEO6toAwGhsj8mmdu3Bta6I.jpg	https://www.theyshootpictures.com/houhsiaohsien.htm	hou_hsiao_hsien
1081	John Huston	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/3uwPuwZxYSdYaNJA3e4ZmOH1LWY.jpg	https://www.theyshootpictures.com/hustonjohn.htm	john_huston
1083	Krzysztof Kieslowski	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/8wxPNOV9dg7EDHAFrRdJf6BitMl.jpg	https://www.theyshootpictures.com/kieslowskikrszystof.htm	krzysztof_kieslowski
1092	Michael Powell	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/gkHgrKa834PZVqAQ5kSs8Cn0pXv.jpg	https://www.theyshootpictures.com/powellmichael.htm	michael_powell
1091	Pier Paolo Pasolini	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/fca5HJvz23Saj3TDCMWDqCswcmh.jpg	https://www.theyshootpictures.com/pasolinipier.htm	pier_paolo_pasolini
1071	Robert Bresson	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/7OYKOk2e2qs3S0pCBu8sg2TA3CJ.jpg	https://www.theyshootpictures.com/bressonrobert.htm	robert_bresson
1075	Sergei Eisenstein	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/ks9uuDtKu9m9w50t18PamLZ91to.jpg	https://www.theyshootpictures.com/eisensteinsergei.htm	sergei_eisenstein
1018	Terry Gilliam	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/kODccJVnrt4ioPbJVEnkkKPHbG7.jpg	https://www.theyshootpictures.com/gilliamterry.htm	terry_gilliam
1059	Wes Anderson	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/5z2WroP0CgQ5vI17M0hzi8o5NAn.jpg	https://www.theyshootpictures.com/andersonwes.htm	wes_anderson
1105	Paolo Sorrentino	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/8cKFMD8yfLoJ3JahS4g5qXqUIoB.jpg	https://www.theyshootpictures.com/sorrentinopaolo.htm	paolo_sorrentino
1110	Edgar Wright	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/dQzv5Ml2SkelS33hgl7E2oh0a9S.jpg	https://www.theyshootpictures.com/wrightedgar.htm	edgar_wright
1128	Carol Reed	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/wpoGvHCNPM9hGVTYTOA2sDVqaZ4.jpg	https://www.theyshootpictures.com/reedcarol.htm	carol_reed
1129	Leo McCarey	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/qAkK3k5y0YigJzO2zDWOGiIINC8.jpg	https://www.theyshootpictures.com/mccareyleo.htm	leo_mccarey
1118	Dardenne Brothers	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/hfnvLjmLKQyx1ftkuC6hhHwoTtM.jpg	https://www.theyshootpictures.com/dardennejeanpierrelucdardenne.htm	dardenne_brothers
1130	Douglas Sirk	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/2OSmbwsMrmcrGZnXBZTuFz1Ihwl.jpg	https://www.theyshootpictures.com/sirkdouglas.htm	douglas_sirk
1133	D.W. Griffith	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/6cYHbhRqThsvZ2yPsvFX3FuXu5k.jpg	https://www.theyshootpictures.com/griffithdw.htm	jean_vigo
1132	Edward Yang	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/mvQ0oSfPgyohdTpr3hETXQy7ilz.jpg	https://www.theyshootpictures.com/yangedward.htm	edward_yang
1065	Alejandro G. Iñárritu	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/qWrltG9e0ssM3Y9pF86EAgteKHu.jpg	https://www.theyshootpictures.com/inarritualejandrogonzalez.htm	alejandro_g_inarritu
1015	Federico Fellini	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/jH2VnHAuI0UbTWsnrjMPro0fC9j.jpg	https://www.theyshootpictures.com/fellinifederico.htm	federico_fellini
1064	Miklós Jancsó	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/umvVOkuXcH80ctSFtijqY7uxOQ2.jpg	https://www.theyshootpictures.com/jancsomiklos.htm	miklos_jancso
1024	Abbas Kiarostami	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/rTlz5ciu41FxyVuXA82a3tSYVZ8.jpg	https://www.theyshootpictures.com/kiarostamiabbas.htm	abbas_kiarostami
1098	Luchino Visconti	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/g5jT360l0LlvT9WT2UkHnQo2DhE.jpg	https://www.theyshootpictures.com/viscontiluchino.htm	luchino_visconti
1087	Vincente Minnelli	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/fmlq7RMQdWsrPBAskIezf22e8Mv.jpg	https://www.theyshootpictures.com/minnellivincente.htm	vincente_minnelli
1115	Dziga Vertov	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/6CvXGGtNiF3ofSe1MFtGwgJnCVo.jpg	https://www.theyshootpictures.com/vertovdziga.htm	dziga_vertov
1004	Jacques Audiard	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/dwNBJvUBIlIRCoR1AeGv72b1f4v.jpg	https://theyshootpictures.com/audiardjacques.htm	jacques_audiard
1085	Ernst Lubitsch	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/tAsEhwiu3oqDgzCZSYN2xu0dEdD.jpg	https://www.theyshootpictures.com/lubitschernst.htm	ernst_lubitsch
1029	Yorgos Lanthimos	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/38c8308Lvts3JJtIo7toJOxuHtX.jpg	https://www.theyshootpictures.com/lanthimosyorgos.htm	yorgos_lanthimos
1134	Chris Marker	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/4hcLsvsYKcjx5oJJ0IshXK9L1l9.jpg	https://www.theyshootpictures.com/markerchris.htm	chris_marker
1135	Jean Vigo	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zhrrNzuGZgUVY5sz5RdpPlrQral.jpg	https://www.theyshootpictures.com/vigojean.htm	jean_vigo
1136	Jacques Tourneur	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/o3Du8pFBlQ22JXGTVw9IB9yKVuC.jpg	https://www.theyshootpictures.com/tourneurjacques.htm	jacques_tourneur
1137	Preston Sturges	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/bnJQaN0KONTCmSGvCNuI2HGtmxm.jpg	https://www.theyshootpictures.com/sturgespreston.htm	preston_sturges
1138	Victor Fleming	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/kwMaOpQnirmXFEuvP0t7Zc94sqj.jpg	https://www.theyshootpictures.com/flemingvictor.htm	victor_fleming
1139	Jane Campion	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zAkrfMl6m940Ja46ofWaM94gTNj.jpg	https://www.theyshootpictures.com/campionjane.htm	jane_campion
1140	Marcel Carné	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/p1agb8rWu8Tlef0sFiiTAgIgQYE.jpg	https://www.theyshootpictures.com/carnemarcel.htm	marcel_carne
1141	Nicolas Roeg	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/t5EuHzllJjQrlVqzniVHDXBqUEC.jpg	https://www.theyshootpictures.com/roegnicolas.htm	nicolas_roeg
1142	Gillo Pontecorvo	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/iRwLtl4aRdZMsfwGBUMbgELsDG6.jpg	https://www.theyshootpictures.com/pontecorvogillo.htm	gillo_pontecorvo
1143	Jacques Demy	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/e01xXR9nxtEupIfrWaEqiLBxiGE.jpg	https://www.theyshootpictures.com/demyjacques.htm	jacques_demy
1144	Jean-Pierre Melville	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/2Xu99MNnzqL5gwKzsidQQatGTb3.jpg	https://www.theyshootpictures.com/melvillejeanpierre.htm	jean_pierre_melville
1145	Víctor Erice	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/cWPpHW2SinZaxWKCQjAfr0Uesel.jpg	https://www.theyshootpictures.com/ericevictor.htm	víctor_erice
1146	Claude Lanzmann	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/lD6OD0OoTNMqXBC3uXgRrE2tmlh.jpg	https://www.theyshootpictures.com/lanzmannclaude.htm	claude_lanzmann
1117	Aki Kaurismäki	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/kiJErWEOv4Ew7aHOGKg4ljsmppZ.jpg	https://www.theyshootpictures.com/kaurismakiaki.htm	aki_kaurismaki
1119	Ang Lee	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/lwhIzt4PVNrsfOXuZcKXhtPE83P.jpg	https://www.theyshootpictures.com/leeang.htm	ang_lee
1121	Richard Linklater	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/xSctxeZQzQbZoaxIvcDeHlDjbiN.jpg	https://www.theyshootpictures.com/linklaterrichard.htm	richard_linklater
1123	Lucrecia Martel	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/e70SUgZRzx5fFZ49zgn2uCqw8Jm.jpg	https://www.theyshootpictures.com/martellucrecia.htm	lucrecia_martel
1126	Jean Cocteau	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vD73WSmN0hH3ZDjlh6n73CJI5sC.jpg	https://www.theyshootpictures.com/cocteaujean.htm	jean_cocteau
1131	Claire Denis	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zKR7pmegNQDjWqeWv7JNvHqJ2l5.jpg	https://www.theyshootpictures.com/denisclaire.htm	claire_denis
1147	Olivier Assayas	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/ybg3hz6jRrQJMrQfdeRRVsNVmu4.jpg	https://www.theyshootpictures.com/assayasolivier.htm	olivier_assayas
1148	Wim Wenders	https://media.themoviedb.org/t/p/w300_and_h450_bestv2/AbqrYglSgaMfetQAeqdHaqiPSof.jpg	https://www.theyshootpictures.com/wenderswim.htm	wim_wenders
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: bosstoner
--

COPY public.movies (movie_id, title, year_made, poster_url, director_id, movie_description_url, seen) FROM stdin;
1	Dogtooth	2009	static/posters/1_Dogtooth.jpg	1029	https://www.imdb.com/title/tt1379182/	f
22	Beyond the Hills	2012	static/posters/22_Beyond the Hills.jpg	1034	https://www.imdb.com/title/tt2258281/	f
23	R.M.N. 	2022	static/posters/23_R.M.N. .jpg	1034	https://www.imdb.com/title/tt18550182/	f
24	Occident	2002	static/posters/24_Occident.jpg	1034	https://www.imdb.com/title/tt0320194/	f
25	Tales from the Golden Age	2009	static/posters/25_Tales from the Golden Age.jpg	1034	https://www.imdb.com/title/tt1422122/	f
26	Once Upon a Time in Hollywood	2019	static/posters/26_Once Upon a Time in Hollywood.jpg	1043	https://www.imdb.com/title/tt7131622/	t
27	Kill Bill: Vol. 1	2003	static/posters/27_Kill Bill_ Vol. 1.jpg	1043	https://www.imdb.com/title/tt0266697/	t
28	Kill Bill: Vol. 2	2004	static/posters/28_Kill Bill_ Vol. 2.jpg	1043	https://www.imdb.com/title/tt0378194/	t
29	The Hateful Eight	2015	static/posters/29_The Hateful Eight.jpg	1043	https://www.imdb.com/title/tt3460252/	t
30	Jackie Brown	1997	static/posters/30_Jackie Brown.jpg	1043	https://www.imdb.com/title/tt0119396/	t
31	Death Proof	2007	static/posters/31_Death Proof.jpg	1043	https://www.imdb.com/title/tt1028528/	t
32	Parasite	2019	static/posters/32_Parasite.jpg	1022	https://www.imdb.com/title/tt6751668/	t
33	Mother	2009	static/posters/33_Mother.jpg	1022	https://www.imdb.com/title/tt1216496/	f
34	Poor Things	2023	static/posters/34_Poor Things.jpg	1029	https://www.imdb.com/title/tt14230458/	t
35	The Favourite	2018	static/posters/35_The Favourite.jpg	1029	https://www.imdb.com/title/tt5083738/	t
36	The Killing of a Sacred Deer	2017	static/posters/36_The Killing of a Sacred Deer.jpg	1029	https://www.imdb.com/title/tt5715874/	t
37	Irréversible	2002	static/posters/37_Irréversible.jpg	1035	https://www.imdb.com/title/tt0290673/	t
38	Memories of Murder	2003	static/posters/38_Memories of Murder.jpg	1022	https://www.imdb.com/title/tt0353969/	t
39	Snowpiercer	2013	static/posters/39_Snowpiercer.jpg	1022	https://www.imdb.com/title/tt1706620/	t
40	The Host	2006	static/posters/40_The Host.jpg	1022	https://www.imdb.com/title/tt0468492/	t
41	Okja	2017	static/posters/41_Okja.jpg	1022	https://www.imdb.com/title/tt3967856/	t
42	Tokyo!	2008	static/posters/42_Tokyo_.jpg	1022	https://www.imdb.com/title/tt0976060/	f
43	Barking Dogs Never Bite	2000	static/posters/43_Barking Dogs Never Bite.jpg	1022	https://www.imdb.com/title/tt0269743/	f
90	All About My Mother	1999	static/posters/90_All About My Mother.jpg	1002	https://www.imdb.com/title/tt0185125/	f
44	2001: A Space Odyssey	1968	static/posters/44_2001_ A Space Odyssey.jpg	1025	https://www.imdb.com/title/tt0062622/	t
45	A Clockwork Orange	1971	static/posters/45_A Clockwork Orange.jpg	1025	https://www.imdb.com/title/tt0066921/	t
46	Full Metal Jacket	1987	static/posters/46_Full Metal Jacket.jpg	1025	https://www.imdb.com/title/tt0093058/	t
47	Eyes Wide Shut	1999	static/posters/47_Eyes Wide Shut.jpg	1025	https://www.imdb.com/title/tt0120663/	f
48	The Shining	1980	static/posters/48_The Shining.jpg	1025	https://www.imdb.com/title/tt0081505/	t
49	Barry Lyndon	1975	static/posters/49_Barry Lyndon.jpg	1025	https://www.imdb.com/title/tt0072684/	t
50	Dr. Strangelove	1964	static/posters/50_Dr. Strangelove.jpg	1025	https://www.imdb.com/title/tt0057012/	t
52	Paths of Glory	1957	static/posters/52_Paths of Glory.jpg	1025	https://www.imdb.com/title/tt0050825/	t
53	Dune	2020	static/posters/53_Dune.jpg	1051	https://www.imdb.com/title/tt1160419/	t
54	Dune: Part Two	2024	static/posters/54_Dune_ Part Two.jpg	1051	https://www.imdb.com/title/tt15239678/	t
55	Blade Runner 2049	2017	static/posters/55_Blade Runner 2049.jpg	1051	https://www.imdb.com/title/tt1856101/	t
56	Arrival	2016	static/posters/56_Arrival.jpg	1051	https://www.imdb.com/title/tt2543164/	t
57	Sicario	2015	static/posters/57_Sicario.jpg	1051	https://www.imdb.com/title/tt3397884/	t
58	Enemy	2013	static/posters/58_Enemy.jpg	1051	https://www.imdb.com/title/tt2316411/	t
59	Prisoners	2013	static/posters/59_Prisoners.jpg	1051	https://www.imdb.com/title/tt1392214/	t
60	Incendies	2010	static/posters/60_Incendies.jpg	1051	https://www.imdb.com/title/tt1255953/	t
61	Mad Max	1979	static/posters/61_Mad Max.jpg	1032	https://www.imdb.com/title/tt0079501/	f
62	Mad Max 2	1981	static/posters/62_Mad Max 2.jpg	1032	https://www.imdb.com/title/tt0082694/	f
810	I Vitelloni	1953	static/posters/810_I Vitelloni.jpg	1015	https://www.imdb.com/title/tt0046521/	t
63	Happy Feet	2006	static/posters/63_Happy Feet.jpg	1032	https://www.imdb.com/title/tt0366548/	t
64	Three Thousand Years of Longing	2022	static/posters/64_Three Thousand Years of Longing.jpg	1032	https://www.imdb.com/title/tt9198364/	t
65	Mad Max: Fury Road	2015	static/posters/65_Mad Max_ Fury Road.jpg	1032	https://www.imdb.com/title/tt1392190/	t
66	The Witches of Eastwick	1987	static/posters/66_The Witches of Eastwick.jpg	1032	https://www.imdb.com/title/tt0094332/	f
67	The Outsider	1981	static/posters/67_The Outsider.jpg	1046	https://www.imdb.com/title/tt0083151/	f
68	The Turin Horse	2011	static/posters/68_The Turin Horse.jpg	1046	https://www.imdb.com/title/tt1316540/	t
69	Werckmeister Harmonies	2001	static/posters/69_Werckmeister Harmonies.jpg	1046	https://www.imdb.com/title/tt0249241/	f
70	Satantango	1994	static/posters/70_Satantango.jpg	1046	https://www.imdb.com/title/tt0111341/	f
71	Damnation	1988	static/posters/71_Damnation.jpg	1046	https://www.imdb.com/title/tt0095475/	f
72	The Man from London	2007	static/posters/72_The Man from London.jpg	1046	https://www.imdb.com/title/tt0415127/	f
73	Autumn Almanac	1984	static/posters/73_Autumn Almanac.jpg	1046	https://www.imdb.com/title/tt0087855/	f
74	Family Nest	1979	static/posters/74_Family Nest.jpg	1046	https://www.imdb.com/title/tt0077383/	f
75	The Prefab People	1982	static/posters/75_The Prefab People.jpg	1046	https://www.imdb.com/title/tt0084465/	t
77	Gravity	2013	static/posters/77_Gravity.jpg	1067	https://www.imdb.com/title/tt1454468/	t
78	Children of Men	2006	static/posters/78_Children of Men.jpg	1067	https://www.imdb.com/title/tt0206634/	t
79	Roma	2018	static/posters/79_Roma.jpg	1067	https://www.imdb.com/title/tt6155172/	t
81	A Little Princess	1995	static/posters/81_A Little Princess.jpg	1067	https://www.imdb.com/title/tt0113670/	f
82	The Revenant	2015	static/posters/82_The Revenant.jpg	1065	https://www.imdb.com/title/tt1663202/	t
84	Babel	2006	static/posters/84_Babel.jpg	1065	https://www.imdb.com/title/tt0449467/	f
86	Amores Perros	2000	static/posters/86_Amores Perros.jpg	1065	https://www.imdb.com/title/tt0245712/	t
88	Biutiful	2010	static/posters/88_Biutiful.jpg	1065	https://www.imdb.com/title/tt1164999/	f
89	The Skin I Live In	2011	static/posters/89_The Skin I Live In.jpg	1002	https://www.imdb.com/title/tt1189073/	t
51	Lolita	1962	static/posters/51_Lolita.jpg	1025	https://www.imdb.com/title/tt0056193/	t
97	Julieta	2016	static/posters/97_Julieta.jpg	1002	https://www.imdb.com/title/tt4326444/	t
101	The Killing	1956	static/posters/101_The Killing.jpg	1025	https://www.imdb.com/title/tt0049406/	f
123	Aliens	1986	static/posters/123_Aliens.jpg	1011	https://www.imdb.com/title/tt0090605/	t
130	Solaris	2002	static/posters/130_Solaris.jpg	1044	https://www.imdb.com/title/tt0307479/	f
143	Inside Man	2006	static/posters/143_Inside Man.jpg	1040	https://www.imdb.com/title/tt0454848/	f
1047	Gerry	2002	static/posters/1047_Gerry.jpg	1113	https://www.imdb.com/title/tt0302674/	\N
93	Talk to Her	2002	static/posters/93_Talk to Her.jpg	1002	https://www.imdb.com/title/tt0287467/	t
94	Bad Education	2004	static/posters/94_Bad Education.jpg	1002	https://www.imdb.com/title/tt0275491/	f
96	Women on the Verge of a Nervous Breakdown	1988	static/posters/96_Women on the Verge of a Nervous Breakdown.jpg	1002	https://www.imdb.com/title/tt0095675/	f
98	Live Flesh	1997	static/posters/98_Live Flesh.jpg	1002	https://www.imdb.com/title/tt0118819/	f
99	Broken Embraces	2009	static/posters/99_Broken Embraces.jpg	1002	https://www.imdb.com/title/tt0913425/	f
100	Matador	1986	static/posters/100_Matador.jpg	1002	https://www.imdb.com/title/tt0091495/	f
103	Europa	1991	static/posters/103_Europa.jpg	1048	https://www.imdb.com/title/tt0101829/	f
104	Medea	1988	static/posters/104_Medea.jpg	1048	https://www.imdb.com/title/tt0095607/	f
105	The Five Obstructions	2003	static/posters/105_The Five Obstructions.jpg	1048	https://www.imdb.com/title/tt0354575/	f
106	Melancholia	2011	static/posters/106_Melancholia.jpg	1048	https://www.imdb.com/title/tt1527186/	t
108	Dancer in the Dark	2000	static/posters/108_Dancer in the Dark.jpg	1048	https://www.imdb.com/title/tt0168629/	t
109	Antichrist	2009	static/posters/109_Antichrist.jpg	1048	https://www.imdb.com/title/tt0870984/	t
110	Nymphomaniac: Vol. I	2013	static/posters/110_Nymphomaniac_ Vol. I.jpg	1048	https://www.imdb.com/title/tt1937390/	t
112	The House That Jack Built	2018	static/posters/112_The House That Jack Built.jpg	1048	https://www.imdb.com/title/tt4003440/	t
113	Magnolia	1999	static/posters/113_Magnolia.jpg	1058	https://www.imdb.com/title/tt0175880/	f
114	Punch-Drunk Love	2002	static/posters/114_Punch-Drunk Love.jpg	1058	https://www.imdb.com/title/tt0272338/	f
115	Hard Eight	1997	static/posters/115_Hard Eight.jpg	1058	https://www.imdb.com/title/tt0119256/	f
116	There Will Be Blood	2007	static/posters/116_There Will Be Blood.jpg	1058	https://www.imdb.com/title/tt0469494/	t
118	Boogie Nights	1997	static/posters/118_Boogie Nights.jpg	1058	https://www.imdb.com/title/tt0118749/	t
119	The Master	2012	static/posters/119_The Master.jpg	1058	https://www.imdb.com/title/tt1560747/	t
120	Inherent Vice	2014	static/posters/120_Inherent Vice.jpg	1058	https://www.imdb.com/title/tt1791528/	t
122	The Terminator	1984	static/posters/122_The Terminator.jpg	1011	https://www.imdb.com/title/tt0088247/	t
124	Terminator 2: Judgment Day	1991	static/posters/124_Terminator 2_ Judgment Day.jpg	1011	https://www.imdb.com/title/tt0103064/	t
125	Titanic	1997	static/posters/125_Titanic.jpg	1011	https://www.imdb.com/title/tt0120338/	t
126	The Abyss	1989	static/posters/126_The Abyss.jpg	1011	https://www.imdb.com/title/tt0096754/	f
128	sex, lies and videotape	1989	static/posters/128_sex_ lies and videotape.jpg	1044	https://www.imdb.com/title/tt0098724/	f
129	Out of Sight	1998	static/posters/129_Out of Sight.jpg	1044	https://www.imdb.com/title/tt0120780/	f
131	Ocean's Eleven	2001	static/posters/131_Ocean_s Eleven.jpg	1044	https://www.imdb.com/title/tt0240772/	t
132	Traffic	2000	static/posters/132_Traffic.jpg	1044	https://www.imdb.com/title/tt0181865/	f
134	Contagion	2011	static/posters/134_Contagion.jpg	1044	https://www.imdb.com/title/tt1598778/	f
135	Magic Mike	2012	static/posters/135_Magic Mike.jpg	1044	https://www.imdb.com/title/tt1915581/	f
136	Memento	2000	static/posters/136_Memento.jpg	1036	https://www.imdb.com/title/tt0209144/	t
138	The Dark Knight	2008	static/posters/138_The Dark Knight.jpg	1036	https://www.imdb.com/title/tt0468569/	t
139	Inception	2010	static/posters/139_Inception.jpg	1036	https://www.imdb.com/title/tt1375666/	t
140	Interstellar	2014	static/posters/140_Interstellar.jpg	1036	https://www.imdb.com/title/tt0816692/	t
141	True Lies	1994	static/posters/141_True Lies.jpg	1011	https://www.imdb.com/title/tt0111503/	t
157	Goodfellas	1990	static/posters/157_Goodfellas.jpg	1041	https://www.imdb.com/title/tt0099685/	t
171	Matchstick Men	2003	static/posters/171_Matchstick Men.jpg	1042	https://www.imdb.com/title/tt0325805/	f
191	Zero Dark Thirty	2012	static/posters/191_Zero Dark Thirty.jpg	1006	https://www.imdb.com/title/tt1790885/	t
194	Strange Days	1995	static/posters/194_Strange Days.jpg	1006	https://www.imdb.com/title/tt0114558/	f
145	The Departed	2006	static/posters/145_The Departed.jpg	1041	https://www.imdb.com/title/tt0407887/	f
147	Alice Doesn't Live Here Anymore	1974	static/posters/147_Alice Doesn_t Live Here Anymore.jpg	1041	https://www.imdb.com/title/tt0071115/	f
148	The Last Temptation of Christ	1988	static/posters/148_The Last Temptation of Christ.jpg	1041	https://www.imdb.com/title/tt0095497/	f
149	The King of Comedy	1982	static/posters/149_The King of Comedy.jpg	1041	https://www.imdb.com/title/tt0085794/	f
150	Cape Fear	1991	static/posters/150_Cape Fear.jpg	1041	https://www.imdb.com/title/tt0101540/	f
152	Do the Right Thing	1989	static/posters/152_Do the Right Thing.jpg	1040	https://www.imdb.com/title/tt0097216/	f
153	Malcolm X	1992	static/posters/153_Malcolm X.jpg	1040	https://www.imdb.com/title/tt0104797/	f
154	Shutter Island	2010	static/posters/154_Shutter Island.jpg	1041	https://www.imdb.com/title/tt1130884/	t
155	Silence	2016	static/posters/155_Silence.jpg	1041	https://www.imdb.com/title/tt0490215/	t
158	Taxi Driver	1976	static/posters/158_Taxi Driver.jpg	1041	https://www.imdb.com/title/tt0075314/	t
159	The Wolf of Wall Street	2013	static/posters/159_The Wolf of Wall Street.jpg	1041	https://www.imdb.com/title/tt0993846/	t
160	Killers of the Flower Moon	2023	static/posters/160_Killers of the Flower Moon.jpg	1041	https://www.imdb.com/title/tt5537002/	t
162	The Aviator	2004	static/posters/162_The Aviator.jpg	1041	https://www.imdb.com/title/tt0338751/	t
163	Alien	1979	static/posters/163_Alien.jpg	1042	https://www.imdb.com/title/tt0078748/	t
164	Blade Runner	1982	static/posters/164_Blade Runner.jpg	1042	https://www.imdb.com/title/tt0083658/	t
166	 Thelma & Louise	1991	static/posters/166_ Thelma _ Louise.jpg	1042	https://www.imdb.com/title/tt0103074/	f
167	Gladiator	2000	static/posters/167_Gladiator.jpg	1042	https://www.imdb.com/title/tt0172495/	t
168	All the Money in the World	2017	static/posters/168_All the Money in the World.jpg	1042	https://www.imdb.com/title/tt5294550/	f
169	The Martian	2015	static/posters/169_The Martian.jpg	1042	https://www.imdb.com/title/tt3659388/	t
172	Prometheus	2012	static/posters/172_Prometheus.jpg	1042	https://www.imdb.com/title/tt1446714/	t
173	American Gangster	2007	static/posters/173_American Gangster.jpg	1042	https://www.imdb.com/title/tt0765429/	t
174	Black Hawk Down	2001	static/posters/174_Black Hawk Down.jpg	1042	https://www.imdb.com/title/tt0265086/	t
175	The Counselor	2013	static/posters/175_The Counselor.jpg	1042	https://www.imdb.com/title/tt2193215/	t
177	Barbie	2023	static/posters/177_Barbie.jpg	1017	https://www.imdb.com/title/tt1517268/	t
179	The Grand Budapest Hotel	2014	static/posters/179_The Grand Budapest Hotel.jpg	1059	https://www.imdb.com/title/tt2278388/	t
180	Rushmore	1998	static/posters/180_Rushmore.jpg	1059	https://www.imdb.com/title/tt0128445/	f
182	The Royal Tenenbaums	2001	static/posters/182_The Royal Tenenbaums.jpg	1059	https://www.imdb.com/title/tt0265666/	t
183	Bottle Rocket	1996	static/posters/183_Bottle Rocket.jpg	1059	https://www.imdb.com/title/tt0115734/	f
184	Fantastic Mr. Fox	2009	static/posters/184_Fantastic Mr. Fox.jpg	1059	https://www.imdb.com/title/tt0432283/	t
186	The Life Aquatic With Steve Zissou	2004	static/posters/186_The Life Aquatic With Steve Zissou.jpg	1059	https://www.imdb.com/title/tt0362270/	f
187	The French Dispatch	2021	static/posters/187_The French Dispatch.jpg	1059	https://www.imdb.com/title/tt8847712/	t
189	Asteroid City	2023	static/posters/189_Asteroid City.jpg	1059	https://www.imdb.com/title/tt14230388/	t
192	Near Dark	1987	static/posters/192_Near Dark.jpg	1006	https://www.imdb.com/title/tt0093605/	f
193	Point Break	1991	static/posters/193_Point Break.jpg	1006	https://www.imdb.com/title/tt0102685/	f
195	Castle in the Sky	1986	static/posters/195_Castle in the Sky.jpg	1033	https://www.imdb.com/title/tt0092067/	f
196	Kiki's Delivery Service	1989	static/posters/196_Kiki_s Delivery Service.jpg	1033	https://www.imdb.com/title/tt0097814/	f
201	My Neighbor Totoro	1988	static/posters/201_My Neighbor Totoro.jpg	1033	https://www.imdb.com/title/tt0096283/	t
202	Nausicaä of the Valley of the Wind	1984	static/posters/202_Nausicaä of the Valley of the Wind.jpg	1033	https://www.imdb.com/title/tt0087544/	t
204	Ponyo	2008	static/posters/204_Ponyo.jpg	1033	https://www.imdb.com/title/tt0876563/	f
215	American Sniper	2014	static/posters/215_American Sniper.jpg	1062	https://www.imdb.com/title/tt2179136/	t
218	Letters from Iwo Jima	2006	static/posters/218_Letters from Iwo Jima.jpg	1062	https://www.imdb.com/title/tt0498380/	t
219	Richard Jewell	2019	static/posters/219_Richard Jewell.jpg	1062	https://www.imdb.com/title/tt3513548/	t
230	La Pointe Courte	1955	static/posters/230_La Pointe Courte.jpg	1047	https://www.imdb.com/title/tt0048499/	f
237	Certified Copy	2010	static/posters/237_Certified Copy.jpg	1024	https://www.imdb.com/title/tt1020773/	t
198	Spirited Away	2001	static/posters/198_Spirited Away.jpg	1033	https://www.imdb.com/title/tt0245429/	t
199	Princess Mononoke	1997	static/posters/199_Princess Mononoke.jpg	1033	https://www.imdb.com/title/tt0119698/	t
203	The Boy and the Heron	2023	static/posters/203_The Boy and the Heron.jpg	1033	https://www.imdb.com/title/tt6587046/	t
205	Drive	2011	static/posters/205_Drive.jpg	1052	https://www.imdb.com/title/tt0780504/	t
206	The Neon Demon	2016	static/posters/206_The Neon Demon.jpg	1052	https://www.imdb.com/title/tt1974419/	t
207	Bronson	2008	static/posters/207_Bronson.jpg	1052	https://www.imdb.com/title/tt1172570/	t
209	Valhalla Rising	2009	static/posters/209_Valhalla Rising.jpg	1052	https://www.imdb.com/title/tt0862467/	t
210	Pusher	1996	static/posters/210_Pusher.jpg	1052	https://www.imdb.com/title/tt0117407/	f
211	Unforgiven	1992	static/posters/211_Unforgiven.jpg	1062	https://www.imdb.com/title/tt0105695/	t
213	Mystic River	2003	static/posters/213_Mystic River.jpg	1062	https://www.imdb.com/title/tt0327056/	f
214	The Outlaw Josey Wales	1976	static/posters/214_The Outlaw Josey Wales.jpg	1062	https://www.imdb.com/title/tt0075029/	f
216	Gran Torino	2008	static/posters/216_Gran Torino.jpg	1062	https://www.imdb.com/title/tt1205489/	t
217	Sully	2016	static/posters/217_Sully.jpg	1062	https://www.imdb.com/title/tt3263904/	f
220	Invictus	2009	static/posters/220_Invictus.jpg	1062	https://www.imdb.com/title/tt1057500/	f
222	Ten	2002	static/posters/222_Ten.jpg	1024	https://www.imdb.com/title/tt0301978/	f
223	Where is the Friend's House?	1987	static/posters/223_Where is the Friend_s House_.jpg	1024	https://www.imdb.com/title/tt0093342/	f
224	Homework	1989	static/posters/224_Homework.jpg	1024	https://www.imdb.com/title/tt0097843/	f
226	Life, and Nothing More	1992	static/posters/226_Life_ and Nothing More.jpg	1024	https://www.imdb.com/title/tt0105888/	f
227	Through the Olive Trees	1994	static/posters/227_Through the Olive Trees.jpg	1024	https://www.imdb.com/title/tt0111845/	f
228	Taste of Cherry	1997	static/posters/228_Taste of Cherry.jpg	1024	https://www.imdb.com/title/tt0120265/	f
2	The Lobster	2015	static/posters/2_The Lobster.jpg	1029	https://www.imdb.com/title/tt3464902/	t
231	Cléo from 5 to 7	1962	static/posters/231_Cléo from 5 to 7.jpg	1047	https://www.imdb.com/title/tt0055852/	f
233	Daguerréotypes	1975	static/posters/233_Daguerréotypes.jpg	1047	https://www.imdb.com/title/tt0071384/	f
234	One Sings, the Other Doesn't	1977	static/posters/234_One Sings_ the Other Doesn_t.jpg	1047	https://www.imdb.com/title/tt0076855/	f
235	Vagabond	1985	static/posters/235_Vagabond.jpg	1047	https://www.imdb.com/title/tt0089960/	f
238	The Gleaners & I	2000	static/posters/238_The Gleaners _ I.jpg	1047	https://www.imdb.com/title/tt0247380/	f
239	The Beaches of Agnès	2008	static/posters/239_The Beaches of Agnès.jpg	1047	https://www.imdb.com/title/tt1129435/	f
240	Faces Places	2017	static/posters/240_Faces Places.jpg	1047	https://www.imdb.com/title/tt5598102/	f
242	Rashomon	1950	static/posters/242_Rashomon.jpg	1026	https://www.imdb.com/title/tt0042876/	t
243	Ikiru	1952	static/posters/243_Ikiru.jpg	1026	https://www.imdb.com/title/tt0044741/	f
244	Seven Samurai	1954	static/posters/244_Seven Samurai.jpg	1026	https://www.imdb.com/title/tt0047478/	t
245	Throne of Blood	1957	static/posters/245_Throne of Blood.jpg	1026	https://www.imdb.com/title/tt0050613/	f
247	The Bad Sleep Well	1960	static/posters/247_The Bad Sleep Well.jpg	1026	https://www.imdb.com/title/tt0054460/	f
248	Yojimbo	1961	static/posters/248_Yojimbo.jpg	1026	https://www.imdb.com/title/tt0055630/	t
255	Dreams	1990	static/posters/255_Dreams.jpg	1026	https://www.imdb.com/title/tt0100998/	f
256	Sanjuro	1962	static/posters/256_Sanjuro.jpg	1026	https://www.imdb.com/title/tt0056443/	f
273	Dial M for Murder	1954	static/posters/273_Dial M for Murder.jpg	1020	https://www.imdb.com/title/tt0046912/	f
251	Dodes'ka-den	1970	static/posters/251_Dodes_ka-den.jpg	1026	https://www.imdb.com/title/tt0065649/	f
252	Dersu Uzala	1975	static/posters/252_Dersu Uzala.jpg	1026	https://www.imdb.com/title/tt0071411/	f
253	Kagemusha	1980	static/posters/253_Kagemusha.jpg	1026	https://www.imdb.com/title/tt0080979/	f
254	Ran	1985	static/posters/254_Ran.jpg	1026	https://www.imdb.com/title/tt0089881/	t
258	The 39 Steps	1935	static/posters/258_The 39 Steps.jpg	1020	https://www.imdb.com/title/tt0026029/	f
259	The Lady Vanishes	1938	static/posters/259_The Lady Vanishes.jpg	1020	https://www.imdb.com/title/tt0030341/	f
260	Foreign Correspondent	1940	static/posters/260_Foreign Correspondent.jpg	1020	https://www.imdb.com/title/tt0032484/	f
262	Shadow of a Doubt	1943	static/posters/262_Shadow of a Doubt.jpg	1020	https://www.imdb.com/title/tt0036342/	f
263	Notorious	1946	static/posters/263_Notorious.jpg	1020	https://www.imdb.com/title/tt0038787/	f
264	Rope	1948	static/posters/264_Rope.jpg	1020	https://www.imdb.com/title/tt0040746/	f
266	Rear Window	1954	static/posters/266_Rear Window.jpg	1020	https://www.imdb.com/title/tt0047396/	t
267	The Wrong Man	1956	static/posters/267_The Wrong Man.jpg	1020	https://www.imdb.com/title/tt0051207/	f
268	Vertigo	1958	static/posters/268_Vertigo.jpg	1020	https://www.imdb.com/title/tt0052357/	f
269	North by Northwest	1959	static/posters/269_North by Northwest.jpg	1020	https://www.imdb.com/title/tt0053125/	f
271	The Birds	1963	static/posters/271_The Birds.jpg	1020	https://www.imdb.com/title/tt0056869/	t
272	Marnie	1964	static/posters/272_Marnie.jpg	1020	https://www.imdb.com/title/tt0058329/	f
274	A Separation	2011	static/posters/274_A Separation.jpg	1063	https://www.imdb.com/title/tt1832382/	t
276	The Salesman	2016	static/posters/276_The Salesman.jpg	1063	https://www.imdb.com/title/tt5186714/	f
277	The Past	2013	static/posters/277_The Past.jpg	1063	https://www.imdb.com/title/tt2404461/	f
278	About Elly	2009	static/posters/278_About Elly.jpg	1063	https://www.imdb.com/title/tt1360860/	f
279	Ivan's Childhood	1962	static/posters/279_Ivan_s Childhood.jpg	1045	https://www.imdb.com/title/tt0056111/	f
281	Solaris	1972	static/posters/281_Solaris.jpg	1045	https://www.imdb.com/title/tt0069293/?ref_=nv_sr_srsg_4_tt_7_nm_0_q_solaris	t
282	Mirror	1975	static/posters/282_Mirror.jpg	1045	https://www.imdb.com/title/tt0072443/	f
283	Stalker	1979	static/posters/283_Stalker.jpg	1045	https://www.imdb.com/title/tt0079944/	f
285	The Sacrifice	1986	static/posters/285_The Sacrifice.jpg	1045	https://www.imdb.com/title/tt0091670/	f
286	Our Hospitality 	1923	static/posters/286_Our Hospitality .jpg	1023	https://www.imdb.com/title/tt0014341/	f
287	The Navigator	1924	static/posters/287_The Navigator.jpg	1023	https://www.imdb.com/title/tt0015163/	f
289	Seven Chances	1925	static/posters/289_Seven Chances.jpg	1023	https://www.imdb.com/title/tt0016332/	f
291	The Cameraman	1928	static/posters/291_The Cameraman.jpg	1023	https://www.imdb.com/title/tt0018742/	f
292	Steamboat Bill, Jr.	1928	static/posters/292_Steamboat Bill_ Jr..jpg	1023	https://www.imdb.com/title/tt0019421/	f
294	Tenet	2020	static/posters/294_Tenet.jpg	1036	https://www.imdb.com/title/tt6723592/	t
295	Oppenheimer	2023	static/posters/295_Oppenheimer.jpg	1036	https://www.imdb.com/title/tt15398776/	t
296	The Kid	1921	static/posters/296_The Kid.jpg	1012	https://www.imdb.com/title/tt0012349/	t
299	The Circus	1928	static/posters/299_The Circus.jpg	1012	https://www.imdb.com/title/tt0018773/	f
300	City Lights	1931	static/posters/300_City Lights.jpg	1012	https://www.imdb.com/title/tt0021749/	f
301	Modern Times	1936	static/posters/301_Modern Times.jpg	1012	https://www.imdb.com/title/tt0027977/	f
303	Monsieur Verdoux	1947	static/posters/303_Monsieur Verdoux.jpg	1012	https://www.imdb.com/title/tt0039631/	f
298	The Gold Rush	1925	static/posters/298_The Gold Rush.jpg	1012	https://www.imdb.com/title/tt0015864/	t
312	The Man Who Wasn't There	2001	static/posters/312_The Man Who Wasn_t There.jpg	1057	https://www.imdb.com/title/tt0243133/	f
342	Munich	2005	static/posters/342_Munich.jpg	1001	https://www.imdb.com/title/tt0408306/	f
1097	American Graffiti	1973	static/posters/1097_American Graffiti.jpg	1122	https://www.imdb.com/title/tt0069704/	t
178	Little Women	2019	static/posters/178_Little Women.jpg	1017	https://www.imdb.com/title/tt3281548/	t
327	Close Encounters of the Third Kind	1977	static/posters/327_Close Encounters of the Third Kind.jpg	1001	https://www.imdb.com/title/tt0075860/	t
304	Limelight	1952	static/posters/304_Limelight.jpg	1012	https://www.imdb.com/title/tt0044837/	f
305	Blood Simple	1984	static/posters/305_Blood Simple.jpg	1057	https://www.imdb.com/title/tt0086979/	f
307	Miller's Crossing	1990	static/posters/307_Miller_s Crossing.jpg	1057	https://www.imdb.com/title/tt0100150/	f
308	Barton Fink	1991	static/posters/308_Barton Fink.jpg	1057	https://www.imdb.com/title/tt0101410/	f
309	Fargo	1996	static/posters/309_Fargo.jpg	1057	https://www.imdb.com/title/tt0116282/	t
311	O Brother, Where Art Thou?	2000	static/posters/311_O Brother_ Where Art Thou_.jpg	1057	https://www.imdb.com/title/tt0190590/	f
313	No Country for Old Men	2007	static/posters/313_No Country for Old Men.jpg	1057	https://www.imdb.com/title/tt0477348/	t
314	Burn After Reading	2008	static/posters/314_Burn After Reading.jpg	1057	https://www.imdb.com/title/tt0887883/	t
315	A Serious Man	2009	static/posters/315_A Serious Man.jpg	1057	https://www.imdb.com/title/tt1019452/	t
317	Inside Llewyn Davis	2013	static/posters/317_Inside Llewyn Davis.jpg	1057	https://www.imdb.com/title/tt2042568/	t
318	The Ballad of Buster Scruggs	2018	static/posters/318_The Ballad of Buster Scruggs.jpg	1057	https://www.imdb.com/title/tt6412452/	t
319	Trainspotting	1996	static/posters/319_Trainspotting.jpg	1009	https://www.imdb.com/title/tt0117951/	t
321	Sunshine	2007	static/posters/321_Sunshine.jpg	1009	https://www.imdb.com/title/tt0448134/	t
322	Slumdog Millionaire	2008	static/posters/322_Slumdog Millionaire.jpg	1009	https://www.imdb.com/title/tt1010048/	t
323	127 Hours	2010	static/posters/323_127 Hours.jpg	1009	https://www.imdb.com/title/tt1542344/	t
324	Steve Jobs	2015	static/posters/324_Steve Jobs.jpg	1009	https://www.imdb.com/title/tt2080374/	t
325	Duel	1971	static/posters/325_Duel.jpg	1001	https://www.imdb.com/title/tt0067023/	f
328	Raiders of the Lost Ark	1981	static/posters/328_Raiders of the Lost Ark.jpg	1001	https://www.imdb.com/title/tt0082971/	t
330	Indiana Jones and the Temple of Doom	1984	static/posters/330_Indiana Jones and the Temple of Doom.jpg	1001	https://www.imdb.com/title/tt0087469/	t
331	The Color Purple	1985	static/posters/331_The Color Purple.jpg	1001	https://www.imdb.com/title/tt0088939/	f
332	Empire of the Sun	1987	static/posters/332_Empire of the Sun.jpg	1001	https://www.imdb.com/title/tt0092965/	f
333	Indiana Jones and the Last Crusade	1989	static/posters/333_Indiana Jones and the Last Crusade.jpg	1001	https://www.imdb.com/title/tt0097576/	t
335	Schindler's List	1993	static/posters/335_Schindler_s List.jpg	1001	https://www.imdb.com/title/tt0108052/	t
336	Amistad	1997	static/posters/336_Amistad.jpg	1001	https://www.imdb.com/title/tt0118607/	f
337	Saving Private Ryan	1998	static/posters/337_Saving Private Ryan.jpg	1001	https://www.imdb.com/title/tt0120815/	t
338	A.I. Artificial Intelligence	2001	static/posters/338_A.I. Artificial Intelligence.jpg	1001	https://www.imdb.com/title/tt0212720/	f
340	Minority Report	2002	static/posters/340_Minority Report.jpg	1001	https://www.imdb.com/title/tt0181689/	t
341	The Terminal	2004	static/posters/341_The Terminal.jpg	1001	https://www.imdb.com/title/tt0362227/	t
343	War of the Worlds	2005	static/posters/343_War of the Worlds.jpg	1001	https://www.imdb.com/title/tt0407304/	t
344	Lincoln	2012	static/posters/344_Lincoln.jpg	1001	https://www.imdb.com/title/tt0443272/	t
345	Bridge of Spies	2015	static/posters/345_Bridge of Spies.jpg	1001	https://www.imdb.com/title/tt3682448/	t
347	The Virgin Suicides	1999	static/posters/347_The Virgin Suicides.jpg	1039	https://www.imdb.com/title/tt0159097/	f
348	Lost in Translation	2003	static/posters/348_Lost in Translation.jpg	1039	https://www.imdb.com/title/tt0335266/	t
350	Somewhere	2010	static/posters/350_Somewhere.jpg	1039	https://www.imdb.com/title/tt1421051/	f
353	Red Psalm	1972	static/posters/353_Red Psalm.jpg	1064	https://www.imdb.com/title/tt0067467/	f
355	Electra, My Love	1974	static/posters/355_Electra_ My Love.jpg	1064	https://www.imdb.com/title/tt0072241/	f
356	Take the Money and Run	1969	static/posters/356_Take the Money and Run.jpg	1056	https://www.imdb.com/title/tt0065063/	f
358	Annie Hall	1977	static/posters/358_Annie Hall.jpg	1056	https://www.imdb.com/title/tt0075686/	t
359	Interiors	1978	static/posters/359_Interiors.jpg	1056	https://www.imdb.com/title/tt0077742/	f
361	Stardust Memories	1980	static/posters/361_Stardust Memories.jpg	1056	https://www.imdb.com/title/tt0081554/	f
362	Zelig	1983	static/posters/362_Zelig.jpg	1056	https://www.imdb.com/title/tt0086637/	t
363	Broadway Danny Rose	1984	static/posters/363_Broadway Danny Rose.jpg	1056	https://www.imdb.com/title/tt0087003/	f
365	Hannah and Her Sisters	1986	static/posters/365_Hannah and Her Sisters.jpg	1056	https://www.imdb.com/title/tt0091167/	f
367	Another Woman	1988	static/posters/367_Another Woman.jpg	1056	https://www.imdb.com/title/tt0094663/	f
368	Crimes and Misdemeanors	1989	static/posters/368_Crimes and Misdemeanors.jpg	1056	https://www.imdb.com/title/tt0097123/	f
370	Match Point	2005	static/posters/370_Match Point.jpg	1056	https://www.imdb.com/title/tt0416320/	f
371	Vicky Cristina Barcelona	2008	static/posters/371_Vicky Cristina Barcelona.jpg	1056	https://www.imdb.com/title/tt0497465/	t
372	Midnight in Paris	2011	static/posters/372_Midnight in Paris.jpg	1056	https://www.imdb.com/title/tt1605783/	f
374	Brazil	1985	static/posters/374_Brazil.jpg	1018	https://www.imdb.com/title/tt0088846/	t
375	The Adventures of Baron Munchausen	1989	static/posters/375_The Adventures of Baron Munchausen.jpg	1018	https://www.imdb.com/title/tt0096764/	t
376	The Fisher King	1991	static/posters/376_The Fisher King.jpg	1018	https://www.imdb.com/title/tt0101889/	f
377	12 Monkeys	1995	static/posters/377_12 Monkeys.jpg	1018	https://www.imdb.com/title/tt0114746/	t
379	It Happened One Night	1934	static/posters/379_It Happened One Night.jpg	1060	https://www.imdb.com/title/tt0025316/	f
349	Marie Antoinette	2006	static/posters/349_Marie Antoinette.jpg	1039	https://www.imdb.com/title/tt0422720/	t
380	You Can't Take it with You	1938	static/posters/380_You Can_t Take it with You.jpg	1060	https://www.imdb.com/title/tt0030993/	f
381	Mr. Smith Goes to Washington	1939	static/posters/381_Mr. Smith Goes to Washington.jpg	1060	https://www.imdb.com/title/tt0031679/	f
382	Arsenic and Old Lace	1944	static/posters/382_Arsenic and Old Lace.jpg	1060	https://www.imdb.com/title/tt0036613/	f
384	I Was Born, But...	1932	static/posters/384_I Was Born_ But....jpg	1037	https://www.imdb.com/title/tt0023634/	f
385	The Only Son	1936	static/posters/385_The Only Son.jpg	1037	https://www.imdb.com/title/tt0027752/	f
386	There Was a Father	1942	static/posters/386_There Was a Father.jpg	1037	https://www.imdb.com/title/tt0034591/	f
387	Late Spring	1949	static/posters/387_Late Spring.jpg	1037	https://www.imdb.com/title/tt0041154/	f
389	Tokyo Story	1953	static/posters/389_Tokyo Story.jpg	1037	https://www.imdb.com/title/tt0046438/	f
390	Equinox Flower	1958	static/posters/390_Equinox Flower.jpg	1037	https://www.imdb.com/title/tt0051720/	f
391	Floating Weeds	1959	static/posters/391_Floating Weeds.jpg	1037	https://www.imdb.com/title/tt0053390/	f
392	Good Morning	1959	static/posters/392_Good Morning.jpg	1037	https://www.imdb.com/title/tt0053134/	f
394	The End of Summer	1961	static/posters/394_The End of Summer.jpg	1037	https://www.imdb.com/title/tt0055052/	f
395	An Autumn Afternoon	1962	static/posters/395_An Autumn Afternoon.jpg	1037	https://www.imdb.com/title/tt0056444/	f
396	Knife in the Water	1962	static/posters/396_Knife in the Water.jpg	1038	https://www.imdb.com/title/tt0056291/	f
398	Cul-de-sac	1966	static/posters/398_Cul-de-sac.jpg	1038	https://www.imdb.com/title/tt0060268/	f
399	Rosemary's Baby	1968	static/posters/399_Rosemary_s Baby.jpg	1038	https://www.imdb.com/title/tt0063522/	f
400	Chinatown	1974	static/posters/400_Chinatown.jpg	1038	https://www.imdb.com/title/tt0071315/	f
401	The Tenant	1976	static/posters/401_The Tenant.jpg	1038	https://www.imdb.com/title/tt0074811/	f
403	The Pianist	2002	static/posters/403_The Pianist.jpg	1038	https://www.imdb.com/title/tt0253474/	f
404	The Ghost Writer	2010	static/posters/404_The Ghost Writer.jpg	1038	https://www.imdb.com/title/tt1139328/	t
405	Carnage	2011	static/posters/405_Carnage.jpg	1038	https://www.imdb.com/title/tt1692486/	t
407	Requiem for a Dream	2000	static/posters/407_Requiem for a Dream.jpg	1003	https://www.imdb.com/title/tt0180093/	t
408	The Fountain	2006	static/posters/408_The Fountain.jpg	1003	https://www.imdb.com/title/tt0414993/	f
409	The Wrestler	2008	static/posters/409_The Wrestler.jpg	1003	https://www.imdb.com/title/tt1125849/	t
419	The 400 Blows	1959	static/posters/419_The 400 Blows.jpg	1050	https://www.imdb.com/title/tt0053198/	f
412	Loves of a Blonde	1965	static/posters/412_Loves of a Blonde.jpg	1014	https://www.imdb.com/title/tt0059415/	f
413	The Firemen's Ball	1967	static/posters/413_The Firemen_s Ball.jpg	1014	https://www.imdb.com/title/tt0061781/	f
414	Taking Off	1971	static/posters/414_Taking Off.jpg	1014	https://www.imdb.com/title/tt0067820/	f
416	Hair	1979	static/posters/416_Hair.jpg	1014	https://www.imdb.com/title/tt0079261/	t
417	Amadeus	1984	static/posters/417_Amadeus.jpg	1014	https://www.imdb.com/title/tt0086879/	t
418	The People vs. Larry Flynt	1996	static/posters/418_The People vs. Larry Flynt.jpg	1014	https://www.imdb.com/title/tt0117318/	t
421	Jules et Jim	1962	static/posters/421_Jules et Jim.jpg	1050	https://www.imdb.com/title/tt0055032/	f
422	The Soft Skin	1964	static/posters/422_The Soft Skin.jpg	1050	https://www.imdb.com/title/tt0058458/	f
423	Stolen Kisses	1968	static/posters/423_Stolen Kisses.jpg	1050	https://www.imdb.com/title/tt0062695/	f
424	Mississippi Mermaid	1969	static/posters/424_Mississippi Mermaid.jpg	1050	https://www.imdb.com/title/tt0064990/	f
426	Two English Girls	1971	static/posters/426_Two English Girls.jpg	1050	https://www.imdb.com/title/tt0066989/	f
427	Day for Night	1973	static/posters/427_Day for Night.jpg	1050	https://www.imdb.com/title/tt0070460/	f
428	Small Change	1976	static/posters/428_Small Change.jpg	1050	https://www.imdb.com/title/tt0074152/	f
429	The Man Who Loved Women	1977	static/posters/429_The Man Who Loved Women.jpg	1050	https://www.imdb.com/title/tt0076155/	f
431	The Woman Next Door	1981	static/posters/431_The Woman Next Door.jpg	1050	https://www.imdb.com/title/tt0082370/	f
432	Turkish Delight	1973	static/posters/432_Turkish Delight.jpg	1049	https://www.imdb.com/title/tt0070842/	f
433	Robocop	1987	static/posters/433_Robocop.jpg	1049	https://www.imdb.com/title/tt0093870/	t
435	Basic Instincts	1992	static/posters/435_Basic Instinct.jpg	1049	https://www.imdb.com/title/tt0103772/	f
436	Showgirls	1995	static/posters/436_Showgirls.jpg	1049	https://www.imdb.com/title/tt0114436/	f
437	Starship Troopers	1997	static/posters/437_Starship Troopers.jpg	1049	https://www.imdb.com/title/tt0120201/	t
438	Black Book	2006	static/posters/438_Black Book.jpg	1049	https://www.imdb.com/title/tt0389557/	f
440	Benedetta	2021	static/posters/440_Benedetta.jpg	1049	https://www.imdb.com/title/tt6823148/	t
441	The Squid and the Whale	2005	static/posters/441_The Squid and the Whale.jpg	1005	https://www.imdb.com/title/tt0367089/	t
442	Greenberg	2010	static/posters/442_Greenberg.jpg	1005	https://www.imdb.com/title/tt1234654/	f
443	Frances Ha	2012	static/posters/443_Frances Ha.jpg	1005	https://www.imdb.com/title/tt2347569/	t
445	Marriage Story	2019	static/posters/445_Marriage Story.jpg	1005	https://www.imdb.com/title/tt7653254/	t
446	A Fistful of Dollars	1964	static/posters/446_A Fistful of Dollars.jpg	1030	https://www.imdb.com/title/tt0058461/	t
447	For a Few Dollars More	1965	static/posters/447_For a Few Dollars More.jpg	1030	https://www.imdb.com/title/tt0059578/	t
449	Once Upon a Time in the West	1968	static/posters/449_Once Upon a Time in the West.jpg	1030	https://www.imdb.com/title/tt0064116/	t
450	A Fistful of Dynamite	1971	static/posters/450_A Fistful of Dynamite.jpg	1030	https://www.imdb.com/title/tt0067140/	f
451	Once Upon a Time in America	1984	static/posters/451_Once Upon a Time in America.jpg	1030	https://www.imdb.com/title/tt0087843/	f
601	Viridiana	1961	static/posters/601_Viridiana.jpg	1010	https://www.imdb.com/title/tt0055601/	f
452	Stranger Than Paradise	1984	static/posters/452_Stranger Than Paradise.jpg	1021	https://www.imdb.com/title/tt0088184/	f
453	Down by Law	1986	static/posters/453_Down by Law.jpg	1021	https://www.imdb.com/title/tt0090967/	f
455	Dead Man	1995	static/posters/455_Dead Man.jpg	1021	https://www.imdb.com/title/tt0112817/	f
456	Ghost Dog: The Way of the Samurai	1999	static/posters/456_Ghost Dog_ The Way of the Samurai.jpg	1021	https://www.imdb.com/title/tt0165798/	f
457	Only Lovers Left Alive	2013	static/posters/457_Only Lovers Left Alive.jpg	1021	https://www.imdb.com/title/tt1714915/	t
459	The Devil's Backbone	2001	static/posters/459_The Devil_s Backbone.jpg	1066	https://www.imdb.com/title/tt0256009/	f
460	Hellboy	2004	static/posters/460_Hellboy.jpg	1066	https://www.imdb.com/title/tt0167190/	t
461	Pan's Labyrinth	2006	static/posters/461_Pan_s Labyrinth.jpg	1066	https://www.imdb.com/title/tt0457430/	t
462	Pacific Rim	2013	static/posters/462_Pacific Rim.jpg	1066	https://www.imdb.com/title/tt1663662/	t
486	Rio Grande	1950	static/posters/486_Rio Grande.jpg	1055	https://www.imdb.com/title/tt0042895/	f
487	Wagon Master	1950	static/posters/487_Wagon Master.jpg	1055	https://www.imdb.com/title/tt0043117/	f
488	The Quiet Man	1952	static/posters/488_The Quiet Man.jpg	1055	https://www.imdb.com/title/tt0045061/	f
490	The Long Gray Line	1955	static/posters/490_The Long Gray Line.jpg	1055	https://www.imdb.com/title/tt0048312/	f
491	The Searchers	1956	static/posters/491_The Searchers.jpg	1055	https://www.imdb.com/title/tt0049730/	f
492	The Wings of Eagles	1957	static/posters/492_The Wings of Eagles.jpg	1055	https://www.imdb.com/title/tt0051198/	f
494	The Man Who Shot Liberty Valance	1962	static/posters/494_The Man Who Shot Liberty Valance.jpg	1055	https://www.imdb.com/title/tt0056217/	f
495	Cheyenne Autumn	1964	static/posters/495_Cheyenne Autumn.jpg	1055	https://www.imdb.com/title/tt0057940/	f
496	7 Women	1965	static/posters/496_7 Women.jpg	1055	https://www.imdb.com/title/tt0060050/	f
497	Mysterious Object at Noon	2000	static/posters/497_Mysterious Object at Noon.jpg	1100	https://www.imdb.com/title/tt0269587/	f
499	Tropical Malady	2004	static/posters/499_Tropical Malady.jpg	1100	https://www.imdb.com/title/tt0381668/	f
500	Syndromes and a Century	2006	static/posters/500_Syndromes and a Century.jpg	1100	https://www.imdb.com/title/tt0477731/	f
501	Uncle Boonmee Who Can Recall His Past Lives	2010	static/posters/501_Uncle Boonmee Who Can Recall His Past Lives.jpg	1100	https://www.imdb.com/title/tt1588895/	f
502	Cemetery of Splendour	2015	static/posters/502_Cemetery of Splendour.jpg	1100	https://www.imdb.com/title/tt2818654/	f
504	Youth Without Youth	2007	static/posters/504_Youth Without Youth.jpg	1008	https://www.imdb.com/title/tt0481797/	f
505	The Godfather	1972	static/posters/505_The Godfather.jpg	1008	https://www.imdb.com/title/tt0068646/	t
506	The Conversation	1974	static/posters/506_The Conversation.jpg	1008	https://www.imdb.com/title/tt0071360/	t
508	Apocalypse Now	1979	static/posters/508_Apocalypse Now.jpg	1008	https://www.imdb.com/title/tt0078788/	t
509	One from the Heart	1982	static/posters/509_One from the Heart.jpg	1008	https://www.imdb.com/title/tt0084445/	f
510	Rumble Fish	1983	static/posters/510_Rumble Fish.jpg	1008	https://www.imdb.com/title/tt0086216/	f
511	The Godfather Part III	1990	static/posters/511_The Godfather Part III.jpg	1008	https://www.imdb.com/title/tt0099674/	t
513	Eraserhead	1977	static/posters/513_Eraserhead.jpg	1031	https://www.imdb.com/title/tt0074486/	f
514	The Elephant Man	1980	static/posters/514_The Elephant Man.jpg	1031	https://www.imdb.com/title/tt0080678/	f
516	Blue Velvet	1986	static/posters/516_Blue Velvet.jpg	1031	https://www.imdb.com/title/tt0090756/	f
464	Guillermo del Toro's Pinocchio	2022	static/posters/464_Guillermo del Toro_s Pinocchio.jpg	1066	https://www.imdb.com/title/tt1488589/	t
465	Shoeshine	1946	static/posters/465_Shoeshine.jpg	1061	https://www.imdb.com/title/tt0038913/	f
466	Bicycle Thieves	1948	static/posters/466_Bicycle Thieves.jpg	1061	https://www.imdb.com/title/tt0040522/	t
468	Umberto D.	1952	static/posters/468_Umberto D..jpg	1061	https://www.imdb.com/title/tt0045274/	f
469	Two Women	1960	static/posters/469_Two Women.jpg	1061	https://www.imdb.com/title/tt0054749/	f
470	The Beat That My Heart Skipped	2005	static/posters/470_The Beat That My Heart Skipped.jpg	1004	https://www.imdb.com/title/tt0411270/	f
471	Rust and Bone	2012	static/posters/471_Rust and Bone.jpg	1004	https://www.imdb.com/title/tt2053425/	f
473	A Prophet	2009	static/posters/473_A Prophet.jpg	1004	https://www.imdb.com/title/tt1235166/	t
474	The Iron Horse	1924	static/posters/474_The Iron Horse.jpg	1055	https://www.imdb.com/title/tt0015016/	f
475	The Informer	1935	static/posters/475_The Informer.jpg	1055	https://www.imdb.com/title/tt0026529/	f
476	Stagecoach	1939	static/posters/476_Stagecoach.jpg	1055	https://www.imdb.com/title/tt0031971/	f
478	The Grapes of Wrath	1940	static/posters/478_The Grapes of Wrath.jpg	1055	https://www.imdb.com/title/tt0032551/	f
479	The Long Voyage Home	1940	static/posters/479_The Long Voyage Home.jpg	1055	https://www.imdb.com/title/tt0032728/	f
480	How Green Was My Valley	1941	static/posters/480_How Green Was My Valley.jpg	1055	https://www.imdb.com/title/tt0033729/	f
481	Tobacco Road	1941	static/posters/481_Tobacco Road.jpg	1055	https://www.imdb.com/title/tt0034297/	f
483	My Darling Clementine	1946	static/posters/483_My Darling Clementine.jpg	1055	https://www.imdb.com/title/tt0038762/	f
519	Lost Highway	1997	static/posters/519_Lost Highway.jpg	1031	https://www.imdb.com/title/tt0116922/	f
520	The Straight Story	1999	static/posters/520_The Straight Story.jpg	1031	https://www.imdb.com/title/tt0166896/	f
521	Mulholland Dr.	2001	static/posters/521_Mulholland Dr..jpg	1031	https://www.imdb.com/title/tt0166924/	t
523	Se7en	1995	static/posters/523_Se7en.jpg	1053	https://www.imdb.com/title/tt0114369/	t
524	Fight Club	1999	static/posters/524_Fight Club.jpg	1053	https://www.imdb.com/title/tt0137523/	t
525	Panic Room	2002	static/posters/525_Panic Room.jpg	1053	https://www.imdb.com/title/tt0258000/	t
527	The Curious Case of Benjamin Button	2008	static/posters/527_The Curious Case of Benjamin Button.jpg	1053	https://www.imdb.com/title/tt0421715/	t
3	The Square	2017	static/posters/3_The Square.jpg	1016	https://www.imdb.com/title/tt4995790/	t
528	The Social Network	2010	static/posters/528_The Social Network.jpg	1053	https://www.imdb.com/title/tt1285016/	t
529	Gone Girl	2014	static/posters/529_Gone Girl.jpg	1053	https://www.imdb.com/title/tt2267998/	t
530	Land of Silence and Darkness	1971	static/posters/530_Land of Silence and Darkness.jpg	1079	https://www.imdb.com/title/tt0067324/	f
532	The Enigma of Kaspar Hauser	1974	static/posters/532_The Enigma of Kaspar Hauser.jpg	1079	https://www.imdb.com/title/tt0071691/	f
533	The Great Ecstasy of Woodcarver Steiner	1975	static/posters/533_The Great Ecstasy of Woodcarver Steiner.jpg	1079	https://www.imdb.com/title/tt0070136/	f
534	Stroszek	1977	static/posters/534_Stroszek.jpg	1079	https://www.imdb.com/title/tt0075276/	f
535	Nosferatu the Vampyre	1979	static/posters/535_Nosferatu the Vampyre.jpg	1079	https://www.imdb.com/title/tt0079641/	f
537	Lessons of Darkness	1992	static/posters/537_Lessons of Darkness.jpg	1079	https://www.imdb.com/title/tt0104706/	f
538	Grizzly Man	2005	static/posters/538_Grizzly Man.jpg	1079	https://www.imdb.com/title/tt0427312/	f
539	Cave of Forgotten Dreams	2010	static/posters/539_Cave of Forgotten Dreams.jpg	1079	https://www.imdb.com/title/tt1664894/	f
541	Badlands	1973	static/posters/541_Badlands.jpg	1086	https://www.imdb.com/title/tt0069762/	f
542	Days of Heaven	1978	static/posters/542_Days of Heaven.jpg	1086	https://www.imdb.com/title/tt0077405/	f
543	The Thin Red Line	1998	static/posters/543_The Thin Red Line.jpg	1086	https://www.imdb.com/title/tt0120863/	t
544	The New World	2005	static/posters/544_The New World.jpg	1086	https://www.imdb.com/title/tt0402399/	f
545	The Tree of Life	2011	static/posters/545_The Tree of Life.jpg	1086	https://www.imdb.com/title/tt0478304/	f
547	A Hidden Life	2019	static/posters/547_A Hidden Life.jpg	1086	https://www.imdb.com/title/tt5827916/	f
548	Statues Also Die	1953	static/posters/548_Statues Also Die.jpg	1096	https://www.imdb.com/title/tt0046365/	f
549	Night and Fog	1955	static/posters/549_Night and Fog.jpg	1096	https://www.imdb.com/title/tt0048434/	f
551	Hiroshima mon amour	1959	static/posters/551_Hiroshima mon amour.jpg	1096	https://www.imdb.com/title/tt0052893/	f
552	Last Year at Marienbad	1961	static/posters/552_Last Year at Marienbad.jpg	1096	https://www.imdb.com/title/tt0054632/	f
553	Muriel	1963	static/posters/553_Muriel.jpg	1096	https://www.imdb.com/title/tt0057336/	f
554	La Guerre est finie	1966	static/posters/554_La Guerre est finie.jpg	1096	https://www.imdb.com/title/tt0060481/	f
556	Providence	1977	static/posters/556_Providence.jpg	1096	https://www.imdb.com/title/tt0076574/	f
557	Mon oncle d'Amérique	1980	static/posters/557_Mon oncle d_Amérique.jpg	1096	https://www.imdb.com/title/tt0081176/	f
558	Same Old Song	1997	static/posters/558_Same Old Song.jpg	1096	https://www.imdb.com/title/tt0119828/	f
560	You Ain't Seen Nothin' Yet	2012	static/posters/560_You Ain_t Seen Nothin_ Yet.jpg	1096	https://www.imdb.com/title/tt1690389/	f
561	Before the Revolution	1964	static/posters/561_Before the Revolution.jpg	1103	https://www.imdb.com/title/tt0056371/	f
562	The Spider's Stratagem	1970	static/posters/562_The Spider_s Stratagem.jpg	1103	https://www.imdb.com/title/tt0066413/	f
563	Last Tango in Paris	1972	static/posters/563_Last Tango in Paris.jpg	1103	https://www.imdb.com/title/tt0070849/	f
565	Luna	1979	static/posters/565_Luna.jpg	1103	https://www.imdb.com/title/tt0079495/	f
566	The Last Emperor	1987	static/posters/566_The Last Emperor.jpg	1103	https://www.imdb.com/title/tt0093389/	f
567	The Sheltering Sky	1990	static/posters/567_The Sheltering Sky.jpg	1103	https://www.imdb.com/title/tt0100594/	f
569	The Conformist	1970	static/posters/569_The Conformist.jpg	1103	https://www.imdb.com/title/tt0065571/	t
570	Meet Me in St. Louis	1944	static/posters/570_Meet Me in St. Louis.jpg	1087	https://www.imdb.com/title/tt0037059/	f
588	Mission: Impossible	1996	static/posters/588_Mission_ Impossible.jpg	1073	https://www.imdb.com/title/tt0117060/	t
572	The Pirate	1948	static/posters/572_The Pirate.jpg	1087	https://www.imdb.com/title/tt0040694/	f
574	The Bad and the Beautiful	1952	static/posters/574_The Bad and the Beautiful.jpg	1087	https://www.imdb.com/title/tt0044391/	f
575	The Band Wagon	1953	static/posters/575_The Band Wagon.jpg	1087	https://www.imdb.com/title/tt0045537/	f
576	Brigadoon	1954	static/posters/576_Brigadoon.jpg	1087	https://www.imdb.com/title/tt0046807/	f
577	Some Came Running	1958	static/posters/577_Some Came Running.jpg	1087	https://www.imdb.com/title/tt0052218/	f
579	Phantom of the Paradise	1974	static/posters/579_Phantom of the Paradise.jpg	1073	https://www.imdb.com/title/tt0071994/	f
580	Carrie	1976	static/posters/580_Carrie.jpg	1073	https://www.imdb.com/title/tt0074285/	f
582	Blow Out	1981	static/posters/582_Blow Out.jpg	1073	https://www.imdb.com/title/tt0082085/	f
584	Body Double	1984	static/posters/584_Body Double.jpg	1073	https://www.imdb.com/title/tt0086984/	f
585	The Untouchables	1987	static/posters/585_The Untouchables.jpg	1073	https://www.imdb.com/title/tt0094226/	f
586	Carlito's Way	1993	static/posters/586_Carlito_s Way.jpg	1073	https://www.imdb.com/title/tt0106519/	f
587	Femme Fatale	2002	static/posters/587_Femme Fatale.jpg	1073	https://www.imdb.com/title/tt0280665/	f
590	The Last of the Mohicans	1992	static/posters/590_The Last of the Mohicans.jpg	1104	https://www.imdb.com/title/tt0104691/	t
591	Heat	1995	static/posters/591_Heat.jpg	1104	https://www.imdb.com/title/tt0113277/	t
592	The Insider	1999	static/posters/592_The Insider.jpg	1104	https://www.imdb.com/title/tt0140352/	f
594	Miami Vice	2006	static/posters/594_Miami Vice.jpg	1104	https://www.imdb.com/title/tt0430357/	f
595	Un Chien andalou	1928	static/posters/595_Un Chien andalou.jpg	1010	https://www.imdb.com/title/tt0020530/	f
596	L'Age d'or	1930	static/posters/596_L_Age d_or.jpg	1010	https://www.imdb.com/title/tt0021577/	f
597	Land Without Bread	1933	static/posters/597_Land Without Bread.jpg	1010	https://www.imdb.com/title/tt0023037/	f
599	The Criminal Life of Archibaldo de la Cruz	1955	static/posters/599_The Criminal Life of Archibaldo de la Cruz.jpg	1010	https://www.imdb.com/title/tt0048037/	f
600	Nazarín	1958	static/posters/600_Nazarin.jpg	1010	https://www.imdb.com/title/tt0051983/	f
603	Simon of the Desert	1965	static/posters/603_Simon of the Desert.jpg	1010	https://www.imdb.com/title/tt0059719/	f
604	Belle de jour	1967	static/posters/604_Belle de jour.jpg	1010	https://www.imdb.com/title/tt0061395/	f
605	The Milky Way	1969	static/posters/605_The Milky Way.jpg	1010	https://www.imdb.com/title/tt0066534/	f
606	Tristana	1970	static/posters/606_Tristana.jpg	1010	https://www.imdb.com/title/tt0066491/	f
608	The Phantom of Liberty	1974	static/posters/608_The Phantom of Liberty.jpg	1010	https://www.imdb.com/title/tt0071487/	f
609	That Obscure Object of Desire	1977	static/posters/609_That Obscure Object of Desire.jpg	1010	https://www.imdb.com/title/tt0075824/	f
610	Ossessione	1943	static/posters/610_Ossessione.jpg	1098	https://www.imdb.com/title/tt0035160/	f
611	La Terra trema	1948	static/posters/611_La Terra trema.jpg	1098	https://www.imdb.com/title/tt0040866/	f
612	Bellissima	1951	static/posters/612_Bellissima.jpg	1098	https://www.imdb.com/title/tt0043332/	f
614	White Nights	1957	static/posters/614_White Nights.jpg	1098	https://www.imdb.com/title/tt0050782/	f
615	Rocco and His Brothers	1960	static/posters/615_Rocco and His Brothers.jpg	1098	https://www.imdb.com/title/tt0054248/	f
616	The Leopard	1963	static/posters/616_The Leopard.jpg	1098	https://www.imdb.com/title/tt0057091/	f
618	Death in Venice	1971	static/posters/618_Death in Venice.jpg	1098	https://www.imdb.com/title/tt0067445/	f
619	The Damned	1969	static/posters/619_The Damned.jpg	1098	https://www.imdb.com/title/tt0064118/	f
620	Ludwig	1973	static/posters/620_Ludwig.jpg	1098	https://www.imdb.com/title/tt0068883/	f
622	L'Innocente	1976	static/posters/622_L_Innocente.jpg	1098	https://www.imdb.com/title/tt0074686/	f
623	Liebelei	1933	static/posters/623_Liebelei.jpg	1090	https://www.imdb.com/title/tt0024252/	f
624	La Signora di Tutti	1934	static/posters/624_La Signora di Tutti.jpg	1090	https://www.imdb.com/title/tt0025791/	f
581	Dressed to Kill	1980	static/posters/581_Dressed to Kill.jpg	1073	https://www.imdb.com/title/tt0080661/	t
644	Blind Chance	1981	static/posters/644_Blind Chance.jpg	1083	https://www.imdb.com/title/tt0084549/	f
656	Johnny Guitar	1954	static/posters/656_Johnny Guitar.jpg	1093	https://www.imdb.com/title/tt0047136/	t
646	A Short Film About Love	1988	static/posters/646_A Short Film About Love.jpg	1083	https://www.imdb.com/title/tt0095467/	f
648	The Double Life of Véronique	1991	static/posters/648_The Double Life of Véronique.jpg	1083	https://www.imdb.com/title/tt0101765/	f
649	Three Colours: Blue	1993	static/posters/649_Three Colours_ Blue.jpg	1083	https://www.imdb.com/title/tt0108394/	f
650	Three Colours: Red	1994	static/posters/650_Three Colours_ Red.jpg	1083	https://www.imdb.com/title/tt0111495/	f
625	Letter from an Unknown Woman	1948	static/posters/625_Letter from an Unknown Woman.jpg	1090	https://www.imdb.com/title/tt0040536/	f
626	The Reckless Moment	1949	static/posters/626_The Reckless Moment.jpg	1090	https://www.imdb.com/title/tt0041786/	f
627	La Ronde	1950	static/posters/627_La Ronde.jpg	1090	https://www.imdb.com/title/tt0042906/	f
628	Le Plaisir	1952	static/posters/628_Le Plaisir.jpg	1090	https://www.imdb.com/title/tt0045034/	f
630	Lola Montès	1955	static/posters/630_Lola Montès.jpg	1090	https://www.imdb.com/title/tt0048308/	f
631	Osaka Elegy	1936	static/posters/631_Osaka Elegy.jpg	1088	https://www.imdb.com/title/tt0028021/	f
632	The Story of the Last Chrysanthemums	1939	static/posters/632_The Story of the Last Chrysanthemums.jpg	1088	https://www.imdb.com/title/tt0032156/	f
633	The 47 Ronin	1941	static/posters/633_The 47 Ronin.jpg	1088	https://www.imdb.com/title/tt0033654/	f
635	The Life of Oharu	1952	static/posters/635_The Life of Oharu.jpg	1088	https://www.imdb.com/title/tt0045112/	f
636	Gion bayashi	1953	static/posters/636_Gion bayashi.jpg	1088	https://www.imdb.com/title/tt0045814/	f
637	Ugetsu monogatari	1953	static/posters/637_Ugetsu monogatari.jpg	1088	https://www.imdb.com/title/tt0046478/	f
639	Sansho the Bailiff	1954	static/posters/639_Sansho the Bailiff.jpg	1088	https://www.imdb.com/title/tt0047445/	f
640	Princess Yang Kwei Fei	1955	static/posters/640_Princess Yang Kwei Fei.jpg	1088	https://www.imdb.com/title/tt0048820/	f
641	Taira Clan Saga	1955	static/posters/641_Taira Clan Saga.jpg	1088	https://www.imdb.com/title/tt0048610/	f
652	They Live by Night	1948	static/posters/652_They Live by Night.jpg	1093	https://www.imdb.com/title/tt0040872/	f
653	In a Lonely Place	1950	static/posters/653_In a Lonely Place.jpg	1093	https://www.imdb.com/title/tt0042593/	f
655	The Lusty Men	1952	static/posters/655_The Lusty Men.jpg	1093	https://www.imdb.com/title/tt0044860/	f
657	Rebel Without a Cause	1955	static/posters/657_Rebel Without a Cause.jpg	1093	https://www.imdb.com/title/tt0048545/	f
659	Bitter Victory	1957	static/posters/659_Bitter Victory.jpg	1093	https://www.imdb.com/title/tt0050126/	f
660	Party Girl	1958	static/posters/660_Party Girl.jpg	1093	https://www.imdb.com/title/tt0052050/	f
661	We Can't Go Home Again 	1973	static/posters/661_We Can_t Go Home Again .jpg	1093	https://www.imdb.com/title/tt0075414/	f
662	Il Divo	2008	static/posters/662_Il Divo.jpg	1105	https://www.imdb.com/title/tt1023490/	f
664	Youth	2015	static/posters/664_Youth.jpg	1105	https://www.imdb.com/title/tt3312830/	t
665	Loro	2018	static/posters/665_Loro.jpg	1105	https://www.imdb.com/title/tt10182822/	f
666	12 Angry Men	1957	static/posters/666_12 Angry Men.jpg	1054	https://www.imdb.com/title/tt0050083/	t
667	Serpico	1973	static/posters/667_Serpico.jpg	1054	https://www.imdb.com/title/tt0070666/	f
669	Network	1976	static/posters/669_Network.jpg	1054	https://www.imdb.com/title/tt0074958/	t
670	The Verdict	1982	static/posters/670_The Verdict.jpg	1054	https://www.imdb.com/title/tt0084855/	f
671	Running on Empty	1988	static/posters/671_Running on Empty.jpg	1054	https://www.imdb.com/title/tt0096018/	f
672	Battleship Potemkin	1925	static/posters/672_Battleship Potemkin.jpg	1075	https://www.imdb.com/title/tt0015648/	t
674	October	1927	static/posters/674_October.jpg	1075	https://www.imdb.com/title/tt0018217/	f
675	The General Line	1929	static/posters/675_The General Line.jpg	1075	https://www.imdb.com/title/tt0020451/	f
515	Dune	1984	static/posters/515_Dune.jpg	1031	https://www.imdb.com/title/tt0087182/	t
676	Que Viva Mexico!	1932	static/posters/676_Que Viva Mexico_.jpg	1075	https://www.imdb.com/title/tt0022756/	f
678	Ivan the Terrible, Part 1	1944	static/posters/678_Ivan the Terrible_ Part 1.jpg	1075	https://www.imdb.com/title/tt0037824/	f
645	A Short Film About Killing	1987	static/posters/645_A Short Film About Killing.jpg	1083	https://www.imdb.com/title/tt0095468/	t
680	Murder on the Orient Express	1974	static/posters/680_Murder on the Orient Express.jpg	1054	https://www.imdb.com/title/tt3402236/	f
681	Pather Panchali	1955	static/posters/681_Pather Panchali.jpg	1094	https://www.imdb.com/title/tt0048473/	f
683	The World of Apu	1959	static/posters/683_The World of Apu.jpg	1094	https://www.imdb.com/title/tt0052572/	f
684	The Big City	1963	static/posters/684_The Big City.jpg	1094	https://www.imdb.com/title/tt0057277/	f
685	Charulata	1964	static/posters/685_Charulata.jpg	1094	https://www.imdb.com/title/tt0057935/	f
687	The Music Room	1958	static/posters/687_The Music Room.jpg	1094	https://www.imdb.com/title/tt0051792/	f
688	M*A*S*H	1970	static/posters/688_M_A_S_H.jpg	1069	https://www.imdb.com/title/tt0066026/	f
689	McCabe & Mrs. Miller	1971	static/posters/689_McCabe _ Mrs. Miller.jpg	1069	https://www.imdb.com/title/tt0067411/	f
690	The Long Goodbye	1973	static/posters/690_The Long Goodbye.jpg	1069	https://www.imdb.com/title/tt0070334/	f
692	Nashville	1975	static/posters/692_Nashville.jpg	1069	https://www.imdb.com/title/tt0073440/	f
693	3 Women	1977	static/posters/693_3 Women.jpg	1069	https://www.imdb.com/title/tt0075612/	f
694	The Player	1992	static/posters/694_The Player.jpg	1069	https://www.imdb.com/title/tt0105151/	f
695	Short Cuts	1993	static/posters/695_Short Cuts.jpg	1069	https://www.imdb.com/title/tt0108122/	f
697	A Prairie Home Companion	2006	static/posters/697_A Prairie Home Companion.jpg	1069	https://www.imdb.com/title/tt0420087/	f
698	Beware of a Holy Whore	1971	static/posters/698_Beware of a Holy Whore.jpg	1076	https://www.imdb.com/title/tt0067962/	f
699	The Merchant of Four Seasons	1971	static/posters/699_The Merchant of Four Seasons.jpg	1076	https://www.imdb.com/title/tt0067227/	f
700	The Bitter Tears of Petra von Kant	1972	static/posters/700_The Bitter Tears of Petra von Kant.jpg	1076	https://www.imdb.com/title/tt0068278/	f
702	Martha	1974	static/posters/702_Martha.jpg	1076	https://www.imdb.com/title/tt0070374/	f
703	Fox and His Friends	1975	static/posters/703_Fox and His Friends.jpg	1076	https://www.imdb.com/title/tt0072976/	f
704	In a Year with 13 Moons	1978	static/posters/704_In a Year with 13 Moons.jpg	1076	https://www.imdb.com/title/tt0077729/	f
707	Berlin Alexanderplatz	1980	static/posters/707_Berlin Alexanderplatz.jpg	1076	https://www.imdb.com/title/tt0080196/	f
708	Lola	1981	static/posters/708_Lola.jpg	1076	https://www.imdb.com/title/tt0082671/	f
709	Querelle	1982	static/posters/709_Querelle.jpg	1076	https://www.imdb.com/title/tt0084565/	f
710	Veronika Voss	1982	static/posters/710_Veronika Voss.jpg	1076	https://www.imdb.com/title/tt0084654/	f
712	Sunset Blvd.	1950	static/posters/712_Sunset Blvd..jpg	1102	https://www.imdb.com/title/tt0043014/	f
713	Ace in the Hole	1951	static/posters/713_Ace in the Hole.jpg	1102	https://www.imdb.com/title/tt0043338/	f
714	Love in the Afternoon	1957	static/posters/714_Love in the Afternoon.jpg	1102	https://www.imdb.com/title/tt0050658/	f
715	Witness for the Prosecution	1957	static/posters/715_Witness for the Prosecution.jpg	1102	https://www.imdb.com/title/tt0051201/	f
717	The Apartment	1960	static/posters/717_The Apartment.jpg	1102	https://www.imdb.com/title/tt0053604/	f
718	One, Two, Three	1961	static/posters/718_One_ Two_ Three.jpg	1102	https://www.imdb.com/title/tt0055256/	f
719	The Private Life of Sherlock Holmes	1970	static/posters/719_The Private Life of Sherlock Holmes.jpg	1102	https://www.imdb.com/title/tt0066249/	f
720	Avanti!	1972	static/posters/720_Avanti_.jpg	1102	https://www.imdb.com/title/tt0068240/	f
722	Jeanne Dielman, 23 Quai du Commerce, 1080 Bruxelles	1975	static/posters/722_Jeanne Dielman_ 23 Quai du Commerce_ 1080 Bruxelles.jpg	1068	https://www.imdb.com/title/tt0073198/	f
723	News from Home	1976	static/posters/723_News from Home.jpg	1068	https://www.imdb.com/title/tt0076452/	f
724	The Meetings of Anna	1978	static/posters/724_The Meetings of Anna.jpg	1068	https://www.imdb.com/title/tt0078152/	f
725	Toute une nuit	1982	static/posters/725_Toute une nuit.jpg	1068	https://www.imdb.com/title/tt0084808/	f
727	La Captive	2000	static/posters/727_La Captive.jpg	1068	https://www.imdb.com/title/tt0216605/	f
728	No Home Movie	2015	static/posters/728_No Home Movie.jpg	1068	https://www.imdb.com/title/tt4881016/	f
731	Day of Wrath	1943	static/posters/731_Day of Wrath.jpg	1074	https://www.imdb.com/title/tt0036506/	f
729	The Passion of Joan of Arc	1928	static/posters/729_The Passion of Joan of Arc.jpg	1074	https://www.imdb.com/title/tt0019254/	t
733	Gertrud	1964	static/posters/733_Gertrud.jpg	1074	https://www.imdb.com/title/tt0058138/	f
734	Accattone	1961	static/posters/734_Accattone.jpg	1091	https://www.imdb.com/title/tt0054599/	f
737	The Hawks and the Sparrows	1966	static/posters/737_The Hawks and the Sparrows.jpg	1091	https://www.imdb.com/title/tt0061132/	f
738	Oedipus Rex	1967	static/posters/738_Oedipus Rex.jpg	1091	https://www.imdb.com/title/tt0061613/	f
739	Teorema	1968	static/posters/739_Teorema.jpg	1091	https://www.imdb.com/title/tt0063678/	f
740	Medea	1969	static/posters/740_Medea.jpg	1091	https://www.imdb.com/title/tt0066065/	f
742	Arabian Nights	1974	static/posters/742_Arabian Nights.jpg	1091	https://www.imdb.com/title/tt0071502/	f
743	Salò, or the 120 Days of Sodom	1975	static/posters/743_Salò_ or the 120 Days of Sodom.jpg	1091	https://www.imdb.com/title/tt0073650/	f
744	Les Anges du péché	1943	static/posters/744_Les Anges du péché.jpg	1071	https://www.imdb.com/title/tt0035636/	f
745	Les Dames du Bois de Boulogne	1945	static/posters/745_Les Dames du Bois de Boulogne.jpg	1071	https://www.imdb.com/title/tt0037630/	f
364	The Purple Rose of Cairo	1985	static/posters/364_The Purple Rose of Cairo.jpg	1056	https://www.imdb.com/title/tt0089853/	t
4	Love	2015	static/posters/4_Love.jpg	1035	https://www.imdb.com/title/tt3774694/	t
747	A Man Escaped	1956	static/posters/747_A Man Escaped.jpg	1071	https://www.imdb.com/title/tt0049902/	f
748	Pickpocket	1959	static/posters/748_Pickpocket.jpg	1071	https://www.imdb.com/title/tt0053168/	f
749	Trial of Joan of Arc	1962	static/posters/749_Trial of Joan of Arc.jpg	1071	https://www.imdb.com/title/tt0059616/	f
750	Au hasard Balthazar	1966	static/posters/750_Au hasard Balthazar.jpg	1071	https://www.imdb.com/title/tt0060138/	f
751	Mouchette	1967	static/posters/751_Mouchette.jpg	1071	https://www.imdb.com/title/tt0061996/	f
753	Four Nights of a Dreamer	1971	static/posters/753_Four Nights of a Dreamer.jpg	1071	https://www.imdb.com/title/tt0067641/	f
754	Lancelot du Lac	1974	static/posters/754_Lancelot du Lac.jpg	1071	https://www.imdb.com/title/tt0071737/	f
755	The Devil, Probably	1977	static/posters/755_The Devil_ Probably.jpg	1071	https://www.imdb.com/title/tt0075938/	f
757	La Chienne	1931	static/posters/757_La Chienne.jpg	1095	https://www.imdb.com/title/tt0021739/	f
758	Boudu Saved from Drowning	1932	static/posters/758_Boudu Saved from Drowning.jpg	1095	https://www.imdb.com/title/tt0022718/	f
759	La Nuit du carrefour	1932	static/posters/759_La Nuit du carrefour.jpg	1095	https://www.imdb.com/title/tt0023284/	f
760	Toni	1935	static/posters/760_Toni.jpg	1095	https://www.imdb.com/title/tt0025898/	f
762	A Day in the Country	1936	static/posters/762_A Day in the Country.jpg	1095	https://www.imdb.com/title/tt0028445/	f
763	La Grande illusion	1937	static/posters/763_La Grande illusion.jpg	1095	https://www.imdb.com/title/tt0028950/	f
764	La Bête humaine	1938	static/posters/764_La Bête humaine.jpg	1095	https://www.imdb.com/title/tt0029957/	f
765	The Rules of the Game	1939	static/posters/765_The Rules of the Game.jpg	1095	https://www.imdb.com/title/tt0031885/	f
767	The Golden Coach	1952	static/posters/767_The Golden Coach.jpg	1095	https://www.imdb.com/title/tt0044487/	f
768	French Cancan	1955	static/posters/768_French Cancan.jpg	1095	https://www.imdb.com/title/tt0046998/	f
769	Picnic on the Grass	1959	static/posters/769_Picnic on the Grass.jpg	1095	https://www.imdb.com/title/tt0052765/	f
770	Shadows	1958	static/posters/770_Shadows.jpg	1072	https://www.imdb.com/title/tt0053270/	f
772	Husbands	1970	static/posters/772_Husbands.jpg	1072	https://www.imdb.com/title/tt0065867/	f
773	Minnie and Moskowitz	1971	static/posters/773_Minnie and Moskowitz.jpg	1072	https://www.imdb.com/title/tt0067433/	f
774	A Woman Under the Influence	1974	static/posters/774_A Woman Under the Influence.jpg	1072	https://www.imdb.com/title/tt0072417/	f
776	Opening Night	1977	static/posters/776_Opening Night.jpg	1072	https://www.imdb.com/title/tt0079672/	f
777	Gloria	1980	static/posters/777_Gloria.jpg	1072	https://www.imdb.com/title/tt0080798/	f
778	Love Streams	1984	static/posters/778_Love Streams.jpg	1072	https://www.imdb.com/title/tt0087644/	f
780	The Blue Angel	1930	static/posters/780_The Blue Angel.jpg	1099	https://www.imdb.com/title/tt0020697/	f
781	Morocco	1930	static/posters/781_Morocco.jpg	1099	https://www.imdb.com/title/tt0021156/	f
782	Dishonored	1931	static/posters/782_Dishonored.jpg	1099	https://www.imdb.com/title/tt0021800/	f
783	Blonde Venus	1932	static/posters/783_Blonde Venus.jpg	1099	https://www.imdb.com/title/tt0022698/	f
735	Mamma Roma	1962	static/posters/735_Mamma Roma.jpg	1091	https://www.imdb.com/title/tt0056215/	t
787	The Shanghai Gesture	1941	static/posters/787_The Shanghai Gesture.jpg	1099	https://www.imdb.com/title/tt0034175/	f
788	Anatahan	1953	static/posters/788_Anatahan.jpg	1099	https://www.imdb.com/title/tt0046712/	f
789	Rome, Open City	1945	static/posters/789_Rome_ Open City.jpg	1097	https://www.imdb.com/title/tt0038890/	f
790	Paisan	1946	static/posters/790_Paisan.jpg	1097	https://www.imdb.com/title/tt0038823/	f
792	The Flowers of St. Francis	1950	static/posters/792_The Flowers of St. Francis.jpg	1097	https://www.imdb.com/title/tt0042477/	f
793	Stromboli	1950	static/posters/793_Stromboli.jpg	1097	https://www.imdb.com/title/tt0041931/	f
794	Europa '51	1952	static/posters/794_Europa _51.jpg	1097	https://www.imdb.com/title/tt0043511/	f
796	Il Generale Della Rovere	1959	static/posters/796_Il Generale Della Rovere.jpg	1097	https://www.imdb.com/title/tt0053856/	f
797	India: Matri Bhumi	1959	static/posters/797_India_ Matri Bhumi.jpg	1097	https://www.imdb.com/title/tt0052923/	f
798	The Taking of Power by Louis XIV	1966	static/posters/798_The Taking of Power by Louis XIV.jpg	1097	https://www.imdb.com/title/tt0060860/	f
799	The Magnificent Ambersons	1942	static/posters/799_The Magnificent Ambersons.jpg	1101	https://www.imdb.com/title/tt0035015/	f
801	Othello	1951	static/posters/801_Othello.jpg	1101	https://www.imdb.com/title/tt0045251/	f
802	Mr. Arkadin	1955	static/posters/802_Mr. Arkadin.jpg	1101	https://www.imdb.com/title/tt0048393/	f
803	Touch of Evil	1958	static/posters/803_Touch of Evil.jpg	1101	https://www.imdb.com/title/tt0052311/	f
804	The Trial	1962	static/posters/804_The Trial.jpg	1101	https://www.imdb.com/title/tt0057427/	f
806	The Immortal Story	1968	static/posters/806_The Immortal Story.jpg	1101	https://www.imdb.com/title/tt0063127/	f
807	F for Fake	1973	static/posters/807_F for Fake.jpg	1101	https://www.imdb.com/title/tt0072962/	f
808	The Other Side of the Wind	2018	static/posters/808_The Other Side of the Wind.jpg	1101	https://www.imdb.com/title/tt0069049/	f
809	Citizen Kane	1941	static/posters/809_Citizen Kane.jpg	1101	https://www.imdb.com/title/tt0033467/	t
811	La Strada	1954	static/posters/811_La Strada.jpg	1015	https://www.imdb.com/title/tt0047528/	f
812	Il Bidone	1955	static/posters/812_Il Bidone.jpg	1015	https://www.imdb.com/title/tt0047876/	f
813	Nights of Cabiria	1957	static/posters/813_Nights of Cabiria.jpg	1015	https://www.imdb.com/title/tt0050783/	f
816	Juliet of the Spirits	1965	static/posters/816_Juliet of the Spirits.jpg	1015	https://www.imdb.com/title/tt0059229/	f
817	Fellini Satyricon	1969	static/posters/817_Fellini Satyricon.jpg	1015	https://www.imdb.com/title/tt0064940/	f
818	The Clowns	1970	static/posters/818_The Clowns.jpg	1015	https://www.imdb.com/title/tt0066922/	f
366	Radio Days	1987	static/posters/366_Radio Days.jpg	1056	https://www.imdb.com/title/tt0093818/	t
5	Climax	2018	static/posters/5_Climax.jpg	1035	https://www.imdb.com/title/tt8359848/	t
820	Amarcord	1973	static/posters/820_Amarcord.jpg	1015	https://www.imdb.com/title/tt0071129/	t
821	Fellini's Casanova	1976	static/posters/821_Fellini_s Casanova.jpg	1015	https://www.imdb.com/title/tt0074291/	f
822	Orchestra Rehearsal	1979	static/posters/822_Orchestra Rehearsal.jpg	1015	https://www.imdb.com/title/tt0079759/	f
823	And the Ship Sails On	1983	static/posters/823_And the Ship Sails On.jpg	1015	https://www.imdb.com/title/tt0087188/	f
825	Time of the Gypsies	1988	static/posters/825_Time of the Gypsies.jpg	1027	https://www.imdb.com/title/tt0097223/	f
826	Underground	1995	static/posters/826_Underground.jpg	1027	https://www.imdb.com/title/tt0114787/	f
827	Black Cat, White Cat	1998	static/posters/827_Black Cat_ White Cat.jpg	1027	https://www.imdb.com/title/tt0118843/	f
829	On the Waterfront	1954	static/posters/829_On the Waterfront.jpg	1082	https://www.imdb.com/title/tt0047296/	f
830	East of Eden	1955	static/posters/830_East of Eden.jpg	1082	https://www.imdb.com/title/tt0048028/	f
831	Baby Doll	1956	static/posters/831_Baby Doll.jpg	1082	https://www.imdb.com/title/tt0048973/	f
832	A Face in the Crowd	1957	static/posters/832_A Face in the Crowd.jpg	1082	https://www.imdb.com/title/tt0050371/	f
833	Wild River	1960	static/posters/833_Wild River.jpg	1082	https://www.imdb.com/title/tt0054476/	f
835	America, America	1963	static/posters/835_America_ America.jpg	1082	https://www.imdb.com/title/tt0056825/	f
836	Brief Encounter	1945	static/posters/836_Brief Encounter.jpg	1084	https://www.imdb.com/title/tt0037558/	f
837	Great Expectations	1946	static/posters/837_Great Expectations.jpg	1084	https://www.imdb.com/title/tt0038574/	f
815	8½	1963	static/posters/815_8½.jpg	1015	https://www.imdb.com/title/tt0056801/	t
841	Ryan's Daughter	1970	static/posters/841_Ryan_s Daughter.jpg	1084	https://www.imdb.com/title/tt0066319/	f
842	Scarface	1932	static/posters/842_Scarface.jpg	1078	https://www.imdb.com/title/tt0023427/	f
843	Bringing Up Baby	1938	static/posters/843_Bringing Up Baby.jpg	1078	https://www.imdb.com/title/tt0029947/	f
844	Only Angels Have Wings	1939	static/posters/844_Only Angels Have Wings.jpg	1078	https://www.imdb.com/title/tt0031762/	f
846	To Have and Have Not	1944	static/posters/846_To Have and Have Not.jpg	1078	https://www.imdb.com/title/tt0037382/	f
847	The Big Sleep	1946	static/posters/847_The Big Sleep.jpg	1078	https://www.imdb.com/title/tt0038355/	f
848	Red River	1948	static/posters/848_Red River.jpg	1078	https://www.imdb.com/title/tt0040724/	f
850	The Big Sky	1952	static/posters/850_The Big Sky.jpg	1078	https://www.imdb.com/title/tt0044419/	f
851	Gentlemen Prefer Blondes	1953	static/posters/851_Gentlemen Prefer Blondes.jpg	1078	https://www.imdb.com/title/tt0045810/	f
852	Rio Bravo	1959	static/posters/852_Rio Bravo.jpg	1078	https://www.imdb.com/title/tt0053221/	f
853	Hatari!	1962	static/posters/853_Hatari_.jpg	1078	https://www.imdb.com/title/tt0056059/	f
854	Red Line 7000	1965	static/posters/854_Red Line 7000.jpg	1078	https://www.imdb.com/title/tt0059641/	f
856	The Marriage Circle	1924	static/posters/856_The Marriage Circle.jpg	1085	https://www.imdb.com/title/tt0015119/	f
857	Lady Windermere's Fan	1925	static/posters/857_Lady Windermere_s Fan.jpg	1085	https://www.imdb.com/title/tt0016004/	f
858	The Student Prince in Old Heidelberg	1927	static/posters/858_The Student Prince in Old Heidelberg.jpg	1085	https://www.imdb.com/title/tt0018451/	f
859	The Smiling Lieutenant	1931	static/posters/859_The Smiling Lieutenant.jpg	1085	https://www.imdb.com/title/tt0022074/	f
861	Trouble in Paradise	1932	static/posters/861_Trouble in Paradise.jpg	1085	https://www.imdb.com/title/tt0023622/	f
862	Design for Living	1933	static/posters/862_Design for Living.jpg	1085	https://www.imdb.com/title/tt0023940/	f
863	Angel	1937	static/posters/863_Angel.jpg	1085	https://www.imdb.com/title/tt0028575/	f
864	Ninotchka	1939	static/posters/864_Ninotchka.jpg	1085	https://www.imdb.com/title/tt0031725/	f
866	To Be or Not to Be	1942	static/posters/866_To Be or Not to Be.jpg	1085	https://www.imdb.com/title/tt0035446/	f
867	Heaven Can Wait	1943	static/posters/867_Heaven Can Wait.jpg	1085	https://www.imdb.com/title/tt0035979/	f
868	Cluny Brown	1946	static/posters/868_Cluny Brown.jpg	1085	https://www.imdb.com/title/tt0038419/	f
869	Destiny	1921	static/posters/869_Destiny.jpg	1028	https://www.imdb.com/title/tt0012494/	f
871	Die Nibelungen: Siegfried	1924	static/posters/871_Die Nibelungen_ Siegfried.jpg	1028	https://www.imdb.com/title/tt0015175/	f
872	Die Nibelungen: Kriemhild's Revenge	1924	static/posters/872_Die Nibelungen_ Kriemhild_s Revenge.jpg	1028	https://www.imdb.com/title/tt0015174/	f
873	Metropolis	1927	static/posters/873_Metropolis.jpg	1028	https://www.imdb.com/title/tt0017136/	f
874	Spione	1928	static/posters/874_Spione.jpg	1028	https://www.imdb.com/title/tt0019415/	f
876	The Testament of Dr. Mabuse	1933	static/posters/876_The Testament of Dr. Mabuse.jpg	1028	https://www.imdb.com/title/tt0023563/	f
877	Fury	1936	static/posters/877_Fury.jpg	1028	https://www.imdb.com/title/tt0027652/	f
878	You Only Live Once	1937	static/posters/878_You Only Live Once.jpg	1028	https://www.imdb.com/title/tt0029808/	f
880	The Woman in the Window	1944	static/posters/880_The Woman in the Window.jpg	1028	https://www.imdb.com/title/tt0037469/	f
881	Scarlet Street	1945	static/posters/881_Scarlet Street.jpg	1028	https://www.imdb.com/title/tt0038057/	f
882	Clash by Night	1952	static/posters/882_Clash by Night.jpg	1028	https://www.imdb.com/title/tt0044502/	f
884	Moonfleet	1955	static/posters/884_Moonfleet.jpg	1028	https://www.imdb.com/title/tt0048387/	f
885	Beyond a Reasonable Doubt	1956	static/posters/885_Beyond a Reasonable Doubt.jpg	1028	https://www.imdb.com/title/tt0049006/	f
886	While the City Sleeps	1956	static/posters/886_While the City Sleeps.jpg	1028	https://www.imdb.com/title/tt0049949/	f
887	The Tiger of Eschnapur	1958	static/posters/887_The Tiger of Eschnapur.jpg	1028	https://www.imdb.com/title/tt0052295/	f
889	The 1,000 Eyes of Dr. Mabuse	1960	static/posters/889_The 1,000 Eyes of Dr. Mabuse.jpg	1028	https://www.imdb.com/title/tt0054371/	f
705	The Marriage of Maria Braun	1979	static/posters/705_The Marriage of Maria Braun.jpg	1076	https://www.imdb.com/title/tt0079095/	t
891	The Last Laugh	1924	static/posters/891_The Last Laugh.jpg	1089	https://www.imdb.com/title/tt0015064/	f
892	Faust	1926	static/posters/892_Faust.jpg	1089	https://www.imdb.com/title/tt0016847/	f
895	Tabu	1931	static/posters/895_Tabu.jpg	1089	https://www.imdb.com/title/tt0022458/	f
896	Sawdust and Tinsel	1953	static/posters/896_Sawdust and Tinsel.jpg	1007	https://www.imdb.com/title/tt0045848/	f
897	Summer with Monika	1953	static/posters/897_Summer with Monika.jpg	1007	https://www.imdb.com/title/tt0046345/	f
899	The Seventh Seal	1957	static/posters/899_The Seventh Seal.jpg	1007	https://www.imdb.com/title/tt0050976/	f
900	Wild Strawberries	1957	static/posters/900_Wild Strawberries.jpg	1007	https://www.imdb.com/title/tt0050986/	f
901	The Magician	1958	static/posters/901_The Magician.jpg	1007	https://www.imdb.com/title/tt0051365/	f
902	The Virgin Spring	1960	static/posters/902_The Virgin Spring.jpg	1007	https://www.imdb.com/title/tt0053976/	f
904	The Silence	1963	static/posters/904_The Silence.jpg	1007	https://www.imdb.com/title/tt0057611/	f
905	Winter Light	1963	static/posters/905_Winter Light.jpg	1007	https://www.imdb.com/title/tt0057358/	f
906	Persona	1966	static/posters/906_Persona.jpg	1007	https://www.imdb.com/title/tt0060827/	f
907	Hour of the Wolf	1968	static/posters/907_Hour of the Wolf.jpg	1007	https://www.imdb.com/title/tt0063759/	f
909	The Passion of Anna	1969	static/posters/909_The Passion of Anna.jpg	1007	https://www.imdb.com/title/tt0064793/	f
910	Cries and Whispers	1972	static/posters/910_Cries and Whispers.jpg	1007	https://www.imdb.com/title/tt0069467/	f
911	Autumn Sonata	1978	static/posters/911_Autumn Sonata.jpg	1007	https://www.imdb.com/title/tt0077711/	f
913	Saraband	2003	static/posters/913_Saraband.jpg	1007	https://www.imdb.com/title/tt0299478/	f
914	Anchorman: The Legend of Ron Burgundy	2004	static/posters/914_Anchorman_ The Legend of Ron Burgundy.jpg	1106	https://www.imdb.com/title/tt0357413/	f
915	Talladega Nights: The Ballad of Ricky Bobby	2006	static/posters/915_Talladega Nights_ The Ballad of Ricky Bobby.jpg	1106	https://www.imdb.com/title/tt0415306/	f
916	The Big Short	2015	static/posters/916_The Big Short.jpg	1106	https://www.imdb.com/title/tt1596363/	t
918	Dust in the Wind	1986	static/posters/918_Dust in the Wind.jpg	1080	https://www.imdb.com/title/tt0091406/	f
919	A City of Sadness	1989	static/posters/919_A City of Sadness.jpg	1080	https://www.imdb.com/title/tt0096908/	f
920	The Puppetmaster	1993	static/posters/920_The Puppetmaster.jpg	1080	https://www.imdb.com/title/tt0107157/	f
922	Flowers of Shanghai	1998	static/posters/922_Flowers of Shanghai.jpg	1080	https://www.imdb.com/title/tt0156587/	f
923	Millennium Mambo	2001	static/posters/923_Millennium Mambo.jpg	1080	https://www.imdb.com/title/tt0283283/	f
924	Café Lumière	2003	static/posters/924_Café Lumière.jpg	1080	https://www.imdb.com/title/tt0412596/	f
925	Three Times	2005	static/posters/925_Three Times.jpg	1080	https://www.imdb.com/title/tt0459666/	f
928	The Boys from Fengkuei	1983	static/posters/928_The Boys from Fengkuei.jpg	1080	https://www.imdb.com/title/tt0085533/	f
929	The Time to Live and the Time to Die	1985	static/posters/929_The Time to Live and the Time to Die.jpg	1080	https://www.imdb.com/title/tt0090185/	f
930	Don't Look Up	2021	static/posters/930_Don_t Look Up.jpg	1106	https://www.imdb.com/title/tt11286314/	t
931	Breathless	1960	static/posters/931_Breathless.jpg	1019	https://www.imdb.com/title/tt0053472/	f
933	Vivre sa vie	1962	static/posters/933_Vivre sa vie.jpg	1019	https://www.imdb.com/title/tt0056663/	f
934	Les Carabiniers	1963	static/posters/934_Les Carabiniers.jpg	1019	https://www.imdb.com/title/tt0056905/	f
935	Contempt	1963	static/posters/935_Contempt.jpg	1019	https://www.imdb.com/title/tt0057345/	f
936	Bande à part	1964	static/posters/936_Bande à part.jpg	1019	https://www.imdb.com/title/tt0057869/	f
938	Pierrot le fou	1965	static/posters/938_Pierrot le fou.jpg	1019	https://www.imdb.com/title/tt0059592/	f
939	Masculin féminin	1966	static/posters/939_Masculin féminin.jpg	1019	https://www.imdb.com/title/tt0060675/	f
940	2 or 3 Things I Know About Her	1967	static/posters/940_2 or 3 Things I Know About Her.jpg	1019	https://www.imdb.com/title/tt0060304/	f
942	Weekend	1967	static/posters/942_Weekend.jpg	1019	https://www.imdb.com/title/tt0062480/	f
943	Wind from the East	1970	static/posters/943_Wind from the East.jpg	1019	https://www.imdb.com/title/tt0065173/	f
944	Tout va bien	1972	static/posters/944_Tout va bien.jpg	1019	https://www.imdb.com/title/tt0069398/	f
945	Numéro deux	1975	static/posters/945_Numéro deux.jpg	1019	https://www.imdb.com/title/tt0073471/	f
927	The Assassin	2015	static/posters/927_The Assassin.jpg	1080	https://www.imdb.com/title/tt3508840/	t
948	Passion	1982	static/posters/948_Passion.jpg	1019	https://www.imdb.com/title/tt0084481/	f
949	Prénom Carmen	1983	static/posters/949_Prénom Carmen.jpg	1019	https://www.imdb.com/title/tt0086153/	f
950	Détective	1985	static/posters/950_Détective.jpg	1019	https://www.imdb.com/title/tt0089066/	f
952	King Lear	1987	static/posters/952_King Lear.jpg	1019	https://www.imdb.com/title/tt0093349/	f
953	Histoire(s) du cinéma	1988	static/posters/953_Histoire(s) du cinéma.jpg	1019	https://www.imdb.com/title/tt6677224/	f
954	Nouvelle vague	1990	static/posters/954_Nouvelle vague.jpg	1019	https://www.imdb.com/title/tt0100274/	f
955	Je vous salue, Sarajevo	1993	static/posters/955_Je vous salue_ Sarajevo.jpg	1019	https://www.imdb.com/title/tt0830211/	f
957	Origins of the 21st Century	2000	static/posters/957_Origins of the 21st Century.jpg	1019	https://www.imdb.com/title/tt0246866/	f
958	Notre musique	2004	static/posters/958_Notre musique.jpg	1019	https://www.imdb.com/title/tt0360845/	f
959	Film socialisme	2010	static/posters/959_Film socialisme.jpg	1019	https://www.imdb.com/title/tt1438535/	f
961	The Image Book	2018	static/posters/961_The Image Book.jpg	1019	https://www.imdb.com/title/tt5749596/	f
970	La Notte	1961	static/posters/970_La Notte.jpg	1070	https://www.imdb.com/title/tt0054130/	f
971	L'Eclisse	1962	static/posters/971_L_Eclisse.jpg	1070	https://www.imdb.com/title/tt0056736/	f
972	Red Desert	1964	static/posters/972_Red Desert.jpg	1070	https://www.imdb.com/title/tt0058003/	f
973	Blow-Up	1966	static/posters/973_Blow-Up.jpg	1070	https://www.imdb.com/title/tt0060176/	t
975	The Passenger	1975	static/posters/975_The Passenger.jpg	1070	https://www.imdb.com/title/tt0073580/	f
976	The Maltese Falcon	1941	static/posters/976_The Maltese Falcon.jpg	1081	https://www.imdb.com/title/tt0033870/	f
977	The Treasure of the Sierra Madre	1948	static/posters/977_The Treasure of the Sierra Madre.jpg	1081	https://www.imdb.com/title/tt0040897/	f
979	The African Queen	1951	static/posters/979_The African Queen.jpg	1081	https://www.imdb.com/title/tt0043265/	f
987	The Brood	1979	static/posters/987_The Brood.jpg	1013	https://www.imdb.com/title/tt0078908/	f
988	Videodrome	1983	static/posters/988_Videodrome.jpg	1013	https://www.imdb.com/title/tt0086541/	t
989	The Fly	1986	static/posters/989_The Fly.jpg	1013	https://www.imdb.com/title/tt0091064/	f
991	Eastern Promises	2007	static/posters/991_Eastern Promises.jpg	1013	https://www.imdb.com/title/tt0765443/	t
962	The Red Shoes	1948	static/posters/962_The Red Shoes.jpg	1092	https://www.imdb.com/title/tt0040725/	f
963	Peeping Tom	1960	static/posters/963_Peeping Tom.jpg	1092	https://www.imdb.com/title/tt0054167/	f
965	Black Narcissus	1947	static/posters/965_Black Narcissus.jpg	1092	https://www.imdb.com/title/tt0039192/	f
966	The Life and Death of Colonel Blimp	1943	static/posters/966_The Life and Death of Colonel Blimp.jpg	1092	https://www.imdb.com/title/tt0036112/	f
967	The Thief of Bagdad	1940	static/posters/967_The Thief of Bagdad.jpg	1092	https://www.imdb.com/title/tt0033152/	f
968	Il Grido	1957	static/posters/968_Il Grido.jpg	1070	https://www.imdb.com/title/tt0050458/	f
969	L'Avventura	1960	static/posters/969_L_Avventura.jpg	1070	https://www.imdb.com/title/tt0053619/	f
981	The Misfits	1961	static/posters/981_The Misfits.jpg	1081	https://www.imdb.com/title/tt0055184/	f
982	Fat City	1972	static/posters/982_Fat City.jpg	1081	https://www.imdb.com/title/tt0068575/	f
983	The Man Who Would Be King	1975	static/posters/983_The Man Who Would Be King.jpg	1081	https://www.imdb.com/title/tt0073341/	f
985	Under the Volcano	1984	static/posters/985_Under the Volcano.jpg	1081	https://www.imdb.com/title/tt0088322/	f
986	The Dead	1987	static/posters/986_The Dead.jpg	1081	https://www.imdb.com/title/tt0092843/	f
992	Crash	1996	static/posters/992_Crash.jpg	1013	https://www.imdb.com/title/tt0115964/	f
993	Spider	2002	static/posters/993_Spider.jpg	1013	https://www.imdb.com/title/tt0278731/	f
995	Cosmopolis	2012	static/posters/995_Cosmopolis.jpg	1013	https://www.imdb.com/title/tt1480656/	f
996	Maps to the Stars	2014	static/posters/996_Maps to the Stars.jpg	1013	https://www.imdb.com/title/tt2172584/	f
999	The Seventh Continent	1989	static/posters/999_The Seventh Continent.jpg	1077	https://www.imdb.com/title/tt0098327/	f
1000	Funny Games	1997	static/posters/1000_Funny Games.jpg	1077	https://www.imdb.com/title/tt0119167/	t
997	Crimes of the Future	2022	static/posters/997_Crimes of the Future.jpg	1013	https://www.imdb.com/title/tt14549466/	f
7	Triangle of Sadness	2022	static/posters/7_Triangle of Sadness.jpg	1016	https://www.imdb.com/title/tt7322224/	t
76	Harry Potter and the Prisoner of Azkaban	2004	static/posters/76_Harry Potter and the Prisoner of Azkaban.jpg	1067	https://www.imdb.com/title/tt0304141/	t
80	Y Tu Mamá También	2001	static/posters/80_Y Tu Mamá También.jpg	1067	https://www.imdb.com/title/tt0245574/	t
85	21 Grams	2003	static/posters/85_21 Grams.jpg	1065	https://www.imdb.com/title/tt0315733/	f
91	Pain and Glory	2019	static/posters/91_Pain and Glory.jpg	1002	https://www.imdb.com/title/tt8291806/	f
95	Parallel Mothers	2021	static/posters/95_Parallel Mothers.jpg	1002	https://www.imdb.com/title/tt12618926/	f
102	Breaking the Waves	1996	static/posters/102_Breaking the Waves.jpg	1048	https://www.imdb.com/title/tt0115751/	f
107	Dogville	2003	static/posters/107_Dogville.jpg	1048	https://www.imdb.com/title/tt0276919/	t
1010	Lock, Stock and Two Smoking Barrels	1998	static/posters/1010_Lock_ Stock and Two Smoking Barrels.jpg	1107	https://www.imdb.com/title/tt0120735/	t
1012	The Gentlemen	2020	static/posters/1012_The Gentlemen.jpg	1107	https://www.imdb.com/title/tt8367814/	t
1024	Pee-wee's Big Adventure	1985	static/posters/1024_Pee-wee_s Big Adventure.jpg	1108	https://www.imdb.com/title/tt0089791/	\N
1025	Beetlejuice	1988	static/posters/1025_Beetlejuice.jpg	1108	https://www.imdb.com/title/tt0094721/	t
1026	Batman Returns	1992	static/posters/1026_Batman Returns.jpg	1108	https://www.imdb.com/title/tt0103776/	\N
1028	Edward Scissorhands	1990	static/posters/1028_Edward Scissorhands.jpg	1108	https://www.imdb.com/title/tt0099487/	\N
1029	Big Fish	2003	static/posters/1029_Big Fish.jpg	1108	https://www.imdb.com/title/tt0319061/	\N
1031	Sweeney Todd: The Demon Barber of Fleet Street	2007	static/posters/1031_Sweeney Todd_ The Demon Barber of Fleet Street.jpg	1108	https://www.imdb.com/title/tt0408236/	\N
1032	Corpse Bride	2005	static/posters/1032_Corpse Bride.jpg	1108	https://www.imdb.com/title/tt0121164/	t
1038	Distant	2002	static/posters/1038_Distant.jpg	1112	https://www.imdb.com/title/tt0346094/	\N
1039	Climates	2006	static/posters/1039_Climates.jpg	1112	https://www.imdb.com/title/tt0498097/	\N
1041	Once Upon a Time in Anatolia	2011	static/posters/1041_Once Upon a Time in Anatolia.jpg	1112	https://www.imdb.com/title/tt1827487/	\N
1042	Winter Sleep	2014	static/posters/1042_Winter Sleep.jpg	1112	https://www.imdb.com/title/tt2758880/	\N
1001	Code Unknown	2000	static/posters/1001_Code Unknown.jpg	1077	https://www.imdb.com/title/tt0216625/	f
1004	The White Ribbon	2009	static/posters/1004_The White Ribbon.jpg	1077	https://www.imdb.com/title/tt1149362/	t
1005	Amour	2012	static/posters/1005_Amour.jpg	1077	https://www.imdb.com/title/tt1602620/	f
1006	Signs of Life	1968	static/posters/1006_Signs of Life.jpg	1079	https://www.imdb.com/title/tt0063218/	f
1008	Fata Morgana	1971	static/posters/1008_Fata Morgana.jpg	1079	https://www.imdb.com/title/tt0067085/	f
354	The Lord's Lantern in Budapest	1999	static/posters/354_The Lord_s Lantern in Budapest.jpg	1064	https://www.imdb.com/title/tt0185534/	t
1013	The Man from U.N.C.L.E.	2015	static/posters/1013_The Man from U.N.C.L.E..jpg	1107	https://www.imdb.com/title/tt1638355/	t
1014	Braindead	1992	static/posters/1014_Braindead.jpg	1109	https://www.imdb.com/title/tt0103873/	\N
1016	The Lord of the Rings: The Fellowship of the Ring	2001	static/posters/1016_The Lord of the Rings_ The Fellowship of the Ring.jpg	1109	https://www.imdb.com/title/tt0120737/	t
1017	The Lord of the Rings: The Two Towers	2002	static/posters/1017_The Lord of the Rings_ The Two Towers.jpg	1109	https://www.imdb.com/title/tt0167261/	t
1018	The Lord of the Rings: The Return of the King	2003	static/posters/1018_The Lord of the Rings_ The Return of the King.jpg	1109	https://www.imdb.com/title/tt0167260/	t
1019	King Kong	2005	static/posters/1019_King Kong.jpg	1109	https://www.imdb.com/title/tt0360717/	t
1021	Hot Fuzz	2007	static/posters/1021_Hot Fuzz.jpg	1110	https://www.imdb.com/title/tt0425112/	t
1022	Scott Pilgrim vs. the World	2010	static/posters/1022_Scott Pilgrim vs. the World.jpg	1110	https://www.imdb.com/title/tt0446029/	t
1023	Baby Driver	2017	static/posters/1023_Baby Driver.jpg	1110	https://www.imdb.com/title/tt3890160/	t
1034	In Bruges	2008	static/posters/1034_In Bruges.jpg	1111	https://www.imdb.com/title/tt0780536/	t
1035	Seven Psychopaths	2012	static/posters/1035_Seven Psychopaths.jpg	1111	https://www.imdb.com/title/tt1931533/	t
1036	The Banshees of Inisherin	2022	static/posters/1036_The Banshees of Inisherin.jpg	1111	https://www.imdb.com/title/tt11813216/	\N
1037	Six Shooter	2004	static/posters/1037_Six Shooter.jpg	1111	https://www.imdb.com/title/tt0425458/	t
1002	The Piano Teacher	2001	static/posters/1002_The Piano Teacher.jpg	1077	https://www.imdb.com/title/tt0254686/	t
111	Nymphomaniac: Vol. II	2013	static/posters/111_Nymphomaniac_ Vol. II.jpg	1048	https://www.imdb.com/title/tt2382009/	t
117	Phantom Thread	2017	static/posters/117_Phantom Thread.jpg	1058	https://www.imdb.com/title/tt5776858/	t
121	Licorice Pizza	2021	static/posters/121_Licorice Pizza.jpg	1058	https://www.imdb.com/title/tt11271038/	t
127	Avatar	2009	static/posters/127_Avatar.jpg	1011	https://www.imdb.com/title/tt0499549/	t
133	Erin Brockovich	2000	static/posters/133_Erin Brockovich.jpg	1044	https://www.imdb.com/title/tt0195685/	t
137	The Prestige	2006	static/posters/137_The Prestige.jpg	1036	https://www.imdb.com/title/tt0482571/	t
142	BlacKkKlansman	2018	static/posters/142_BlacKkKlansman.jpg	1040	https://www.imdb.com/title/tt7349662/	t
144	25th Hour	2002	static/posters/144_25th Hour.jpg	1040	https://www.imdb.com/title/tt0307901/	f
146	The Age of Innocence	1993	static/posters/146_The Age of Innocence.jpg	1041	https://www.imdb.com/title/tt0106226/	f
151	Casino	1995	static/posters/151_Casino.jpg	1041	https://www.imdb.com/title/tt0112641/	f
156	Raging Bull	1980	static/posters/156_Raging Bull.jpg	1041	https://www.imdb.com/title/tt0081398/	t
161	Gangs of New York	2002	static/posters/161_Gangs of New York.jpg	1041	https://www.imdb.com/title/tt0217505/	t
165	The Duellists	1977	static/posters/165_The Duellists.jpg	1042	https://www.imdb.com/title/tt0075968/	f
170	The Last Duel	2021	static/posters/170_The Last Duel.jpg	1042	https://www.imdb.com/title/tt4244994/	t
176	Lady Bird	2017	static/posters/176_Lady Bird.jpg	1017	https://www.imdb.com/title/tt4925292/	t
181	Isle of Dogs	2018	static/posters/181_Isle of Dogs.jpg	1059	https://www.imdb.com/title/tt5104604/	t
185	Moonrise Kingdom	2012	static/posters/185_Moonrise Kingdom.jpg	1059	https://www.imdb.com/title/tt1748122/	t
190	The Hurt Locker	2008	static/posters/190_The Hurt Locker.jpg	1006	https://www.imdb.com/title/tt0887912/	t
197	The Wind Rises	2013	static/posters/197_The Wind Rises.jpg	1033	https://www.imdb.com/title/tt2013293/	f
200	Howl's Moving Castle	2004	static/posters/200_Howl_s Moving Castle.jpg	1033	https://www.imdb.com/title/tt0347149/	t
208	Only God Forgives	2013	static/posters/208_Only God Forgives.jpg	1052	https://www.imdb.com/title/tt1602613/	t
212	Million Dollar Baby	2004	static/posters/212_Million Dollar Baby.jpg	1062	https://www.imdb.com/title/tt0405159/	t
221	Five Dedicated to Ozu	2003	static/posters/221_Five Dedicated to Ozu.jpg	1024	https://www.imdb.com/title/tt0409965/	f
225	Close-Up	1990	static/posters/225_Close-Up.jpg	1024	https://www.imdb.com/title/tt0100234/	f
229	The Wind Will Carry Us	1999	static/posters/229_The Wind Will Carry Us.jpg	1024	https://www.imdb.com/title/tt0209463/	f
236	Jane B. for Agnes V. 	1988	static/posters/236_Jane B. for Agnes V. .jpg	1047	https://www.imdb.com/title/tt0093295/	f
241	Stray Dog	1949	static/posters/241_Stray Dog.jpg	1026	https://www.imdb.com/title/tt0041699/	f
246	The Hidden Fortress	1958	static/posters/246_The Hidden Fortress.jpg	1026	https://www.imdb.com/title/tt0051808/	t
249	High and Low	1963	static/posters/249_High and Low.jpg	1026	https://www.imdb.com/title/tt0057565/	f
250	Red Beard	1965	static/posters/250_Red Beard.jpg	1026	https://www.imdb.com/title/tt0058888/	f
257	The Lodger	1927	static/posters/257_The Lodger.jpg	1020	https://www.imdb.com/title/tt0017075/	f
261	Rebecca	1940	static/posters/261_Rebecca.jpg	1020	https://www.imdb.com/title/tt0032976/	f
265	Strangers on a Train	1951	static/posters/265_Strangers on a Train.jpg	1020	https://www.imdb.com/title/tt0044079/	f
275	Everybody Knows	2018	static/posters/275_Everybody Knows.jpg	1063	https://www.imdb.com/title/tt4964788/	f
280	Andrei Rublev	1966	static/posters/280_Andrei Rublev.jpg	1045	https://www.imdb.com/title/tt0060107/	f
284	Nostalgia	1983	static/posters/284_Nostalgia.jpg	1045	https://www.imdb.com/title/tt0086022/	f
293	Dunkirk	2017	static/posters/293_Dunkirk.jpg	1036	https://www.imdb.com/title/tt5013056/	t
297	A Woman of Paris	1923	static/posters/297_A Woman of Paris.jpg	1012	https://www.imdb.com/title/tt0014624/	f
306	Raising Arizona	1987	static/posters/306_Raising Arizona.jpg	1057	https://www.imdb.com/title/tt0093822/	f
310	The Big Lebowski	1998	static/posters/310_The Big Lebowski.jpg	1057	https://www.imdb.com/title/tt0118715/	t
316	True Grit	2010	static/posters/316_True Grit.jpg	1057	https://www.imdb.com/title/tt1403865/	t
302	The Great Dictator	1940	static/posters/302_The Great Dictator.jpg	1012	https://www.imdb.com/title/tt0032553/	t
288	Sherlock Jr.	1924	static/posters/288_Sherlock Jr..jpg	1023	https://www.imdb.com/title/tt0015324/	t
320	28 Days Later	2002	static/posters/320_28 Days Later.jpg	1009	https://www.imdb.com/title/tt0289043/	t
326	Jaws	1975	static/posters/326_Jaws.jpg	1001	https://www.imdb.com/title/tt0073195/	t
329	E.T. The Extra-Terrestrial	1982	static/posters/329_E.T. The Extra-Terrestrial.jpg	1001	https://www.imdb.com/title/tt0083866/	t
334	Jurassic Park	1993	static/posters/334_Jurassic Park.jpg	1001	https://www.imdb.com/title/tt0107290/	t
339	Catch Me if You Can	2002	static/posters/339_Catch Me if You Can.jpg	1001	https://www.imdb.com/title/tt0264464/	t
346	The Fabelmans	2022	static/posters/346_The Fabelmans.jpg	1001	https://www.imdb.com/title/tt14208870/	t
352	The Red and the White	1967	static/posters/352_The Red and the White.jpg	1064	https://www.imdb.com/title/tt0061537/	f
351	The Round-Up	1966	static/posters/351_The Round-Up.jpg	1064	https://www.imdb.com/title/tt0059776/	t
357	Love and Death	1975	static/posters/357_Love and Death.jpg	1056	https://www.imdb.com/title/tt0073312/	f
360	Manhattan	1979	static/posters/360_Manhattan.jpg	1056	https://www.imdb.com/title/tt0079522/	t
369	Husbands and Wives	1992	static/posters/369_Husbands and Wives.jpg	1056	https://www.imdb.com/title/tt0104466/	f
373	Monty Python and the Holy Grail	1975	static/posters/373_Monty Python and the Holy Grail.jpg	1018	https://www.imdb.com/title/tt0071853/	t
378	Fear and Loathing in Las Vegas	1998	static/posters/378_Fear and Loathing in Las Vegas.jpg	1018	https://www.imdb.com/title/tt0120669/	t
383	It's a Wonderful Life	1946	static/posters/383_It_s a Wonderful Life.jpg	1060	https://www.imdb.com/title/tt0038650/	f
388	Early Summer	1951	static/posters/388_Early Summer.jpg	1037	https://www.imdb.com/title/tt0043313/	f
393	Late Autumn	1960	static/posters/393_Late Autumn.jpg	1037	https://www.imdb.com/title/tt0053579/	f
397	Repulsion	1965	static/posters/397_Repulsion.jpg	1038	https://www.imdb.com/title/tt0059646/	f
402	Bitter Moon	1992	static/posters/402_Bitter Moon.jpg	1038	https://www.imdb.com/title/tt0104779/	f
406	Pi	1998	static/posters/406_Pi.jpg	1003	https://www.imdb.com/title/tt0138704/	t
410	Black Swan	2010	static/posters/410_Black Swan.jpg	1003	https://www.imdb.com/title/tt0947798/	t
411	The Whale	2022	static/posters/411_The Whale.jpg	1003	https://www.imdb.com/title/tt13833688/	t
415	One Flew Over the Cuckoo's Nest	1975	static/posters/415_One Flew Over the Cuckoo_s Nest.jpg	1014	https://www.imdb.com/title/tt0073486/	t
420	Shoot the Piano Player	1960	static/posters/420_Shoot the Piano Player.jpg	1050	https://www.imdb.com/title/tt0054389/	f
425	The Wild Child	1970	static/posters/425_The Wild Child.jpg	1050	https://www.imdb.com/title/tt0064285/	f
430	The Last Metro	1980	static/posters/430_The Last Metro.jpg	1050	https://www.imdb.com/title/tt0080610/	f
434	Total Recall	1990	static/posters/434_Total Recall.jpg	1049	https://www.imdb.com/title/tt0100802/	t
439	Elle	2016	static/posters/439_Elle.jpg	1049	https://www.imdb.com/title/tt3716530/	t
448	The Good, the Bad and the Ugly	1966	static/posters/448_The Good_ the Bad and the Ugly.jpg	1030	https://www.imdb.com/title/tt0060196/	t
454	Night on Earth	1991	static/posters/454_Night on Earth.jpg	1021	https://www.imdb.com/title/tt0102536/	f
484	Fort Apache	1948	static/posters/484_Fort Apache.jpg	1055	https://www.imdb.com/title/tt0040369/	f
485	She Wore a Yellow Ribbon	1949	static/posters/485_She Wore a Yellow Ribbon.jpg	1055	https://www.imdb.com/title/tt0041866/	f
489	The Sun Shines Bright	1953	static/posters/489_The Sun Shines Bright.jpg	1055	https://www.imdb.com/title/tt0046384/	f
493	Two Rode Together	1961	static/posters/493_Two Rode Together.jpg	1055	https://www.imdb.com/title/tt0055558/	f
498	Blissfully Yours	2002	static/posters/498_Blissfully Yours.jpg	1100	https://www.imdb.com/title/tt0317171/	f
503	Memoria	2021	static/posters/503_Memoria.jpg	1100	https://www.imdb.com/title/tt8399288/	f
642	Street of Shame	1956	static/posters/642_Street of Shame.jpg	1088	https://www.imdb.com/title/tt0048933/	f
643	Camera Buff	1979	static/posters/643_Camera Buff.jpg	1083	https://www.imdb.com/title/tt0078763/	f
647	Dekalog	1989	static/posters/647_Dekalog.jpg	1083	https://www.imdb.com/title/tt0092337/	f
651	Three Colours: White	1994	static/posters/651_Three Colours_ White.jpg	1083	https://www.imdb.com/title/tt0111507/	f
507	The Godfather Part II	1974	static/posters/507_The Godfather Part II.jpg	1008	https://www.imdb.com/title/tt0071562/	t
512	Bram Stoker's Dracula	1992	static/posters/512_Bram Stoker_s Dracula.jpg	1008	https://www.imdb.com/title/tt0103874/	f
517	Wild at Heart	1990	static/posters/517_Wild at Heart.jpg	1031	https://www.imdb.com/title/tt0100935/	f
518	Twin Peaks: Fire Walk with Me	1992	static/posters/518_Twin Peaks_ Fire Walk with Me.jpg	1031	https://www.imdb.com/title/tt0105665/	f
522	Inland Empire	2006	static/posters/522_Inland Empire.jpg	1031	https://www.imdb.com/title/tt0460829/	f
526	Zodiac	2007	static/posters/526_Zodiac.jpg	1053	https://www.imdb.com/title/tt0443706/	t
531	Aguirre, the Wrath of God	1972	static/posters/531_Aguirre_ the Wrath of God.jpg	1079	https://www.imdb.com/title/tt0068182/	f
536	Fitzcarraldo	1982	static/posters/536_Fitzcarraldo.jpg	1079	https://www.imdb.com/title/tt0083946/	f
540	Encounters at the End of the World	2007	static/posters/540_Encounters at the End of the World.jpg	1079	https://www.imdb.com/title/tt1093824/	f
546	To the Wonder	2012	static/posters/546_To the Wonder.jpg	1086	https://www.imdb.com/title/tt1595656/	f
550	Toute la mémoire du monde	1956	static/posters/550_Toute la mémoire du monde.jpg	1096	https://www.imdb.com/title/tt0049869/	f
555	Je t'aime, je t'aime	1968	static/posters/555_Je t_aime_ je t_aime.jpg	1096	https://www.imdb.com/title/tt0063152/	f
559	Wild Grass	2009	static/posters/559_Wild Grass.jpg	1096	https://www.imdb.com/title/tt1156143/	f
564	1900	1976	static/posters/564_1900.jpg	1103	https://www.imdb.com/title/tt0074084/	f
568	The Dreamers	2003	static/posters/568_The Dreamers.jpg	1103	https://www.imdb.com/title/tt0309987/	f
571	The Clock	1945	static/posters/571_The Clock.jpg	1087	https://www.imdb.com/title/tt0037604/	f
573	An American in Paris	1951	static/posters/573_An American in Paris.jpg	1087	https://www.imdb.com/title/tt0043278/	f
578	Home from the Hill	1960	static/posters/578_Home from the Hill.jpg	1087	https://www.imdb.com/title/tt0053917/	f
583	Scarface	1983	static/posters/583_Scarface.jpg	1073	https://www.imdb.com/title/tt0086250/	t
589	Manhunter	1986	static/posters/589_Manhunter.jpg	1104	https://www.imdb.com/title/tt0091474/	f
593	Collateral	2004	static/posters/593_Collateral.jpg	1104	https://www.imdb.com/title/tt0369339/	f
598	Los Olvidados	1950	static/posters/598_Los Olvidados.jpg	1010	https://www.imdb.com/title/tt0042804/	f
602	The Exterminating Angel	1962	static/posters/602_The Exterminating Angel.jpg	1010	https://www.imdb.com/title/tt0056732/	f
607	The Discreet Charm of the Bourgeoisie	1972	static/posters/607_The Discreet Charm of the Bourgeoisie.jpg	1010	https://www.imdb.com/title/tt0068361/	t
613	Senso	1954	static/posters/613_Senso.jpg	1098	https://www.imdb.com/title/tt0047469/	f
617	Sandra	1965	static/posters/617_Sandra.jpg	1098	https://www.imdb.com/title/tt0059856/	f
621	Conversation Piece	1974	static/posters/621_Conversation Piece.jpg	1098	https://www.imdb.com/title/tt0071585/	f
629	The Earrings of Madame de...	1953	static/posters/629_The Earrings of Madame de....jpg	1090	https://www.imdb.com/title/tt0046022/	f
634	Miss Oyu	1951	static/posters/634_Miss Oyu.jpg	1088	https://www.imdb.com/title/tt0043892/	f
638	Chikamatsu monogatari	1954	static/posters/638_Chikamatsu monogatari.jpg	1088	https://www.imdb.com/title/tt0046851/	f
679	Ivan the Terrible, Part 2	1946	static/posters/679_Ivan the Terrible_ Part 2.jpg	1075	https://www.imdb.com/title/tt0051790/	f
682	Aparajito	1956	static/posters/682_Aparajito.jpg	1094	https://www.imdb.com/title/tt0048956/	f
686	Days and Nights in the Forest	1970	static/posters/686_Days and Nights in the Forest.jpg	1094	https://www.imdb.com/title/tt0065417/	f
691	California Split	1974	static/posters/691_California Split.jpg	1069	https://www.imdb.com/title/tt0071269/	f
696	Gosford Park	2001	static/posters/696_Gosford Park.jpg	1069	https://www.imdb.com/title/tt0280707/	f
701	Fear Eats the Soul	1974	static/posters/701_Fear Eats the Soul.jpg	1076	https://www.imdb.com/title/tt0071141/	f
706	The Third Generation	1979	static/posters/706_The Third Generation.jpg	1076	https://www.imdb.com/title/tt0079083/	f
711	Double Indemnity	1944	static/posters/711_Double Indemnity.jpg	1102	https://www.imdb.com/title/tt0036775/	f
716	Some Like it Hot	1959	static/posters/716_Some Like it Hot.jpg	1102	https://www.imdb.com/title/tt0053291/	f
721	Je, tu, il, elle	1974	static/posters/721_Je_ tu_ il_ elle.jpg	1068	https://www.imdb.com/title/tt0071690/	f
726	D'Est	1993	static/posters/726_D_Est.jpg	1068	https://www.imdb.com/title/tt0106642/	f
730	Vampyr	1932	static/posters/730_Vampyr.jpg	1074	https://www.imdb.com/title/tt0023649/	f
732	Ordet	1955	static/posters/732_Ordet.jpg	1074	https://www.imdb.com/title/tt0048452/	f
736	The Gospel According to St. Matthew	1964	static/posters/736_The Gospel According to St. Matthew.jpg	1091	https://www.imdb.com/title/tt0058715/	f
741	Notes Towards an African Orestes	1970	static/posters/741_Notes Towards an African Orestes.jpg	1091	https://www.imdb.com/title/tt0066163/	f
746	Diary of a Country Priest	1951	static/posters/746_Diary of a Country Priest.jpg	1071	https://www.imdb.com/title/tt0042619/	f
752	Une Femme douce	1969	static/posters/752_Une Femme douce.jpg	1071	https://www.imdb.com/title/tt0065152/	f
756	L'Argent	1983	static/posters/756_L_Argent.jpg	1071	https://www.imdb.com/title/tt0085180/	f
761	The Crime of Monsieur Lange	1936	static/posters/761_The Crime of Monsieur Lange.jpg	1095	https://www.imdb.com/title/tt0027478/	f
766	The River	1951	static/posters/766_The River.jpg	1095	https://www.imdb.com/title/tt0043972/	f
771	Faces	1968	static/posters/771_Faces.jpg	1072	https://www.imdb.com/title/tt0062952/	f
775	The Killing of a Chinese Bookie	1976	static/posters/775_The Killing of a Chinese Bookie.jpg	1072	https://www.imdb.com/title/tt0074749/	f
779	The Docks of New York	1931	static/posters/779_The Docks of New York.jpg	1099	https://www.imdb.com/title/tt0018839/	f
784	Shanghai Express	1932	static/posters/784_Shanghai Express.jpg	1099	https://www.imdb.com/title/tt0023458/	f
785	The Scarlet Empress	1934	static/posters/785_The Scarlet Empress.jpg	1099	https://www.imdb.com/title/tt0025746/	f
786	The Devil is a Woman	1935	static/posters/786_The Devil is a Woman.jpg	1099	https://www.imdb.com/title/tt0026276/	f
791	Germany, Year Zero	1948	static/posters/791_Germany_ Year Zero.jpg	1097	https://www.imdb.com/title/tt0039417/	f
795	Journey to Italy	1954	static/posters/795_Journey to Italy.jpg	1097	https://www.imdb.com/title/tt0046511/	f
800	The Lady from Shanghai	1948	static/posters/800_The Lady from Shanghai.jpg	1101	https://www.imdb.com/title/tt0040525/	f
805	Chimes at Midnight	1965	static/posters/805_Chimes at Midnight.jpg	1101	https://www.imdb.com/title/tt0059012/	f
814	La Dolce vita	1960	static/posters/814_La Dolce vita.jpg	1015	https://www.imdb.com/title/tt0053779/	f
819	Fellini's Roma	1972	static/posters/819_Fellini_s Roma.jpg	1015	https://www.imdb.com/title/tt0069191/	f
824	Do You Remember Dolly Bell?	1981	static/posters/824_Do You Remember Dolly Bell_.jpg	1027	https://www.imdb.com/title/tt0083089/	f
828	A Streetcar Named Desire	1951	static/posters/828_A Streetcar Named Desire.jpg	1082	https://www.imdb.com/title/tt0044081/	f
834	Splendor in the Grass	1961	static/posters/834_Splendor in the Grass.jpg	1082	https://www.imdb.com/title/tt0055471/	f
838	The Bridge on the River Kwai	1957	static/posters/838_The Bridge on the River Kwai.jpg	1084	https://www.imdb.com/title/tt0050212/	f
839	Lawrence of Arabia	1962	static/posters/839_Lawrence of Arabia.jpg	1084	https://www.imdb.com/title/tt0056172/	f
840	Doctor Zhivago	1965	static/posters/840_Doctor Zhivago.jpg	1084	https://www.imdb.com/title/tt0059113/	f
845	His Girl Friday	1940	static/posters/845_His Girl Friday.jpg	1078	https://www.imdb.com/title/tt0032599/	t
849	The Thing from Another World	1951	static/posters/849_The Thing from Another World.jpg	1078	https://www.imdb.com/title/tt0044121/	f
855	El Dorado	1966	static/posters/855_El Dorado.jpg	1078	https://www.imdb.com/title/tt0061619/	f
860	Broken Lullaby	1932	static/posters/860_Broken Lullaby.jpg	1085	https://www.imdb.com/title/tt0022725/	f
1071	Le Havre	2011	static/posters/1071_Le Havre.jpg	1117	https://www.imdb.com/title/tt1508675/	t
865	The Shop Around the Corner	1940	static/posters/865_The Shop Around the Corner.jpg	1085	https://www.imdb.com/title/tt0033045/	f
870	Dr. Mabuse, the Gambler	1922	static/posters/870_Dr. Mabuse_ the Gambler.jpg	1028	https://www.imdb.com/title/tt0013086/	f
875	M	1931	static/posters/875_M.jpg	1028	https://www.imdb.com/title/tt0022100/	t
893	Sunrise	1927	static/posters/893_Sunrise.jpg	1089	https://www.imdb.com/title/tt0018455/	f
894	City Girl	1930	static/posters/894_City Girl.jpg	1089	https://www.imdb.com/title/tt0020768/	f
898	Smiles of a Summer Night	1955	static/posters/898_Smiles of a Summer Night.jpg	1007	https://www.imdb.com/title/tt0048641/	f
903	Through a Glass Darkly	1961	static/posters/903_Through a Glass Darkly.jpg	1007	https://www.imdb.com/title/tt0055499/	f
908	Shame	1968	static/posters/908_Shame.jpg	1007	https://www.imdb.com/title/tt0063611/	f
917	Vice	2018	static/posters/917_Vice.jpg	1106	https://www.imdb.com/title/tt6266538/	t
921	Goodbye South, Goodbye	1996	static/posters/921_Goodbye South_ Goodbye.jpg	1080	https://www.imdb.com/title/tt0117151/	f
926	Flight of the Red Balloon	2007	static/posters/926_Flight of the Red Balloon.jpg	1080	https://www.imdb.com/title/tt0826711/	f
932	Une Femme est une femme	1961	static/posters/932_Une Femme est une femme.jpg	1019	https://www.imdb.com/title/tt0055572/	f
937	Alphaville	1965	static/posters/937_Alphaville.jpg	1019	https://www.imdb.com/title/tt0058898/	f
941	La Chinoise	1967	static/posters/941_La Chinoise.jpg	1019	https://www.imdb.com/title/tt0061473/	f
946	Ici et ailleurs	1976	static/posters/946_Ici et ailleurs.jpg	1019	https://www.imdb.com/title/tt0071646/	f
947	Sauve qui peut	1980	static/posters/947_Sauve qui peut.jpg	1019	https://www.imdb.com/title/tt0079854/	f
654	On Dangerous Ground	1951	static/posters/654_On Dangerous Ground.jpg	1093	https://www.imdb.com/title/tt0043879/	f
658	Bigger Than Life	1956	static/posters/658_Bigger Than Life.jpg	1093	https://www.imdb.com/title/tt0049010/	f
663	The Great Beauty	2013	static/posters/663_The Great Beauty.jpg	1105	https://www.imdb.com/title/tt2358891/	t
668	Dog Day Afternoon	1975	static/posters/668_Dog Day Afternoon.jpg	1054	https://www.imdb.com/title/tt0072890/	t
673	Strike	1925	static/posters/673_Strike.jpg	1075	https://www.imdb.com/title/tt0015361/	f
677	Alexander Nevsky	1938	static/posters/677_Alexander Nevsky.jpg	1075	https://www.imdb.com/title/tt0029850/	f
879	Hangmen Also Die!	1943	static/posters/879_Hangmen Also Die_.jpg	1028	https://www.imdb.com/title/tt0035966/	f
883	The Big Heat	1953	static/posters/883_The Big Heat.jpg	1028	https://www.imdb.com/title/tt0045555/	f
888	The Indian Tomb	1959	static/posters/888_The Indian Tomb.jpg	1028	https://www.imdb.com/title/tt0052924/	f
458	Paterson	2016	static/posters/458_Paterson.jpg	1021	https://www.imdb.com/title/tt5247022/	t
463	The Shape of Water	2017	static/posters/463_The Shape of Water.jpg	1066	https://www.imdb.com/title/tt5580390/	t
467	Miracle in Milan	1951	static/posters/467_Miracle in Milan.jpg	1061	https://www.imdb.com/title/tt0043809/	f
472	Dheepan	2015	static/posters/472_Dheepan.jpg	1004	https://www.imdb.com/title/tt4082068/	f
477	Young Mr. Lincoln	1939	static/posters/477_Young Mr. Lincoln.jpg	1055	https://www.imdb.com/title/tt0032155/	f
482	They Were Expendable	1945	static/posters/482_They Were Expendable.jpg	1055	https://www.imdb.com/title/tt0038160/	f
1043	They Shall Not Grow Old	2018	static/posters/1043_They Shall Not Grow Old.jpg	1109	https://www.imdb.com/title/tt7905466/	\N
951	Hail Mary	1985	static/posters/951_Hail Mary.jpg	1019	https://www.imdb.com/title/tt0089366/	f
956	In Praise of Love	2001	static/posters/956_In Praise of Love.jpg	1019	https://www.imdb.com/title/tt0181912/	f
960	Goodbye to Language	2014	static/posters/960_Goodbye to Language.jpg	1019	https://www.imdb.com/title/tt2400275/	f
974	Zabriskie Point	1970	static/posters/974_Zabriskie Point.jpg	1070	https://www.imdb.com/title/tt0066601/	f
978	The Asphalt Jungle	1950	static/posters/978_The Asphalt Jungle.jpg	1081	https://www.imdb.com/title/tt0042208/	f
990	Dead Ringers	1988	static/posters/990_Dead Ringers.jpg	1013	https://www.imdb.com/title/tt0094964/	f
1009	Sherlock Holmes	2009	static/posters/1009_Sherlock Holmes.jpg	1107	https://www.imdb.com/title/tt0988045/	t
1011	Snatch	2000	static/posters/1011_Snatch.jpg	1107	https://www.imdb.com/title/tt0208092/	t
1027	Ed Wood	1994	static/posters/1027_Ed Wood.jpg	1108	https://www.imdb.com/title/tt0109707/	t
1030	Charlie and the Chocolate Factory	2005	static/posters/1030_Charlie and the Chocolate Factory.jpg	1108	https://www.imdb.com/title/tt0367594/	t
1040	Three Monkeys	2008	static/posters/1040_Three Monkeys.jpg	1112	https://www.imdb.com/title/tt1233381/	\N
964	A Matter of Life and Death	1946	static/posters/964_A Matter of Life and Death.jpg	1092	https://www.imdb.com/title/tt0038733/	f
980	Moby Dick	1956	static/posters/980_Moby Dick.jpg	1081	https://www.imdb.com/title/tt0049513/	f
994	A History of Violence	2005	static/posters/994_A History of Violence.jpg	1013	https://www.imdb.com/title/tt0399146/	t
998	Naked Lunch	1991	static/posters/998_Naked Lunch.jpg	1013	https://www.imdb.com/title/tt0102511/	t
1003	Caché	2005	static/posters/1003_Caché.jpg	1077	https://www.imdb.com/title/tt0387898/	t
1007	Even Dwarfs Started Small	1970	static/posters/1007_Even Dwarfs Started Small.jpg	1079	https://www.imdb.com/title/tt0065436/	f
1015	Heavenly Creatures	1994	static/posters/1015_Heavenly Creatures.jpg	1109	https://www.imdb.com/title/tt0110005/	\N
1020	Shaun of the Dead	2004	static/posters/1020_Shaun of the Dead.jpg	1110	https://www.imdb.com/title/tt0365748/	t
1033	Three Billboards Outside Ebbing, Missouri	2017	static/posters/1033_Three Billboards Outside Ebbing_ Missouri.jpg	1111	https://www.imdb.com/title/tt5027774/	t
444	Mistress America	2015	static/posters/444_Mistress America.jpg	1005	https://www.imdb.com/title/tt2872462/	t
912	Fanny and Alexander	1982	static/posters/912_Fanny and Alexander.jpg	1007	https://www.imdb.com/title/tt0083922/	f
984	Wise Blood	1979	static/posters/984_Wise Blood.jpg	1081	https://www.imdb.com/title/tt0080140/	f
1045	My Own Private Idaho	1991	static/posters/1045_My Own Private Idaho.jpg	1113	https://www.imdb.com/title/tt0102494/	t
232	Le Bonheur	1965	static/posters/232_Le Bonheur.jpg	1047	https://www.imdb.com/title/tt0058985/	t
1081	Crouching Tiger, Hidden Dragon	2000	static/posters/1081_Crouching Tiger_ Hidden Dragon.jpg	1119	https://www.imdb.com/title/tt0190332/	t
1092	School of Rock	2003	static/posters/1092_School of Rock.jpg	1121	https://www.imdb.com/title/tt0332379/	t
1089	Dazed and Confused	1993	static/posters/1089_Dazed and Confused.jpg	1121	https://www.imdb.com/title/tt0106677/	\N
1090	Before Sunrise	1995	static/posters/1090_Before Sunrise.jpg	1121	https://www.imdb.com/title/tt0112471/	\N
1093	Before Sunset	2004	static/posters/1093_Before Sunset.jpg	1121	https://www.imdb.com/title/tt0381681/	\N
1094	A Scanner Darkly	2006	static/posters/1094_A Scanner Darkly.jpg	1121	https://www.imdb.com/title/tt0405296/	t
1095	Before Midnight	2013	static/posters/1095_Before Midnight.jpg	1121	https://www.imdb.com/title/tt2209418/	\N
1056	Happy Together	1997	static/posters/1056_Happy Together.jpg	1114	https://www.imdb.com/title/tt0118845/	\N
1057	In the Mood for Love	2000	static/posters/1057_In the Mood for Love.jpg	1114	https://www.imdb.com/title/tt0118694/	t
1058	2046	2004	static/posters/1058_2046.jpg	1114	https://www.imdb.com/title/tt0212712/	\N
1060	One-Sixth of the World	1926	static/posters/1060_One-Sixth of the World.jpg	1115	https://www.imdb.com/title/tt0017376/	\N
1061	The Man with a Movie Camera	1929	static/posters/1061_The Man with a Movie Camera.jpg	1115	https://www.imdb.com/title/tt0019760/	\N
1067	The Match Factory Girl	1990	static/posters/1067_The Match Factory Girl.jpg	1117	https://www.imdb.com/title/tt0098532/	\N
1069	Drifting Clouds	1996	static/posters/1069_Drifting Clouds.jpg	1117	https://www.imdb.com/title/tt0116752/	\N
1070	The Man Without a Past	2002	static/posters/1070_The Man Without a Past.jpg	1117	https://www.imdb.com/title/tt0311519/	\N
1072	The Other Side of Hope	2017	static/posters/1072_The Other Side of Hope.jpg	1117	https://www.imdb.com/title/tt5222918/	\N
1073	Fallen Leaves	2023	static/posters/1073_Fallen Leaves.jpg	1117	https://www.imdb.com/title/tt21027780/	\N
1075	Rosetta	1999	static/posters/1075_Rosetta.jpg	1118	https://www.imdb.com/title/tt0200071/	\N
1049	Last Days	2005	static/posters/1049_Last Days.jpg	1113	https://www.imdb.com/title/tt0403217/	\N
1050	Paranoid Park	2007	static/posters/1050_Paranoid Park.jpg	1113	https://www.imdb.com/title/tt0842929/	\N
1052	Days of Being Wild	1990	static/posters/1052_Days of Being Wild.jpg	1114	https://www.imdb.com/title/tt0101258/	\N
1053	Ashes of Time	1994	static/posters/1053_Ashes of Time.jpg	1114	https://www.imdb.com/title/tt0109688/	\N
1054	Chungking Express	1994	static/posters/1054_Chungking Express.jpg	1114	https://www.imdb.com/title/tt0109424/	\N
1062	Enthusiasm	1931	static/posters/1062_Enthusiasm.jpg	1115	https://www.imdb.com/title/tt0021375/	\N
1063	Jour de Féte	1948	static/posters/1063_Jour de Féte.jpg	1116	https://www.imdb.com/title/tt0040497/	\N
1064	Mr. Hulot's Holiday	1953	static/posters/1064_Mr. Hulot_s Holiday.jpg	1116	https://www.imdb.com/title/tt0046487/	\N
1066	Playtime	1967	static/posters/1066_Playtime.jpg	1116	https://www.imdb.com/title/tt0062136/	\N
1098	Star Wars	1977	static/posters/1098_Star Wars.jpg	1122	https://www.imdb.com/title/tt0076759/	t
1100	La Ciénaga	2001	static/posters/1100_La Ciénaga.jpg	1123	https://www.imdb.com/title/tt0240419/	\N
1111	The Holy Girl	2004	static/posters/1111_The Holy Girl.jpg	1123	https://www.imdb.com/title/tt0300270/	\N
1112	The Headless Woman	2008	static/posters/1112_The Headless Woman.jpg	1123	https://www.imdb.com/title/tt1221141/	\N
1076	The Son	2002	static/posters/1076_The Son.jpg	1118	https://www.imdb.com/title/tt0291172/	\N
1077	L'Enfant	2005	static/posters/1077_L_Enfant.jpg	1118	https://www.imdb.com/title/tt0456396/	\N
1079	Two Days, One Night	2014	static/posters/1079_Two Days_ One Night.jpg	1118	https://www.imdb.com/title/tt2737050/	t
1080	The Ice Storm	1997	static/posters/1080_The Ice Storm.jpg	1119	https://www.imdb.com/title/tt0119349/	\N
1084	Life of Pi	2012	static/posters/1084_Life of Pi.jpg	1119	https://www.imdb.com/title/tt0454876/	t
1085	Something Different	1963	static/posters/1085_Something Different.jpg	1120	https://www.imdb.com/title/tt0057374/	\N
1086	Daisies	1966	static/posters/1086_Daisies.jpg	1120	https://www.imdb.com/title/tt0060959/	\N
1082	Brokeback Mountain	2005	static/posters/1082_Brokeback Mountain.jpg	1119	https://www.imdb.com/title/tt0388795/	t
1128	The Beguiled	2017	static/posters/1128_The Beguiled.jpg	1039	https://www.imdb.com/title/tt5592248/	\N
1145	The Aviator's Wife	1981	static/posters/1145_The Aviator_s Wife.jpg	1127	https://www.imdb.com/title/tt0080728/	\N
1167	U.S. Go Home	1994	static/posters/1167_U.S. Go Home.jpg	1131	https://www.imdb.com/title/tt0111535/	\N
1113	Zama	2017	static/posters/1113_Zama.jpg	1123	https://www.imdb.com/title/tt3409848/	\N
1147	Full Moon in Paris	1984	static/posters/1147_Full Moon in Paris.jpg	1127	https://www.imdb.com/title/tt0087821/	\N
1148	The Green Ray	1986	static/posters/1148_The Green Ray.jpg	1127	https://www.imdb.com/title/tt0091830/	\N
1149	Triple Agent	2004	static/posters/1149_Triple Agent.jpg	1127	https://www.imdb.com/title/tt0374294/	\N
1123	The Women	1939	static/posters/1123_The Women.jpg	1125	https://www.imdb.com/title/tt0032143/	\N
1125	Gaslight	1944	static/posters/1125_Gaslight.jpg	1125	https://www.imdb.com/title/tt0036855/	\N
1126	A Star is Born	1954	static/posters/1126_A Star is Born.jpg	1125	https://www.imdb.com/title/tt0047522/	\N
1127	My Fair Lady	1964	static/posters/1127_My Fair Lady.jpg	1125	https://www.imdb.com/title/tt0058385/	\N
1114	Kes	1969	static/posters/1114_Kes.jpg	1124	https://www.imdb.com/title/tt0064541/	\N
1116	Raining Stones	1993	static/posters/1116_Raining Stones.jpg	1124	https://www.imdb.com/title/tt0107920/	\N
1117	Land and Freedom	1995	static/posters/1117_Land and Freedom.jpg	1124	https://www.imdb.com/title/tt0114671/	\N
1119	The Wind That Shakes the Barley	2006	static/posters/1119_The Wind That Shakes the Barley.jpg	1124	https://www.imdb.com/title/tt0460989/	\N
1120	I, Daniel Blake	2016	static/posters/1120_I_ Daniel Blake.jpg	1124	https://www.imdb.com/title/tt5168192/	\N
1136	The Blood of a Poet	1932	static/posters/1136_The Blood of a Poet.jpg	1126	https://www.imdb.com/title/tt0021331/	\N
1137	La Belle et la bête	1946	static/posters/1137_La Belle et la bête.jpg	1126	https://www.imdb.com/title/tt0038348/	\N
1139	Testament of Orpheus	1960	static/posters/1139_Testament of Orpheus.jpg	1126	https://www.imdb.com/title/tt0054377/	\N
1140	La Collectionneuse	1967	static/posters/1140_La Collectionneuse.jpg	1127	https://www.imdb.com/title/tt0061495/	\N
1141	My Night at Maud's	1969	static/posters/1141_My Night at Maud_s.jpg	1127	https://www.imdb.com/title/tt0064612/	\N
1152	The Third Man	1949	static/posters/1152_The Third Man.jpg	1128	https://www.imdb.com/title/tt0041959/	\N
1153	Outcast of the Islands	1951	static/posters/1153_Outcast of the Islands.jpg	1128	https://www.imdb.com/title/tt0045002/	\N
1154	Duck Soup	1933	static/posters/1154_Duck Soup.jpg	1129	https://www.imdb.com/title/tt0023969/	\N
1156	The Awful Truth	1937	static/posters/1156_The Awful Truth.jpg	1129	https://www.imdb.com/title/tt0028597/	\N
1150	Odd Man Out	1947	static/posters/1150_Odd Man Out.jpg	1128	https://www.imdb.com/title/tt0039677/	\N
1151	The Fallen Idol	1948	static/posters/1151_The Fallen Idol.jpg	1128	https://www.imdb.com/title/tt0040338/	\N
1158	Love Affair	1939	static/posters/1158_Love Affair.jpg	1129	https://www.imdb.com/title/tt0031593/	\N
1160	All That Heaven Allows	1955	static/posters/1160_All That Heaven Allows.jpg	1130	https://www.imdb.com/title/tt0047811/	\N
1161	There's Always Tomorrow	1956	static/posters/1161_There_s Always Tomorrow.jpg	1130	https://www.imdb.com/title/tt0049843/	\N
1162	Written on the Wind	1956	static/posters/1162_Written on the Wind.jpg	1130	https://www.imdb.com/title/tt0049966/	\N
1164	A Time to Love and a Time to Die	1958	static/posters/1164_A Time to Love and a Time to Die.jpg	1130	https://www.imdb.com/title/tt0052296/	\N
1165	Imitation of Life	1959	static/posters/1165_Imitation of Life.jpg	1130	https://www.imdb.com/title/tt0052918/	\N
1121	Sylvia Scarlett	1935	static/posters/1121_Sylvia Scarlett.jpg	1125	https://www.imdb.com/title/tt0027067/	\N
1122	Holiday	1938	static/posters/1122_Holiday.jpg	1125	https://www.imdb.com/title/tt0030241/	\N
1132	Summer Hours	2008	static/posters/1132_Summer Hours.jpg	1147	https://www.imdb.com/title/tt0836700/	\N
1133	Carlos	2010	static/posters/1133_Carlos.jpg	1147	https://www.imdb.com/title/tt1321865/	\N
1142	Claire's Knee	1970	static/posters/1142_Claire_s Knee.jpg	1127	https://www.imdb.com/title/tt0065772/	\N
1143	The Marquise of O	1976	static/posters/1143_The Marquise of O.jpg	1127	https://www.imdb.com/title/tt0074870/	\N
1144	Perceval	1978	static/posters/1144_Perceval.jpg	1127	https://www.imdb.com/title/tt0078073/	\N
1135	Personal Shopper	2016	static/posters/1135_Personal Shopper.jpg	1147	https://www.imdb.com/title/tt4714782/	t
1169	Trouble Every Day	2001	static/posters/1169_Trouble Every Day.jpg	1131	https://www.imdb.com/title/tt0204700/	\N
1170	Friday Night	2002	static/posters/1170_Friday Night.jpg	1131	https://www.imdb.com/title/tt0295743/	\N
1102	35 Shots of Rum	2008	static/posters/1102_35 Shots of Rum.jpg	1131	https://www.imdb.com/title/tt1100048/	\N
1104	White Material	2009	static/posters/1104_White Material.jpg	1131	https://www.imdb.com/title/tt1135952/	\N
1105	Bastards	2013	static/posters/1105_Bastards.jpg	1131	https://www.imdb.com/title/tt2821088/	\N
1107	High Life	2018	static/posters/1107_High Life.jpg	1131	https://www.imdb.com/title/tt4827558/	\N
1108	Taipei Story	1985	static/posters/1108_Taipei Story.jpg	1132	https://www.imdb.com/title/tt0089866/	\N
1109	The Terrorizers	1986	static/posters/1109_The Terrorizers.jpg	1132	https://www.imdb.com/title/tt0091355/	\N
1187	L'Atalante	1934	static/posters/1187_L_Atalante.jpg	1135	https://www.imdb.com/title/tt0024844/	\N
1188	Cat People	1942	static/posters/1188_Cat People.jpg	1136	https://www.imdb.com/title/tt0034587/	\N
1189	I Walked with a Zombie	1943	static/posters/1189_I Walked with a Zombie.jpg	1136	https://www.imdb.com/title/tt0036027/	\N
1103	Les Enfants du paradis	1945	static/posters/1103_Les Enfants du paradis.jpg	1140	https://www.imdb.com/title/tt0037674/	\N
1212	Performance	1970	static/posters/1212_Performance.jpg	1141	https://www.imdb.com/title/tt0066214/	\N
1200	Gone with the Wind	1939	static/posters/1200_Gone with the Wind.jpg	1138	https://www.imdb.com/title/tt0031381/	\N
1201	The Wizard of Oz	1939	static/posters/1201_The Wizard of Oz.jpg	1138	https://www.imdb.com/title/tt0032138/	t
1203	Sweetie	1989	static/posters/1203_Sweetie.jpg	1139	https://www.imdb.com/title/tt0098725/	\N
1204	An Angel at My Table	1990	static/posters/1204_An Angel at My Table.jpg	1139	https://www.imdb.com/title/tt0099040/	\N
1176	True Heart Susie	1919	static/posters/1176_True Heart Susie.jpg	1133	https://www.imdb.com/title/tt0010806/	\N
1178	Isn't Life Wonderful	1924	static/posters/1178_Isn_t Life Wonderful.jpg	1133	https://www.imdb.com/title/tt0015018/	\N
1179	Statues Also Die	1953	static/posters/1179_Statues Also Die.jpg	1134	https://www.imdb.com/title/tt0046365/	\N
1180	La Jetée	1962	static/posters/1180_La Jetée.jpg	1134	https://www.imdb.com/title/tt0056119/	\N
1191	Out of the Past	1947	static/posters/1191_Out of the Past.jpg	1136	https://www.imdb.com/title/tt0039689/	\N
1192	Stars in My Crown	1950	static/posters/1192_Stars in My Crown.jpg	1136	https://www.imdb.com/title/tt0042998/	\N
1193	Night of the Demon	1957	static/posters/1193_Night of the Demon.jpg	1136	https://www.imdb.com/title/tt0050766/	\N
1195	Sullivan's Travels	1941	static/posters/1195_Sullivan_s Travels.jpg	1137	https://www.imdb.com/title/tt0034240/	\N
1196	The Palm Beach Story	1942	static/posters/1196_The Palm Beach Story.jpg	1137	https://www.imdb.com/title/tt0035169/	\N
1197	Hail the Conquering Hero	1944	static/posters/1197_Hail the Conquering Hero.jpg	1137	https://www.imdb.com/title/tt0036891/	\N
1199	Unfaithfully Yours	1948	static/posters/1199_Unfaithfully Yours.jpg	1137	https://www.imdb.com/title/tt0040919/	\N
1205	The Piano	1993	static/posters/1205_The Piano.jpg	1139	https://www.imdb.com/title/tt0107822/	\N
1206	The Portrait of a Lady	1996	static/posters/1206_The Portrait of a Lady.jpg	1139	https://www.imdb.com/title/tt0117364/	\N
1110	A Brighter Summer Day	1991	static/posters/1110_A Brighter Summer Day.jpg	1132	https://www.imdb.com/title/tt0101985/	\N
1172	A Corner in Wheat	1909	static/posters/1172_A Corner in Wheat.jpg	1133	https://www.imdb.com/title/tt0000832/	\N
1181	Le Joli mai	1963	static/posters/1181_Le Joli mai.jpg	1134	https://www.imdb.com/title/tt0057202/	\N
1182	A Grin Without a Cat	1977	static/posters/1182_A Grin Without a Cat.jpg	1134	https://www.imdb.com/title/tt0076042/	\N
1183	Sans soleil	1983	static/posters/1183_Sans soleil.jpg	1134	https://www.imdb.com/title/tt0084628/	\N
1184	The Last Bolshevik	1993	static/posters/1184_The Last Bolshevik.jpg	1134	https://www.imdb.com/title/tt0105618/	\N
1207	In the Cut	2003	static/posters/1207_In the Cut.jpg	1139	https://www.imdb.com/title/tt0199626/	\N
1208	Bright Star	2009	static/posters/1208_Bright Star.jpg	1139	https://www.imdb.com/title/tt0810784/	\N
1209	The Power of the Dog	2021	static/posters/1209_The Power of the Dog.jpg	1139	https://www.imdb.com/title/tt10293406/	t
1106	Let the Sunshine In	2017	static/posters/1106_Let the Sunshine In.jpg	1131	https://www.imdb.com/title/tt6423776/	\N
1186	Zero for Conduct	1933	static/posters/1186_Zero for Conduct.jpg	1135	https://www.imdb.com/title/tt0024803/	\N
1211	Le Jour se lève	1939	static/posters/1211_Le Jour se lève.jpg	1140	https://www.imdb.com/title/tt0031514/	\N
1213	Walkabout	1971	static/posters/1213_Walkabout.jpg	1141	https://www.imdb.com/title/tt0067959/	\N
1214	Don't Look Now	1973	static/posters/1214_Don_t Look Now.jpg	1141	https://www.imdb.com/title/tt0069995/	\N
1215	The Man Who Fell to Earth	1976	static/posters/1215_The Man Who Fell to Earth.jpg	1141	https://www.imdb.com/title/tt0074851/	\N
1146	Pauline at the Beach	1983	static/posters/1146_Pauline at the Beach.jpg	1127	https://www.imdb.com/title/tt0086087/	\N
1124	The Philadelphia Story	1940	static/posters/1124_The Philadelphia Story.jpg	1125	https://www.imdb.com/title/tt0032904/	\N
1088	Slacker	1991	static/posters/1088_Slacker.jpg	1121	https://www.imdb.com/title/tt0102943/	\N
1232	The Spirit of the Beehive	1973	static/posters/1232_The Spirit of the Beehive.jpg	1145	https://www.imdb.com/title/tt0070040/	\N
1233	El Sur	1983	static/posters/1233_El Sur.jpg	1145	https://www.imdb.com/title/tt0084740/	\N
1234	The Quince Tree Sun	1992	static/posters/1234_The Quince Tree Sun.jpg	1145	https://www.imdb.com/title/tt0105438/	\N
1235	La Morte rouge	2006	static/posters/1235_La Morte rouge.jpg	1145	https://www.imdb.com/title/tt0806125/	\N
1236	Close Your Eyes	2023	static/posters/1236_Close Your Eyes.jpg	1145	https://www.imdb.com/title/tt21284358/	\N
1237	Shoah	1985	static/posters/1237_Shoah.jpg	1146	https://www.imdb.com/title/tt0090015/	\N
1219	The Battle of Algiers	1966	static/posters/1219_The Battle of Algiers.jpg	1142	https://www.imdb.com/title/tt0058946/	t
1239	The Last of the Unjust	2013	static/posters/1239_The Last of the Unjust.jpg	1146	https://www.imdb.com/title/tt2340784/	\N
1218	Kapo	1960	static/posters/1218_Kapo.jpg	1142	https://www.imdb.com/title/tt0052961/	\N
1250	Army of Shadows	1969	static/posters/1250_Army of Shadows.jpg	1144	https://www.imdb.com/title/tt0064040/	\N
1220	Burn!	1969	static/posters/1220_Burn_.jpg	1142	https://www.imdb.com/title/tt0064866/	\N
1225	Une Chambre en ville	1982	static/posters/1225_Une Chambre en ville.jpg	1143	https://www.imdb.com/title/tt0084843/	\N
1091	Waking Life	2001	static/posters/1091_Waking Life.jpg	1121	https://www.imdb.com/title/tt0243017/	\N
1096	Boyhood	2014	static/posters/1096_Boyhood.jpg	1121	https://www.imdb.com/title/tt1065073/	t
1059	The Grandmaster	2013	static/posters/1059_The Grandmaster.jpg	1114	https://www.imdb.com/title/tt1462900/	\N
1068	La Vie de Bohème	1992	static/posters/1068_La Vie de Bohème.jpg	1117	https://www.imdb.com/title/tt0105750/	\N
1249	Late August, Early September	1998	static/posters/1249_Late August_ Early September.jpg	1147	https://www.imdb.com/title/tt0167925/	\N
1166	Chocolat	1988	static/posters/1166_Chocolat.jpg	1131	https://www.imdb.com/title/tt0094868/	\N
1238	Sobibór, October 14, 1943, 4 p.m.	2001	static/posters/1238_Sobibór_ October 14_ 1943_ 4 p.m..jpg	1146	https://www.imdb.com/title/tt0286978/	\N
1168	Beau travail	1999	static/posters/1168_Beau travail.jpg	1131	https://www.imdb.com/title/tt0209933/	\N
1101	The Intruder	2004	static/posters/1101_The Intruder.jpg	1131	https://www.imdb.com/title/tt0422491/	\N
1074	La Promesse	1996	static/posters/1074_La Promesse.jpg	1118	https://www.imdb.com/title/tt0117398/	\N
1115	Riff-Raff	1991	static/posters/1115_Riff-Raff.jpg	1124	https://www.imdb.com/title/tt0100491/	\N
1118	Sweet Sixteen	2002	static/posters/1118_Sweet Sixteen.jpg	1124	https://www.imdb.com/title/tt0313670/	\N
1138	Orpheus	1950	static/posters/1138_Orpheus.jpg	1126	https://www.imdb.com/title/tt0041719/	\N
1217	Eureka	1983	static/posters/1217_Eureka.jpg	1141	https://www.imdb.com/title/tt0083906/	\N
1221	Lola	1961	static/posters/1221_Lola.jpg	1143	https://www.imdb.com/title/tt0055093/	\N
1223	The Young Girls of Rochefort	1967	static/posters/1223_The Young Girls of Rochefort.jpg	1143	https://www.imdb.com/title/tt0062873/	\N
1224	Donkey Skin	1970	static/posters/1224_Donkey Skin.jpg	1143	https://www.imdb.com/title/tt0066207/	\N
1226	Bob le flambeur	1955	static/posters/1226_Bob le flambeur.jpg	1144	https://www.imdb.com/title/tt0047892/	\N
1228	Second Breath	1966	static/posters/1228_Second Breath.jpg	1144	https://www.imdb.com/title/tt0060305/	\N
1229	Le Samouraï	1967	static/posters/1229_Le Samouraï.jpg	1144	https://www.imdb.com/title/tt0062229/	\N
1157	Make Way for Tomorrow	1937	static/posters/1157_Make Way for Tomorrow.jpg	1129	https://www.imdb.com/title/tt0029192/	\N
1202	Dr. Jekyll and Mr. Hyde	1941	static/posters/1202_Dr. Jekyll and Mr. Hyde.jpg	1138	https://www.imdb.com/title/tt0033553/	\N
1177	Way Down East	1920	static/posters/1177_Way Down East.jpg	1133	https://www.imdb.com/title/tt0011841/	\N
1155	Ruggles of Red Gap	1935	static/posters/1155_Ruggles of Red Gap.jpg	1129	https://www.imdb.com/title/tt0026955/	\N
1159	An Affair to Remember	1957	static/posters/1159_An Affair to Remember.jpg	1129	https://www.imdb.com/title/tt0050105/	\N
1087	Fruit of Paradise	1970	static/posters/1087_Fruit of Paradise.jpg	1120	https://www.imdb.com/title/tt0064781/	\N
1190	Canyon Passage	1946	static/posters/1190_Canyon Passage.jpg	1136	https://www.imdb.com/title/tt0038395/	\N
1194	The Lady Eve	1941	static/posters/1194_The Lady Eve.jpg	1137	https://www.imdb.com/title/tt0033804/	\N
1198	The Miracle of Morgan's Creek	1944	static/posters/1198_The Miracle of Morgan_s Creek.jpg	1137	https://www.imdb.com/title/tt0037077/	\N
1175	Broken Blossoms	1919	static/posters/1175_Broken Blossoms.jpg	1133	https://www.imdb.com/title/tt0009968/	\N
1185	À propos de Nice	1930	static/posters/1185_À propos de Nice.jpg	1135	https://www.imdb.com/title/tt0021576/	\N
1210	Port of Shadows	1938	static/posters/1210_Port of Shadows.jpg	1140	https://www.imdb.com/title/tt0030643/	\N
270	Psycho	1960	static/posters/270_Psycho.jpg	1020	https://www.imdb.com/title/tt0054215/	t
1252	Kings of the Road	1976	static/posters/1252_Kings of the Road.jpg	1148	https://www.imdb.com/title/tt0073152/	\N
1256	Wings of Desire	1987	static/posters/1256_Wings of Desire.jpg	1148	https://www.imdb.com/title/tt0093191/	\N
1257	Pina	2011	static/posters/1257_Pina.jpg	1148	https://www.imdb.com/title/tt1440266/	t
92	Volver	2006	static/posters/92_Volver.jpg	1002	https://www.imdb.com/title/tt0441909/	t
1259	Buena Vista Social Club	1999	static/posters/1259_Buena Vista Social Club.jpg	1148	https://www.imdb.com/title/tt0186508/	\N
290	The General	1926	static/posters/290_The General.jpg	1023	https://www.imdb.com/title/tt0017925/	t
890	Nosferatu	1922	static/posters/890_Nosferatu.jpg	1089	https://www.imdb.com/title/tt0013442/	t
1258	Perfect Days	2023	static/posters/1258_Perfect Days.jpg	1148	https://www.imdb.com/title/tt27503384/	t
1254	The State of Things	1982	static/posters/1254_The State of Things.jpg	1148	https://www.imdb.com/title/tt0084725/	\N
1251	Alice in the Cities	1974	static/posters/1251_Alice in the Cities.jpg	1148	https://www.imdb.com/title/tt0069687/	t
1048	Elephant	2003	static/posters/1048_Elephant.jpg	1113	https://www.imdb.com/title/tt0363589/	t
188	The Darjeeling Limited	2007	static/posters/188_The Darjeeling Limited.jpg	1059	https://www.imdb.com/title/tt0838221/	t
87	Spartacus	1960	static/posters/87_Spartacus.jpg	1025	https://www.imdb.com/title/tt0054331/	t
1255	Paris, Texas	1984	static/posters/1255_Paris_ Texas.jpg	1148	https://www.imdb.com/title/tt0087884/	t
1253	The American Friend	1977	static/posters/1253_The American Friend.jpg	1148	https://www.imdb.com/title/tt0075675/	t
6	Alps	2011	static/posters/6_Alps.jpg	1029	https://www.imdb.com/title/tt1859446/	f
8	Enter the Void	2009	static/posters/8_Enter the Void.jpg	1035	https://www.imdb.com/title/tt1191111/	t
9	Force Majeure	2014	static/posters/9_Force Majeure.jpg	1016	https://www.imdb.com/title/tt2121382/	f
10	Play	2011	static/posters/10_Play.jpg	1016	https://www.imdb.com/title/tt1376717/	f
11	Involuntary	2008	static/posters/11_Involuntary.jpg	1016	https://www.imdb.com/title/tt1232826/	f
12	The Guitar Mongoloid	2004	static/posters/12_The Guitar Mongoloid.jpg	1016	https://www.imdb.com/title/tt0447641/	f
13	4 Months, 3 Weeks and 2 Days	2007	static/posters/13_4 Months_ 3 Weeks and 2 Days.jpg	1034	https://www.imdb.com/title/tt1032846/	t
14	Pulp Fiction	1994	static/posters/14_Pulp Fiction.jpg	1043	https://www.imdb.com/title/tt0110912/	t
15	Django Unchained	2012	static/posters/15_Django Unchained.jpg	1043	https://www.imdb.com/title/tt1853728/	t
16	Inglourious Basterds	2009	static/posters/16_Inglourious Basterds.jpg	1043	https://www.imdb.com/title/tt0361748/	t
17	Vortex	2022	static/posters/17_Vortex.jpg	1035	https://www.imdb.com/title/tt14821150/	f
18	Lux Æterna	2020	static/posters/18_Lux Æterna.jpg	1035	https://www.imdb.com/title/tt10272534/	f
19	I Stand Alone	1998	static/posters/19_I Stand Alone.jpg	1035	https://www.imdb.com/title/tt0157016/	f
20	Graduation	2016	static/posters/20_Graduation.jpg	1034	https://www.imdb.com/title/tt4936450/	f
21	Reservoir Dogs	1992	static/posters/21_Reservoir Dogs.jpg	1043	https://www.imdb.com/title/tt0105236/	t
83	Birdman	2014	static/posters/83_Birdman.jpg	1065	https://www.imdb.com/title/tt2562232/	t
1173	The Birth of a Nation	1915	static/posters/1173_The Birth of a Nation.jpg	1133	https://www.imdb.com/title/tt0004972/	\N
1174	Intolerance	1916	static/posters/1174_Intolerance.jpg	1133	https://www.imdb.com/title/tt0006864/	\N
1163	The Tarnished Angels	1957	static/posters/1163_The Tarnished Angels.jpg	1130	https://www.imdb.com/title/tt0051055/	\N
1129	Irma Vep	1996	static/posters/1129_Irma Vep.jpg	1147	https://www.imdb.com/title/tt0116650/	\N
1134	Clouds of Sils Maria	2014	static/posters/1134_Clouds of Sils Maria.jpg	1147	https://www.imdb.com/title/tt2452254/	\N
1044	Drugstore Cowboy	1989	static/posters/1044_Drugstore Cowboy.jpg	1113	https://www.imdb.com/title/tt0097240/	\N
1046	Good Will Hunting	1997	static/posters/1046_Good Will Hunting.jpg	1113	https://www.imdb.com/title/tt0119217/	t
1051	Milk	2008	static/posters/1051_Milk.jpg	1113	https://www.imdb.com/title/tt1013753/	t
1055	Fallen Angels	1995	static/posters/1055_Fallen Angels.jpg	1114	https://www.imdb.com/title/tt0112913/	\N
1216	Bad Timing	1980	static/posters/1216_Bad Timing.jpg	1141	https://www.imdb.com/title/tt0080408/	\N
1222	The Umbrellas of Cherbourg	1964	static/posters/1222_The Umbrellas of Cherbourg.jpg	1143	https://www.imdb.com/title/tt0058450/	\N
1227	Le Doulos	1963	static/posters/1227_Le Doulos.jpg	1144	https://www.imdb.com/title/tt0054821/	\N
1231	The Red Circle	1970	static/posters/1231_The Red Circle.jpg	1144	https://www.imdb.com/title/tt0065531/	\N
1231	Demonlover	2002	static/posters/1231_The Red Circle.jpg	1147	https://www.imdb.com/title/tt0065531/	\N
1065	Mon oncle	1958	static/posters/1065_Mon oncle.jpg	1116	https://www.imdb.com/title/tt0050706/	\N
1099	Star Wars: Episode III - Revenge of the Sith	2005	static/posters/1099_Star Wars_ Episode III - Revenge of the Sith.jpg	1122	https://www.imdb.com/title/tt0121766/	t
1078	The Kid with a Bike	2011	static/posters/1078_The Kid with a Bike.jpg	1118	https://www.imdb.com/title/tt1827512/	\N
1083	Lust, Caution	2007	static/posters/1083_Lust_ Caution.jpg	1119	https://www.imdb.com/title/tt0808357/	\N
1171	Yi Yi	2000	static/posters/1171_Yi Yi.jpg	1132	https://www.imdb.com/title/tt0244316/	\N
\.


--
-- Name: directors_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bosstoner
--

SELECT pg_catalog.setval('public.directors_director_id_seq', 106, true);


--
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bosstoner
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 1008, true);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: bosstoner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict ROsDLpzHhPoUedRMjokRbCBBfXHbZLyf7Oby6CZTosAHET01YO0Azax4ll7L9YO

