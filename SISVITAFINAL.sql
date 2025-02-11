PGDMP  $    %                |            ProyectoSisvita    16.3 (Debian 16.3-1.pgdg120+1)    16.3 R    }           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ~           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16803    ProyectoSisvita    DATABASE     |   CREATE DATABASE "ProyectoSisvita" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
 !   DROP DATABASE "ProyectoSisvita";
                proyectosisvita_quix_user    false            �            1259    16804 	   condicion    TABLE     �   CREATE TABLE public.condicion (
    id integer NOT NULL,
    nombre_condicion character varying(255) NOT NULL,
    min_puntaje integer NOT NULL,
    max_puntaje integer NOT NULL,
    tipo_test_id integer,
    color character varying(10)
);
    DROP TABLE public.condicion;
       public         heap    proyectosisvita_quix_user    false            �            1259    16807    condicion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.condicion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.condicion_id_seq;
       public          proyectosisvita_quix_user    false    215            �           0    0    condicion_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.condicion_id_seq OWNED BY public.condicion.id;
          public          proyectosisvita_quix_user    false    216            �            1259    16808 	   respuesta    TABLE     �   CREATE TABLE public.respuesta (
    id integer NOT NULL,
    nombre_respuesta character varying(255) NOT NULL,
    puntaje_respuesta integer NOT NULL,
    tipo_test_id integer NOT NULL
);
    DROP TABLE public.respuesta;
       public         heap    proyectosisvita_quix_user    false            �            1259    16811    respuesta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.respuesta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.respuesta_id_seq;
       public          proyectosisvita_quix_user    false    217            �           0    0    respuesta_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.respuesta_id_seq OWNED BY public.respuesta.id;
          public          proyectosisvita_quix_user    false    218            �            1259    16812 
   resultados    TABLE     �   CREATE TABLE public.resultados (
    id integer NOT NULL,
    estudiante_id integer NOT NULL,
    condicion_id integer NOT NULL,
    tipo_test_id integer NOT NULL
);
    DROP TABLE public.resultados;
       public         heap    proyectosisvita_quix_user    false            �            1259    16815    resultados_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resultados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.resultados_id_seq;
       public          proyectosisvita_quix_user    false    219            �           0    0    resultados_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.resultados_id_seq OWNED BY public.resultados.id;
          public          proyectosisvita_quix_user    false    220            �            1259    16816    resultadospreguntas    TABLE     �   CREATE TABLE public.resultadospreguntas (
    id integer NOT NULL,
    estudiante_id integer NOT NULL,
    pregunta_id integer NOT NULL,
    respuesta_id integer NOT NULL,
    tipo_test_id integer NOT NULL
);
 '   DROP TABLE public.resultadospreguntas;
       public         heap    proyectosisvita_quix_user    false            �            1259    16819    resultadospreguntas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resultadospreguntas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.resultadospreguntas_id_seq;
       public          proyectosisvita_quix_user    false    221            �           0    0    resultadospreguntas_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.resultadospreguntas_id_seq OWNED BY public.resultadospreguntas.id;
          public          proyectosisvita_quix_user    false    222            �            1259    16820    roles    TABLE     b   CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    proyectosisvita_quix_user    false            �            1259    16823    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          proyectosisvita_quix_user    false    223            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          proyectosisvita_quix_user    false    224            �            1259    16824    test    TABLE     �   CREATE TABLE public.test (
    id integer NOT NULL,
    nombre_pregunta character varying(255) NOT NULL,
    tipo_test_id integer NOT NULL
);
    DROP TABLE public.test;
       public         heap    proyectosisvita_quix_user    false            �            1259    16827    test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.test_id_seq;
       public          proyectosisvita_quix_user    false    225            �           0    0    test_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;
          public          proyectosisvita_quix_user    false    226            �            1259    16828 
   tipos_test    TABLE     m   CREATE TABLE public.tipos_test (
    id integer NOT NULL,
    nombre_tipo character varying(255) NOT NULL
);
    DROP TABLE public.tipos_test;
       public         heap    proyectosisvita_quix_user    false            �            1259    16831    tipos_test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tipos_test_id_seq;
       public          proyectosisvita_quix_user    false    227            �           0    0    tipos_test_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tipos_test_id_seq OWNED BY public.tipos_test.id;
          public          proyectosisvita_quix_user    false    228            �            1259    16832    ubigeo    TABLE     �   CREATE TABLE public.ubigeo (
    id integer NOT NULL,
    nombre_ciudad character varying(255) NOT NULL,
    latitud double precision NOT NULL,
    longitud double precision NOT NULL
);
    DROP TABLE public.ubigeo;
       public         heap    proyectosisvita_quix_user    false            �            1259    16835    ubigeo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ubigeo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ubigeo_id_seq;
       public          proyectosisvita_quix_user    false    229            �           0    0    ubigeo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ubigeo_id_seq OWNED BY public.ubigeo.id;
          public          proyectosisvita_quix_user    false    230            �            1259    16836    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre_usuario character varying(50) NOT NULL,
    contrasena character varying(255) NOT NULL,
    email character varying(100) NOT NULL,
    rol_id integer NOT NULL,
    ubigeo_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.usuarios;
       public         heap    proyectosisvita_quix_user    false            �            1259    16841    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          proyectosisvita_quix_user    false    231            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          proyectosisvita_quix_user    false    232            �           2604    16842    condicion id    DEFAULT     l   ALTER TABLE ONLY public.condicion ALTER COLUMN id SET DEFAULT nextval('public.condicion_id_seq'::regclass);
 ;   ALTER TABLE public.condicion ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    216    215            �           2604    16843    respuesta id    DEFAULT     l   ALTER TABLE ONLY public.respuesta ALTER COLUMN id SET DEFAULT nextval('public.respuesta_id_seq'::regclass);
 ;   ALTER TABLE public.respuesta ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    218    217            �           2604    16844    resultados id    DEFAULT     n   ALTER TABLE ONLY public.resultados ALTER COLUMN id SET DEFAULT nextval('public.resultados_id_seq'::regclass);
 <   ALTER TABLE public.resultados ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    220    219            �           2604    16845    resultadospreguntas id    DEFAULT     �   ALTER TABLE ONLY public.resultadospreguntas ALTER COLUMN id SET DEFAULT nextval('public.resultadospreguntas_id_seq'::regclass);
 E   ALTER TABLE public.resultadospreguntas ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    222    221            �           2604    16846    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    224    223            �           2604    16847    test id    DEFAULT     b   ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);
 6   ALTER TABLE public.test ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    226    225            �           2604    16848    tipos_test id    DEFAULT     n   ALTER TABLE ONLY public.tipos_test ALTER COLUMN id SET DEFAULT nextval('public.tipos_test_id_seq'::regclass);
 <   ALTER TABLE public.tipos_test ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    228    227            �           2604    16849 	   ubigeo id    DEFAULT     f   ALTER TABLE ONLY public.ubigeo ALTER COLUMN id SET DEFAULT nextval('public.ubigeo_id_seq'::regclass);
 8   ALTER TABLE public.ubigeo ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    230    229            �           2604    16850    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          proyectosisvita_quix_user    false    232    231            i          0    16804 	   condicion 
   TABLE DATA           h   COPY public.condicion (id, nombre_condicion, min_puntaje, max_puntaje, tipo_test_id, color) FROM stdin;
    public          proyectosisvita_quix_user    false    215   e       k          0    16808 	   respuesta 
   TABLE DATA           Z   COPY public.respuesta (id, nombre_respuesta, puntaje_respuesta, tipo_test_id) FROM stdin;
    public          proyectosisvita_quix_user    false    217   �e       m          0    16812 
   resultados 
   TABLE DATA           S   COPY public.resultados (id, estudiante_id, condicion_id, tipo_test_id) FROM stdin;
    public          proyectosisvita_quix_user    false    219   f       o          0    16816    resultadospreguntas 
   TABLE DATA           i   COPY public.resultadospreguntas (id, estudiante_id, pregunta_id, respuesta_id, tipo_test_id) FROM stdin;
    public          proyectosisvita_quix_user    false    221   �f       q          0    16820    roles 
   TABLE DATA           +   COPY public.roles (id, nombre) FROM stdin;
    public          proyectosisvita_quix_user    false    223   �l       s          0    16824    test 
   TABLE DATA           A   COPY public.test (id, nombre_pregunta, tipo_test_id) FROM stdin;
    public          proyectosisvita_quix_user    false    225   �l       u          0    16828 
   tipos_test 
   TABLE DATA           5   COPY public.tipos_test (id, nombre_tipo) FROM stdin;
    public          proyectosisvita_quix_user    false    227   =o       w          0    16832    ubigeo 
   TABLE DATA           F   COPY public.ubigeo (id, nombre_ciudad, latitud, longitud) FROM stdin;
    public          proyectosisvita_quix_user    false    229   �o       y          0    16836    usuarios 
   TABLE DATA           t   COPY public.usuarios (id, nombre_usuario, contrasena, email, rol_id, ubigeo_id, created_at, updated_at) FROM stdin;
    public          proyectosisvita_quix_user    false    231   Gq       �           0    0    condicion_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.condicion_id_seq', 6, true);
          public          proyectosisvita_quix_user    false    216            �           0    0    respuesta_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.respuesta_id_seq', 9, true);
          public          proyectosisvita_quix_user    false    218            �           0    0    resultados_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.resultados_id_seq', 27, true);
          public          proyectosisvita_quix_user    false    220            �           0    0    resultadospreguntas_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.resultadospreguntas_id_seq', 360, true);
          public          proyectosisvita_quix_user    false    222            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          proyectosisvita_quix_user    false    224            �           0    0    test_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.test_id_seq', 34, true);
          public          proyectosisvita_quix_user    false    226            �           0    0    tipos_test_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tipos_test_id_seq', 2, true);
          public          proyectosisvita_quix_user    false    228            �           0    0    ubigeo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ubigeo_id_seq', 3, true);
          public          proyectosisvita_quix_user    false    230            �           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 34, true);
          public          proyectosisvita_quix_user    false    232            �           2606    16852    condicion condicion_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.condicion
    ADD CONSTRAINT condicion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.condicion DROP CONSTRAINT condicion_pkey;
       public            proyectosisvita_quix_user    false    215            �           2606    16854    respuesta respuesta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.respuesta
    ADD CONSTRAINT respuesta_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.respuesta DROP CONSTRAINT respuesta_pkey;
       public            proyectosisvita_quix_user    false    217            �           2606    16856    resultados resultados_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_pkey;
       public            proyectosisvita_quix_user    false    219            �           2606    16858 ,   resultadospreguntas resultadospreguntas_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_pkey;
       public            proyectosisvita_quix_user    false    221            �           2606    16860    roles roles_nombre_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);
 @   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_nombre_key;
       public            proyectosisvita_quix_user    false    223            �           2606    16862    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            proyectosisvita_quix_user    false    223            �           2606    16864    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            proyectosisvita_quix_user    false    225            �           2606    16866    tipos_test tipos_test_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tipos_test
    ADD CONSTRAINT tipos_test_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tipos_test DROP CONSTRAINT tipos_test_pkey;
       public            proyectosisvita_quix_user    false    227            �           2606    16868    ubigeo ubigeo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ubigeo
    ADD CONSTRAINT ubigeo_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ubigeo DROP CONSTRAINT ubigeo_pkey;
       public            proyectosisvita_quix_user    false    229            �           2606    16870    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public            proyectosisvita_quix_user    false    231            �           2606    16872 $   usuarios usuarios_nombre_usuario_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nombre_usuario_key UNIQUE (nombre_usuario);
 N   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_nombre_usuario_key;
       public            proyectosisvita_quix_user    false    231            �           2606    16874    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            proyectosisvita_quix_user    false    231            �           2606    16875    respuesta fk_tipo_test    FK CONSTRAINT        ALTER TABLE ONLY public.respuesta
    ADD CONSTRAINT fk_tipo_test FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 @   ALTER TABLE ONLY public.respuesta DROP CONSTRAINT fk_tipo_test;
       public          proyectosisvita_quix_user    false    3269    227    217            �           2606    16880    condicion fk_tipo_test    FK CONSTRAINT        ALTER TABLE ONLY public.condicion
    ADD CONSTRAINT fk_tipo_test FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 @   ALTER TABLE ONLY public.condicion DROP CONSTRAINT fk_tipo_test;
       public          proyectosisvita_quix_user    false    3269    215    227            �           2606    16885 '   resultados resultados_condicion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_condicion_id_fkey FOREIGN KEY (condicion_id) REFERENCES public.condicion(id);
 Q   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_condicion_id_fkey;
       public          proyectosisvita_quix_user    false    3255    215    219            �           2606    16890 (   resultados resultados_estudiante_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.usuarios(id);
 R   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_estudiante_id_fkey;
       public          proyectosisvita_quix_user    false    219    3277    231            �           2606    16895 '   resultados resultados_tipo_test_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_tipo_test_id_fkey FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 Q   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_tipo_test_id_fkey;
       public          proyectosisvita_quix_user    false    3269    219    227            �           2606    16900 :   resultadospreguntas resultadospreguntas_estudiante_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.usuarios(id);
 d   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_estudiante_id_fkey;
       public          proyectosisvita_quix_user    false    3277    221    231            �           2606    16905 8   resultadospreguntas resultadospreguntas_pregunta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_pregunta_id_fkey FOREIGN KEY (pregunta_id) REFERENCES public.test(id);
 b   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_pregunta_id_fkey;
       public          proyectosisvita_quix_user    false    3267    221    225            �           2606    16910 9   resultadospreguntas resultadospreguntas_respuesta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_respuesta_id_fkey FOREIGN KEY (respuesta_id) REFERENCES public.respuesta(id);
 c   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_respuesta_id_fkey;
       public          proyectosisvita_quix_user    false    3257    221    217            �           2606    16915 9   resultadospreguntas resultadospreguntas_tipo_test_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_tipo_test_id_fkey FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 c   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_tipo_test_id_fkey;
       public          proyectosisvita_quix_user    false    227    3269    221            �           2606    16920    test test_tipo_test_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_tipo_test_id_fkey FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 E   ALTER TABLE ONLY public.test DROP CONSTRAINT test_tipo_test_id_fkey;
       public          proyectosisvita_quix_user    false    225    3269    227            �           2606    16925    usuarios usuarios_rol_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id);
 G   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_rol_id_fkey;
       public          proyectosisvita_quix_user    false    223    3265    231            �           2606    16930     usuarios usuarios_ubigeo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_ubigeo_id_fkey FOREIGN KEY (ubigeo_id) REFERENCES public.ubigeo(id);
 J   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_ubigeo_id_fkey;
       public          proyectosisvita_quix_user    false    229    231    3271            i   �   x�]�A�@����)��v ݺ��3�� $C�p{L2Ʈ�����0=4��^����3��0��:�/`�YSp���K�)�l�r��$7���i���� ?��H\�D��aѾ?�t��J|�4���Z��:�      k   ]   x�3����4�4�2��I-K�42�9}�SR�S�9��\N���ļ�TNc ��È��È�Y���#.KN׊���̲|N 7F��� ~�      m   y   x�%���0CϢ�y��K��c������H,d����ʪ>��/�W�Ʊ�(�~�_9\IA)��Y����Qdq����n�j:EV5k��j�^�VS�|�w�(���IO_��M�/"��� �      o     x�EX[��0�n��$?�2�?ǚ� ��8d,��'>�	�}���:�E�jD��N4D�I�ZD��M��x�D�o�*a��],a������FbО 'yK��)L^��o����{.��=b�1xυ��B�s.�1xυ�%��Ԋ��[�.mxH� ��xI'��¸�=zq���̋���yO�6������]���c[�wo�7'��\�9=N�xn;J�h��ܩ�7�!܁�����>����w����,�^�� ��e�w����K���ʘ��dUq�T?�����t�c��~b��~�O�=�0�<���0c�1�0?X��ɟY���a����5}O�%^.��)\�j�WKi�VKl��B���ߵ�Q��x?���!�aS�Ö0�ma�G�*�1�Ļ1�Ļ1��ϣ٦up�1ƕ1�5c���@������ך@�z��`S=���0y�4��a� }�?�V�1+HNٵ�Л�j-��`-�KI����\�;'W����ո�pr5�<�\�w��f.����w�K���i7{����;�;w�yhPp����Y���&�@�m(�p 6�hP`����Pp&B��C�]3:��
