PGDMP  ;                
    |         	   lizmap382    16.4    16.4 1    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    21941 	   lizmap382    DATABASE     |   CREATE DATABASE lizmap382 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1252';
    DROP DATABASE lizmap382;
                postgres    false            �            1259    22029    geobookmark    TABLE     �   CREATE TABLE public.geobookmark (
    id integer NOT NULL,
    usr_login text NOT NULL,
    bname text NOT NULL,
    bmap text NOT NULL,
    bparams text NOT NULL
);
    DROP TABLE public.geobookmark;
       public         heap    postgres    false            �            1259    22028    geobookmark_id_seq    SEQUENCE     �   CREATE SEQUENCE public.geobookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.geobookmark_id_seq;
       public          postgres    false    226            >           0    0    geobookmark_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.geobookmark_id_seq OWNED BY public.geobookmark.id;
          public          postgres    false    225            �            1259    21959    jacl2_group    TABLE     �   CREATE TABLE public.jacl2_group (
    id_aclgrp character varying(60) NOT NULL,
    name character varying(150) DEFAULT ''::character varying NOT NULL,
    grouptype smallint NOT NULL,
    ownerlogin character varying(50)
);
    DROP TABLE public.jacl2_group;
       public         heap    postgres    false            �            1259    21992    jacl2_rights    TABLE       CREATE TABLE public.jacl2_rights (
    id_aclsbj character varying(255) NOT NULL,
    id_aclgrp character varying(60) NOT NULL,
    id_aclres character varying(100) DEFAULT '-'::character varying NOT NULL,
    canceled smallint DEFAULT '0'::smallint NOT NULL
);
     DROP TABLE public.jacl2_rights;
       public         heap    postgres    false            �            1259    21970    jacl2_subject    TABLE     �   CREATE TABLE public.jacl2_subject (
    id_aclsbj character varying(100) NOT NULL,
    label_key character varying(100) DEFAULT NULL::character varying,
    id_aclsbjgrp character varying(50) DEFAULT NULL::character varying
);
 !   DROP TABLE public.jacl2_subject;
       public         heap    postgres    false            �            1259    21965    jacl2_subject_group    TABLE     �   CREATE TABLE public.jacl2_subject_group (
    id_aclsbjgrp character varying(50) NOT NULL,
    label_key character varying(60) NOT NULL
);
 '   DROP TABLE public.jacl2_subject_group;
       public         heap    postgres    false            �            1259    21982    jacl2_user_group    TABLE     �   CREATE TABLE public.jacl2_user_group (
    login character varying(50) NOT NULL,
    id_aclgrp character varying(60) NOT NULL
);
 $   DROP TABLE public.jacl2_user_group;
       public         heap    postgres    false            �            1259    21942    jlx_user    TABLE     �  CREATE TABLE public.jlx_user (
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
    DROP TABLE public.jlx_user;
       public         heap    postgres    false            �            1259    22020    log_counter    TABLE     �   CREATE TABLE public.log_counter (
    id integer NOT NULL,
    key character varying(100) NOT NULL,
    counter integer,
    repository character varying,
    project character varying
);
    DROP TABLE public.log_counter;
       public         heap    postgres    false            �            1259    22019    log_counter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.log_counter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.log_counter_id_seq;
       public          postgres    false    224            ?           0    0    log_counter_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.log_counter_id_seq OWNED BY public.log_counter.id;
          public          postgres    false    223            �            1259    22010 
   log_detail    TABLE     b  CREATE TABLE public.log_detail (
    id integer NOT NULL,
    log_key character varying(100) NOT NULL,
    log_timestamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    log_user character varying(100),
    log_content text,
    log_repository character varying(100),
    log_project character varying(100),
    log_ip character varying(40)
);
    DROP TABLE public.log_detail;
       public         heap    postgres    false            �            1259    22009    log_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.log_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.log_detail_id_seq;
       public          postgres    false    222            @           0    0    log_detail_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.log_detail_id_seq OWNED BY public.log_detail.id;
          public          postgres    false    221            �           2604    22032    geobookmark id    DEFAULT     p   ALTER TABLE ONLY public.geobookmark ALTER COLUMN id SET DEFAULT nextval('public.geobookmark_id_seq'::regclass);
 =   ALTER TABLE public.geobookmark ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    22023    log_counter id    DEFAULT     p   ALTER TABLE ONLY public.log_counter ALTER COLUMN id SET DEFAULT nextval('public.log_counter_id_seq'::regclass);
 =   ALTER TABLE public.log_counter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    22013    log_detail id    DEFAULT     n   ALTER TABLE ONLY public.log_detail ALTER COLUMN id SET DEFAULT nextval('public.log_detail_id_seq'::regclass);
 <   ALTER TABLE public.log_detail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            7          0    22029    geobookmark 
   TABLE DATA           J   COPY public.geobookmark (id, usr_login, bname, bmap, bparams) FROM stdin;
    public          postgres    false    226   R?       -          0    21959    jacl2_group 
   TABLE DATA           M   COPY public.jacl2_group (id_aclgrp, name, grouptype, ownerlogin) FROM stdin;
    public          postgres    false    216   o?       1          0    21992    jacl2_rights 
   TABLE DATA           Q   COPY public.jacl2_rights (id_aclsbj, id_aclgrp, id_aclres, canceled) FROM stdin;
    public          postgres    false    220   �?       /          0    21970    jacl2_subject 
   TABLE DATA           K   COPY public.jacl2_subject (id_aclsbj, label_key, id_aclsbjgrp) FROM stdin;
    public          postgres    false    218   PA       .          0    21965    jacl2_subject_group 
   TABLE DATA           F   COPY public.jacl2_subject_group (id_aclsbjgrp, label_key) FROM stdin;
    public          postgres    false    217   "C       0          0    21982    jacl2_user_group 
   TABLE DATA           <   COPY public.jacl2_user_group (login, id_aclgrp) FROM stdin;
    public          postgres    false    219   �C       ,          0    21942    jlx_user 
   TABLE DATA           �   COPY public.jlx_user (usr_login, usr_email, usr_password, firstname, lastname, organization, phonenumber, street, postcode, city, country, comment, status, keyactivate, request_date, create_date) FROM stdin;
    public          postgres    false    215   �C       5          0    22020    log_counter 
   TABLE DATA           L   COPY public.log_counter (id, key, counter, repository, project) FROM stdin;
    public          postgres    false    224   {D       3          0    22010 
   log_detail 
   TABLE DATA           |   COPY public.log_detail (id, log_key, log_timestamp, log_user, log_content, log_repository, log_project, log_ip) FROM stdin;
    public          postgres    false    222   4E       A           0    0    geobookmark_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.geobookmark_id_seq', 1, false);
          public          postgres    false    225            B           0    0    log_counter_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.log_counter_id_seq', 10, true);
          public          postgres    false    223            C           0    0    log_detail_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.log_detail_id_seq', 116, true);
          public          postgres    false    221            �           2606    22036    geobookmark geobookmark_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.geobookmark
    ADD CONSTRAINT geobookmark_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.geobookmark DROP CONSTRAINT geobookmark_pkey;
       public            postgres    false    226            �           2606    21964 $   jacl2_group jacl2_group_id_aclgrp_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.jacl2_group
    ADD CONSTRAINT jacl2_group_id_aclgrp_pk PRIMARY KEY (id_aclgrp);
 N   ALTER TABLE ONLY public.jacl2_group DROP CONSTRAINT jacl2_group_id_aclgrp_pk;
       public            postgres    false    216            �           2606    21998 :   jacl2_rights jacl2_rights_id_aclsbj_id_aclgrp_id_aclres_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.jacl2_rights
    ADD CONSTRAINT jacl2_rights_id_aclsbj_id_aclgrp_id_aclres_pk PRIMARY KEY (id_aclsbj, id_aclgrp, id_aclres);
 d   ALTER TABLE ONLY public.jacl2_rights DROP CONSTRAINT jacl2_rights_id_aclsbj_id_aclgrp_id_aclres_pk;
       public            postgres    false    220    220    220            �           2606    21969 7   jacl2_subject_group jacl2_subject_group_id_aclsbjgrp_pk 
   CONSTRAINT        ALTER TABLE ONLY public.jacl2_subject_group
    ADD CONSTRAINT jacl2_subject_group_id_aclsbjgrp_pk PRIMARY KEY (id_aclsbjgrp);
 a   ALTER TABLE ONLY public.jacl2_subject_group DROP CONSTRAINT jacl2_subject_group_id_aclsbjgrp_pk;
       public            postgres    false    217            �           2606    21976 (   jacl2_subject jacl2_subject_id_aclsbj_pk 
   CONSTRAINT     m   ALTER TABLE ONLY public.jacl2_subject
    ADD CONSTRAINT jacl2_subject_id_aclsbj_pk PRIMARY KEY (id_aclsbj);
 R   ALTER TABLE ONLY public.jacl2_subject DROP CONSTRAINT jacl2_subject_id_aclsbj_pk;
       public            postgres    false    218            �           2606    21986 *   jacl2_user_group jacl2_user_group_login_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.jacl2_user_group
    ADD CONSTRAINT jacl2_user_group_login_pk PRIMARY KEY (login, id_aclgrp);
 T   ALTER TABLE ONLY public.jacl2_user_group DROP CONSTRAINT jacl2_user_group_login_pk;
       public            postgres    false    219    219            �           2606    22044    jlx_user jlx_user_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.jlx_user
    ADD CONSTRAINT jlx_user_pkey PRIMARY KEY (usr_login);
 @   ALTER TABLE ONLY public.jlx_user DROP CONSTRAINT jlx_user_pkey;
       public            postgres    false    215            �           2606    22027    log_counter log_counter_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.log_counter
    ADD CONSTRAINT log_counter_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.log_counter DROP CONSTRAINT log_counter_pkey;
       public            postgres    false    224            �           2606    22018    log_detail log_detail_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.log_detail
    ADD CONSTRAINT log_detail_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.log_detail DROP CONSTRAINT log_detail_pkey;
       public            postgres    false    222            �           1259    22065    geobookmark_usr_login_idx    INDEX     V   CREATE INDEX geobookmark_usr_login_idx ON public.geobookmark USING btree (usr_login);
 -   DROP INDEX public.geobookmark_usr_login_idx;
       public            postgres    false    226            �           2606    22060 &   geobookmark geobookmark_usr_login_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.geobookmark
    ADD CONSTRAINT geobookmark_usr_login_fkey FOREIGN KEY (usr_login) REFERENCES public.jlx_user(usr_login) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.geobookmark DROP CONSTRAINT geobookmark_usr_login_fkey;
       public          postgres    false    226    215    4742            �           2606    21999 (   jacl2_rights jacl2_rights_id_aclgrp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jacl2_rights
    ADD CONSTRAINT jacl2_rights_id_aclgrp_fkey FOREIGN KEY (id_aclgrp) REFERENCES public.jacl2_group(id_aclgrp);
 R   ALTER TABLE ONLY public.jacl2_rights DROP CONSTRAINT jacl2_rights_id_aclgrp_fkey;
       public          postgres    false    4744    220    216            �           2606    22004 (   jacl2_rights jacl2_rights_id_aclsbj_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jacl2_rights
    ADD CONSTRAINT jacl2_rights_id_aclsbj_fkey FOREIGN KEY (id_aclsbj) REFERENCES public.jacl2_subject(id_aclsbj);
 R   ALTER TABLE ONLY public.jacl2_rights DROP CONSTRAINT jacl2_rights_id_aclsbj_fkey;
       public          postgres    false    218    4748    220            �           2606    21977 -   jacl2_subject jacl2_subject_id_aclsbjgrp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jacl2_subject
    ADD CONSTRAINT jacl2_subject_id_aclsbjgrp_fkey FOREIGN KEY (id_aclsbjgrp) REFERENCES public.jacl2_subject_group(id_aclsbjgrp);
 W   ALTER TABLE ONLY public.jacl2_subject DROP CONSTRAINT jacl2_subject_id_aclsbjgrp_fkey;
       public          postgres    false    218    4746    217            �           2606    21987 0   jacl2_user_group jacl2_user_group_id_aclgrp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jacl2_user_group
    ADD CONSTRAINT jacl2_user_group_id_aclgrp_fkey FOREIGN KEY (id_aclgrp) REFERENCES public.jacl2_group(id_aclgrp);
 Z   ALTER TABLE ONLY public.jacl2_user_group DROP CONSTRAINT jacl2_user_group_id_aclgrp_fkey;
       public          postgres    false    4744    219    216            7      x������ � �      -   R   x���O��ϫ��/-�D�8c��Sr3�
,TZ�ZT�	!A��E�e�`5��F���4)'�8�4 ����� �(D      1   o  x��TKN�0]7w�B��	6=R���d��X�SSN����6v↥�>���J��P�YK�-*�y�<��U��8&@B
;"�[��`�zh��\�#�I�.ͨ"�F0��FZ��l���in�'#��t��TwX�Q��1��x�H�n�f}%f@�EGa:�+f��Zb�*Pl�*7]H�;�O��i1�{id��}@��S�o���<�0�K�@`�z��Qȴ�!�y�߇�:��0��ptW�G��T޸&y���r���+��y�tV�zG$�ŠՒ����p�K���է]����CZ�Y��K�q��F��ҁ�;�YFAjPܛh:���+R����l�X�l��w�Ѯ[�j�{�-]��N$_����E��?�H      /   �  x���Kr� ���aX�
�i79B7Ĩ�Rl �.r�l;桬<���_`�Jv�`�	�9�V���m�0��G���L��A�k�U��}�B�p	�u��"A�d����)N 	�P"Mq)W�Y4O9�}(�e��@��fc��H�K���3I!�,�hU
m"`�O)L􈀉&�0� J6{>t�4����Ȥ�$�������Pmz�)��N�o�5���/o��M�B��T|1�K����^ǎZ�s�gak@+�N�GK��)��Z�)����$�$~?6#	�D;�إ���F�uᝫ`��2z��{��֯y�R��n��K�PQ����4u�����[��;T��Ԃ�6�@����������Ф+��3�SJZC�����E9�O���-��E�{aP��U��Z-���;�|��gv��O�/ʞ���V��0W�P_�i�?4�      .   l   x����
� �{�z�.K�51��ೇ�Q贱}�q�*xL�hɑ�V���f[�
ҘA��p&��w@)����w��Y�я%�$�v�������+bE xb�df      0   $   x�KL���㌏/(�,�Oq��$'�,����� 8D      ,   �   x�KL����L�9�ɉ9��%z`VJ~n"PNŨR��@��-�)+O����5��5*��$�(Y�2�*?���аȩ�G�%ܰ(�2� =5���+$ٟӿ8;��3Ə��HkRQ~yqv&������������������������������W� ;�2�      5   �   x���A�0��ɏ�mn��^��R]�@mK���w(n�`r��^��"S�he�DǁB��R��_�M٪@�A�E�|`+Pd��������z>��Q$+���-�+.4�����'�5T�W�t��l��n?��FU�G��gag:Ҏ����o���}�l��"� ��      3   ~  x����n7��v�B��m~\~	�.�T-8�ki�[��1�&�6�$H�x�E�>�>�>���J*��p
�x���"��\r��r�v�:�\�s!�s1�v,9#Aڊ�r~��|���LF�c���1.��3������)7�{���d��s����]u�������ݪ�[.>�Q��ڬ��jW� �4TX��+��	�4c���$}6�$�J��e��]6Ԧ�d'�z@]
�LY.�Ɇ�T#j�5V:�<M��D����B��&̪�S����jÔ��������_b�6��R�$�ʺԔ��k��N��H	�8	��AM)�� ��p�5%-Bnь�tF�SS�UIFR8����A[
IP��+CWjJ[Z̜&eR�2%,mƂ3.�U�IM!S�R�"UURȔ�Phg��\dJOe�3��R�ȸ���yH'�+�S�O!�Jj�P��RљB�e� 	�#8s�q5H͙�ܛ��H�p��%Fi�P�3-"���CQ�Z"'w�=�o`��e��i�N˘�����9(M��>US��@��0�$��A�F	��&	��*�h��M��	�)�VV2WO*�H8vk����H!#�� ��Y
�z8>�ǿ���L��@�2 4�Я Eu�ެW��Z.նaG
I˶��I�H�;4J�F�1�*�˯�)'-��:�Y��W�kҫg�ko;��Cv\c`��\�b�l�e���
���Z�˺l�q��`�a,�#�}��PT��b����者��V�|���C;9�N.f���ZV�ps{�\\�p��Xݕ�W��r���;h~5ؼ�>����x(�"!�g��W���{�b���EǑ븜1\V�)!�{׃���h�]��2�&Ĳv��u9�e[�)�/>G�h�^�7�X��տ�����0��u���{w�z��P���F���_�u]|6�f�Ǔ���������Lg��U}=�qr1=y}V�}�������ߌf�g����٬������Ŵ��O�Gǣ�����b4��:?=�M��r5�]����caDb<��,<LR����
��9��ȗ�;Τ�Nk� ↰V�O�O��j�
]������Ia%�o{���'��X�n����Z=�׫j���-�5���m�]�.����m�So˛����ծ^opyۗ�Ū
O�1?����K�[m!��A�~:�L�y���]��`��jY^�K���UK{}~��dv�l��ɿG����^���}��4�W���b�_|��:�
�_a9�	�[e���]�)�K�]�}'��\�K�,D,�]$�!��}[���_s�n��~���u�M�~�
M��ƫ�;{��� �L�6ݷ���"���+��qN[y.\�nu?�Tɂ�^Ú�{h�V�]u�i���R��Yuʐ�_�T�B���qA��lh�6P�!��:���IU�!x����s�C�У��v ʴ�]�M\S�6{ �+�����5��ir����C�j�Z1�P�GW�͐@��ҩ�9�+
B6�/����WT���\>4���>CY��lGi�j���j��٩���
�+\Z��PlJQ��b�"�M)*@=������CS��a_#���dM)JR�	�����44�(�ۅ��T�C���a�W9�.;Iۤ���R�~JQJ�P�m�~��R�H��Z����K)*t����ǔ���
���{��?�����
w>�����T�f5���YH�
PT*g��)]�}Ą�2����t՞*9ϭ�.�.�+�t��$���OAT^�7�%��Vu_�C��I+T�l�����vd����S�`!/��֮�
%<g�	�2�r���
l�h��������hkЁ��
vΙ��lZ�DBFt?�;dG�Ӳ�>�u����Q�;\B(ez�wTK-;ORjov\K-*:T�n��ъ�:4��9��k)x�r���뾁���f���!kyxJ�:t1�k�v�7<)�༙4^uwȏ�Im6�r���IoxR����s��{k�W'5���������<)��"L��������´X'�L��
�	��A��{�c/,����`����Y���@i,�#l<'�fD{{�����x��m<�p�-c���ػL�Ӌw(��O�g\�\��pt��7�(s§`�p��q����ٳg��/�=     