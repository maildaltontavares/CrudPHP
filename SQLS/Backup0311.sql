PGDMP                     
    x            Main    12.3    12.3 z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    Main    DATABASE     �   CREATE DATABASE "Main" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Main";
                postgres    false            �            1259    16655    E0001_tabela_padrao    TABLE     �   CREATE TABLE public."E0001_tabela_padrao" (
    d0001_id integer NOT NULL,
    d0001_descricao character varying(50) NOT NULL,
    d0001_sigla character varying(10),
    d0001_tab_sistema character varying
);
 )   DROP TABLE public."E0001_tabela_padrao";
       public         heap    postgres    false            �            1259    16658     E0001_tabela_padrao_d0001_id_seq    SEQUENCE     �   CREATE SEQUENCE public."E0001_tabela_padrao_d0001_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."E0001_tabela_padrao_d0001_id_seq";
       public          postgres    false    202            �           0    0     E0001_tabela_padrao_d0001_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."E0001_tabela_padrao_d0001_id_seq" OWNED BY public."E0001_tabela_padrao".d0001_id;
          public          postgres    false    203            �            1259    16660    E0003_config_tp_d0003_id_seq    SEQUENCE     �   CREATE SEQUENCE public."E0003_config_tp_d0003_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 5   DROP SEQUENCE public."E0003_config_tp_d0003_id_seq";
       public          postgres    false            �            1259    16688    E0003_config_tp    TABLE     H  CREATE TABLE public."E0003_config_tp" (
    d0003_id integer DEFAULT nextval('public."E0003_config_tp_d0003_id_seq"'::regclass) NOT NULL,
    d0001_id integer,
    d0003_str1 character(1) NOT NULL,
    d0003_desc_str1 character varying(30) NOT NULL,
    d0003_str2 character(1),
    d0003_desc_str2 character varying(30),
    d0003_str3 character(1),
    d0003_desc_str3 character varying(30),
    d0003_flag1 character(1),
    d0003_desc_flag1 character varying(30),
    d0003_flag2 character(1),
    d0003_desc_flag2 character varying(30),
    d0003_flag3 character(1),
    d0003_desc_flag3 character varying(30),
    d0003_num1 character(1),
    d0003_desc_num1 character varying(30),
    d0003_num2 character varying(1),
    d0003_desc_num2 character varying(30),
    d0003_num3 character varying(1),
    d0003_desc_num3 character varying(30),
    d0003_data1 character varying(1),
    d0003_desc_data1 character varying(30),
    d0003_data2 character varying(1),
    d0003_desc_data2 character varying(30),
    d0003_data3 character varying(1),
    d0003_desc_data3 character varying(30)
);
 %   DROP TABLE public."E0003_config_tp";
       public         heap    postgres    false    204            �            1259    16698    E0004_tabela    TABLE        CREATE TABLE public."E0004_tabela" (
    d0004_id bigint NOT NULL,
    d0001_id integer NOT NULL,
    d0004_string1 character varying(100) NOT NULL,
    d0004_string2 character varying(100),
    d0004_string3 character varying(100),
    d0004_flag1 character varying(1),
    d0004_flag2 character varying(3),
    d0004_flag3 character varying(3),
    d0004_num1 integer,
    d0004_num2 double precision,
    d0004_num3 double precision,
    d0004_data1 date,
    d0004_data2 date,
    d0004_data3 date,
    d0001_sigla character varying(10)
);
 "   DROP TABLE public."E0004_tabela";
       public         heap    postgres    false            �            1259    16696    E0004_tabela_d0004_id_seq    SEQUENCE     �   CREATE SEQUENCE public."E0004_tabela_d0004_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."E0004_tabela_d0004_id_seq";
       public          postgres    false    209            �           0    0    E0004_tabela_d0004_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."E0004_tabela_d0004_id_seq" OWNED BY public."E0004_tabela".d0004_id;
          public          postgres    false    208            �            1259    25277 +   E0005_GRUPO_EMPRESA_D0005_GRUPO_EMPRESA_seq    SEQUENCE     �   CREATE SEQUENCE public."E0005_GRUPO_EMPRESA_D0005_GRUPO_EMPRESA_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 D   DROP SEQUENCE public."E0005_GRUPO_EMPRESA_D0005_GRUPO_EMPRESA_seq";
       public          postgres    false            �            1259    25279    E0005_GRUPO_EMPRESA    TABLE     Y  CREATE TABLE public."E0005_GRUPO_EMPRESA" (
    d0005_grupo_empresa integer DEFAULT nextval('public."E0005_GRUPO_EMPRESA_D0005_GRUPO_EMPRESA_seq"'::regclass) NOT NULL,
    d0005_nome_grupo character varying(100) NOT NULL,
    d0005_cnpj character varying(20),
    d0005_endereco character varying(100),
    d0005_numero character varying(10)
);
 )   DROP TABLE public."E0005_GRUPO_EMPRESA";
       public         heap    postgres    false    228            �            1259    25314     E0006_FILIAL_D0006_ID_FILIAL_seq    SEQUENCE     �   CREATE SEQUENCE public."E0006_FILIAL_D0006_ID_FILIAL_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 9   DROP SEQUENCE public."E0006_FILIAL_D0006_ID_FILIAL_seq";
       public          postgres    false            �            1259    25320    E0006_FILIAL    TABLE     �   CREATE TABLE public."E0006_FILIAL" (
    d0006_id_filial bigint DEFAULT nextval('public."E0006_FILIAL_D0006_ID_FILIAL_seq"'::regclass) NOT NULL,
    d0006_nome_filial character varying(100) NOT NULL,
    d0005_grupo_empresa bigint NOT NULL
);
 "   DROP TABLE public."E0006_FILIAL";
       public         heap    postgres    false    230            �            1259    25447 -   E0013_USUAARIO_GRUTAB_D0013_ID_USU_GRUTAB_seq    SEQUENCE     �   CREATE SEQUENCE public."E0013_USUAARIO_GRUTAB_D0013_ID_USU_GRUTAB_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 F   DROP SEQUENCE public."E0013_USUAARIO_GRUTAB_D0013_ID_USU_GRUTAB_seq";
       public          postgres    false            �            1259    16666    S0001_usuario    TABLE     %  CREATE TABLE public."S0001_usuario" (
    d0001_id integer NOT NULL,
    d0001_nome character varying(50) NOT NULL,
    d0001_email character varying(100) NOT NULL,
    d0001_senha character varying(100) NOT NULL,
    d0001_tel character varying(15),
    d0001_chave character varying(100)
);
 #   DROP TABLE public."S0001_usuario";
       public         heap    postgres    false            �            1259    24943     S0002_FUNCAO_D0002_ID_FUNCAO_seq    SEQUENCE     �   CREATE SEQUENCE public."S0002_FUNCAO_D0002_ID_FUNCAO_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 9   DROP SEQUENCE public."S0002_FUNCAO_D0002_ID_FUNCAO_seq";
       public          postgres    false            �            1259    24945    S0002_FUNCAO    TABLE     
  CREATE TABLE public."S0002_FUNCAO" (
    d0002_id_funcao integer DEFAULT nextval('public."S0002_FUNCAO_D0002_ID_FUNCAO_seq"'::regclass) NOT NULL,
    d0002_func_desc character varying(255) NOT NULL,
    d0001_id_func bigint,
    d0002_chave character varying(50)
);
 "   DROP TABLE public."S0002_FUNCAO";
       public         heap    postgres    false    210            �            1259    24971 (   S0003_FUNCAO_ACAO_D0003_ID_FUNC_ACAO_seq    SEQUENCE     �   CREATE SEQUENCE public."S0003_FUNCAO_ACAO_D0003_ID_FUNC_ACAO_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 A   DROP SEQUENCE public."S0003_FUNCAO_ACAO_D0003_ID_FUNC_ACAO_seq";
       public          postgres    false            �            1259    24973    S0003_FUNCAO_ACAO    TABLE       CREATE TABLE public."S0003_FUNCAO_ACAO" (
    d0003_id_func_acao integer DEFAULT nextval('public."S0003_FUNCAO_ACAO_D0003_ID_FUNC_ACAO_seq"'::regclass) NOT NULL,
    d0002_id_funcao bigint NOT NULL,
    d0003_id_acao bigint NOT NULL,
    d0003_chave character varying(50)
);
 '   DROP TABLE public."S0003_FUNCAO_ACAO";
       public         heap    postgres    false    212            �            1259    25012     S0004_PERFIL_D0004_ID_PERFIL_seq    SEQUENCE     �   CREATE SEQUENCE public."S0004_PERFIL_D0004_ID_PERFIL_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 9   DROP SEQUENCE public."S0004_PERFIL_D0004_ID_PERFIL_seq";
       public          postgres    false            �            1259    25014    S0004_PERFIL    TABLE     �   CREATE TABLE public."S0004_PERFIL" (
    d0004_id_perfil integer DEFAULT nextval('public."S0004_PERFIL_D0004_ID_PERFIL_seq"'::regclass) NOT NULL,
    d0004_desc_perfil character varying(100) NOT NULL,
    d0004_chave character varying(50)
);
 "   DROP TABLE public."S0004_PERFIL";
       public         heap    postgres    false    214            �            1259    25037 *   S0005_PERFIL_FUNCAO_D0005_ID_PERF_FUNC_seq    SEQUENCE     �   CREATE SEQUENCE public."S0005_PERFIL_FUNCAO_D0005_ID_PERF_FUNC_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 C   DROP SEQUENCE public."S0005_PERFIL_FUNCAO_D0005_ID_PERF_FUNC_seq";
       public          postgres    false            �            1259    25061    S0005_PERFIL_FUNCAO    TABLE        CREATE TABLE public."S0005_PERFIL_FUNCAO" (
    d0005_id_perf_func integer DEFAULT nextval('public."S0005_PERFIL_FUNCAO_D0005_ID_PERF_FUNC_seq"'::regclass) NOT NULL,
    d0002_id_funcao bigint,
    d0004_id_perfil bigint,
    d0005_chave character varying(50),
    d0005_ordem numeric
);
 )   DROP TABLE public."S0005_PERFIL_FUNCAO";
       public         heap    postgres    false    216            �            1259    25084    S0006_GRUPO    TABLE     �   CREATE TABLE public."S0006_GRUPO" (
    d0006_id_grupo bigint NOT NULL,
    d0006_desc_grupo character varying(100) NOT NULL,
    d0006_chave character varying(100)
);
 !   DROP TABLE public."S0006_GRUPO";
       public         heap    postgres    false            �           0    0    TABLE "S0006_GRUPO"    COMMENT     ?   COMMENT ON TABLE public."S0006_GRUPO" IS 'Grupos de usuarios';
          public          postgres    false    219            �            1259    25082    S0006_GRUPO_d0006_id_grupo_seq    SEQUENCE     �   CREATE SEQUENCE public."S0006_GRUPO_d0006_id_grupo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."S0006_GRUPO_d0006_id_grupo_seq";
       public          postgres    false    219            �           0    0    S0006_GRUPO_d0006_id_grupo_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."S0006_GRUPO_d0006_id_grupo_seq" OWNED BY public."S0006_GRUPO".d0006_id_grupo;
          public          postgres    false    218            �            1259    25133 ,   S0007_GRUPO_PERFIL_D0007_ID_GRUPO_PERFIL_seq    SEQUENCE     �   CREATE SEQUENCE public."S0007_GRUPO_PERFIL_D0007_ID_GRUPO_PERFIL_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 E   DROP SEQUENCE public."S0007_GRUPO_PERFIL_D0007_ID_GRUPO_PERFIL_seq";
       public          postgres    false            �            1259    25141    S0007_GRUPO_PERFIL    TABLE     4  CREATE TABLE public."S0007_GRUPO_PERFIL" (
    d0007_id_grupo_perfil bigint DEFAULT nextval('public."S0007_GRUPO_PERFIL_D0007_ID_GRUPO_PERFIL_seq"'::regclass) NOT NULL,
    d0006_id_grupo bigint NOT NULL,
    d0007_chave character varying(100),
    d0007_ordem bigint,
    d0004_id_perfil bigint NOT NULL
);
 (   DROP TABLE public."S0007_GRUPO_PERFIL";
       public         heap    postgres    false    220            �            1259    25170 ,   S0009_GRUPO_TABELA_D0009_ID_GRUPO_TABELA_seq    SEQUENCE     �   CREATE SEQUENCE public."S0009_GRUPO_TABELA_D0009_ID_GRUPO_TABELA_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 E   DROP SEQUENCE public."S0009_GRUPO_TABELA_D0009_ID_GRUPO_TABELA_seq";
       public          postgres    false            �            1259    25172    S0009_GRUPO_TABELA    TABLE       CREATE TABLE public."S0009_GRUPO_TABELA" (
    d0009_id_grupo_tabela bigint DEFAULT nextval('public."S0009_GRUPO_TABELA_D0009_ID_GRUPO_TABELA_seq"'::regclass) NOT NULL,
    d0009_desc_grupo_tabela character varying(100) NOT NULL,
    d0009_chave character varying(100)
);
 (   DROP TABLE public."S0009_GRUPO_TABELA";
       public         heap    postgres    false    222            �            1259    25200 .   S0010_GRUTAB_TABELA_D0010_ID_GRUTAB_TABELA_seq    SEQUENCE     �   CREATE SEQUENCE public."S0010_GRUTAB_TABELA_D0010_ID_GRUTAB_TABELA_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 G   DROP SEQUENCE public."S0010_GRUTAB_TABELA_D0010_ID_GRUTAB_TABELA_seq";
       public          postgres    false            �            1259    25202    S0010_GRUTAB_TABELA    TABLE     9  CREATE TABLE public."S0010_GRUTAB_TABELA" (
    d0010_id_grutab_tabela integer DEFAULT nextval('public."S0010_GRUTAB_TABELA_D0010_ID_GRUTAB_TABELA_seq"'::regclass) NOT NULL,
    d0009_id_grupo_tabela bigint NOT NULL,
    d0001_id bigint NOT NULL,
    d0010_chave character varying(100),
    d0010_ordem bigint
);
 )   DROP TABLE public."S0010_GRUTAB_TABELA";
       public         heap    postgres    false    224            �            1259    25243 .   S0011_USUARIO_GRUPO_D0011_ID_USUARIO_GRUPO_seq    SEQUENCE     �   CREATE SEQUENCE public."S0011_USUARIO_GRUPO_D0011_ID_USUARIO_GRUPO_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 G   DROP SEQUENCE public."S0011_USUARIO_GRUPO_D0011_ID_USUARIO_GRUPO_seq";
       public          postgres    false            �            1259    25245    S0011_USUARIO_GRUPO    TABLE     2  CREATE TABLE public."S0011_USUARIO_GRUPO" (
    d0011_id_usuario_grupo bigint DEFAULT nextval('public."S0011_USUARIO_GRUPO_D0011_ID_USUARIO_GRUPO_seq"'::regclass) NOT NULL,
    d0006_id_grupo bigint NOT NULL,
    d0001_id bigint NOT NULL,
    d0011_chave character varying(100),
    d0011_ordem numeric
);
 )   DROP TABLE public."S0011_USUARIO_GRUPO";
       public         heap    postgres    false    226            �            1259    25409 ,   S0012_USUARIO_FILIAL_D0012_ID_USU_FILIAL_seq    SEQUENCE     �   CREATE SEQUENCE public."S0012_USUARIO_FILIAL_D0012_ID_USU_FILIAL_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;
 E   DROP SEQUENCE public."S0012_USUARIO_FILIAL_D0012_ID_USU_FILIAL_seq";
       public          postgres    false            �            1259    25411    S0012_USUARIO_FILIAL    TABLE     V  CREATE TABLE public."S0012_USUARIO_FILIAL" (
    d0012_id_usu_filial bigint DEFAULT nextval('public."S0012_USUARIO_FILIAL_D0012_ID_USU_FILIAL_seq"'::regclass) NOT NULL,
    d0001_id bigint NOT NULL,
    d0006_id_filial bigint NOT NULL,
    d0012_chave character varying(100),
    d0012_ordem bigint,
    d0012_default character varying(1)
);
 *   DROP TABLE public."S0012_USUARIO_FILIAL";
       public         heap    postgres    false    232            �            1259    25449    S0013_USUARIO_GRUTAB    TABLE     6  CREATE TABLE public."S0013_USUARIO_GRUTAB" (
    d0013_id_usu_grutab bigint DEFAULT nextval('public."E0013_USUAARIO_GRUTAB_D0013_ID_USU_GRUTAB_seq"'::regclass) NOT NULL,
    d0001_id bigint NOT NULL,
    d0009_id_grupo_tabela bigint NOT NULL,
    d0013_chave character varying(100),
    d0013_ordem numeric
);
 *   DROP TABLE public."S0013_USUARIO_GRUTAB";
       public         heap    postgres    false    234            �            1259    16669    s0001_usuario_d0001_id_seq    SEQUENCE     �   CREATE SEQUENCE public.s0001_usuario_d0001_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.s0001_usuario_d0001_id_seq;
       public          postgres    false    205            �           0    0    s0001_usuario_d0001_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.s0001_usuario_d0001_id_seq OWNED BY public."S0001_usuario".d0001_id;
          public          postgres    false    206            �
           2604    16671    E0001_tabela_padrao d0001_id    DEFAULT     �   ALTER TABLE ONLY public."E0001_tabela_padrao" ALTER COLUMN d0001_id SET DEFAULT nextval('public."E0001_tabela_padrao_d0001_id_seq"'::regclass);
 M   ALTER TABLE public."E0001_tabela_padrao" ALTER COLUMN d0001_id DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    16701    E0004_tabela d0004_id    DEFAULT     �   ALTER TABLE ONLY public."E0004_tabela" ALTER COLUMN d0004_id SET DEFAULT nextval('public."E0004_tabela_d0004_id_seq"'::regclass);
 F   ALTER TABLE public."E0004_tabela" ALTER COLUMN d0004_id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16672    S0001_usuario d0001_id    DEFAULT     �   ALTER TABLE ONLY public."S0001_usuario" ALTER COLUMN d0001_id SET DEFAULT nextval('public.s0001_usuario_d0001_id_seq'::regclass);
 G   ALTER TABLE public."S0001_usuario" ALTER COLUMN d0001_id DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    25087    S0006_GRUPO d0006_id_grupo    DEFAULT     �   ALTER TABLE ONLY public."S0006_GRUPO" ALTER COLUMN d0006_id_grupo SET DEFAULT nextval('public."S0006_GRUPO_d0006_id_grupo_seq"'::regclass);
 K   ALTER TABLE public."S0006_GRUPO" ALTER COLUMN d0006_id_grupo DROP DEFAULT;
       public          postgres    false    219    218    219            �          0    16655    E0001_tabela_padrao 
   TABLE DATA           j   COPY public."E0001_tabela_padrao" (d0001_id, d0001_descricao, d0001_sigla, d0001_tab_sistema) FROM stdin;
    public          postgres    false    202   ��       �          0    16688    E0003_config_tp 
   TABLE DATA           �  COPY public."E0003_config_tp" (d0003_id, d0001_id, d0003_str1, d0003_desc_str1, d0003_str2, d0003_desc_str2, d0003_str3, d0003_desc_str3, d0003_flag1, d0003_desc_flag1, d0003_flag2, d0003_desc_flag2, d0003_flag3, d0003_desc_flag3, d0003_num1, d0003_desc_num1, d0003_num2, d0003_desc_num2, d0003_num3, d0003_desc_num3, d0003_data1, d0003_desc_data1, d0003_data2, d0003_desc_data2, d0003_data3, d0003_desc_data3) FROM stdin;
    public          postgres    false    207   �       �          0    16698    E0004_tabela 
   TABLE DATA           �   COPY public."E0004_tabela" (d0004_id, d0001_id, d0004_string1, d0004_string2, d0004_string3, d0004_flag1, d0004_flag2, d0004_flag3, d0004_num1, d0004_num2, d0004_num3, d0004_data1, d0004_data2, d0004_data3, d0001_sigla) FROM stdin;
    public          postgres    false    209   :�       �          0    25279    E0005_GRUPO_EMPRESA 
   TABLE DATA           �   COPY public."E0005_GRUPO_EMPRESA" (d0005_grupo_empresa, d0005_nome_grupo, d0005_cnpj, d0005_endereco, d0005_numero) FROM stdin;
    public          postgres    false    229   x�       �          0    25320    E0006_FILIAL 
   TABLE DATA           a   COPY public."E0006_FILIAL" (d0006_id_filial, d0006_nome_filial, d0005_grupo_empresa) FROM stdin;
    public          postgres    false    231   ��       �          0    16666    S0001_usuario 
   TABLE DATA           q   COPY public."S0001_usuario" (d0001_id, d0001_nome, d0001_email, d0001_senha, d0001_tel, d0001_chave) FROM stdin;
    public          postgres    false    205   ��       �          0    24945    S0002_FUNCAO 
   TABLE DATA           f   COPY public."S0002_FUNCAO" (d0002_id_funcao, d0002_func_desc, d0001_id_func, d0002_chave) FROM stdin;
    public          postgres    false    211   c�       �          0    24973    S0003_FUNCAO_ACAO 
   TABLE DATA           n   COPY public."S0003_FUNCAO_ACAO" (d0003_id_func_acao, d0002_id_funcao, d0003_id_acao, d0003_chave) FROM stdin;
    public          postgres    false    213   Y�       �          0    25014    S0004_PERFIL 
   TABLE DATA           Y   COPY public."S0004_PERFIL" (d0004_id_perfil, d0004_desc_perfil, d0004_chave) FROM stdin;
    public          postgres    false    215   �       �          0    25061    S0005_PERFIL_FUNCAO 
   TABLE DATA              COPY public."S0005_PERFIL_FUNCAO" (d0005_id_perf_func, d0002_id_funcao, d0004_id_perfil, d0005_chave, d0005_ordem) FROM stdin;
    public          postgres    false    217   �       �          0    25084    S0006_GRUPO 
   TABLE DATA           V   COPY public."S0006_GRUPO" (d0006_id_grupo, d0006_desc_grupo, d0006_chave) FROM stdin;
    public          postgres    false    219   ��       �          0    25141    S0007_GRUPO_PERFIL 
   TABLE DATA           �   COPY public."S0007_GRUPO_PERFIL" (d0007_id_grupo_perfil, d0006_id_grupo, d0007_chave, d0007_ordem, d0004_id_perfil) FROM stdin;
    public          postgres    false    221   �       �          0    25172    S0009_GRUPO_TABELA 
   TABLE DATA           k   COPY public."S0009_GRUPO_TABELA" (d0009_id_grupo_tabela, d0009_desc_grupo_tabela, d0009_chave) FROM stdin;
    public          postgres    false    223   2�       �          0    25202    S0010_GRUTAB_TABELA 
   TABLE DATA           �   COPY public."S0010_GRUTAB_TABELA" (d0010_id_grutab_tabela, d0009_id_grupo_tabela, d0001_id, d0010_chave, d0010_ordem) FROM stdin;
    public          postgres    false    225   y�       �          0    25245    S0011_USUARIO_GRUPO 
   TABLE DATA           {   COPY public."S0011_USUARIO_GRUPO" (d0011_id_usuario_grupo, d0006_id_grupo, d0001_id, d0011_chave, d0011_ordem) FROM stdin;
    public          postgres    false    227   ��       �          0    25411    S0012_USUARIO_FILIAL 
   TABLE DATA           �   COPY public."S0012_USUARIO_FILIAL" (d0012_id_usu_filial, d0001_id, d0006_id_filial, d0012_chave, d0012_ordem, d0012_default) FROM stdin;
    public          postgres    false    233   >�       �          0    25449    S0013_USUARIO_GRUTAB 
   TABLE DATA           �   COPY public."S0013_USUARIO_GRUTAB" (d0013_id_usu_grutab, d0001_id, d0009_id_grupo_tabela, d0013_chave, d0013_ordem) FROM stdin;
    public          postgres    false    235   [�       �           0    0     E0001_tabela_padrao_d0001_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."E0001_tabela_padrao_d0001_id_seq"', 39, true);
          public          postgres    false    203            �           0    0    E0003_config_tp_d0003_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."E0003_config_tp_d0003_id_seq"', 75, true);
          public          postgres    false    204            �           0    0    E0004_tabela_d0004_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."E0004_tabela_d0004_id_seq"', 98, true);
          public          postgres    false    208            �           0    0 +   E0005_GRUPO_EMPRESA_D0005_GRUPO_EMPRESA_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."E0005_GRUPO_EMPRESA_D0005_GRUPO_EMPRESA_seq"', 1, false);
          public          postgres    false    228            �           0    0     E0006_FILIAL_D0006_ID_FILIAL_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."E0006_FILIAL_D0006_ID_FILIAL_seq"', 1, false);
          public          postgres    false    230            �           0    0 -   E0013_USUAARIO_GRUTAB_D0013_ID_USU_GRUTAB_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."E0013_USUAARIO_GRUTAB_D0013_ID_USU_GRUTAB_seq"', 1, false);
          public          postgres    false    234            �           0    0     S0002_FUNCAO_D0002_ID_FUNCAO_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."S0002_FUNCAO_D0002_ID_FUNCAO_seq"', 35, true);
          public          postgres    false    210            �           0    0 (   S0003_FUNCAO_ACAO_D0003_ID_FUNC_ACAO_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."S0003_FUNCAO_ACAO_D0003_ID_FUNC_ACAO_seq"', 146, true);
          public          postgres    false    212            �           0    0     S0004_PERFIL_D0004_ID_PERFIL_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."S0004_PERFIL_D0004_ID_PERFIL_seq"', 88, true);
          public          postgres    false    214            �           0    0 *   S0005_PERFIL_FUNCAO_D0005_ID_PERF_FUNC_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."S0005_PERFIL_FUNCAO_D0005_ID_PERF_FUNC_seq"', 611, true);
          public          postgres    false    216            �           0    0    S0006_GRUPO_d0006_id_grupo_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."S0006_GRUPO_d0006_id_grupo_seq"', 6, true);
          public          postgres    false    218            �           0    0 ,   S0007_GRUPO_PERFIL_D0007_ID_GRUPO_PERFIL_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."S0007_GRUPO_PERFIL_D0007_ID_GRUPO_PERFIL_seq"', 15, true);
          public          postgres    false    220            �           0    0 ,   S0009_GRUPO_TABELA_D0009_ID_GRUPO_TABELA_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."S0009_GRUPO_TABELA_D0009_ID_GRUPO_TABELA_seq"', 6, true);
          public          postgres    false    222            �           0    0 .   S0010_GRUTAB_TABELA_D0010_ID_GRUTAB_TABELA_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."S0010_GRUTAB_TABELA_D0010_ID_GRUTAB_TABELA_seq"', 98, true);
          public          postgres    false    224            �           0    0 .   S0011_USUARIO_GRUPO_D0011_ID_USUARIO_GRUPO_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."S0011_USUARIO_GRUPO_D0011_ID_USUARIO_GRUPO_seq"', 21, true);
          public          postgres    false    226            �           0    0 ,   S0012_USUARIO_FILIAL_D0012_ID_USU_FILIAL_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."S0012_USUARIO_FILIAL_D0012_ID_USU_FILIAL_seq"', 1, false);
          public          postgres    false    232            �           0    0    s0001_usuario_d0001_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.s0001_usuario_d0001_id_seq', 19, true);
          public          postgres    false    206            �
           2606    16674 ,   E0001_tabela_padrao E0001_tabela_padrao_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."E0001_tabela_padrao"
    ADD CONSTRAINT "E0001_tabela_padrao_pkey" PRIMARY KEY (d0001_id);
 Z   ALTER TABLE ONLY public."E0001_tabela_padrao" DROP CONSTRAINT "E0001_tabela_padrao_pkey";
       public            postgres    false    202            �
           2606    16695 ,   E0003_config_tp E0003_config_tp_d0001_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public."E0003_config_tp"
    ADD CONSTRAINT "E0003_config_tp_d0001_id_key" UNIQUE (d0001_id);
 Z   ALTER TABLE ONLY public."E0003_config_tp" DROP CONSTRAINT "E0003_config_tp_d0001_id_key";
       public            postgres    false    207            �
           2606    16693 $   E0003_config_tp E0003_config_tp_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."E0003_config_tp"
    ADD CONSTRAINT "E0003_config_tp_pkey" PRIMARY KEY (d0003_id);
 R   ALTER TABLE ONLY public."E0003_config_tp" DROP CONSTRAINT "E0003_config_tp_pkey";
       public            postgres    false    207            �
           2606    16703    E0004_tabela E0004_tabela_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."E0004_tabela"
    ADD CONSTRAINT "E0004_tabela_pkey" PRIMARY KEY (d0004_id);
 L   ALTER TABLE ONLY public."E0004_tabela" DROP CONSTRAINT "E0004_tabela_pkey";
       public            postgres    false    209                       2606    25284 ,   E0005_GRUPO_EMPRESA E0005_GRUPO_EMPRESA_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."E0005_GRUPO_EMPRESA"
    ADD CONSTRAINT "E0005_GRUPO_EMPRESA_pkey" PRIMARY KEY (d0005_grupo_empresa);
 Z   ALTER TABLE ONLY public."E0005_GRUPO_EMPRESA" DROP CONSTRAINT "E0005_GRUPO_EMPRESA_pkey";
       public            postgres    false    229            %           2606    25457 /   S0013_USUARIO_GRUTAB E0013_USUAARIO_GRUTAB_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB"
    ADD CONSTRAINT "E0013_USUAARIO_GRUTAB_pkey" PRIMARY KEY (d0013_id_usu_grutab);
 ]   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB" DROP CONSTRAINT "E0013_USUAARIO_GRUTAB_pkey";
       public            postgres    false    235            �
           2606    24950    S0002_FUNCAO S0002_FUNCAO_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."S0002_FUNCAO"
    ADD CONSTRAINT "S0002_FUNCAO_pkey" PRIMARY KEY (d0002_id_funcao);
 L   ALTER TABLE ONLY public."S0002_FUNCAO" DROP CONSTRAINT "S0002_FUNCAO_pkey";
       public            postgres    false    211                       2606    24978 (   S0003_FUNCAO_ACAO S0003_FUNCAO_ACAO_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."S0003_FUNCAO_ACAO"
    ADD CONSTRAINT "S0003_FUNCAO_ACAO_pkey" PRIMARY KEY (d0003_id_func_acao);
 V   ALTER TABLE ONLY public."S0003_FUNCAO_ACAO" DROP CONSTRAINT "S0003_FUNCAO_ACAO_pkey";
       public            postgres    false    213                       2606    25019    S0004_PERFIL S0004_PERFIL_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."S0004_PERFIL"
    ADD CONSTRAINT "S0004_PERFIL_pkey" PRIMARY KEY (d0004_id_perfil);
 L   ALTER TABLE ONLY public."S0004_PERFIL" DROP CONSTRAINT "S0004_PERFIL_pkey";
       public            postgres    false    215                       2606    25069 ,   S0005_PERFIL_FUNCAO S0005_PERFIL_FUNCAO_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO"
    ADD CONSTRAINT "S0005_PERFIL_FUNCAO_pkey" PRIMARY KEY (d0005_id_perf_func);
 Z   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO" DROP CONSTRAINT "S0005_PERFIL_FUNCAO_pkey";
       public            postgres    false    217                       2606    25089    S0006_GRUPO S0006_GRUPO_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."S0006_GRUPO"
    ADD CONSTRAINT "S0006_GRUPO_pkey" PRIMARY KEY (d0006_id_grupo);
 J   ALTER TABLE ONLY public."S0006_GRUPO" DROP CONSTRAINT "S0006_GRUPO_pkey";
       public            postgres    false    219                       2606    25146 *   S0007_GRUPO_PERFIL S0007_GRUPO_PERFIL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."S0007_GRUPO_PERFIL"
    ADD CONSTRAINT "S0007_GRUPO_PERFIL_pkey" PRIMARY KEY (d0006_id_grupo, d0004_id_perfil);
 X   ALTER TABLE ONLY public."S0007_GRUPO_PERFIL" DROP CONSTRAINT "S0007_GRUPO_PERFIL_pkey";
       public            postgres    false    221    221                       2606    25177 *   S0009_GRUPO_TABELA S0009_GRUPO_TABELA_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."S0009_GRUPO_TABELA"
    ADD CONSTRAINT "S0009_GRUPO_TABELA_pkey" PRIMARY KEY (d0009_id_grupo_tabela);
 X   ALTER TABLE ONLY public."S0009_GRUPO_TABELA" DROP CONSTRAINT "S0009_GRUPO_TABELA_pkey";
       public            postgres    false    223                       2606    25207 ,   S0010_GRUTAB_TABELA S0010_GRUTAB_TABELA_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."S0010_GRUTAB_TABELA"
    ADD CONSTRAINT "S0010_GRUTAB_TABELA_pkey" PRIMARY KEY (d0010_id_grutab_tabela);
 Z   ALTER TABLE ONLY public."S0010_GRUTAB_TABELA" DROP CONSTRAINT "S0010_GRUTAB_TABELA_pkey";
       public            postgres    false    225                       2606    25253 ,   S0011_USUARIO_GRUPO S0011_USUARIO_GRUPO_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO"
    ADD CONSTRAINT "S0011_USUARIO_GRUPO_pkey" PRIMARY KEY (d0011_id_usuario_grupo);
 Z   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO" DROP CONSTRAINT "S0011_USUARIO_GRUPO_pkey";
       public            postgres    false    227            !           2606    25416 .   S0012_USUARIO_FILIAL S0012_USUARIO_FILIAL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."S0012_USUARIO_FILIAL"
    ADD CONSTRAINT "S0012_USUARIO_FILIAL_pkey" PRIMARY KEY (d0012_id_usu_filial);
 \   ALTER TABLE ONLY public."S0012_USUARIO_FILIAL" DROP CONSTRAINT "S0012_USUARIO_FILIAL_pkey";
       public            postgres    false    233            #           2606    25418 "   S0012_USUARIO_FILIAL UK_USU_FILIAL 
   CONSTRAINT     v   ALTER TABLE ONLY public."S0012_USUARIO_FILIAL"
    ADD CONSTRAINT "UK_USU_FILIAL" UNIQUE (d0001_id, d0006_id_filial);
 P   ALTER TABLE ONLY public."S0012_USUARIO_FILIAL" DROP CONSTRAINT "UK_USU_FILIAL";
       public            postgres    false    233    233                       2606    25021 %   S0004_PERFIL UNIQUE_D0004_DESC_PERFIL 
   CONSTRAINT     q   ALTER TABLE ONLY public."S0004_PERFIL"
    ADD CONSTRAINT "UNIQUE_D0004_DESC_PERFIL" UNIQUE (d0004_desc_perfil);
 S   ALTER TABLE ONLY public."S0004_PERFIL" DROP CONSTRAINT "UNIQUE_D0004_DESC_PERFIL";
       public            postgres    false    215            	           2606    25071 &   S0005_PERFIL_FUNCAO UNIQUE_PERFIL_FUNC 
   CONSTRAINT     �   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO"
    ADD CONSTRAINT "UNIQUE_PERFIL_FUNC" UNIQUE (d0002_id_funcao, d0004_id_perfil);
 T   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO" DROP CONSTRAINT "UNIQUE_PERFIL_FUNC";
       public            postgres    false    217    217                       2606    25179 (   S0009_GRUPO_TABELA UNK_DESC_GRUPO_TABELA 
   CONSTRAINT     z   ALTER TABLE ONLY public."S0009_GRUPO_TABELA"
    ADD CONSTRAINT "UNK_DESC_GRUPO_TABELA" UNIQUE (d0009_desc_grupo_tabela);
 V   ALTER TABLE ONLY public."S0009_GRUPO_TABELA" DROP CONSTRAINT "UNK_DESC_GRUPO_TABELA";
       public            postgres    false    223                       2606    25286    E0005_GRUPO_EMPRESA UNK_NOME 
   CONSTRAINT     g   ALTER TABLE ONLY public."E0005_GRUPO_EMPRESA"
    ADD CONSTRAINT "UNK_NOME" UNIQUE (d0005_nome_grupo);
 J   ALTER TABLE ONLY public."E0005_GRUPO_EMPRESA" DROP CONSTRAINT "UNK_NOME";
       public            postgres    false    229                       2606    25325    E0006_FILIAL UNK_NOME_FILIAL 
   CONSTRAINT     h   ALTER TABLE ONLY public."E0006_FILIAL"
    ADD CONSTRAINT "UNK_NOME_FILIAL" UNIQUE (d0006_nome_filial);
 J   ALTER TABLE ONLY public."E0006_FILIAL" DROP CONSTRAINT "UNK_NOME_FILIAL";
       public            postgres    false    231            '           2606    25459 #   S0013_USUARIO_GRUTAB UNK_USU_GRUTAB 
   CONSTRAINT     }   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB"
    ADD CONSTRAINT "UNK_USU_GRUTAB" UNIQUE (d0001_id, d0009_id_grupo_tabela);
 Q   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB" DROP CONSTRAINT "UNK_USU_GRUTAB";
       public            postgres    false    235    235                       2606    25101    S0006_GRUPO descUnica 
   CONSTRAINT     `   ALTER TABLE ONLY public."S0006_GRUPO"
    ADD CONSTRAINT "descUnica" UNIQUE (d0006_desc_grupo);
 C   ALTER TABLE ONLY public."S0006_GRUPO" DROP CONSTRAINT "descUnica";
       public            postgres    false    219            �
           2606    16678     S0001_usuario s0001_usuario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."S0001_usuario"
    ADD CONSTRAINT s0001_usuario_pkey PRIMARY KEY (d0001_id);
 L   ALTER TABLE ONLY public."S0001_usuario" DROP CONSTRAINT s0001_usuario_pkey;
       public            postgres    false    205                       2606    25255 !   S0011_USUARIO_GRUPO unk_grupo_usu 
   CONSTRAINT     r   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO"
    ADD CONSTRAINT unk_grupo_usu UNIQUE (d0006_id_grupo, d0001_id);
 M   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO" DROP CONSTRAINT unk_grupo_usu;
       public            postgres    false    227    227            3           2606    25326    E0006_FILIAL FK_GRUPO_EMPRESA    FK CONSTRAINT     �   ALTER TABLE ONLY public."E0006_FILIAL"
    ADD CONSTRAINT "FK_GRUPO_EMPRESA" FOREIGN KEY (d0005_grupo_empresa) REFERENCES public."E0005_GRUPO_EMPRESA"(d0005_grupo_empresa);
 K   ALTER TABLE ONLY public."E0006_FILIAL" DROP CONSTRAINT "FK_GRUPO_EMPRESA";
       public          postgres    false    229    2843    231            /           2606    25210 #   S0010_GRUTAB_TABELA FK_GRUPO_TABELA    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0010_GRUTAB_TABELA"
    ADD CONSTRAINT "FK_GRUPO_TABELA" FOREIGN KEY (d0009_id_grupo_tabela) REFERENCES public."S0009_GRUPO_TABELA"(d0009_id_grupo_tabela);
 Q   ALTER TABLE ONLY public."S0010_GRUTAB_TABELA" DROP CONSTRAINT "FK_GRUPO_TABELA";
       public          postgres    false    2833    223    225            5           2606    25460    S0013_USUARIO_GRUTAB FK_GRUTAB    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB"
    ADD CONSTRAINT "FK_GRUTAB" FOREIGN KEY (d0009_id_grupo_tabela) REFERENCES public."S0009_GRUPO_TABELA"(d0009_id_grupo_tabela);
 L   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB" DROP CONSTRAINT "FK_GRUTAB";
       public          postgres    false    235    2833    223            4           2606    25419 "   S0012_USUARIO_FILIAL FK_ID_USUARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0012_USUARIO_FILIAL"
    ADD CONSTRAINT "FK_ID_USUARIO" FOREIGN KEY (d0001_id) REFERENCES public."S0001_usuario"(d0001_id);
 P   ALTER TABLE ONLY public."S0012_USUARIO_FILIAL" DROP CONSTRAINT "FK_ID_USUARIO";
       public          postgres    false    2807    205    233            0           2606    25215    S0010_GRUTAB_TABELA FK_TABELA    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0010_GRUTAB_TABELA"
    ADD CONSTRAINT "FK_TABELA" FOREIGN KEY (d0001_id) REFERENCES public."E0001_tabela_padrao"(d0001_id);
 K   ALTER TABLE ONLY public."S0010_GRUTAB_TABELA" DROP CONSTRAINT "FK_TABELA";
       public          postgres    false    225    202    2805            6           2606    25465    S0013_USUARIO_GRUTAB FK_USUARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB"
    ADD CONSTRAINT "FK_USUARIO" FOREIGN KEY (d0001_id) REFERENCES public."S0001_usuario"(d0001_id);
 M   ALTER TABLE ONLY public."S0013_USUARIO_GRUTAB" DROP CONSTRAINT "FK_USUARIO";
       public          postgres    false    205    2807    235            1           2606    25256 "   S0011_USUARIO_GRUPO FK_d0006_grupo    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO"
    ADD CONSTRAINT "FK_d0006_grupo" FOREIGN KEY (d0006_id_grupo) REFERENCES public."S0006_GRUPO"(d0006_id_grupo);
 P   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO" DROP CONSTRAINT "FK_d0006_grupo";
       public          postgres    false    227    219    2827            *           2606    24989    S0003_FUNCAO_ACAO fk_acao_grupo    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0003_FUNCAO_ACAO"
    ADD CONSTRAINT fk_acao_grupo FOREIGN KEY (d0003_id_acao) REFERENCES public."E0004_tabela"(d0004_id);
 K   ALTER TABLE ONLY public."S0003_FUNCAO_ACAO" DROP CONSTRAINT fk_acao_grupo;
       public          postgres    false    209    2813    213            2           2606    25261 '   S0011_USUARIO_GRUPO fk_d0001_id_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO"
    ADD CONSTRAINT fk_d0001_id_usuario FOREIGN KEY (d0001_id) REFERENCES public."S0001_usuario"(d0001_id);
 S   ALTER TABLE ONLY public."S0011_USUARIO_GRUPO" DROP CONSTRAINT fk_d0001_id_usuario;
       public          postgres    false    205    2807    227            +           2606    25072    S0005_PERFIL_FUNCAO fk_funcao    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO"
    ADD CONSTRAINT fk_funcao FOREIGN KEY (d0002_id_funcao) REFERENCES public."S0002_FUNCAO"(d0002_id_funcao);
 I   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO" DROP CONSTRAINT fk_funcao;
       public          postgres    false    211    217    2815            -           2606    25147    S0007_GRUPO_PERFIL fk_grupo    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0007_GRUPO_PERFIL"
    ADD CONSTRAINT fk_grupo FOREIGN KEY (d0006_id_grupo) REFERENCES public."S0006_GRUPO"(d0006_id_grupo);
 G   ALTER TABLE ONLY public."S0007_GRUPO_PERFIL" DROP CONSTRAINT fk_grupo;
       public          postgres    false    2827    221    219            (           2606    16709    E0003_config_tp fk_id_grupo    FK CONSTRAINT     �   ALTER TABLE ONLY public."E0003_config_tp"
    ADD CONSTRAINT fk_id_grupo FOREIGN KEY (d0001_id) REFERENCES public."E0001_tabela_padrao"(d0001_id);
 G   ALTER TABLE ONLY public."E0003_config_tp" DROP CONSTRAINT fk_id_grupo;
       public          postgres    false    202    207    2805            )           2606    16714    E0004_tabela fk_id_grupo    FK CONSTRAINT     �   ALTER TABLE ONLY public."E0004_tabela"
    ADD CONSTRAINT fk_id_grupo FOREIGN KEY (d0001_id) REFERENCES public."E0001_tabela_padrao"(d0001_id);
 D   ALTER TABLE ONLY public."E0004_tabela" DROP CONSTRAINT fk_id_grupo;
       public          postgres    false    2805    209    202            ,           2606    25077    S0005_PERFIL_FUNCAO fk_perfil    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO"
    ADD CONSTRAINT fk_perfil FOREIGN KEY (d0004_id_perfil) REFERENCES public."S0004_PERFIL"(d0004_id_perfil);
 I   ALTER TABLE ONLY public."S0005_PERFIL_FUNCAO" DROP CONSTRAINT fk_perfil;
       public          postgres    false    215    2819    217            .           2606    25152    S0007_GRUPO_PERFIL fk_perfil    FK CONSTRAINT     �   ALTER TABLE ONLY public."S0007_GRUPO_PERFIL"
    ADD CONSTRAINT fk_perfil FOREIGN KEY (d0004_id_perfil) REFERENCES public."S0004_PERFIL"(d0004_id_perfil);
 H   ALTER TABLE ONLY public."S0007_GRUPO_PERFIL" DROP CONSTRAINT fk_perfil;
       public          postgres    false    221    215    2819            �   2  x�]�MN�@���)rP��J�m�VH��v׍I��HI�*�A,8AO���q`�j�>��gO�����Nzm��Dҡ��K�P2o�;�X
���yr`�Bp{�t���M�|�	;�!�a�Nx.����+��.-��\`��-�W�rw���Xk�������V(���9j+��j����s~y��r@���4�
�
-�������rP��D�7�1���B���x��2W��GXS3��)d���M,���=g��j�:��Ρ���O�"���F�����Ƙ����t�$��Ø/      �   C  x��SKN�0]�O�%lhm'J�UvT��+���b[��;pĂ�r1��6�RŚ��{3�G� $$�Ll��O+"8��G�p�|g�>A'<�JXV�q@��r|�]��=^�M�h[�� �u�^t��9���� x΃;J�ΨY�m���LΒ�A��8R���տ"��7���;��2U9�ҊB��Zm��i�V�h����`6����`�V�Ί�Z�
3������>[���]�y�^�[�+MT�h����F�~�Vt�,Kߖ���o�q[b�plQ��,�nw�7e:����$��c$�T�T��!��I�[      �   .  x��VKn�0]ӧ��B[�����(qc'�lh�IP�B�A�k�AYu��X�#�iRQ�d@��93���>�|�X�������hL��$G3gy9[�>ř�$���Th�Ȧ�V�$p�x�#�a�������~�D������FL|��J��e�@Nr.8�5�y�)�ZQY���)lJ�������l��	 �4�@`�	�xZ�@4��Y�J7/ͯ�G.�(���Eݼ*^TC�РO��2e\�2�PZ�y�[��_�I`��ҥ`9��X�#C��y�Qf�N#t�|��.��^F��g%��8�M�\A�ߟ⻾{�N�x���.������LGE�y�q!�/�5S�
�"+ .Ѽ޵v�'`.�uצ��ɸ�G�\�'��&] n�w�����|VV��`V+�&p[����+±�fL`&h^�,�0t��F��ɘ3S�a��$�ȱ�e��T`̴����ڬ,��p/]�)tKԺ��0gɪ������A�Ak�*�O�@�۞���?��(����ua��m��E^<2��a�����.U�iә���2�����J��0'��ɔ[3�=��Z�g
�X�6�����@���"���ۂ�/9���*���b�,%�f���=������`��-�m���|ow�8�X�C&ڢ[�����%Է[kx͚ߩ��wD%x�Z�8$����#s2x�X=Oހ3!����k̓�u'�5"�J�mY�tW0_]׳q���/2��� �*�<��vb�56�%U�m��m_�b�m'Mvy������	�D�n���YH7_G��_�o      �      x������ � �      �      x������ � �      �   �   x�m�A�0E��S��3�v��DO��1m(��������?*}��a\��te��%W�Hڀci-;I���4p*�A�����r�����:��&���8/�����QG���1[:���L�ĿK�DZӦ9��"��4zd�lTm�uJ���=w;S      �   �   x�u�=N1�k�� h�lϔQ
��]���H+%q���>���+�����y�n���6�5�Kxn���8�n¦/������P��$"0K*(�3��2��O���p��@��9��+x�_ڻq>9�걜�������9�?@���)y��T�%�@��&%G2N�������6g�S�=ӕwW���0�c�TW�I���A�2���}A�� �����n���z0      �   �   x�u��C!Ϧ��?�7�
���;#	3R|H�|�mr���K� ��%a��ꪥ��Od:FUm�ʄ�O�������3h�n�:�{�S3az�N�-A�-�`K��d�焟�IK�@e({`޴d`~��r��6��29�ϫ���+?�      �   �   x�}��N1Ek�+����c�(B�Mca#Yb�Ļ����*���w��jWN_u�K:,E�_tj��z���Sn��f�FS�dΨТ"y�hX|@m���%ż�\s���MǞ��Y�̞�g+PG|� ����Hc �C��ڶ\?��j�C����L.�G��k���0ǣz	���s驛]�LK��g !.D���By�`��rHn�����_4#4{�� (,��OZ�oK�r>      �   ~   x�}��C1Dc(Ƴ�XIM��_��>N����K|ɚ�y�ir��Fל���(4	o�..f-�!��#G���湮J��`6��>7���ϋ+�kәļ�:�X�}g�n��.��͢ڒ���KU���-      �   C   x�3�t/*-�W00�420204026241027655���47�2�)1BVbhldfhndnabi����� u��      �   @   x�%���0B�3۩�%:A��#Q����0�~E=ށ%#���_:%����D75���k�ܻ��      �   7   x�3�tL����,.)J<����|N##C#sCs#K#cKc33C3�=... q�      �   k   x�=��� D�3.&�6�4�
�a��˓���ZFI/߻�-��[�RrV�Fu���gW�3H�
	[��z���$���ᴨlq�lɻ�-�j�%����|���'0�      �   :   x�34�4�4�����4�24�4�r���4P� *c	�1���8&#�&�=... $!�      �      x������ � �      �      x������ � �     