:�s��ܴo�ߌ�����L9���3U�go{>S�<8>�w÷�1��|$Lv:���|�Q@f�`�OЇ�'wv�`�	����v+�|w��P`{�	���P`��v�XP`[�ŝk;�K,(��Ă[K,(������tQ�6�X̼v���|9`�f�;`�����O��倵� �ޑb���Uņ�a�@�7�|��;`>���P�1�˸�N��ލA>��=�A����mb[A��`�dp���As5y�a�`�d���~�n�%� [A&'�
��@�Q�S�)LOs��tL�p��LL��,��� �q�%��2K��e�L��,
\fYtVyAW�]�]���%��N�`���D���ovE�A<�ީ������n�4Z���l�	�d6��6����٥e9�Wmv��|�.)���Wt��wn�F4;��ޝ�dW�c���9�8c�7����s9��ߴ���}�Qr�������~�"o�+�&��d�7��Zn�'���O<��Xe��e'�����=iL���1i�9=��={lF>qǌ�ı���cr�@�t-j�.��Lz��T��}u.�	7�����>��v��;��o�g��6j���Mn=��<U8��[rS�U�����v�S.�<���R[\2�5��P��mT1|E,԰}�l��O�`An�+(�VY�3���K�+=n�πͣSQ�ʓ_���%SAOu�Lt�=���₍�;��:M����:ٕ<�d�olW/_�is�+��t�}3���9�{0>*b��J'�{8�'��Z�dU�[�GV�g���bCr���M�]1��h(�Y���3F��#�'��1���%G<�ٯ�Q�]����4j)ki��o�_ܖV���U���Ī�n�c��Īӗlbչ޽��syaUg�o�;�ܼwj)�kaP�U���~��,�z�      q   '   x�3�L-.)M�L�+I�2r
R�3s2�K�b���� ��
_      s   B  x�mSKn�0]ӧ��֒'^͢]$-�lZt3���T����6=@V=�/�7��:@w�f޼�P��O2�M��Xzv�K�����QHB�67�R�#�k|B����Y"e��Kt4��vl�=�dF��٧WDȆdN����%a�L!A;2��v���ּ't]�A�F��`	�A���'�Ma9�gK��b�tM�GZ�2�U�ߣ"��ꭙ�;��O�ޚʔ9fr^��\CY-��I���EO��6s�>�#���y[���{=��t� �F%m��3=�m�/�%�N4����X�^�� 	�{�����Q۪V;�;��3Pq��vV+R֘�;���E����n������ښϥ���F�Nڹyob�M�Z[�[��|��r꣯�����J�^�dX�8G;.�]����2�֡ϐ2��C�ren�q3�H)�{]O��wVyW�g�ק�d��EO?>~�;_uZ� )z�3sOا#�<MA?BR�I��^v9�{P��|�ο"�����z�~;0(�=a �)`K��9�sGf�]�;��"[�ؙ��?�k�V��|g<���:9x�(��m�����d2���W�      u   >   x�3���+K�+I,��WHIUp�+�LMIL��R����8]��sA���9%�y\1z\\\ IX      w   �  x�=�=n�0�k�)t���Oi[$��Al�c+�PRn�b۴�X(s���<��q�������B���Fq	���P��3��J������.���]�S�A^7y��F�d��{���u����ލN�l[M��ۺ�\*"Jai�����U�|�ʪ��UU[�4v�Һ'V�
˞��-�j��RWV��ɬ �{�mL��36k��# ��n����|[_k��!����̍D�$4�`w9���.��	5GӍ���L]��+W�[���\��)^v�gj���#�!t#�r�?YsկP]�t�X"�fCc��=�k�S�NT[c�t���]����~$&�JP�a���pC�H�B���l.�0���HC]�[����t�1�S���j�$!��`/���N�t)R �l����O,������o����      y      x���YSTIǟ�O����/�4��2����1�Ҡ�#ڟ~~Y�
TQ=@HR��9y�[^���e�z�����tvp�q^ξ�\̵�.��\N�^n>+o��{o{woZc񾶔z���r��֔�����we��1S��J��e����̦�D���j��Fi\,1[�%���gQr��U�suV��{��H�Ə[�W����|n�r�eC�2���r�I;�j.��p��,M��a뽝�-��_�~>������Se��RU�W��lVJ��L�Ҋ��Z�TJp���{�D�ur�u��%�mt��rL�x듒I��kҺӬ5P�J*�Rrn�ie��q����l?��d��_�_���]psC�n����5K��>_~9Z�����g��������N�2:�T�^�(���;U��CrΨ,S�]j��F鱦�	�H:���ʮ[ЮK_�F[!��\L��f[E��˸��=��s��,��F���]��k?�FD��,M����qo���:~����}.���gg��Ф��F�HD	��ꋵE
�P%2�"�����	S�	I+= 0�k)s0�$�);p�l�>�Z+���.��;գ2��~o��뿵���ϵa�g&g�_�؛�� �����w������Ϧc�m���6vYZc4#ߵ^���r�t$�֜͞�1Q5m����YR��s�F��L�1�ؠ�/�)z@�Mm���]��&܋*�sf�8�fi����N������o;�j������{�g�!J�:��2��V��=��k2�VE�]p�ܻ�ѹ��VΦZu�����NӶ��|��H���V4�M�A�E��T�sM��{{w�o.M�ԧ�\���OO�����������γ)0�>n�o�PoL�*�i�B��Є�cK>�����+�	2"ph"U�E��Y�R/�	�cc7!���*Y�L^��@`\�1��&���Z���"3횥I�����yZс��z�p�y�u���ïS#�O��,[w�o����,}j��MV;��#�I!t��C9�++�>	��/9�Ζ��Aj�\v�'S=�2H����P��m%�/u!̅�K=�(��k�&�'�W������7�ow��޼���bck{�����	��X�4�׺�(�@�m�V�K��Ns6��M(���f5`�:�k�1��,J/�J�a���PEg�����&���ܺۡ�����	4���R�K�p��ѫ����SS/O���Ӂf|��.�C�t/Q6ݔ��l7��&8��ð�n=c�R�=EU�nNұZL�,m��Ȕ����0I�`��1���o���y��0C�b��h��a��D�_����׶���V7�´[� �l D-Q�l|��e�� ��zH��������J��!���hR��c�p�l*=%�y�ƫ�S���]�	�M�����{�[�Y������]��ܖ��y�������|h�B�J�?��K�X`��+*��PF���aVq)��m�4k�:�b�BԂ��_���2��J�R�j�hV�M��:x��D�o���_+��ݶ,��I�q��D�[��c��a�7�?�y����'���
V��)���ٚ�LA�=�f\7�����,lΦw��࢝0�GL5����E����@< #h�"*Q�VN��.A�	��kFfѤ�4.J�jf�k�ni"ͯ�,�zyp~��R���ӡ,���l���d���{"��D�@$e��h٭�<���A6{	��m�%�Pm��.��:ل�7�d��MS4v"d���R�4L-xnP���"�������sA�qf,;��,M������n�%�w���{e�l��o�?�ǜP����cP�#�������D��eR��\��U� #'a�R���r#�:E$����q����D�F˿oY*���s���à5�,���K�������(��lFw�u��y��M�=n8E%�T2X��p��eئ�T��X3r�����,ki=���� �÷@0�h�G%��j��� g�f=5<_t?v��~����'�V�j`D��p���	��kLx���9�X���_G|����=���b���P#y82lS�D&W~8R�*h�A�0a��oi���KЄ�-�v&���oN[|<Y�D-1�U��6d|p�ߍ�瘨�p#f&���n�n.M�]��ܐW���ю~㯎��hSʻ&V��Ȏa�P�Y���������S�V��Odv]ېcV#�@#
S��Bױ�����ٰ�5��W3�D��+������-�n�ݎ�8Wj&���.Ld�Ս��wV���̷�o���?}��z�!�*0��,"z�&��8�3��:�M� �a��X�T(i�1Z�P� ��=bYb�-j�U:֊�����&�`Y�*�6;&2�;b�M��bs�j�Y�m[�4Q�m����*)�/.�ζ��vϞ=�8���p�0$���^�U��vW��twݣѭk���VT"�Qdv�F`>�iD�H�6�t��Y%˃���Rl�3D4J0�R<�i؇������6B� Rig�tPz��Dɻ㲪-���A�/���/�f	ϧA��+q�����̵UB2B�v�:C��`��n�OՉĆK��x)9Nƪ'H� $��fҐ� �<8᠁� ���xk`�M_o��ƨ{�x��H���ϣ�UKu��.���vԿ�J��5g/�[�t�����ԁ�c�Ɯ�ʴ�nAM7�D�o$9!�6�W�(���n��0�ĭ�2�x�#�q�A��)l �r�����l�̭ڐK�X�r����\���֌��Μ������x�誽}�xJ[��S(_��ʢt�\Ec3���)׺ 1T��/�hW�z�!gD�2�3�o�/�����3Ʀ*���8���It=���L7�D��>]Y���;�5W6a�Ú��27���X�
��мkO�ez���7S�
�F�#٨�CgK5�T�X<H5#)���E`�-�j�8D�bӦ��[Q��RYv��)����3���c��c>�����1,�U�P�\�Y���k�&���k���%?��q��_��ٛ߈9S� ��A��q:P�ڤ�����U�:f�	���~u5�n��'�:��d�e�'!���TN�$�!�J��TՇ#B��Q}}�r��{�,J��O2���k�&j�����sONNN���N߾�~���ڧq� ����/	.T�C#ϙ\F�Bѓ��U��Y&�v$�n��#R���I�aE��xC�v�!S�),�1�֫J�.AR�z������Ǡ�|4�ᚥ	�f��Ϗ�j;9��mvd~z�w�����o���)f���?�A!�((Y:3�.7b�8p�z;��
���8�A>	}���z4]t[q�KJ`o��h�9��'�&*!���Słsϗ-�ŝߢw�Vb�t�ǳAқ5K���.�J]��ms�aQ_?��_���e���ĵ�ֽ tR���:/9㈸29��Ʃ6K	�^Fk�GoA��|!���m#v��7�3�ـ,=NTp���v<�k��3���,s�݊�A�:��˪��Z��+���c���c1'[���}��.1$������Nj��@*���6]���4iGb��@����e8R�3������4��;8�~h%7����3��P4�Vw�T�R_�r��͈R�5K-n/1'+tƝ�������ӿv��޴�D$6E�qn(��'����AR�� 2�A����*
](]�$�'a{m�(J%���D��ly�K�2X��Ѧp���#��v�n���9q��h�fi���w�q�A�pt�z笙�W���nl���=AGi��҉~�oEcTO`�lK�iKS͐-f�gK��m�Rv8X�]��H��jI�G��@�$K������F�f�E��Z	{j�҄\P���W�٣�ݏ/���s�ř��Ө�����0��nȴ��"m2��C�~<�G�Cƙ3iϩ�;�\�@���Li����_J� g<�Ȃd4�W��L�x�]!��o��uF��N�#����]�4!n�=i� }>8�HiUN?o~h� �xu���{=e�|`��8-"�'�D��� �   �юq�Π#�m<�t�e\)��c<���(dęԨ{�U)��8��C_�`l�Mh��v{m�����=Pw��(Ԫ�
>޶w�&�l,��r�{��˅x�t�����d�t*���A���T0�MB����Fc��p��X�e�a,R�L<�K�'ֺ[lm�"�$3U:lJI6����H>X�8@�bq��.�v�z>�+��*��S����f������"     