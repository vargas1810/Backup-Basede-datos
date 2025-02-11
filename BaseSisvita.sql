PGDMP      :                 |            ProyectoSisvitaMax2    16.3    16.3 R               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    147676    ProyectoSisvitaMax2    DATABASE     �   CREATE DATABASE "ProyectoSisvitaMax2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
 %   DROP DATABASE "ProyectoSisvitaMax2";
                postgres    false            �            1259    147743 	   condicion    TABLE     �   CREATE TABLE public.condicion (
    id integer NOT NULL,
    nombre_condicion character varying(255) NOT NULL,
    min_puntaje integer NOT NULL,
    max_puntaje integer NOT NULL,
    tipo_test_id integer
);
    DROP TABLE public.condicion;
       public         heap    postgres    false            �            1259    147742    condicion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.condicion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.condicion_id_seq;
       public          postgres    false    228                       0    0    condicion_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.condicion_id_seq OWNED BY public.condicion.id;
          public          postgres    false    227            �            1259    147736 	   respuesta    TABLE     �   CREATE TABLE public.respuesta (
    id integer NOT NULL,
    nombre_respuesta character varying(255) NOT NULL,
    puntaje_respuesta integer NOT NULL,
    tipo_test_id integer NOT NULL
);
    DROP TABLE public.respuesta;
       public         heap    postgres    false            �            1259    147735    respuesta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.respuesta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.respuesta_id_seq;
       public          postgres    false    226                       0    0    respuesta_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.respuesta_id_seq OWNED BY public.respuesta.id;
          public          postgres    false    225            �            1259    147777 
   resultados    TABLE     �   CREATE TABLE public.resultados (
    id integer NOT NULL,
    estudiante_id integer NOT NULL,
    condicion_id integer NOT NULL,
    tipo_test_id integer NOT NULL
);
    DROP TABLE public.resultados;
       public         heap    postgres    false            �            1259    147776    resultados_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resultados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.resultados_id_seq;
       public          postgres    false    232                       0    0    resultados_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.resultados_id_seq OWNED BY public.resultados.id;
          public          postgres    false    231            �            1259    147750    resultadospreguntas    TABLE     �   CREATE TABLE public.resultadospreguntas (
    id integer NOT NULL,
    estudiante_id integer NOT NULL,
    pregunta_id integer NOT NULL,
    respuesta_id integer NOT NULL,
    tipo_test_id integer NOT NULL
);
 '   DROP TABLE public.resultadospreguntas;
       public         heap    postgres    false            �            1259    147749    resultadospreguntas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resultadospreguntas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.resultadospreguntas_id_seq;
       public          postgres    false    230                       0    0    resultadospreguntas_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.resultadospreguntas_id_seq OWNED BY public.resultadospreguntas.id;
          public          postgres    false    229            �            1259    147678    roles    TABLE     b   CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    147677    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    216                       0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    215            �            1259    147724    test    TABLE     �   CREATE TABLE public.test (
    id integer NOT NULL,
    nombre_pregunta character varying(255) NOT NULL,
    tipo_test_id integer NOT NULL
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    147723    test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.test_id_seq;
       public          postgres    false    224                       0    0    test_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;
          public          postgres    false    223            �            1259    147717 
   tipos_test    TABLE     m   CREATE TABLE public.tipos_test (
    id integer NOT NULL,
    nombre_tipo character varying(255) NOT NULL
);
    DROP TABLE public.tipos_test;
       public         heap    postgres    false            �            1259    147716    tipos_test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tipos_test_id_seq;
       public          postgres    false    222                       0    0    tipos_test_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tipos_test_id_seq OWNED BY public.tipos_test.id;
          public          postgres    false    221            �            1259    147687    ubigeo    TABLE     �   CREATE TABLE public.ubigeo (
    id integer NOT NULL,
    nombre_ciudad character varying(255) NOT NULL,
    latitud double precision NOT NULL,
    longitud double precision NOT NULL
);
    DROP TABLE public.ubigeo;
       public         heap    postgres    false            �            1259    147686    ubigeo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ubigeo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ubigeo_id_seq;
       public          postgres    false    218                       0    0    ubigeo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ubigeo_id_seq OWNED BY public.ubigeo.id;
          public          postgres    false    217            �            1259    147694    usuarios    TABLE     �  CREATE TABLE public.usuarios (
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
       public         heap    postgres    false            �            1259    147693    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    220                        0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    219            J           2604    147746    condicion id    DEFAULT     l   ALTER TABLE ONLY public.condicion ALTER COLUMN id SET DEFAULT nextval('public.condicion_id_seq'::regclass);
 ;   ALTER TABLE public.condicion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            I           2604    147739    respuesta id    DEFAULT     l   ALTER TABLE ONLY public.respuesta ALTER COLUMN id SET DEFAULT nextval('public.respuesta_id_seq'::regclass);
 ;   ALTER TABLE public.respuesta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            L           2604    147780    resultados id    DEFAULT     n   ALTER TABLE ONLY public.resultados ALTER COLUMN id SET DEFAULT nextval('public.resultados_id_seq'::regclass);
 <   ALTER TABLE public.resultados ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            K           2604    147753    resultadospreguntas id    DEFAULT     �   ALTER TABLE ONLY public.resultadospreguntas ALTER COLUMN id SET DEFAULT nextval('public.resultadospreguntas_id_seq'::regclass);
 E   ALTER TABLE public.resultadospreguntas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            B           2604    147681    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            H           2604    147727    test id    DEFAULT     b   ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);
 6   ALTER TABLE public.test ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            G           2604    147720    tipos_test id    DEFAULT     n   ALTER TABLE ONLY public.tipos_test ALTER COLUMN id SET DEFAULT nextval('public.tipos_test_id_seq'::regclass);
 <   ALTER TABLE public.tipos_test ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            C           2604    147690 	   ubigeo id    DEFAULT     f   ALTER TABLE ONLY public.ubigeo ALTER COLUMN id SET DEFAULT nextval('public.ubigeo_id_seq'::regclass);
 8   ALTER TABLE public.ubigeo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            D           2604    147697    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220                      0    147743 	   condicion 
   TABLE DATA           a   COPY public.condicion (id, nombre_condicion, min_puntaje, max_puntaje, tipo_test_id) FROM stdin;
    public          postgres    false    228    `                 0    147736 	   respuesta 
   TABLE DATA           Z   COPY public.respuesta (id, nombre_respuesta, puntaje_respuesta, tipo_test_id) FROM stdin;
    public          postgres    false    226   �`                 0    147777 
   resultados 
   TABLE DATA           S   COPY public.resultados (id, estudiante_id, condicion_id, tipo_test_id) FROM stdin;
    public          postgres    false    232   a                 0    147750    resultadospreguntas 
   TABLE DATA           i   COPY public.resultadospreguntas (id, estudiante_id, pregunta_id, respuesta_id, tipo_test_id) FROM stdin;
    public          postgres    false    230   za                 0    147678    roles 
   TABLE DATA           +   COPY public.roles (id, nombre) FROM stdin;
    public          postgres    false    216   �e       	          0    147724    test 
   TABLE DATA           A   COPY public.test (id, nombre_pregunta, tipo_test_id) FROM stdin;
    public          postgres    false    224   �e                 0    147717 
   tipos_test 
   TABLE DATA           5   COPY public.tipos_test (id, nombre_tipo) FROM stdin;
    public          postgres    false    222   Eh                 0    147687    ubigeo 
   TABLE DATA           F   COPY public.ubigeo (id, nombre_ciudad, latitud, longitud) FROM stdin;
    public          postgres    false    218   �h                 0    147694    usuarios 
   TABLE DATA           t   COPY public.usuarios (id, nombre_usuario, contrasena, email, rol_id, ubigeo_id, created_at, updated_at) FROM stdin;
    public          postgres    false    220    i       !           0    0    condicion_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.condicion_id_seq', 6, true);
          public          postgres    false    227            "           0    0    respuesta_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.respuesta_id_seq', 9, true);
          public          postgres    false    225            #           0    0    resultados_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.resultados_id_seq', 18, true);
          public          postgres    false    231            $           0    0    resultadospreguntas_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.resultadospreguntas_id_seq', 259, true);
          public          postgres    false    229            %           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          postgres    false    215            &           0    0    test_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.test_id_seq', 34, true);
          public          postgres    false    223            '           0    0    tipos_test_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tipos_test_id_seq', 2, true);
          public          postgres    false    221            (           0    0    ubigeo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ubigeo_id_seq', 3, true);
          public          postgres    false    217            )           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 13, true);
          public          postgres    false    219            `           2606    147748    condicion condicion_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.condicion
    ADD CONSTRAINT condicion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.condicion DROP CONSTRAINT condicion_pkey;
       public            postgres    false    228            ^           2606    147741    respuesta respuesta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.respuesta
    ADD CONSTRAINT respuesta_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.respuesta DROP CONSTRAINT respuesta_pkey;
       public            postgres    false    226            d           2606    147782    resultados resultados_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_pkey;
       public            postgres    false    232            b           2606    147755 ,   resultadospreguntas resultadospreguntas_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_pkey;
       public            postgres    false    230            N           2606    147685    roles roles_nombre_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);
 @   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_nombre_key;
       public            postgres    false    216            P           2606    147683    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    216            \           2606    147729    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    224            Z           2606    147722    tipos_test tipos_test_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tipos_test
    ADD CONSTRAINT tipos_test_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tipos_test DROP CONSTRAINT tipos_test_pkey;
       public            postgres    false    222            R           2606    147692    ubigeo ubigeo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ubigeo
    ADD CONSTRAINT ubigeo_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ubigeo DROP CONSTRAINT ubigeo_pkey;
       public            postgres    false    218            T           2606    147705    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public            postgres    false    220            V           2606    147703 $   usuarios usuarios_nombre_usuario_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nombre_usuario_key UNIQUE (nombre_usuario);
 N   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_nombre_usuario_key;
       public            postgres    false    220            X           2606    147701    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    220            h           2606    147798    respuesta fk_tipo_test    FK CONSTRAINT        ALTER TABLE ONLY public.respuesta
    ADD CONSTRAINT fk_tipo_test FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 @   ALTER TABLE ONLY public.respuesta DROP CONSTRAINT fk_tipo_test;
       public          postgres    false    226    222    4698            i           2606    147803    condicion fk_tipo_test    FK CONSTRAINT        ALTER TABLE ONLY public.condicion
    ADD CONSTRAINT fk_tipo_test FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 @   ALTER TABLE ONLY public.condicion DROP CONSTRAINT fk_tipo_test;
       public          postgres    false    228    222    4698            n           2606    147788 '   resultados resultados_condicion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_condicion_id_fkey FOREIGN KEY (condicion_id) REFERENCES public.condicion(id);
 Q   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_condicion_id_fkey;
       public          postgres    false    232    228    4704            o           2606    147783 (   resultados resultados_estudiante_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.usuarios(id);
 R   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_estudiante_id_fkey;
       public          postgres    false    4696    232    220            p           2606    147793 '   resultados resultados_tipo_test_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_tipo_test_id_fkey FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 Q   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_tipo_test_id_fkey;
       public          postgres    false    222    232    4698            j           2606    147756 :   resultadospreguntas resultadospreguntas_estudiante_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.usuarios(id);
 d   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_estudiante_id_fkey;
       public          postgres    false    4696    230    220            k           2606    147761 8   resultadospreguntas resultadospreguntas_pregunta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_pregunta_id_fkey FOREIGN KEY (pregunta_id) REFERENCES public.test(id);
 b   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_pregunta_id_fkey;
       public          postgres    false    224    4700    230            l           2606    147766 9   resultadospreguntas resultadospreguntas_respuesta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_respuesta_id_fkey FOREIGN KEY (respuesta_id) REFERENCES public.respuesta(id);
 c   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_respuesta_id_fkey;
       public          postgres    false    230    4702    226            m           2606    147771 9   resultadospreguntas resultadospreguntas_tipo_test_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultadospreguntas
    ADD CONSTRAINT resultadospreguntas_tipo_test_id_fkey FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 c   ALTER TABLE ONLY public.resultadospreguntas DROP CONSTRAINT resultadospreguntas_tipo_test_id_fkey;
       public          postgres    false    222    230    4698            g           2606    147730    test test_tipo_test_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_tipo_test_id_fkey FOREIGN KEY (tipo_test_id) REFERENCES public.tipos_test(id);
 E   ALTER TABLE ONLY public.test DROP CONSTRAINT test_tipo_test_id_fkey;
       public          postgres    false    4698    224    222            e           2606    147706    usuarios usuarios_rol_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id);
 G   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_rol_id_fkey;
       public          postgres    false    4688    220    216            f           2606    147711     usuarios usuarios_ubigeo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_ubigeo_id_fkey FOREIGN KEY (ubigeo_id) REFERENCES public.ubigeo(id);
 J   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_ubigeo_id_fkey;
       public          postgres    false    4690    218    220               s   x�]�A
�@D�u�)�!ݓ�n���i�Y(D����[Da�ھ���RK���������{��(�
w�LMM�������0���C���.����%�>P��.��K>u"�b�.�         ]   x�3����4�4�2��I-K�42�9}�SR�S�9��\N���ļ�TNc ��È��È�Y���#.KN׊���̲|N 7F��� ~�         Z   x�%���0ߢ��E|���누_��	����x1DN~X��櫼���5����p�H
l�i�^���J�~̉�.�Z�M��?���         2  x�E�Y��0D��ä��]r�s�(����S�E@M�'?��o~R�[�YT�ՠ��&�j��v�MuZ���RŃ�=�-N |�|��+\i cK�_P�?��o ��4�)M.��7�-ip�Bn_���5�}��/������5�}���-.��n�[S������7��O~�����>���0sGI�7Cި���X�g������}�ߚ�Gk����6��N�L{��=�a�%=��~���s�����g����-������,r/��=ғ�<���J���T��T�o �󘭦ߘ���䩿��Ɲ7��0�4�q�����n���=���>����4]���jM�z��z��z���J���=%}�1�)�XҜ��9�Hsڕƴz�1�B�J܋i%�Ŵ7�G����<k�+k�֘7���5���c�M ��&�M���`�`����0=��� >�����+f�%{�1�$ԈZ�a$�c�VOn']���C�j��еZ�:t�ֻ]���`��!ot��C�U0�������:��:��0��]��:>�2+�<`��1ry �p�����p��8cS3&��&8sc�ݴo1߬�����l%K���j��۞�V)[�g�W���c��������;=��¼v�����0~�o��6�a��i��v���z�cÁ�%68_bÁ&8U���c%w��8X����%8Z����%���Cڸ���A���+?<`���opY��{�x�޻��ޑ���UŅ�a���7�|��;`>>U�TC����T�P�>�_�`ok��&f�|�vdlr��(�����'��jx0aL������G2pdr��@/��<*r�<��3<`y�,�����<j�Ty�(��,Y�Y�<n�dy�fYp�6�b�*�����˫�]nɌ�>�>����QpT���ʎA��������M�m��(�q1s�)���uL�c�dNy9ы�6���|�)+� S�w���On��hNF�{���%�jv0�܎i�|��q��`         '   x�3�L-.)M�L�+I�2r
R�3s2�K�b���� ��
_      	   B  x�mSKn�0]ӧ��֒'^͢]$-�lZt3���T����6=@V=�/�7��:@w�f޼�P��O2�M��Xzv�K�����QHB�67�R�#�k|B����Y"e��Kt4��vl�=�dF��٧WDȆdN����%a�L!A;2��v���ּ't]�A�F��`	�A���'�Ma9�gK��b�tM�GZ�2�U�ߣ"��ꭙ�;��O�ޚʔ9fr^��\CY-��I���EO��6s�>�#���y[���{=��t� �F%m��3=�m�/�%�N4����X�^�� 	�{�����Q۪V;�;��3Pq��vV+R֘�;���E����n������ښϥ���F�Nڹyob�M�Z[�[��|��r꣯�����J�^�dX�8G;.�]����2�֡ϐ2��C�ren�q3�H)�{]O��wVyW�g�ק�d��EO?>~�;_uZ� )z�3sOا#�<MA?BR�I��^v9�{P��|�ο"�����z�~;0(�=a �)`K��9�sGf�]�;��"[�ؙ��?�k�V��|g<���:9x�(��m�����d2���W�         >   x�3���+K�+I,��WHIUp�+�LMIL��R����8]��sA���9%�y\1z\\\ IX         ]   x�3�t��M,��54Գ46��57�3032�2���/V���,ˇʚ�@�M,��9��|�J��SHIU�/*J)4�3 �(4�0����� ��         v  x��V[sS9~��>�u\ju����0,���`��U[�Z
	��HB���g�	��UN�9:����|�����8��g�;�����ӚcN��5-��^<x�_����ޟo��^z�>j��h�[��^�(��>�0q� .Y#S�4B��9S���B�!q�ީk!I����#���zsə�'�8�nB�t���:>ף�cՏ�v����/1��t�qx%8���"��9�������?�W��v�^~����2��B�񼡗�-�Pʐ:I�Y��k���}N,E�k�1�4��QגbR[Ϛk�B�^���P
nh6�ش��'����î.��~=_�Q�u��|�s
i-h5�r�<Ɩ҂wꇋ��w��|���x�=��vi��$��{��%�x��M����F��$�l!K�M�Y�:af��4y�I�)��� l�.��6-cX�Ӹo�6-6n����w����.y�yE
�-��윜�q���ǯ����|}}vv��AY���&�B���sW�4y�� ���lE4� =�U6�H�L�LR� SK��Жs����N�Zt�!�Y4P)-�Y����ol�&��[^I�$?�,�{	�= =�����C}s|rq���r�sm%z�-��0 ?�-�Y���2�6�Hlθ��8Xfv�<S�����%�:�I B�j��VKI���8(ϙ�����G�eM��&�-�EB�?o����POSx���>嶺eKⵏ�A��l�#�^�ZM�ŷJ�3���A��C�pf�SZIip����sEW��� �`���)qT�ИdR1�_���KX3�9돋����_Y_��v�O_�����7ϯ�����O��i�U�����:5 �s��$��2j6Ca����d�X&�Q@��wJc�b�h�b��hH˱7�2嘊���W��@���U�vW+����o����>�wL��?���g��r�����2����ј)@�y�m��0 �*'�!� k��q��5@�d�|o'V�mqN����O5�lDf�QY�I,�N��5[Z��xKiQ�b��t?���˷�v_��^>��eWluzLI!�bs��2�SN�y�,��]�S���錤͛�V8hF�C&*��'�^��^���C�z8�I)WL��7���h�֚VXG�A�o���/z?��ۭ������w_����'�s	�c�_h�%��A"�=��x� ��)0OHT=!���0����%��#&�]b�3g��H} @JR 0�� �Z�f�-�V�?��w ��HNj[J�o����o/��a���)�m�-����M@�SW,�#beq���8�U�����,��R7�s�h�҆4�P ����Rak�����P�\�S�^�N�/Z�8��_K^a���҂�ˆ�W����c�\����W�\��C�KB���2�kF��IE�3���k-���jI�� ��Z��b(E��L�\�D�T��>��-��}+ip��'��ͱ ��Y�Ǳ"����|�RZ�ϯ��/�g���ˇ��=x��ݕi��K>�ވ�q �͆�)��	���5�3�k��S��B5�RV�
�� �Q�#1�m-�|rlH��7aJC�f��@�ː�\b�Hf�+�_˶��߫�b�??h�<     