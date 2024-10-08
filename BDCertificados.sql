PGDMP     2                     |            bdcontrole_lotes_certificados    14.12    14.12                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16542    bdcontrole_lotes_certificados    DATABASE     }   CREATE DATABASE bdcontrole_lotes_certificados WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 -   DROP DATABASE bdcontrole_lotes_certificados;
                postgres    false            �            1259    16558 	   densidade    TABLE     �   CREATE TABLE public.densidade (
    numero_lote numeric(7,0) NOT NULL,
    valor_densidade numeric(4,2) NOT NULL,
    unidade_densidade character varying(10) NOT NULL,
    data_medicao date NOT NULL
);
    DROP TABLE public.densidade;
       public         heap    postgres    false            �            1259    16566    escorrimento    TABLE     �   CREATE TABLE public.escorrimento (
    numero_lote numeric(7,0) NOT NULL,
    valor_escorrimento numeric(5,2) NOT NULL,
    unidade_escorrimento character varying(10) NOT NULL,
    data_medicao date NOT NULL
);
     DROP TABLE public.escorrimento;
       public         heap    postgres    false            �            1259    16574    fineza    TABLE     �   CREATE TABLE public.fineza (
    numero_lote numeric(7,0) NOT NULL,
    valor_fineza numeric(4,2) NOT NULL,
    unidade_fineza character varying(10) NOT NULL,
    data_medicao date NOT NULL
);
    DROP TABLE public.fineza;
       public         heap    postgres    false            �            1259    16543    lote    TABLE     {   CREATE TABLE public.lote (
    numero_lote numeric(7,0) NOT NULL,
    data_producao date NOT NULL,
    observacoes text
);
    DROP TABLE public.lote;
       public         heap    postgres    false            �            1259    16550    viscosidade    TABLE     �   CREATE TABLE public.viscosidade (
    numero_lote numeric(7,0) NOT NULL,
    valor_viscosidade numeric(5,2) NOT NULL,
    unidade_viscosidade character varying(10) NOT NULL,
    data_medicao date NOT NULL
);
    DROP TABLE public.viscosidade;
       public         heap    postgres    false            �          0    16558 	   densidade 
   TABLE DATA           b   COPY public.densidade (numero_lote, valor_densidade, unidade_densidade, data_medicao) FROM stdin;
    public          postgres    false    211   �       �          0    16566    escorrimento 
   TABLE DATA           k   COPY public.escorrimento (numero_lote, valor_escorrimento, unidade_escorrimento, data_medicao) FROM stdin;
    public          postgres    false    212   �                  0    16574    fineza 
   TABLE DATA           Y   COPY public.fineza (numero_lote, valor_fineza, unidade_fineza, data_medicao) FROM stdin;
    public          postgres    false    213   p       �          0    16543    lote 
   TABLE DATA           G   COPY public.lote (numero_lote, data_producao, observacoes) FROM stdin;
    public          postgres    false    209   >       �          0    16550    viscosidade 
   TABLE DATA           h   COPY public.viscosidade (numero_lote, valor_viscosidade, unidade_viscosidade, data_medicao) FROM stdin;
    public          postgres    false    210   �       l           2606    16549    lote lote_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_pkey PRIMARY KEY (numero_lote);
 8   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_pkey;
       public            postgres    false    209            n           2606    16561 $   densidade densidade_numero_lote_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.densidade
    ADD CONSTRAINT densidade_numero_lote_fkey FOREIGN KEY (numero_lote) REFERENCES public.lote(numero_lote) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.densidade DROP CONSTRAINT densidade_numero_lote_fkey;
       public          postgres    false    211    3180    209            o           2606    16569 *   escorrimento escorrimento_numero_lote_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.escorrimento
    ADD CONSTRAINT escorrimento_numero_lote_fkey FOREIGN KEY (numero_lote) REFERENCES public.lote(numero_lote) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.escorrimento DROP CONSTRAINT escorrimento_numero_lote_fkey;
       public          postgres    false    209    212    3180            p           2606    16577    fineza fineza_numero_lote_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fineza
    ADD CONSTRAINT fineza_numero_lote_fkey FOREIGN KEY (numero_lote) REFERENCES public.lote(numero_lote) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.fineza DROP CONSTRAINT fineza_numero_lote_fkey;
       public          postgres    false    209    3180    213            m           2606    16553 (   viscosidade viscosidade_numero_lote_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.viscosidade
    ADD CONSTRAINT viscosidade_numero_lote_fkey FOREIGN KEY (numero_lote) REFERENCES public.lote(numero_lote) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.viscosidade DROP CONSTRAINT viscosidade_numero_lote_fkey;
       public          postgres    false    210    3180    209            �   �   x�m��1C��.���O�%]�T�.d�XV�l�H��ĔK=pJ>�����>�%F�B�c����i-9ES�ǀD
:��\�a�7��7�\̦�E��i3��[�<6���/�l�e3�U7ɋ��RkR�-��v��vj��i��n��Z�x�����b]}5&����X�i��g��V4�Ѳm.J����hW��      �   �   x�m��1c�Eg@P.�88����:�#�e���*,G'8����!i��#Km}(0�p.B8M� �����睾�>�7;w�i�L�aҹW�f6��k���m���:�̗ӂGD�C��ty]�� ��ݴ��sm��I��E��~L�-���&�T��e7{m�I���v��K���6��W�����u�          �   x�u�ˍ1Dϐ�-(���l
�$��m�����J�=���9z3�W�}��VĊ*+��1	��jA���r򍠄y*Q��r�����)��R��-B����e��Sw؊�IN��wOw�U��(&lc��+����WO�d+z��X(�|Χr=NvW��h�d�@{ZETIfg��|Y�J١];�Oe�?��sX      �   �  x�m�Mn�0���)|*l �;�ݸ0�\aLm���&�"����u��O$$,��|o�0��Ź<��I��;�k��-:�F��\�gQ�V��+�`��RyYe	KW�fzhZkEGa��ӟ�p��H��<�!������7��H`I7�m�t�,�]3X���%A~ٸ6���fp�ҟaz*Y��j�q���ѧ�c�(+qza.��=	2�,�*�{TX9�W��\�y��+�'���k$����m�Yݎ���=���K�j�DW	o,�/�p+뵅��AƜ����!t\�Q�$�+c�>��W:���:��X c��I�&��2��i$b���J�q��o�;��I���-���Ձ��k��A0\y��o�ZQϥ����7B�?Ţ
      �   �   x�e��C1C�a�D�@B�� �t��/BU}~ϖ�A,s�Ѷ�ǫ�u�ڱv�5�a��*R��ur��;l=^�jr����J��E'6;6�ݜ�@�m�3W��"��(9�{FZ2�JNq��ꁒ8=�k���\e�Y��԰�������~34�����+��Etlhd=�Bx
m�r�U�sO9�x6 � �kC     