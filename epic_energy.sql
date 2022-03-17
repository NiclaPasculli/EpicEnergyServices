PGDMP     %                    z            epic_energy    14.1    14.1 )    -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    42219    epic_energy    DATABASE     g   CREATE DATABASE epic_energy WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE epic_energy;
                postgres    false            �            1259    73355    cliente    TABLE     �  CREATE TABLE public.cliente (
    id bigint NOT NULL,
    cognome_contatto character varying(255),
    data_inserimento date,
    data_ultimo_contatto date,
    email character varying(255),
    email_contatto character varying(255),
    fatturato_annuale numeric(19,2) NOT NULL,
    nome_contatto character varying(255),
    partita_iva character varying(255),
    pec character varying(255),
    ragione_sociale character varying(255),
    telefono character varying(255),
    telefono_contatto character varying(255),
    tipo_cliente character varying(255),
    indirizzo_sede_legale_id bigint,
    indirizzo_sede_operativa_id bigint
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    73362    comune    TABLE     q   CREATE TABLE public.comune (
    id bigint NOT NULL,
    nome character varying(255),
    provincia_id bigint
);
    DROP TABLE public.comune;
       public         heap    postgres    false            �            1259    73367    fattura    TABLE     �   CREATE TABLE public.fattura (
    id bigint NOT NULL,
    anno character varying(255),
    data date,
    importo numeric(19,2) NOT NULL,
    numero integer NOT NULL,
    cliente_id bigint,
    stato_fattura_id bigint
);
    DROP TABLE public.fattura;
       public         heap    postgres    false            �            1259    73354    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    73372 	   indirizzo    TABLE     �   CREATE TABLE public.indirizzo (
    id bigint NOT NULL,
    cap integer NOT NULL,
    civico integer NOT NULL,
    localita character varying(255),
    via character varying(255),
    comune_id bigint
);
    DROP TABLE public.indirizzo;
       public         heap    postgres    false            �            1259    73379 	   provincia    TABLE     �   CREATE TABLE public.provincia (
    id bigint NOT NULL,
    nome character varying(255),
    regione character varying(255),
    sigla character varying(255)
);
    DROP TABLE public.provincia;
       public         heap    postgres    false            �            1259    73386    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    73391    stato_fattura    TABLE     _   CREATE TABLE public.stato_fattura (
    id bigint NOT NULL,
    nome character varying(255)
);
 !   DROP TABLE public.stato_fattura;
       public         heap    postgres    false            �            1259    73396 	   user_role    TABLE     ^   CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    73401    user_spring    TABLE       CREATE TABLE public.user_spring (
    id integer NOT NULL,
    cognome character varying(255),
    email character varying(255),
    is_active boolean NOT NULL,
    nome character varying(255),
    password character varying(255),
    user_name character varying(255)
);
    DROP TABLE public.user_spring;
       public         heap    postgres    false            "          0    73355    cliente 
   TABLE DATA             COPY public.cliente (id, cognome_contatto, data_inserimento, data_ultimo_contatto, email, email_contatto, fatturato_annuale, nome_contatto, partita_iva, pec, ragione_sociale, telefono, telefono_contatto, tipo_cliente, indirizzo_sede_legale_id, indirizzo_sede_operativa_id) FROM stdin;
    public          postgres    false    210   2       #          0    73362    comune 
   TABLE DATA           8   COPY public.comune (id, nome, provincia_id) FROM stdin;
    public          postgres    false    211   72       $          0    73367    fattura 
   TABLE DATA           `   COPY public.fattura (id, anno, data, importo, numero, cliente_id, stato_fattura_id) FROM stdin;
    public          postgres    false    212   �      %          0    73372 	   indirizzo 
   TABLE DATA           N   COPY public.indirizzo (id, cap, civico, localita, via, comune_id) FROM stdin;
    public          postgres    false    213   �      &          0    73379 	   provincia 
   TABLE DATA           =   COPY public.provincia (id, nome, regione, sigla) FROM stdin;
    public          postgres    false    214   �      '          0    73386    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    215   5      (          0    73391    stato_fattura 
   TABLE DATA           1   COPY public.stato_fattura (id, nome) FROM stdin;
    public          postgres    false    216   l      )          0    73396 	   user_role 
   TABLE DATA           5   COPY public.user_role (user_id, role_id) FROM stdin;
    public          postgres    false    217   �      *          0    73401    user_spring 
   TABLE DATA           _   COPY public.user_spring (id, cognome, email, is_active, nome, password, user_name) FROM stdin;
    public          postgres    false    218   �      1           0    0    hibernate_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hibernate_sequence', 7334, true);
          public          postgres    false    209            }           2606    73361    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    210                       2606    73366    comune comune_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.comune
    ADD CONSTRAINT comune_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.comune DROP CONSTRAINT comune_pkey;
       public            postgres    false    211            �           2606    73371    fattura fattura_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fattura_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.fattura DROP CONSTRAINT fattura_pkey;
       public            postgres    false    212            �           2606    73378    indirizzo indirizzo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.indirizzo
    ADD CONSTRAINT indirizzo_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.indirizzo DROP CONSTRAINT indirizzo_pkey;
       public            postgres    false    213            �           2606    73385    provincia provincia_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_pkey;
       public            postgres    false    214            �           2606    73390    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    215            �           2606    73395     stato_fattura stato_fattura_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.stato_fattura
    ADD CONSTRAINT stato_fattura_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.stato_fattura DROP CONSTRAINT stato_fattura_pkey;
       public            postgres    false    216            �           2606    73400    user_role user_role_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    217    217            �           2606    73407    user_spring user_spring_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_spring
    ADD CONSTRAINT user_spring_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_spring DROP CONSTRAINT user_spring_pkey;
       public            postgres    false    218            �           2606    73438 %   user_role fka68196081fvovjhkek5m97n3y    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fka68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES public.role(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fka68196081fvovjhkek5m97n3y;
       public          postgres    false    217    3207    215            �           2606    73423 #   fattura fkf55imyo58nx83x77ufdmoa7e1    FK CONSTRAINT     �   ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fkf55imyo58nx83x77ufdmoa7e1 FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);
 M   ALTER TABLE ONLY public.fattura DROP CONSTRAINT fkf55imyo58nx83x77ufdmoa7e1;
       public          postgres    false    3197    210    212            �           2606    73428 #   fattura fkgf800xh6hl2cgnubdvc680y3n    FK CONSTRAINT     �   ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fkgf800xh6hl2cgnubdvc680y3n FOREIGN KEY (stato_fattura_id) REFERENCES public.stato_fattura(id);
 M   ALTER TABLE ONLY public.fattura DROP CONSTRAINT fkgf800xh6hl2cgnubdvc680y3n;
       public          postgres    false    216    212    3209            �           2606    73443 %   user_role fkjnbh64dhuo55gh2jd9d21d245    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkjnbh64dhuo55gh2jd9d21d245 FOREIGN KEY (user_id) REFERENCES public.user_spring(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fkjnbh64dhuo55gh2jd9d21d245;
       public          postgres    false    217    218    3213            �           2606    73408 #   cliente fkpcqankcsfpm2jwejr7ttbc18t    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fkpcqankcsfpm2jwejr7ttbc18t FOREIGN KEY (indirizzo_sede_legale_id) REFERENCES public.indirizzo(id);
 M   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fkpcqankcsfpm2jwejr7ttbc18t;
       public          postgres    false    213    3203    210            �           2606    73418 !   comune fkr2h0j33kqnh79vxndd0xh95n    FK CONSTRAINT     �   ALTER TABLE ONLY public.comune
    ADD CONSTRAINT fkr2h0j33kqnh79vxndd0xh95n FOREIGN KEY (provincia_id) REFERENCES public.provincia(id);
 K   ALTER TABLE ONLY public.comune DROP CONSTRAINT fkr2h0j33kqnh79vxndd0xh95n;
       public          postgres    false    214    3205    211            �           2606    73433 %   indirizzo fkt8brbuq41cphbhkgrhn1oukl1    FK CONSTRAINT     �   ALTER TABLE ONLY public.indirizzo
    ADD CONSTRAINT fkt8brbuq41cphbhkgrhn1oukl1 FOREIGN KEY (comune_id) REFERENCES public.comune(id);
 O   ALTER TABLE ONLY public.indirizzo DROP CONSTRAINT fkt8brbuq41cphbhkgrhn1oukl1;
       public          postgres    false    213    3199    211            �           2606    73413 #   cliente fkt9hyerbafqmu8rdl598kiw0pv    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fkt9hyerbafqmu8rdl598kiw0pv FOREIGN KEY (indirizzo_sede_operativa_id) REFERENCES public.indirizzo(id);
 M   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fkt9hyerbafqmu8rdl598kiw0pv;
       public          postgres    false    210    213    3203            "      x������ � �      #      x�t��r�H�%��}
�jUf@�-�*K�9��Tg���j�m �$h3z�^���U�z]/v�w� ���"�p�9�$��á����M]�?I�m>tSs�5Jn7��f��|?ϓ�r�=w�0���t�Zc�>��V�R���|6����2�͇a߾�F����ƮO!�(PZ:9-��J7/�t����o�0�=���t��}3Zg�`��I87��=.��Z6=�S7��MG%�[!���0�,����v(KA�ǡ��~:/OX�gf��om7Ȥk�2�|���I����n�yl���ٟdc߷���$�Cs��&�k�^/�ޒ1�L���+�&�tlN�M�6U����|��d�tv���� �n����2���ّ�dod+����ɨ���}��Osxf��#�.Υ�����th����V��i�}��ҳ�|�ґ��|��:����޼4'�������y%ԑK^��+n���k������"Ѭ�p�(�;Y�����cd`�呯ڟbK���GW�B�N�������X��N�ѮEw�_K��N��0��^R�����w�<t򴓥#kz�.Jt���a���2�v��J��t��gY���2w����Ǯ=��ߧ`�ܨY0Kc�xo�t���b�O�����ЧV�e�'�dl��k�GV��'%2%��omc/��Ѵ�����*�|����v:��
�q�/ɸ�"��PU�S�TMJ�.���շ`�q"�Y�����3>)�\�����U�:�&mA���N�=��A�R��M�����^�̀���7����F����V���7Mo�'Y&�U�+��t�z�5�Q���Vz>��b����C�_�o�4 k�Tz+�wa�Ooe�ѷ��VF0��t��m��8���o+Mn7��N:sR2��5�I7�T����]�	)3p��ܕ����^��4����]Eލ�?�S�w���js'{��]XK� 	�w�5}٦"��m!�R������m�"#�[~��W�2���(#��z{!�e��Ay?a�啐��ˇf�$�x��T���4�o�_��D��܊P�4��N�9P�;�|���<c#P�V8�.�_�a;JE >`�=�Q(��x8�c*aoW�!���ъ |��)�q��5���r�+�	y�9a�0�|�E�=��gHz�$t�D���{�
y��(��a�B6|���� ����6y��~�邊������Z"�>/ߩ��"��	�Td�g���\��O}��=!�6p{����U��-�?l?&�S�}�W;i*2�s+���T��g�<�K�KS���`3�!��y�WL���M[�h�5��@p�A�T�"�#bs��E j��G?�UK������T$#�Cc��F;��`i��Ȏ4\?E��n�>>��_ư�E~mND~�*,h�|_�����"K@�#�_���ﻳ��UT˓�5���ҡ�^"2�k�(D���ǉ��:��Ko7_EU�,��Qd�lSWw+���~i��>Q�g���╊D�Z�ME�=�;n�����(�\�ۇ��ժ��f��m2�'_6"ބ<�>>�o��j�(S(��+�_l9"�lC�E�=^H��n|nO�??�ʙ���S��t��m�^p&"�Q49[%��GY��5i�(�n5�LD��8����N͡��KF�7��<1NGm�&�q�/>�&�L��	�H�G�����T&RMX�])+��ی5;��D�	'l��H��}'>�&*�ߴ�|�D���-E�}��֙qF�ܬw�L�n^'l�7Qs�D��e�l�����>m�`R"�����Rn����ƣ��L��7�ߚ����D�D�}�ww%�3s�F���\&}�"龍������]Tk���Ҿ���6�`&����L��w�d}`"ׄ�.�3Y"ڄվ�J2s����^��LD�w��vY��d�M��û[l�&��)Y���HD��om��L�"Z?v{�p����� ��Z�i��������5/�F3pA�I�o�I4:��<1N�W����֍Kі噵̧���t�"X�	]���&��ۻ���js�u�r:K�;{�y���p���5//�h�7�w�֮-t���g�h�qѕ���(���z��8��A����]��ȬY��^�V�)9�^`���Iم�q��p��[��LD�0��NN�z��D(��'�L$�w�$��x�mE���cg��ZĲ�t�%ۺ����	������	�9p])1�<cH�}DN?������j�ڬ���Hj4�%e&[�3O&��i����Du��R8�M�I�B��R��Pn�ݯ�u�Eh�[���*�Hj��=�}Þ(;[�_���:f"����N�h�"Pƛ�@��f�b�EJ�h��՞+�����Y%��(��l�����u�����jaL3t�˨���-,v܊��!G���i�v��;�oER���"�A�C6�����;܊�f� �۪�[�l��f��XA�܊ WV�ǖ��q��n��PĦ6$ްX�$�����$S&�*>���$�M0����M0���Q�|q~�&�������c�����t�a�P���К겒m���V�ʎ�e��,�����[�&�-�OK3v�8r���Z��2ff�Ů�r�azf���6NzV��{�=w���y4����(�l~��ܦ4��;lL��/��>*�ۇ�n{.x�����ˬ���.q�Q��af%l�ʣ5o7���sh��=���m`<��٘	��'��-�x�^��/�u������9��6]���wC�N�1`J��aW%=����D��ʻ,c��y��<���(vvvU��b��L�t�q1n�w�s|�"��x��q�ѹ9,/�n��bs�c� =R9��^t
|��R�{�O����,_e�<R� S���;,	�	���-�NgB_h���
/�`Vx��[ive���x��Mr���!�չ�E�.�5�����Y�y��߷<P�!�N}���^�hv�/q&{�/����wb���������<{c�'�r��D��W<?����wS�%U��p��P������݄�^A�Nm��+���VP�/ͩ��)T��C3�w]��w�ܯ���I������v��+CԖ��j�A
*��j�4Ѻ֊�v������qא��N��j���و}¾�ݪ����0��;��,��T~��y���2�c=�$���(���25�tø�y�㍨�7�Mm������2�'�;6E*|�Ϗ�N���|�T-���~�$e��s����¶2a�lJ�����l�;�6��^�ش{����n��|�*&��t��bdU��?u��o
�VwhַL���|8)��jKs06�#����~�̝j���yu�J��:W&�1}�]]h��,-��3267������h���۸۞FQ���n�#�w<<��8���@�.R6�+��&����� �`��+p��X{A�q�f8l�&]m>��R;8�F���u�,�w21�!�uyr��-l�؝m����f}�-��H�"fڣ����ۛ�kKs� 1�/��N-�l�8��AFs��sK1�������D��x*���x��F�3�qa*��`�"i/V�4D��E$�m�DI#0�)����N=�$aj=�o��_���n�6��_:��{��H��B�����S$��Q�#?�|��nS�{���i����GJ��s'��%���2l���7��V�����M��Jni,��LKH��i9dk���_�T�V5|i8��}����0ӱE6�K�E�~��J��]���(�DX�~��!38r�r���kGNQ`�/�9�]h���WLU���YL!����U^��gPY?��������F�������ag����5��s��.�[ݐ˳.K�-�q�4�5d@�f�7��[�I'��Q����2���Jq�i�t^�����/g��?A,��`W؏���?e#�E��eݪMB_=�ڄ�6CT�rX۷Sol0�Cf���];�CHKa^!-[�>#�2\w�!1���d.{{�II~���Մ�BXbi�@�
��av!!G�9H$8џ)$'�Jg&_�A�SF�딑k(J�7�a��(U�66��    ���RoO��

9|�]L	75�
6��U�Q���hI
�{��M
"{:��"�d�a�ß���*��q\Z�P_�dk1�a\h�16�)�A?��'G�����b��)R�DJ���5����*������&_�r�5&��V��<h����}l8W��<�m�}�G�x���+ҏ���f�K��|m�i�	�Ω�薱�dr;���sҭ?P���E<��l���"�����"��D4�9H&���0���ϯ�`��a��wt���@<�R�����+]�3��n�kD�N"zd'G�0u��!���5B4������O"<?���TZ��Ɛ��6�6["7�D���k���¸tFP��AN)�پP��w����ax�C'Y!�'x�����D"F��ةhؿ��QO!���V���{l��>E6޷C�ZԻqzk���x�G�jW�¹���M��ع�DvB+D�W��O���K:$r�a)�D>@�L��E>���;��i��"RИ��[ġ(���"�L�B�"
:x�V{\)񡳹(o���gW�f��5�A6+�l��.��Ƅ
����ݦ�X{\� kÛk0��=TD��� +��Jxtp����L�'C}H <�_w�l��L;��2ɕc�*d눆>�eR���N��yeR���uY,�2a��nPe�T�@	����EGR[/��a�2����(���W��c۷1<�b.Ӌ�Tc-�~~�K{�ч|�h!����nQ�u�2p��޿�2��qY��7YW��80;-��ah#gHbl�h[Z)R��Lo�ͩUa�ZP�@��Lo��z��_ZؘH�B��(-��KG�1��6q^�l�-O2�"%��;u�Hȯ�+K��c��)����P�E�E���-b/�7^_�E��aܓu�7�� _˜֡q0����-m}���Rb*^Z�.s�X���`!'��U�8[�y(�)�	+��'�]�?�Ǭ~���%&�-�"���c�}kZaY0�!�W:;���@9��F[�8���@9J�*`{�!��#y�-j�e	�����m�K+�Q��(��6YkW������o�"Є1#fK�R����B�vP�BJ&̿<a�S)���>hXM�t��r��T���_3�;ƶ/�7ͨ{J����
CvY�jq��6���t�j�-��Xԧ�Z��Aql`Ԃ|��~`9���	�vӨ�����P�m]�pL_��=�S
�m�34�8�ZO��#PW5O�������U�ꁷ��՜W����Ց���V}��݌�Hu��w\߾����v{����C]��J���±��T��������v%R�Vg���}���������AWs���p��%�$�"�/X���)[4���p۶���	���0��Su��'�ޘ�1Ws-RT���m����銬Dz>M��J@��8lT"?aQ�LTV�ܻ�R�tq\zUi���r
z�}$)���~����k˛�j���fsU+<b�$Khᷭ��5Ꝥ�_�*�.\ի	��E�w�m!e���5���;k�gxh�6��¶�V��s�J�����T�K`���t:�|��:�|��*���R�3�|��Ɯ8�P�
u�n�P���
hF&���ӫ�mL9��#�d�1�D���w�A9 �%�
 G�^?>�8������Y��'lvzZ@���Xiև��''����l���߬H��a}���!>�����Y��~~�e��:SE��(Vv��#�l�<Uh?�߷Z�tk�^�e�v-�Tޮ>�y4ژK7Vܨ��N!c��ݙFf��?dX앹�s�r=�<�O��N��""U��}���"�7�|����\4HJ��J�3�5T<ϟ|�+=��
s���F��R40
2��
���x|�W]U�3��o5��Ϊ��3M�˼4�1�q�J�� �5��r7�=��{_�"��M�Ue?�4�0�$
0�Pwԅ�/5#`�?@sW��x�'Է<�q��S7^��z���O��3��;�y�óO����#��!�KQ��]x����Fcp�<�ȹt���=�4�֟D�84$�i<wAX#Ռ|=�Q�k�N���@�h��v�'c$2k'�.j�_�Xou�������IHp̀[U#�;�8E����SG��T��c�RD������o�e�3"P�SC��v�j�"�]��]=�a�[��rc�����S"Tv���/�� �iĖ�N�P~#�cɖJq��l�RcO�|��|���{4���h)��_��^Ο:��|=f"��}����yl���_�Ƒ@����Q)�T
�}��H�'�H�ɣr��6����C.�C�Q���$ �n{J~ː;���;�6���_M\����K5f�6�f�J>t�����H�^�u�v��;SPR��PP ����'��C��y/��1/���6�R�K�v�|7r3��D3G7G%���#���,j�����3s�-6.�(�$�7�^���|�Sh�!���G�(��	��Eʄ>Qe R�H����d���m~�T� �qn?Օ�agĤ����&|�7q����	d���&�|6�����7�Bo��U1f�Z�wLY�w ���d��W1��n���!d���Tې�;.�lɷx!�_��C.�peG���=U��;��*�jw���Q�kF�M�a�ߚ���G^ӏtd��[�1tdn����H��?�^�Kiw� �UPW�]jj�tM'�����wY쯯�6�����n?����G�'qQʦl�F��c��O۫{Ғ�U�v��:�b�ҺN0^�b��Ʒ*M���^�AY�����I�$IT�d���̟�ڳ�,����lר�]�Mi��70m�$���֑���U�����T!�8��_�� [=(��E-$�_�E���43�lf�vo�a)T��jo������~�tqJC����^��oOr�Y�j�"�C
,�6�D^l{ⷥd�����!��nF����2d�j�)I��m��b���p�\t�dL��F[�"��e";�"����4 0�&�B?��1@T���ZD����4
�'�M��]�Hons2��������d��ƞ(��s75��4�[�<����vJ����]]��c����[�k�aU�f`���Ӝ��S�6n`�Bm�g�>i�4�f�{p/��Xds.?J���Σ}Ȭ��a�pm2��l���[׃�7�9�T�̞���T�����NT�Iңp
��K�;���:/�rDN�s�1�H��������]WG�c'g�n�*�L6_�"r�S$"��Z)�O����ƭ��|�UObW����GV%5��+:����<��i��b�']_=�?ْ�{ �]���*�T�w}����%U[e�y��ɱ[1��ƅ�U���}d$�"d�iw$�6�x���yշ�)�2+�=�-H�<�B�����ަ�F����d�!�q�
����ri�_Lz�΀������^/�'�j�[0�[��zbڦ�URaӼn�� x�Ϛ�@�vu����}�*ߵ�	kQ�$����ж��T�'0Tc�1�6Y0�G�*I�ە1������$���(�جq{a�@��Iׇ��$$9v��wsQ�V���L����ii�t[=V�sn]�aoU鉧�w�2���pxvQp�'�>1����7k���	�F3|�T��HOx��u�FzB` �d�p��1P�~ lk�SVj��k�2Ih�Vkc<$�Z�g5�a�}�觜��9E���M�GQk}+K�bm�^=�Ӱ<S��W�|�e��Ԫ84Ƀ�N@DΙqDʠK�^��ʀD���3|hH�/>Z�E�7������6��]?"�*�A��bz�������<��D�i*I9u:%�s�;M�*@FB8%K!���y^\�cP���r�=�y4VN��w��sQo��� ��1���j��#<��[{,8�#��9j03kȀy3�Ce��L������]Q)��+k����{,���W�,�$���	P���{y����D�Ӥa+J��ьNWF��S�$cttC_��m�x��5�SE5#x���)4է�u�ϭ��    ��[L���3���v��Z�p7���0I��m���U[�n�\ �;M#	^��F�Κq�4E�~1���y��	���_@���mDm	�\��]��4�^�ck��SOϰ���z���m�7f��q(���Q^�P�}{��]�]��RFE�9"���,`%=!P���'ORF����Pw��/�7���G������Ӎ���v $!=��OʌT��լ����pߒ�٩�k�a~��](#���x0#��_rVkm� ���|��@��.(�Z��4�D�� ^rc�hkМ&U�- 0ȗ"R�AX�7"f&��7u/|�ׯ	`�R��>?O�fl��H#f{�Cލ<��l�(/�˰��N�/�:�$1��_"L�#A��8��N`��_�����RN�."j�13P;��E�B2oDŜy7�a�N`���m���L=��	m"�� <�Yeʮ	���dx0aEFz��)+�/�d?.���|�����8^]�ly����M�b��E`�
��//�
���p����*J�?d�B"5�,�@�:O4='2T��r ��5��X�<�'���ք`Ȟ��@@�)�8��a[�S��M�1�8�;��B�
���Mr؊�,�/�"K<�Nȣ!�$��s\)H�9�q�"������|g�J��q��p���^Z�4hcS>�t���]�v��\��8��C�	�����C���m�R�)WNo�J4f��~=��A3w�<�"q��ѭ�R	ZF#He�� >b�f��+�3L!�#�L��9��#�Q��C�q2��,H��^`\���a]T� �hj�R5���T�k���*� �@Q�zFM2�#�bs��Rh���dL�ȉԖ��g<CY9 c�x���\��
�����}U� �+���j�ޜ1�G�.�A�׽���	`m`��͗���˜4�4�eNCx�����2
�O��=�J�]fE5�"r`�y�̂46�X��y���B��|&KO'���>���Axi�8H�A�<�W�����9g�bZ��#����-: ��<��Y@�1w��t�∰oUK�qO�������T1Vϋ秚|sY\�I7Pz֐�0gy���-�(Ҙ%���m?F��!���J�V�}��C��V���H&�F�Aoe�c�MI8v���ϣWk/�F�����<+���7��:��])d)�F�*I�k?�&=�-Wp��=l��x�W�5�L$���65���H�0Z����ƒa���120��ҮqZ��iÍ�&�������(�;iU�*�8�,[���Vچ�lXN���$���z�<;<���Ѕ`��GV꺞��^V�1��fs�EE���Ȑ����d���CԂ;KK]�9�����(�Ө1wR6%�n�_S�oӛ2�X�����j�M\*�.�#�$�@�Ԫ��X��Y~��L�[.���M3�K�K�hƗ7rp�7��D4��c��E[�4��Tz+4�:���7�N�S ���@��&v��,�^*�P���<�J�m��������~#���T�������w$����E�O�7�Om�a^�f�K��T����F9XQ�\^�ly���1��Y^ĸ���װ��6(����g��c���sjD����:� ��RM��e���9�>3g,E-6UQ����zR��K E�z�5�:;C�� �N��!�	� ����xUj��C D�79�u�<����IPI�.����N��OtK��b_�2�[���v؇�jX���-"9\㺳��j�����P�}>vq��ꩉ��0�<.@S�b�_0
�7�Y����������#`՟�́1�vkфB�[�`�b��������_m�İj�͇�uM۶�ma]ӶJ�B�������в�h�0�+ bԥ�`��x8(W��p��멞WQ���KrV������1[����'�h/6�2��4ݓ�~��Q:g8�<I������	�pV� *9amb���5���K���?Q�؈��>>tFiʺ��Щ-��Ev\�;
�ɛE����+���Z�3�0gS��}{	��ea�NN�=I0@V�5�E��YiT0��r��n�B�S������)���x���4����/���mѰrYaJ2��������'y�F�˩���!�z�n1������mdP����A����A��T4_���Ơm�G��|������υ��a�ko,5dg:��)�����p�[3�xC��!��P]c�l�����ȑ�����Uzᓉrx����ʞ�x��j��?���Χ!n�62�|Ĵ���i�U<��-l�O�q��->t��8�/CD��k�VE���2>,��wM��/cԷ�?L��1��|l�#W�ة��)���뚡9oa�@� ��D�#��ԅ2�[���?��l�F�Nׄ7/�~Ɩ���w61��z��@��c�]=4�簌x� �5�[T& ;�#'Z^�>H@]=t���p<8#*B˟�x�T~H��A���S>t9w|W�ǚ�q'_)��z��w.�5�^���w: `�%����	K�����A y3��X6'���QS`�s��Adx(3������k.�aN-"�~ޅ�Z*�&��QF��҄����ܫϳ�@���F�b��)����=f�Q��W�h�4yi3�tڸ<2d����2�'gr�ð�v�Ț'J�ǾS��#�'q�F���Jen�`��L=�	dla3Ev����G�U�ĉ(��*,���<��[����z8"3@���X����Ju�a:	��\p�Q���(�D^�չa@ˡ��q�ߨ��+
ڱ�����rB���X�!�ׯX���0�G���k���[��_x)9s�?*�1�e/r�i��L��j��"<� ����T�Bz�B�7��GP�SxD�NYE�μ���:i�Q����3a���kX�B�a�ԋd���]4+�A>._r=H�*�ު���&�%��d:�6;%��Â)�[��Rt1�.����U<Ũ~�j`�J6mQ�=<���@! !��K��M�7Tk%�Q�F"�qOPiX���+��V�3�kV�0��2�t��^0�2��3��i�)��3?��"+w���3?�2��8i4�����l=Ѹ�3UL�o��!����g�f��I�UD|\ui5��o�!4�]r&'�Og�����J��ҭc0J�{�J����y��H���@�Z4?ǋ�2����.,�c%-Ң��W���uDk����������'')I:�����=2h��eAt*��Bc�Ҩ9si''Kb�(8����*(�Õ��&ayip��+Z�3�`�Ѝ4#l2L!��Rb����P�3⮔A$	��`I���#���8#�6!��n	Bۨ�TKb�5�#�l�R Ͳ�!IH��5��2��3<�K��DIF��2(������E��j��-��X
�����iD�Q�P2�<uSl�Z��*$�w�F��]<���+��F��PXVd�.�1\��j�Zy�U�?�e�.v����~��A��,�WH�j��$O�R���fQ�4/�$--������9��-����Y9�(��ܪ���I!�k�aNU2�����,��� t��JJoI��(#_B�Ø�;ݺ�G�%���?dtYj��H~zyA��f���f�w�}�^��&9]Hj=��řr�r�0x�9�'b[Q�07�=bO_��R�O�W�L�	dy>��Y�oz�b�R<�
X��Bed�����m�~�����C�y0 �%8���<��֜y�'�6�톪7�5Z�O�3rӐ-�,�5�,3�Q�CUn��[�Ӥ�-+8�XMc�d��Y�o`��L���;��~�>�$��Wz��tM��Y㕔����pM*���c��&�U rJV��N��i�hw�W�S�����X]�L�m��`����q���~8t�Q�D��G��{��N��sԥ,���N/�@0�~�a�\�H�_>�>�A�j1:���    �2���E���.~H@��s=6����7<,���I�[�g-���1��88��h�-���pۿ9UP�ON�ҀIv�b�3�JPNmp��̀�+[x����/c�W��`�3*�3\��W�o(�o�jD���VBgq�e��x�q^�G�F�|c��25q7z�c3C�QRK��s�I#��p���E����f>#m�Zd��1ͭmY��z\U1�� ���	���[���93 6N�*iJ��jX�)\�	9'�_,���O�B�2/^�Et,����̚�a�<طq�;gժ0�9�>�tyUj�C�V�HC��Q�rLN���+����Os�u� IQYj�#�]rW��h��_�`��egQ��Oq����B�c�{��ѹ�³Ҧ�y��o(�wd���(�rk��)����]��������I[�XZ%�	uQ%(y�F�������,BYV��x�Z��|f*K	4���~
�Y����y��̼`�r0x�Dj[�v��{�3KEܚ\Kd��""����;�Z�CB�h��-���_m�VTE9�N�*a=٢�����֎aC�k��Rཙ>�x�Վ�3Cj�R���D��5��ge��#
Dw,������V"�[}-ʁJ��!$k��Ԥ���d�k��H��29���͹��߶�,��hNcx\�x�gM�S*@��i���4@&� Ml�l��Z�a��a8M���v�vE�o����^0H� ;�;a��s����XH)�ud2����+����	��,皸�s� @�yXJjv�,�D8^+�^.�Ȝ�C`���H���P���MY��&"���8D�fؔ³���|�h�lP-�֌P�/�b����3?�!θ���C�[�Oѻ�:bh��͡/�EL��z�M��j�XZY��F"� ƴ�9�K�/?憉&��SHl�-'��
Ϥ�!(6]J�E��	PZC5^C��?o w�l�h�S;�#1�×��Z���,��Z9����K����?���&���&"�w�x�S�k���
]׫��A-TH�A,��ޘd[�	�Q�?���
��e	�)"Dv�W�c��.��g���[X�C���K�+��S�ͧ���Y)�xWVm�@�m��M�[GrP{��6�OkJ��h���/��o�m�́���;Ul����4�<�3���6{�*�7q�D��;n��Ky�_ G�Yo<�*�[�iw}Xe"��:�
��I������eT�d���Z�j�e���`�U=쵙Nή���J=c#��s�a)���tJx,J1�#��&��2�2��Ca���k�|�~�e�X W�+����?�Q<��c��vO#����ES��)Z����^�����o �h������d�Q�'���}x`�_^�����}��t`�@��; �h���m����-z�5�0��_7+�[�Ȳ�4���Ns2���U\n�{�/7�n)[A�#L7@�BB^`�3�Ay�G����ji�t\s)�@��o���yQ�T�6�	���+z�ۛ�᧔]+�Īg�`��C�D(W$���"��~���:�N��_K�5O�d� ��cs�s�r��������*��J�yn�G��k��'����BWxr�/����[��9t�n�A�am� �*I�-��?��ѕ�|�ޙ:� 7}_��y��E�s��^��j��_t�s��``�B� ��
w`�B*����;]idٶZ*H�y���y��m�K��ߨ
��+�87���_rAǉ�A��B�0��I��E�kr�s�N�BY�_��m-�^��!����6��7�ٽ���1��q�uM��E�-�g�;�J^ *7S����%;��]�}%�w?��5.,��j�C@N��>O%�� �r��� ��:����[y�&�F�pp���/[��8M��~��ɮB`C�wE�����$*�[�%���{�4�u]��}�;W;�q�d�d�H,^b$���u��n���&�Ű��w���}�u�N0����c�b���������H&�?#6N���~h�KE���^������R�����1{O) ����^��j���Ⱥm�����zz�yއq��B�.�fz�X�A���Nc�(��1�y\(2)̌�:�Φ¦��/,;�o�-��x�0����4|S����6�M��tHz�T���O
$3���m
) ��m�Ji&�#�;x ��4�<���kH)���ZG��_����2S�;~��-�f�L�7�-v����?���L�����H\�����.���37�C0Xp@xx�N��͇jRa���2��G����D�TI��p2� E�a�k7�|Vm��m�q����)#��f�k�a�3 �+I������Q�-p��;EyTݥr�_R��%��Uk�O>�Q�������J0�nFԖ�*8��S���s�Ֆ��''g��C����I�4��)DȀi���Ѡqk,��ybmj҉V��u͐k��8����0~5��~���=��g��+���ȥ1e�r̀����f��֦ѧ��u��}�<�!v���#�v��䋕VZ��ꆚ���+j���ʐ`�ڣ���=���
�fHp�[�������{�K�^���4�����g��t�i_�U��7�9<�$.�%g�S��v�܆A��<��
8�i����ˬ��������l��  ~�V-�F���5��xs?�]��C���lH��~"��c�D�~��-]6��õ�z�Gx� ,�cz�O;���ak6�]�s���掠\JY9.[� "�c��,B_���>����6��M@�Q��vt�5*��uB 8v��
�	kz����=k0�����݀�4��}���O��T���v�}
�4;0��l�wjr�'��a�b�*�L����a�[�' �=�lpF.��nRD��u~�R�� �Qh�y�Ơ��9��P��1%�tBt�C�	�9�f[@\�����OB�'�&���h"�"��b�b��Lc�boj��#��- �&��� \f�7�����Vrh�9�v=��iS�F �YO޷-+W�݀%�K^�H�/�ŉz��WD�������[Ġr��"����Q��ח��9x�x�;��`u|%o,�6�}�\4GY����C��9t��ӿ31D0x���1jDY  w-Hoj�l�su� �ؔ�M�^Tӝ�$�\-�f��6\ �!h�>l�F�$�H���N��
Ȓ�b6���J�j�/p X"j5�j�!3	L*G�MY��y�n��9��{D�CZ	����c�'��n{�`�9:HL  b}�7�hK��Y�����R3�g��oo��b�.9�o�a�J �80m�Q� ~�4���q_$��7`?�nl���-#j��-����$���d�=�� �3�P( 3�؜Q`c���8�����O��w�Z@�h1�%�#��7����1��'��LՓ�f�zT���eTbY�'�W���ڪ��$�R����
�ek؛Nk�)��6�o�aG��j�(3��ǃT�P�T ��{��v[�)3�����4e�q�)���2�X����o2e��I��rT?|��Zt�y$�U�����B���;��TLU�g��Np�����R-A5��j*Q�߽�6���e�j=�~�u�Z��b��b�1z��(�
���\䁜���B�V�Z>��ګ�����(���d����w���E�pُQ�@�r*��V;��ChF�/̈́�-�*�q|��9��;kb���2�L�0E� �A���Ӭ|���_��2�V@��2X���O���i׼���ư*�{܌;��y����ӆ
7v���Vk�L!D��}�)>3�j� ��tY����-�1[�����l�wШ^e��{Z2R�X}'ĢA�і��6W<�2�!u�jY�T�8��fk,��&_G���w�+y����"�I~�4�J5@��c��i}�R���h}�sw:���o�.
#�d�шaek�����QYV�*��p�Q    T9!�&�Ԁ��y�zA���I[��%�ڦ}ܯϙ�,�@�ʃ~����+5q�ƨ�M�'�'�I�S�Ѓ�y�2��ſ����|
��1ٽ��]��aa2y`Ʀ��W�V�	��"/����㲪/J������ŬD�3��m�;�a������y|�^��;��rq�ȳ��x9r�(M[r��;-h���8�u�&��	_/!u.a����#��d����ʀz��g
x2C�98'�S��I�!'g9������4���9�u^x�C��<\/ �Z�P��ꬡ�hk�T����IxكVױ	z�N�a$�Ï4���Q�q� [��M�S8��������z��,ƛ	OU�..��S�[�r���o�L;�C����ߠ17�o�36by����)�e��F�l/����2���>���ef�^�(���:�1jc�Ȏa�^�YtrhE�Y}f;�.;`U���o�-t�7f�fuw?���f�P���$���v��Pd_�����ՅPp�� ��V��2��q��?�e��2�N^��L�c q��-PcV� [�F![Kf�����WB�5,��hFO3�
�����u���bF��,���gs�N��j���"U�b̷��qeo���A*�Y4��4`�}c������!��(��p��g��W^NOnun�f�r+:����k��A��D>m�B;�oNg�mk�{Z���Y�}�uM��m��h�{-j��1Y�U����W�m,��u:�M�n
Ƴ�}�H���~�ڜˬ��`�usNaA��Z.@\;���E���5<E����k��N��� �����e�%Rf+8R�����۷��8^K ��c�}���*�15�%A�r����_ZY8�����m��S6��[��+�rJ��
����g���#cav����k7,gk}�Bmaj<�M��<aV�FAX�U�p'A���p���ȅ�\;l!,�6pC�`H�6�z����_���J¼b���n��UO ��0"+b����G��f�v��:����_آ��b;�b z~�����N˒_l�0�s
�* ������f?�}w��o��e)B�2܃�L~.��պ\�DC�7�96�-�E�\
����6 �!
�	4\���x���_�-}�D���OB�3���0�N9�pD[4�Rʕ9�����#@����b�У��$�������B' �
g֘}�0�_�17,��8c#}ʍ�t'��V�х��W��9��ih60^&a
�G$���E9D��`�0���Fe���+��#k��蕧��C��k�Ɗaq�<60CT�@B8[���ӥ��u}��LRC[��|n��U����	`d��	E0�'�M�0����MɢI�l�A3c���*׊9k<?�}�ց^o�K	V~�����s�P��_<P��8��,�����c$��i��%�0��v*,�P��I2��<�f@ �^�]\u7��挈�I�ۼ"b��R�Wh�J[弸�z>1��bVȅ�b>Z��*�J�T�Ө*e�rLdI%3�0}q���%���-��!4�Wd���N���￪Z�����:@6���\YU枷i"@���dI� �/)'�!�a��Z���7Y�tf��2fRT�v��-LlIP{;K+�p���/PN�a���ȸk����6S�e�3��
��'�)+�,�ߚ~~y�1�>���� H�d�m�D���R���<Pp���X�@�
�,�β"<&�t�r|d���Rv�T=����Z�l�ڰQ��[��fZl��\������~jY�hK΃H�^}J����\u��C�ƋJe�YC�D��^Y����*�`w�٫Ml�p?k ��S+�f1�߮�$�پ�7��n��G�h+?�X��Ӝة��M��s�KvcQKƳ�U�c�||y�WQ�ꧡ*[���"84�1a\)��.�����X�ȴ�ǀ�e���4�t=5Z�L��[�)^����Ͱ���^2�O�/9��`�t�`Q݌�%�	k����R�x��ke�;��E��$.`��vL��� U>�a64g��2�s-��б�?��2k\�x�6�=M�H��F��V�1f�#��Pv��r2h�c}���ag�D����q�SL���F��������7]���{Yn�h^3�h�j!_���)	
�sL�`ڄrLɘF� ϕ�g+0m�f@�)��1��(��!�mޱЁr��<ݥr�e0�?���CF~�%w��(��PG"��Ί�~V}S90��D�(��-�����i�����z��c��i;��z�>�i\�_R+փ��"�X��^��@����Ԁi�ǅ>n�*m���o+g���6@T+�$��o3�UR8��N�mE����]>8D3t�s�D�d�a�2Y��"+�,�A}�@��akx�>D��0 ���Ax�����/T�O��ĸ�',Q{&���������A����°6FX ��f������G������22�V�e^�����[�.=m-��!\�ym��7��}|a#6_>)D�ķX1����q��k{f�jS}�,�لa�0����ܡ��|b������M����Z��Ӛ��_���B�,^��4��N����2�՛�k����G6��><?Ӂ��_�f[��l>t~Q2����LЫ��^�K�K��w~p:�<t9�+� #\_*�ax�ִ�%������v�$���^Q��Y�N1��6�7]�|��JkQ�)�C����8KӍ���b�I]�����P�q|7[I��\��;X/Zu/��2k��1���󁦙ƾ^�'ħ^����#}p.N||=�Ԫ}�VFe�?�Ѩ�>�7":�G��d���8N�5���OV�l��t���G�c'+�Ca(�Q���<��K�酋��'D�b_j�"A� Uרd�б���)���X�a
�2�r�O�M��<�!�]�0B'�QNk�Jք�s�[mn�_�/*�)=>E�i�?]-�\=J
+����?��V���" �J�a���!	���l���d����b���*N%X,�Fh�9g��Y	m��8�Ћ���0�)��w��Yz�J�7�/�p�0��Ǡn��w��?�!A�U�@�:mOp̊>�4L�mX�@��R�J����d��R���&7Vł��_�cvħV�������,��.P�Ē����E렉�#y���H������\��=G�a����'!���谭Z�8��j����zi���M��x�VF������4�R��S��ݞWo#���v��!�w����b�w/���@��א-Q$�B��),�g٢�r{�q)MM�I�J��v[	0ؼ'Ը6�D���b*;�n����'7;!�2���1P���<���C�9T1�)�X��E�R�C �M�р��Ė{��%�ƞk/0s n~,�ɴvyrj�­s�?�5Z��)��潓Z�Tx��l�e���FīH�%L%�d��{�"'ӌp�m�,X�^��OK�s_U��n(��t�1���(%6��c����ئ�C�0^�R}��~@����)*�z,'��R��u����W�a��0�h�N�lEܯ�.��b�n������`b����-uѓ/�X���X-�. ��٧t�'"%\�qK8V��a���M�^1���֚�[6��dZ�}d�G����Kd��fS����
�WY��6��!e�p�FԀ�2!�زj��O� 0�=���өU�r2f�9�d���
�� �q�Pm��6?POU:<Dc��%���*!��]��A3�q�\��c���ʻdCv��Q��㪑��\46Be1����˨��kt�;fh[a@ߊ�M+�06��g�L��vFמ�g����Ve��-�#�,��>�e[�1P����LQ$��=�|��J�OZ�B�+�d��a�,8����)��RE�>L)g���+%��S���qＢ+
����0D�^�/���T{�Ƹ�#���&'��'Tt��J��FxK�|D�Qr���%��5�c9�v�8�wRs��Q���a� ��Xe������(kFk��S#�� �&�7-1�;-��C��g�"،��    �L��NF�+�ڼ �/�gXp°���J��T���~}����To��8�������Q�VB>���g�=6҃���[���\dv#CƔW��N�ֆkp��/�5�U�q��T-��� P=(�2 �z��(�z[W"�x*x�)R�7w�;�롅.)QA��c�� �0In!@[om���3��� ^��烓�Y��j�2�A-���O�7�d����x��PP�����oFU�G|���0�[��!{i���	�?�뮢��hUHgj��?�;|�å[mj}�Qe~y�k����`�B�G���ab}�gVA9�G�z��~��DÞyk�I`��u1����[:j� �"�-`�}�#ӏ����#���4�E��Q��`� bTO|O q}��*�	�V0����������<NN1��hJ#w�J�J��	e��� |
-�٨Ti$�����|�}O
��d�y��:�D����i�-P��k�H�U ���Uh%��w�_P�",<=#�V�s\*2��-�Sk%����e�����@�h��F$S^�Ⱥ�:��]e����=�ńZ����A���M�wV�4���d Vxx�o�z����aߘD�O����&����f������Y�pճ��{#|ua
�z|�)�����ڳ\̉�̭1�`���t	3�1�db����k���o�5N`�i���P]��jlZ��D���|��(4#��ʄ�s
�w���@�_��9am� �MYZS��������_9��5�ݞZ{; ����^Z6�U����ګ�ܷ��HnKPIL���Xl�̀VF��B.�ZJ�h�498����A�(�!����$��K�7,lc<�k��S9�& �0�C��
�V���:mB��e쵸,9�p����1�j��27P�X���I��C99Ƚj��1�:��NN N�z
]�8�E�(��l~-Cn~[K�׆de5Z��jsJ���!v�`����g��)o��]�܊&\ߣ0|��*d��K�DTd�9z[E������eՃw���"��QD2i���Ș��h�l5d��h�Y��6�\�V!)��
z�ߍv[Z��0M�|Bm5����ȭ�;��I�mb�Lg&Ը�m氙��y�����d��'$�>��	e���iN���3�0fb���- D�p+��҈hlz�H��5[�ɋ|�_㪅�U=wq^E�@v3�_zV��S:S�LWp>���q��gq^��8O��xfΜ�� �\(p��7j^�y��-W�9�3u�.����ct��녞h��zn�2s�Y�
�9��Aѽ~"�sΤ,��'��KC�ge_�@}�C/bsu�n~�_��VKE��0�LK`�+[mT�S<�7a���<Y��>�]s�+N�~���:lxkFȖ#�ksa�B�#-7�����UZpվ���7V1��6�&�t�����8��C�;~$���Vm{����w���H�|�!��z�
oܸ'�[h�A�v��� �=kew2��>��߰F�p��ŝ%����D�0��-���)���� :����[/��åV@���VOD �%ާE��||��p@1=��5XL�HeA��$K�D5�N5�]�{���DYTg�p����:�'#�~����|8u�^H#���@P*m��w��y}��b�������c��2Rz�5N��ܗn�]�ʚ8k�V�C�s�<-���ri��Ryј�����䉧��[;u��[	�>QR��3��U�T�9��d���ŉς�{��=�)�@�����\f6> Z�at���"&�Ц@��)x54**���ȅ���
�}�` v+T�d�qf~��!tT�w2S@��gB3��Y�KML�Y�̄
ה�ͫ)��~�#�nkim�>nq�"j�vU�.^T�돆�
�0FBY�w��,�K�*����Sua�9�}��o�Ӈ.+]�����i��b��z�i{���6*5��_֘,E��-�i��{WX�����F��]d�3�5a1h���L��|=�5]�V.�����Nr�ƍNT�/��.�JТ��^&<:�*P�z��Kx�%Uj���b�-�b$�k;D�Q���,�lM�3�w��\���OVE��I\#j9q������'�Br�n�YÐX�u�	�" �/�8��XE�$�/ݼW�zEL�P��<l�u�����v���ی���HA�*#���4���DA^<�V��<�?�s
r�%��aVjƔ�� X��� ��ީd�(�xK�y���u��8����k�4B�YK�d��A�Ϳ�,�5���:�xy��C䘍�Pa��DJխ�`j&�L1�p��.�(�R�9F�1����k]�%�<��w�����W�[�DZ��@Dz�C7�֕!� v���2����M0+���X(Db�2���g�>F��� Q���cG%�l����p��s*G)IуD���Z�h�l�HKYH3G���u������y/7�k�w�X���9[���1�S*�3��:|�,ui���4j*�7֒�����6a��\q|U[��G���1����phߵԢ�@SZ���LPR�9����Sb΄�'�Ž���@éwħO*1Y>�6J�-:F�)I���*����r���g&��-�a|{�*E�p��wM�W��rH=V�Rtumm�+�րUm���r��(��VP@M������I_��zpDF����J���:�.�Y, N���B���ޏW�,��_�o���Ī�E�B�X"����X(�V�����~�JLo��ɡ��S�����aX�^��e�zVPc�$K��_��$���Q�:�c܏k���gSԑ���W���R�FѲJ��8������5��R%������*��*���lT(:/'ϋZkn��)S?|�s&�N"��J#b���b�V>e���>���c��BC#�O�Qey�3E��.�Z��l촟�v�.<������ݧ�����W��m]b�~�+�[���p�x�J�U���TG ����<�I֢ڈ��(`m�E<Rj���4�3�6Ɇ+�#����}�	����a�7�@T����^է���%���������Ƅ2�Xl����L-')��V����m�p	�����co�N��U�����9.ɵ�/¥��h6�yj�K��.�8��9L4k�N�J�`��|u����P��&ݭ.��~V���]Lcc�Ժ&���|�M3lȭ���gs&��[y^{��brܦ�a+��yq6R�*1����^@�&�y��8�������x�Z�Pi؎�U�"@��`4l�j�#Y�<�2z�e���U�Uhv9�h���&0���<���p�w,'(��0A�s
Fw�e�����cＭ�޽u�/H�;& ������=C4���*�)H�����tf���`8kJ�oY�8P��L�l��i�uNv�
ܵ����f75g9�y�Y��Z�����b
Mu1T M���m�@{����X��)�3Ά�L{�����D$ �w��d\Yx�i�-r�ڲ�>�b�~Ʌ��@�o��\�H����C2��J�r�3�>��ROp�}�5n��q�)��a��=�ın0y�|'%�e�� ��pu�@![�p =Z�[x���QU�ꉃ��Z�HU)_Ho42�ɜ�S#�[k�)�a����P:��sFӦ:.99�0�[-�Y�D��p!/v��(�{@L�o��O�c=䏩����PF@+C�A�8�P�>6��&l;�iVG/�xp������h�7�����A������]`��5(&��KM\@� ����ǕN`������@��26} �`���Ъ��#�ͻ���Q�����#(����cl���m��ګ~���pt��v��]�x�zM��1���;����ci��c+���鍂����r"�9�(�_|2Y0���;E>ⴆ���g���\K夷�3ܯ��n�m���s�*J�R�0�msP�Y!��"Tff��M�5�?"`D�~���%�L�t@���K��!uڀ    z�8���ni"�wY�	��r�'��#�:�1-k"����;C��rP�xf"�����ÐrJuo�8%YeLxI�c{�	��ֹ[��VEa�%1|a���ݡj��L�=F��&��h��٧M��
!�o?�ز&�Eݜ��	ᙦ��W�tnB�"�Z۞��W[�p�)��@Y�����rւ91�RL�b�]��V�x$WN��zJvL�.��R}I�Ղ̙Le.��
�k��Q�`Sإ��I�y��E�3R��c��c����TD�����CΆ���B�|ۄda� �A���S���BN���A��ʤ���X5��K���I%<����D<~㨓�є2e��gb��l����[;�R�r�V�>��K"�������:���-v�,-���!d���u���э9|�(��8�)LLE���s��5	AYŢ>�Y���TwV� n��wF�z=�(I���������`�4�i�^��t�s9��j�6	q��b��^���?�gkX��� ����ŕ���(D/��_´5
��S�Zr�}�(X("��۲L�%(���N#�>�H'�����Dd7(��{��Z�"��Ȁ�p֫�����+M�R�WAy��vz 6>M]�(
�����ETF��	�0��B��	�[�VKB�PUU��.��t(^��N῎>��'�V�(��xC��á�Z4���������HS�K��O�e�(��bE
�>�x�����U�5��JkvvT6��ޡQW��3����b:���P����o��ApM���n�;26Yy!E�����MΟ�Ŧ�۷z�S��!ߔ^Te�-��|����_�3|ve�~�P�]��.�R����t"�)��|�`�7�`��><��!mǲ ����;� ��ʒ�]�*�5�`鞌��R>�ms���V/�6_����G��K�P�S-�u�E0��焷���a���S�sn���XMG^��?�M'�݀(���s�_8"��8U��zۦ��Á���Q�)-ە��K�`@�nq�}���}�#?2[�.+o��o����v�r�����N�MƏ�? Q>t��n�f>�h�o���5���Pr���X[98�Cqz�"h��z2�͇�Y$���m(�r�a:�uNr5�Y)��4�r����Q�X���/�����- �j���h1��^��l�����b�b0���uDHg���h3���Ԩu�w��0mL;7C��
���5� ��Uw���T}���)*@�xj�,�\d��ý�����{���G�jt2.|�9��j=9/1Xn��&�����S��{���idl7ǰ^���|V-0���iG��D����+���&��o�E�鄐��� �ǩsvb�ph5~����6����&3�[B��w
~lla� ,��a��O��9^Pɾ+kH#�ɑ��V�V(�(>��X�|j/m�5�z����|��!s��ㄤD�yx$ϘC�Rb��-�a��A��Zo(�j*<Lm�E��clp`��?�g}
w�/b5[V8�]L)+F`wY������C��Ykf�97O��Ʋa7��������<t	�  ��ȴF�U T���g�c;JF�G�D�5#�9�UV��Z㶛���ph�>>�ԗ��j�O�����pK;	=��F��qzm��E�K��g�y�� ��G�b�8{92���>��Gʶ�1,��CS����ޓ�g0���#�3 ���|k��"�{�-�Z���Fe[��W;&Z� 
�m�+(p8��Dޔs��\��<���R��]��"��`__�w��>�
��݌k-�e-	����(����Sq�nZ�D.�r-����W�2��,ju�N����L��i�
�Xo�,�0Oa*X��x��i���!�$ ��jf���!d�"H�OM��UQ�j�cQ��M�(h��(�Kw�7�	���ޫBs|�W�O�*�1�H�Wx�����<wMP�O
�UR����B�{9�9t�ֲ ��2&�{�h�=������}��nT���a��0����.�'23��O	�h
Q�E�ܸ\ҀH\�����|߅�.�=a�ce��
x�w�|����&xM��(BsTmx�%8^V�{���G�#V�ҵ�#r2�#jʁ�ْ0�11�)�	�� "�P#̡�M��Y!�؆H�	�J���Gҧݻ��lq�00���P "!�ߐ�r/@�Y��cC!���dק�����v���px0YicF<�лTw����|[�I�Xw��>���t������J�#˲������̊xC��������=#��"Ql,	n��-�����t�#Ϗ�t���ZW�
O�D"32��X��X�$6ޟ���3��1��V�Ih����݄���]\�io��v���4��rnN���bPş*G����� l
;�.9P��hl�'Y����	�`
�;ySy�[UӀ�m�*�DQy2�)��99N�L	@��~�\�a���\�sa���ڞcT��Ҋ�~j�u���Gh�����cXJ��_��jRB�E�]�л R�x
�4�Ep���������"|����Tr���l���!�J��а{����0,3�J�V=.ZF��{��켒[�2������3��X�'m�1'����oY��qǎ@�w���RzwF�t��lb)�t�Ñ�vn��__}Tv������#�8L�[�{זkC�z(�Œ��Z�Zy�h�=5��֋����[U�W�E:V$��*��G�J�m�Z�w-qPV����n`(�{�`"�fBbΘNVx�������X�sz�������0�1�b��J�k �4U,T�T���)AP�ozFC
?¿�6J�iY�
����嫫��HB̘2�wZ-)H�@~ :��9k�����6":fʴ�ܼ5S��I��C8�
rId�%
ə�TN�e2��ݫ'�#��#k"8�ݼ���ftS�Sjpj�ob^�8k�֐�i���B��)7�����J�r�����
DQ5ʽ(-�`��x,E�u�?]�D#�yV��� �Jͩ��^��EL�5.I�:�`	Ɠ�� �y������?�x�av#)���\��<:R�4��Q�~�)(��S����Ġ�6� (e,���]N�=T����|d�DƷ��V�ò����V�8=�B�]��+Uh�ˌ�<�r1y{z�>:��-�<v�i�=����#1�~'~s��y d"j��Y	���a���R����R����Ȩ�u断��S����KQJ��/.'�$_d��d�-6��F�0u�?/5�j �`ydSŤ�(�������Ɗ[K�ͺw?� j_؅]I��� X�;eG	�����sX��4�2�Q~ηG�!Q�l�!g�f3�d�&.�>�\��i��lD�Ӹ�O/�F�>��BV�;ޞXR�@����l��[A�O��Fq/�.���I՗fF�dL��^�eU8'�';a)��	�a魳*�ݘ���nX�A���πL�d�19!�_�A�ㆳ��,q�#+�`��;�0r�ov��ш�	K�o܆��H�i�a�D�&:e�d�/�e>B<�q�B����r�u�p���*�W�v�����S��=���R�����X�vѭ�m��{{� ndɎ��=�X�øI	�i���W���e���bƼ\��J���φ����+�k C��7�7J<ͧ��VY���۩�Hɠ��9-�*]��@,���!�ê��(o�$���_㋅w=>f�zW%+��_����P(y�{x���ɜ@�o䒓Hj�Ƣ�J�����,�B(�%��ǻdF��$����:Hp+�R��7_K{87�?u�q����H�3VNͅ�χoŀrc�8��b�J�k1,`N& 7} F琉�+~ϫ;CB�;�T6Y	M��>SJ!�<�7����,�~���\/?���X��b��8�邲)֣d\��ۀS��nv� ? ���SLG�K��2�,'�	����G��	6��q	�%	"9ДH�y�T.������d�Ů
    v���X������������o�Ğ�xT6�(�%n�3K%I�_`��|�vר@���!}���j�k���I�ooc�0Q&ů�v�oE�zbO,����lv����#s�:A��Xu�f�˛[-dP�Y�K"��#�
[�j!�r{<wC=[� ���^����,�}~�Sݟ�8����e�]��I��aRd���u�ϳv�#�/3 �ȹ�Q4�nը%�*�M�SS�n�:��Y1����*i�FF�~(L[�X7�P�܄��ܺ��AS�#�wh��M�/����Hx�ɮ
;�-��2�N�ͭ-�B����4�5Z�Ԣ��6�e_/^���5�����ɪ�	Q��Y$o���L��ب͌?��0�Mm)J���^�X���S���g�%O��؆d��Yf>A�ϒ�*�P��n�� +�n����}�$�\�w���W��4y&r	�t�	�70�����ӭ��߿����bл�M9Qqh��`s3)%M�Vq[#��c��\�����aiFi�2�z���4���UG���r"��PjdRE~��%������1�Ha;�&s�Ϡm�$d��F��0�1����$�@���d�c<����n��8�Ĕ+�Ue��28($�s�k���o��zݸŐ�R�|
,����)t��	U�Q���r:u.��L���;)r<X�e~��ob%J�UX\o�tA�]x�S/Q����6X��7��,��gRB.oT�?��QA�lK��sg��g��C5�3��������l�G�ݡ�����?O��U��>��I�̺P���}.���I��W��Db�0)�v-�3��;b�Ń2�#,݁]���I��6�yǋK����$�C����#��:� �4�메�Fk,�wk+�0����@M=��d�ɹ3�Ce-)������8E��{Ǭ�ɶr��1z���jU���\/R�05xߴʲ�v�)�5r�_���T�E�b�S6��� �� /�����ā�mY��P���s���:�lة��J�P*�H���(�~+^9�d�.d1;1y��;R�	�=�{)i��_�"dI`#�Nm��7Eᗰ�;]�����֯!W!��Cτx�\��?�b��QZ�Y9�°D½P��������5��o�NHL�Gܚ������^�j:���׭�dB��̫a7p9��ؚ`����mQ�}yf"����R���D�%���T�Ifr`�1��ܙ�M.6�?Vrl_�����M��=��;"�l���C� �+�mPD1��"m({��nYǆ��1�N�S���Y:fZ�Բ�ƾ��Rm�i��B�+@B���3�F���L6SJ��<�Q��8�v���O��Z-�,T�����ĳ��nʗE5��f�鍈��:C��Į��"�7�^�k ��!��f���в��Zv��Xxf�T�O���z��P�U�l�,릆l��8��ϡ����o`[�;)6�����o�6�'���I�{���Gt�] �7��+̩4^y΃*��VB�;���`�M�K�8�L~�d.�`p�ao`���Tp�p����&�VQb�P݅#,e��������]��tLr��m���]뽫vV�,W�g쇝�X�Sl}M=|i|��N<|�����K΁�HwN6:T.�'�;s����b�X�[����RY~��o&(�����S���!�Zt�$(�(�<:@-��/j:6�.W΢nr��'�9�-����԰�L�B�D&kK*y,�y�������B�X�:�ڌ�[�{�o-�?,�A.���\n���6�F??vaG5��U���,+x;W����;\�Π $�?'%�l�d���"�sK˰�&zUS�×�2��q���-�]�q����������s�g�ՖI!(`�m�Ġ�M�|	���\9�^��U00���h>V�U��þ�3�^~=����l��BgzK�"�U��k����Fgc��Ga�*�b�0�Iy_�3�g9G5\F 3��L���.YΪaK�D�D�^�0���o(��vk�1ڂ!��0�$�Y?�[���h{ۣ����������x�Q� j��Q�w�8�qҗ/�7a���~� ��&�f��g0vv"���?uL�#���h������5⅃�$6"������\�M{T��B%���ԓ�d�,1���Fi��^��:��t�ʐh��֎�����*��vD7��
!���o��ϦcR`���F���d$��N/��Ҋ{�\Ec����K(�U�P��)RlWY����@=����hOC�r������)y�Z4asu�T��%�:�8����<Dɪ`#]�0�QIC��O���I�jϖ��#�����Hg��d���5�c�J�����4�M
LVHG��g���sJ�#@�C@
s��*���F�[���٧������&�H�d֧�΂~lf�a��~��q��'e�L.�
��4����q;6���`ߗ��h@m�.��	��ӛtģN�}�=V�Ӝxl�kM��==�m�Z�l�7�eeEB����f��7�����2�T�8��hL�u 5o Y�oHG��!Pkf��ek�t\��R�Gո�����)��#UK��+9UT�:��!� Za[�sN6{>�j�I��Td�9>M$8��[���׫�d��)�"����@�n��$O��_M�G�*��[wU�r����<��.%L��S;Z&�o�A:$�e�-x�Zj��x�D���h�#x�T������శ����\�e�WE̶�8u{�τy�WƋ�7�.q�o�ؼ?����L�+��O�rm�DP�>L;�B����]�ƛ`�Y1l�S��!��R�+��υd��zh���}�AȂ8IL�@���҄�/BL������Rc�i�;@yz���Q�b�FV���K��BxNd*	K7��:9��x\�~y3���c���5q�vz�6�����c4%~��	��sS���-�����8�&��l�A���-��N~��a:Ԇ�)�j��&>x ��ͰӇ�M��X|1H�E���9uO�&�!/+v@wD�%Ɏy�?����7(�毈��&^��U8�+���+��B�y�.�5�pU�9��2p����sJ��@�%^E����Mo��-����^� b�;�]�m�Eƃ~���T�RH`���j�
@$��_�6�� V����>�vK�%�PˑY��,�vL)y�{U{�S�9�s�=[c���	j���/�^�� �{��Npe`I6򋰰p,�����"P?.���t�z;o ��Z�t�u��z���;`�Ə]Ӄ���3,=�YW,v}�T�ټ�k.��Z� n���j�"-  .@H39�v}g|��& �f�Iyl���،B�4W?g�Yp�-�=�.C�$�(������JZ>�1��K��HO�繧@	bm|El76�_�wv֖8iKckvs�`��ɪ�d�ЉE)7�jk��ZG%���v䣃Ti��U��AѦXy�ٖD�:�����)���k�\�i��k�siՔ�����F|l7�!��k���%OxEqF�E��-�.~{vs,����$�E�ő)�f���M�ϴ��2ea�$�7n�xu3!�j����;zw��¦����ﶙE��u���4�� ��UL����:�"�g�H\=�H����h��L~Oٟ5�2B�I��X�XR���Nv�b=���S/�@>��l���G���̌�EY��]�f����ְ:A6:�|#]�����v�IT'Y:�E��GY��r�_�j�V���U�#��u���N�ֆ�Q�A��=���*t���m�K,�}ݗ��݃vv��՝{��y����ɏ��:����'��C��(޻Tү��
������J�e�z�]X�!���u�C�hP����C<$!x����̂���,��j�"l�nQ�W6^LC�9���5�1^���s��`
LqL r@V<&�U��� ?fZ	�@�7ʻ8T�    �+�-�G:d�*F=�_܌)�=_��f޳v.2m�w>FLs4�tvX�:��T`!�S�7�������RL�A��#}P���|~�Q!Rj(��`�����y��2��OK}��m��S4���2�QNu��6L�a��9"�<��yA{�?�,BX&�">&a��|PZ��;��|��[F�	���pX\��9Q�>�7{e��BQg3�a�� ���م�T�ghIk�MG~�r7E��u7Zh:7	��F�����&�{�F5�OԀ�Z���kO.# W1�KD�	��o��:�pA�b�>�DNrn:���4=�&Խ�Hy?�E���*�:��ӯ&�^��PNEe�V}ܨ�i��9SM����?�fZ3�Ȕ�	���X�y׎��/�P�ys)�Wt�rZ�-�Bk�������,(a�ҳ���J�V�[��`��$�����[���5�fH8t�L���⑳b�����gf��؇z���f�!�A�ɳJޫw�?�JY���h:�k�C���'�]W�6Y�G�O�!̌4`���"-��_�^3h���\N��絙���C%?�=���'�FzwVR������2����9Cm<�C-���h�����P3��h�~x��pG��y� Z�DN�a*X�0wc���I�����?t_P��ro=Έ��Yvt�0FJ�(����,�F��q�c	З3�.�լ�ƪ�XId���7���OPF#Ŕ,������Y?Y��֭�I��y�B=��=�s�V/du�T#�;1&ub���Dm�r��A�kR"�EkW���9�~���y�Ѫ�dx�狢�ٮG��J��)�{��Vp��n�Q#J}�']L��V�~�B��� НI����c��Ir�*y�"#.��YP}K���k�0�[X")�BZC)�ْ^Ŕ�?���@h��a���HbafDWK̼
��|����
��U�͑u�$�&���Fv��������=w{-��^0O��#�Y���&�ΎO�����A �Z�*z]�o�r�	�oa:����L
��G�&�z%���&8��z������A�?[�l��-)%r�-��vX
����Q�s�F$�W?������j����M���L ����U��I���/�ѻ#,�_�鱔� ���_g�,��e�PEЛ���-�Sj*�=��J���٪��X��Ƹ�c�xм΂�Gga	�����e�@4�Xr!���!���v����Np�2j�Rw-
0�,z\��
�<��m�xO���@�k�lN��VL���1���%�0��;����x��	K�ÃӮ���h��A�ؽ��� ��آ\�ѯeu���!��z:�wL����Y������!l�ӗ�Y;��J6�iqUڸ0D�s�cr&��B@!�lu�Vaʤ��Lr��Înǹ� ��_[9�0���L1��rY�IT!�&���E.�����泋��OU,�WjV~p�h��j��1k����k�$Z��	nAp��׉�p�41���A���SŅՂO���� �q}���ۇ7L�Õ�l�\ma���8�ţ�$����nn��-`��R܈W�(e5���i�1<�.�ΈV�{[�½/�q�~R��f�B���]#���4q����0��."�6I,��=�V�.�\�3 ��Vv� .�*�j�_xa,�a�Ù�v���' �] ����q	j����:��B�5�	|M9!�)���9�嚈�2���=h&f����|�w������p�Ο8��r�������m��t6߃"���m����П��S_�]!�R��]���5�����g�?��>A� ���O�5Rcu�8��Pmz�AI��2<�R&�|um�"$a1ዋ��#�b��u�dm����Y1���ǹ�Ǧ�y�Z<�T���V�XM$9�C���L�X�ؖ3�ܵe���Ք���j^I����қR���(���G�����[fL��'#^��X�(8�X1oA�)v��*��=�5֛_{�YP�z1 �9L�Sq@�(vXHI�x��I�����9���
,�@ӬA",��bE��hX̝�7�����ʌ��i�?`�υ�E ������}���-�̨�m��jdf�yh���.F�{�͚�}c{<*]A@����E��d,����-{�J4���FRP.>a_�z�U��^~/A��<ٞ����ʙ������E��S��:�2㲎��?U���(���鐜@���4��r��.�v؇�����tNca��x��c��֎Z3���M`��>�udފ��ڶ"ovT��#�q��<�o�.�,����D)A�iGm�GK�4f�-/,w�����O��̿�2��SX�s=����f��Ze �Q����oޠF�~@T?��R0#I,g���_���lbp!C�$�V�D�$��ď������ǛH���ظ��(L L=���\E)(��@"�^��||��r5QI����j�M4�
���RUP*�+�5ް��|���7cv|,7?A*�|�*̫�nm�k�x_SV"�b��g����'���p���TcNk�:���q_� Ri�b���gH�c��ɘ�`��&-�S,}D�`�x�����>��+���Z��!X|�zJZ���Eir�[0����i��I����^r��N(M�j�W۹y*Zޱ�*(���_���,5���u>-�.��_PX�a�<y��A�����~�n< IpB��՜��U�S����}���a7o�TD��o]���9��������h��Uz�������(à�2�r�[p�]�^;����{N�B��ʪ�����{�'FA	'��B��ú� #a��eN%�g�$2����Ep�a��߻#�Gˇ����G�ȥD2�v��T�r�{�a�.����Xn�ԟ��J� [����铘���!����j� ��-���B06Co�Dcsx��_,�F��d�k�p!�X�.��[�ʀ�Á���V)̐z6G�4�z|��s�5�X?�����G�7K���o�QF���Oޘ���1��Gg ���ĸ�|����)��������jŽ�����ʓl��f8��.������nA`m���U�'�{;CP�zg|�B
X�xk�v��Xh�Pƣ���TЩ}&����p��M�E��)	L�Z� ���5�IwA`����D����4��uD�|gt_B* /����	��G��Jښ�D�jG�&�mT�1L~+A�g�.�-1���I�s��L�xp�d9e�R^,��cB�	��M�Y@Ii� �Gg	y�ߓ�(�n�TG{����O��������o�|���$������̍:}ȝ��b���S�{�.Է*��x�r5x���h�7���R��)����t\K��b �e�K{�������`�e��)[m������&�0���~)^#f�����;���J��q�ϥ��Ҋ�����܄f�Y�AAJ�(�1�C�t�>@Q��?�HmK�ݤ�=��j���� C�5g�'2�o����w�b�$0.�V����k���b3�e�*��0(��a���2���*39��Cd�k^.��VV�H��\]�$�e�"�HOW���+�2cPYbCX>�X'rXa��i�-�}J�pY:Dr�M�~��u}ªcwU�1�1�E5a�ċ;@�!��4���$�
��c��N����>����@�J�>�sSq}�z�Ws�\� ���G�3�����1�Z����`#��9� ��|ZǼv�|��Pۅf�B6 �$e��.G���ݑ\���J�����ua(���jJ��6�Q$C���Ii��ͧk�]�Y�U��f�����ń,(�i��H��-��߭�L�&��i��Pba�r�.����4�\.�?Ob�Q���S���6�\Z�"���s�/;;M������~�v����˗�B�����wa��o/��8��ة `UI��q�\ 4i�Y�LH	j�����xG�"�w��Z��AfgG�؛��C�T�`йw�����    -KL@[i�!�dr�,Q�Qckɘ*�Ə~U��9�C*��$)��ĥ��d6�HE��PΤ���H˱�,(��u��� e�-~��Hv�}Ӎs� �З�g�=��R<��oڵ�I�'ᶺ�o�R��a9���D���k�����rS�]�U����RJ�Y�1�*���{�'����rO��K�{3yIF}/d80�HP�[~.��Y�""t���_b��>�~+m*�)�HX4��}�G�Y|:΢���)��➢�ʳ:��M�ut����}�kS�z�0�(��"�Ѻ��Q��dJF����fX?i=����K��IT���胳=E�׻ּ%�3�8����%�*r�2�����o�.�g{�ڪe��T�B���1~小wg��O�,�ho�^Ξ��Gs�[eS*��G����������qM5����6�*ew�̦�A�����>6c����ե��Z`��!�u4�Z��Mt3=���؜�U描FM}n����ZH�X��~�7����!�W!^�yA�����[�nSݛ�!��=c��G�	�s�ΰv���l�K�J�m�Ղ����mI&���Y�ɣU`\th�Y��J�l�S�e��2�~�d
�a�5����J�И"pY�����ԋ�Y�gx��0�O�(-�D�;I$�j�'	9��'�6�+��R�vpX"a��ڱjd�h��������g+IT���V�ܠ�����	�r��J"LR��;�7'š��@����,�������! %����QƂ(�E�qb��Hμh�@D�����*	%t��C2��/�!;ks�/���n�˺�|c 2>4����An���`O6/��u���{���>��]k�&�0r��ne�B��/3w1�9�b} ���j�a��-`۷��%7yW�r��ޞ�a�CJ��4>��bL�37��@f���+�����!��C�$M����1u��5��s�K�G�~W`4�j�NB��"To>� ����І�ay������U�Ύ�>��x>.�@"U����Y>�G��=G�~a��������Q���볿Ͱ�=�8�n-)�Ӝ�;L�i�����u�C�%���Jkfn�0����a����p�{��hЌ'�0��Y~?2��M�A�%1:}0��
ͼ�b���DC��-����Z0vs�6����!@�����!>4�����D	h�0��ZPD�K��ɞa���o�h�Ev�[3��["���`�^�ֈ{�f�\"��v{de̿<�Iۿ��H|g�sx$�Q�$�	Aɣ�'��7<��<K�X�}�4�{p�����%��*�.&0���e�L�;��1� �o�����5�;�?�b,�zA�O�ю�e	�<k��_�n�w����w�̂�$���0��4Q�i0=P66+�8�^�
�����0wڳ�Pc7�E',�����d}ef=����S	�M�t(�L� ����t��%�����3�0b��SC`"3e�꽋\�_����8b�����T��ja'˷�p���2>��A�:�������+�#L����[�$�Yф��"���p�wTh5�CR��G�U�W���Y���t�a���<%oQ��H�rVF���ǥqz���~�@<�) ��_>!"ŏ�=V*���]	a���l�jr�>����R�cU�5��ú�e@h	�����ݾ1��o����f���-�La-0�_�_����h���W���]X:���[L��cs ��K�����X,�+y�1&�r�_��c�A��ￒ�]����	�a�\pB�yAF�����*-rX9/yDjP˒U@PP�C�8?�0�<K	f+��EUƎ
�0z6�Ǳ���`��l��2Ʊ��h�f�֮�}�9�3�Rz�rȩ�\�������}k��B?�-ƛ?1H��WxkF?(<�t8yW���=m^�2��a�]��rΖ�I�����7�q���c���P�>yrﯭX\��,jaHz7%L���g���ϵ�[	?6��m*��2����� O��ܫ��� "\���O�nMA�9�ۚ�t��m	Ԥ��4�`+���F���N�t�M$2�(�SP�>r0�\������<�-!K��e���o��`����+[P��Ɋ�Z{Lh(q�Ư����bgX��p�V��B�D��HJ��6�ٙ���%�H.���&H"�
�\b�6�jp"1�
/�X��kF��M�Z[��4����ޝ�K� 0N��c���|y���������fB}����݉j_��cc]����ŧ�:�aR�$��Qq� �4S}�ZMZ5���jW�}7�O*�e7�R�U��Cw���2����������t�{>h�X��/_l����8��`m�ږYYjpc�˶�_K��e�x�AeXf�xd����^��(&�1��۠)|
��[�H.��q�v��(|�7����o���y��Y
KQ3?O�D6�����ǅ�ͨ�D�8S5��h�*�s\�b��Y�;����3Q|�����Y��2�27 �i�J�<h�<߄��!j�B�6��"�P�rH=�0���,����ka��[�t�vd���x��[x�]6�u������
��Jo�OF"��)� +��+Y�'�5�&�$���j7J����}lu�ه(�@�gc�10�
|Q����5�9QM��!C}�'20���c�GÓ�M�r�MiG��O9ݚ'�1�B�k���L�*5&��� *��Gn��@��Z�v��@&�r��(��n�-ֻ���1�=4K�[m*��%֠��UK��[M0�c?z��3¡V�nJ�J����[�Ƣ��eZ�U�^P.Ȣ�փ!�~}̙��Kr�	��n�/Ta��ȃ�\lܦ��[i;����te*�-Ν�ԓ���D��j@	�xP`Ǽ�X��\�l��dS�`y!P��!I'��RδApɪ?53dU��Ou,������W[ A�8��K�0�Au�*������7N|v������T6G���L~ù{�=�](MwsaO�2���bG�@Wv�8�Irϗ;��I?�� W��
*7�&2V�l%W��TkY��7�Ͱ�د@����x('����<���"��A,�Ҍ���7�l�(W�	���0�_�����xsa��jd�/��ON���ة%"3��.a��㑜����U��\Uٖ�d�[r�l�˙��I�a�;|���%�ҩ���9����G'���`��{fW��7��^kMfK�	��ڍR�����x�
�x��)�����Œ*�,�~x��~�x�TEC�i5D�Viޚ���i��~�f0��t^���DM�wZhY���Έ�2�^z�J���:�Q5��~Wu��gQR���!���{�7�� ����n�ed=�������d1P`	�&�c5g�Řv��\�ݙ�/d-V��H�S��vl�q�W�����=�c�����p��E=���[����d���)s����e�l��PСO^R%�Q����c�F?kMj��>[�;o^���|��
N��� �㦘(���̂�͜��9�kq�j�{���\����߄�f��)m�<��� &wմ��&_�H�p�뤾P��n��9�+6♈�ms�둳�P�+0�no��l�H>��a����S��r����0-o�xQ4�d��T֮���_��yèb,����{����z����ɩ���nD�]�-�ZXiP�-�X._A�bG��[����^{L�~:ٍ��f����-�����DU�e@d ��N��S��yS����߫�<�\�'謁X��v#�d�<DsF�[���jq˝{���\�Y������.��qa�{����f&m�y���O`��}�w@��f6Һ�d�Vߟ��`���Ei��nQ����t�H<����nd'�[D�6���J��0�"��؝�Ꚕ1�մK"2����x4I����$�;!Z��6D3G��<�X5J�ֈ�~�.R�Rk��*A$SPe�    v� ���<ku~�JDs ���׮6�+L~%N��
�Pw&�ٯQ�0��Q�>���1��b�@g/ QR~	aFu���F�D:kY&Vז����Gh�/�bp��i��}����3}o[{� �{�qȀ�O�q�sv~tx�	��%e�wc��N.+ֵ=��ˠB�;�i���dg�!��NG�G�B.�T} 'm��l�3���J�'������b�"����x�-���]�,~�̀@IaH�0Ŷ̉ `�Ǻ�4f��M;*yt*�x+�V�U�_=��	A �E@�$|�����V�=_����2�xc*5ah�����]�	��bA�yCR]5V�x��I\U��t���GoM7_!�.�tc%^5��+���)5�n��S՟�j�S��bj�gNMs��K�Rs�H)���<���:���P�����Fc�s<Uf5�@B&a�bij�-[K؇L�y�dV�;+4,��c1[��f��.N���	�$��;Z���l�_�a>��c�4�$���OxF;[��Z����іڑqςһB�G��Y��N���f�p���S�:�Gs<��:����˼�WPm��Vk~x3�idg�w��O� }I�un���R�h�+��)YQ � ���^��2�9,w,���nڱL��a�o�I�i�O�(���0.fР9���iwK�Q�������a��J��w�����}���͠��R�+�,ef��mȈ��Ն|3 ���B��Do�B,7o���o(����)��׋z��&|�[�;��6˪�
����j�'$�a�O��#).+VĪ��J�.&Y�H��`�	�c�M�#�+0�p]�:��AY�qqf�_�.�,{�@/��(e����:�ŉ`A|N^���t��:�\��ƒ��wݧZ�i0�Q �G2���ۉ��o��!�l�M�-9��ь�B�`u�@����tA��M�O���1�|�*����fJk���ҔMȖ�jˏ�o�%
ǉ!߯8: �9��t��T�G�}���[<<��,�;�/ʵm�?=��v��f�;q�2��{���϶�z��^6R�O�j#�D�l�����t�e��\�J�9dam���Ĭx�I����@��8������m|AJGD��x�a6��=�Ҩ>�lPs�j��>���?|n���m���Z�_��̊���8FR��z1}Z>tXk�h�܀��e�r�E��K�k�o��\i������@����5����*.���]�U8�b"�U�>\'�d���ù��� ��o^Y`�h11o��j?���2�EHb�?G�;�Xz���4|l;��"�-İ~�B�;��Z�%�� �a�i �<�KDn(��t1���s��U�B����������������ͲQԿ��PX"�eFD,�7e��^��K|:2���j�+mيt)_d�P�v��N[�v�G��f�PM"P<Z
���+��yu97a��{���>�6O��Z��wd�����.>8�X& ��c��]�+>v/�C��M�<L&�\ʭ�Gt�	.�7�`� ���N�>��¾����q:_�y c9�j���yÊ�Ƌ�~Y�P�L�����u}����'^�B1�~��rI��H�{�׹���U	��G�B{˰C\���x�;���A$�Q��_��p��[�;�"v�Ywo��ƞ���t�`��d!كA�S,�6���ٻ��(�mp��G�'A��5�mGr��rJ����	Z�M���D}e��%������p��%��
X��_�Eg%���A{�[�O5]��ؾ�q�`��k�O)�EO~o�Xx�$� �GxB�A���huE����8�k�.	��@8��@�OM�G�,{/AG,���n1�n����g����sa����8V#)e��ℬ��B?���";ߜN���H��X���P����{���P���5�M(��t���t�?���l�]��o���5g����=w�N�������gp���_-V��H�\�aE >\Y�k+�B  ��E>i�Np�̐3������RI��,z�'�i�v	u<�QN!���n�ٓ�iQd]\0�^� fL���*�����
�}^	H9ժLF�Eop�a���ǨT�^�:��&�p�~+��.��^oY�+l���X�i,fN	 p#Z���ĳ��O�A�B�M�zx4o�=S�Ic�@�`��ٗ�Vl�o�$ ��z�۵+'Sa D��wC�HK��MBf�
PfMr�*51TF���L��Ǜ����Pý��(�v��B�&l�PM���Բ�c�R�yR�l��k�d�J�9�U4©/��w��ڌW2��P�������ǠL�A^����.�PT	`=3·��+_��X��A(l���(�w�Ӏ�K�4~"/|gq��򹬲��`�J���F�ݵ�/��𳋧�f݁��v7����|���믗3j�*��7=���V� �$�^U|�`�B%X((c�LC�� e����e/WLq��x�n�#}���f� Z6itG�J��:�U�*��D/��QɄ  ���5u���%f�~BU����%�"�TFg�0g_iҠ��:����U%n <�����r7��g4�㏵YVUd���ە�޶�]LsUR/��s��Rb�#�iX�B�Fs��Bi,{!�0u��*���cj�#��m����{�����kܭ��*���4�Xo�t�L^�r:؛���)�C
& v�w�̃TN	P��_�Nй��@�=��u#��F�mZ� ��lf ��w�)�;��R�)m���G�->D��ܷ�]L�z���X[�s���>��T�6��Z�4v�a����$�/���jW3;�|_�.&)RZ
�=B�_Ma�U�Q�)b;kX�偅Ƹ�6��פ�?�"�M"�l�U1߼9X���B��b�#}J�{��z�])�'?���((�$�]�B�/1;y���a{>��O�H�]��ub
��,�^r$� � t�Y�[�Y��0��&�&)m$V=�PeU���+�-�B��b�R�F���[����`�����I�΂XΝ���sm/��h��j����)�Y�06YAd 'H�	�G:t��h��1:��,ZA�����m�r$�^�knS㒰=�QS�l�<�lzU�����ڻ�I|���G�}�7X9
z����S|�lB�3}e&3~�)}�����NI;,L�{D���)����ӣO�Ӛ�4^:3_�2?�)^r�L�~�;PR6�vo��t��ɿeB������/P +i��z�t�����gT
�N#12Ԭ��MZ_�u�Ղ��&��1)zM ����a����",`9�@J��.�.�ۡ��GI)q��C!�"YvJ5Ȳ���Aa�j��ק�F�5��c�Wv���ެѪy#�%7}�y��2C��C����ƫ�V�D̗)����V�-��Z<��Yf��,F����P�Ґ K����~:=[��b]���y� �ح�T���6_�p��[�nXٝ\����r\�u�k߁ɮ�N�z�5�4 �4��1���8��ܜO֚o�x��D)]T� &1e#&m:�ϓw%�y�L�b�(�a�֬��¿z�C��a5K������4�&[��Ψ�>4s�8��]g #ϜW\ƀ�ŏ�b���u�Z7eDL����Ƀ�H����9���(������]�0����xB����RS���C<6����r��dw;�4� F�{��7x�d��S�5��gl�5��C�����]��GoK��c��W�b��m�'U�dx�O��������?��\�`�2N>h*��a\MB��#�U��ߡ����:�����&�պ�v߼�����������؅��/��ċ�w��?��P{�ŏ�S�}BfnD�+�E�b� W"��5$G�NIRbi����hkRf�;��/Hr��	�7G����GH�_4ܰ�2�N�z.�9k��(�`�����\�-����t�N���S"QA�t�~�$Û���|P~��簥���|j��b�����|}~�;�bsD3[Z���x�	8    p �%d�?�ڶ � ���MԐ��YՌ	��,��3��ئ�tI�"�ml�b���1�fJ�X�%o7�+�2�(�+u^���k�i�ɬ�f��:����18�ѨT*�C��r��n��j���-�k�S�@��Yjl�g��{,P���L.��h�m���X��њ�h�Yb���o"��t)�0���>�C�p���t&�JD���(�؃!>�`;Ȋ�B�6�u!���/xj#�Z��!�r��YS�Tssr��V(J�k)�b���0�'ldb�뫋PK`�ç#��}")�f��ͨ�B֒,bB��*k��fʻ_e�+t? ��0/}�[y5F����>7��bM墉��k8E��1����ܕ�V���n�4��"�U��&���(m�gXE����|�ơM s`��eQ�?��]C<�h���'�e, �^Xmޜϓ_$h#j�o�Bm�}�	�����h��ev?��뷏h3�u��s�Z�7D��1՟`ִ�!̔H����u���J�0/���ԫ<U�
�\�S��I��,z���M㡵�<��PU������G��f4��/�]7i$֑)�W�8q�2~d1��b�G@��h�%��{w�����ކa�؃V�d�]*f�{xKC�L�� n�d�Pa��B��XX(��J��?���!�%,5b��Ve5����TB2��^|�4��r��O�x�m��É&��_��M��$c0���I>&�@B}(�*�-"��0�h&?�ؐ-$_H'�U�� �mI�n@14|^K����C%D���iq3�PC�;�qHы�oĠD�@_��0zڳ%d��k%9g R4	(�%-(�$�1�1�D�4�\紱0S@G�8'G:�,�"�|j�f�'T��ҏ!'Js�0I�Y	Щ�̲���������4ȭ˦j�?2m�CB��Vعr�հ�K�:��Jpef���
�5��R\��Aa �@r�m-��PD�Ÿ�YK�B�x�
3AS2�5YA,W$C��-��ǆ�Ρ���`�V?8�|�\NQ�;T�`�}�e��-��݈��W���%Rxfg�1�K_eݑ��K9�l�Il;�r���?w�8��Sb
�&AY���������!!�5�`��|8jh4��EV�h��-��cK�uc��u�.�Y��MH��qf��Y�l��v1Y����8!Phc��{~!je��|����?mm��WyP�[�EX�«z�Sҏpk�"$�R�&�:�A?�o��0��i_��4��j�s�cM�Aܤ�TSa�s/���]/V�tث{��G�Exσ� �	$*r�<Y"d�:��L`p�{j71�i,�b3w1�?��*r��[;·�6�ϗ����[U��_lM��knA�{9Q�{��Q	VC�p��hC���4%���T�x+�s=v�mL?�+0�����LX�h�y�#���� ��+���J7_�q���11�|io���u��L��-�U�{���^/G�I�A��ç��j0_���&%ң�:vN��1���s��T�Iw�}O����&q��o�fUV���;����ǺM��'en	�.'hmǼ�+�����N�԰2��#������D�Q�	�hx?~�}���lE$T��4�iP��%"Hd����@x��U{�o1��fK��������NX���zN��3isTP+w(l��g��?q ��:w�aU�ح����v�t�5�LX���y4���m,HF�0�&KQ���gB+&�va(����y4��xb������N�)��T��r߬�5#���T]k���b°���2I	�D��Z�r�����A#�o�'�O���{Y�z;TJzq`��r񍘽R-�uk�G�|����%2K�C��"�FEK���t�.bZ�U�+D���c�L6���>(l��-
-k.�L��DR13L-�ޠ�����Tӊ�=.�䑛d��>>�m��KP��u��T��ͻ&�C����g6�c��"L�a���@!!�EGs�	+��N�n����g��;GXG}_�	?t� ;�ai $\j�(�A�Ucj�j�'([�]M¢��(c��"����=�">!E����H-����Bɣ�.bK1-0"/��}��GZ��~�U\���І����lݑ@͸\L�T1�PY�B�����¦�>yj�.���Fi��$n��<�a?tF1����)>e%(�7R䫱0���
C��n���y�P�:-u�ټ�D�G���j�o( �c)#q�ςt��{9�F^��	6Bo�I3���oa(�x��1u����*��t�*2�(��Xv�X�G�yFv�ݘ��|o	����Rb�6^�&Y�5�����@t����/�I��b���m�2�r�?�L�Ƭ|K�3J�U�H�W�Nuz� ��K���K�۠��u��L'��q�����~p�J�
�C�p�j+c��
�sC��T��7]���[,�~�rku��|�VcÁhU8�w�Ĩ��)��2s7oi1fK�K�
�(c"��G,�\�����(��K��]����B ��~�8ebc�����)�FA!���T�l�|��;��O+�L!q�b&�u��7`��4^�Y^���h�5ORxP#���������jnxx�b[D�+c��`LO�+�`
Y+5P~c��΁��\%����Āuj��3���U��ٽxA������4��X܇��.�m��s�I��ګ#��6Ip+�|n#/38u(��8�Ě����AgIG�mN{'�z�:4��L;b�d�ɚB"�ѱ',��A������m��v�*B�:���ߥ�HX����o�`�+��Ԇ�5Ȧ�>H���dHD���Y[�x���I�P3&���˄�(�3T;?���^��&�xo�����\���2���˲~YIAe�!:�=�j�V��a��]�Z�������Y��:�<�7%�J�|r�PWI|}Yf5��l�[�J�U{T���v����ێ/��@�+V��҇��}<Ծa�Z����ɉLF21����`���7����!�w�y9N��;��@+�y*�5�dyQx\��[7^�	I��b�dSP����-H�Q*PE����/4���=	H�Gq:�����x�����l Po��R�J��m�G���K(�[C)�k�a[�ֽR��s>��, � l�а��qPF��ܠi�*6`��n�?M���	����c2�^�8S�ɷQj���#A��Q�^'�~QN=sn��ar���9�sΐ�0��o�-����I���VUa���Ȳy~��C+�!`���G׌\��[L�5�GV �UX*�>>R���.~�,���j�v`��8N�~��R3�e�[� ��6�P�{�9�X{�k@����}�`�3�h�  �����j�Sժyx;6��+q��y��9�8�!#e�+�`� *î_�E|.�N�����Mn� �7���Y��%��?|?Oq&�Y ����']r�������'��j��G�ϗ�|�q��OnI�8��a�!�[J�lj�ҝl��-!���9̓L�����u�H���?�������%�ɩ�X5�Ak5��i�����m��öz����m�|Q�-��2��(Pܚ�-�K}&O��V̝�F��!ʆD�| ,��ԩ�,ӷy��?�'�{������y��3���v[+k��H��]l�����F�K9~n���Vt�Y$�:�>jhh���M��<�N��vq� =�Y�����]-{����Yq�/�9�o�F>�v�3E.�Y��^�m���Wy��R�;���n����#/afY�rP5�l�'���V��ܹ�����c\,sUn��f�P/����}��0�A��$�-T�Lv���x)���#�E"�RD�IY���#P@���P/Z��*+:�;cQ$D�����DT�m�����a!;�$���W�BO��Ș�F�O?	ϛ�Ti�R��|б�z[`��D�-=�����5� �6    �)�G�G�����w�-�}���l]��Cxh/*P�9��t)1�fgω};��uP�q���
���{s9sR1�_30 ���.�,g� Y���a�hM]eX�xUV�����6�lvv���`�>D��%����tq��D��;��G?��"♫�d���/,^@���5����.���%�\�8'�^�J��16<P�+᭧�|����Z�  p�	J*��(r�P�U��ߎU����4�ejŞu�������A<�}_�.�t�gc��ge\�Z��mu�R����/�h��s�9_��r^��"�-� j���^P�l������^�"r�yߡ�����gE�J���$�Ӻ��2���3�>�w�<���X�հ����	=�����)�\������������C���~"��fDl�>P#ߩ�h�ϫ�_͡�7l܎�K��o����x���J��[�b��zO��������`]�2{O�@��-�w@�����cR)�߭@��L�K՘p�aQ�`Tv�[�͘�x��NZ��VaA��G���@���D����32r��
�\�'j�S�������.��K�i�]��Ն���JUbJ�U�\v�9%������H�4(3^H�����B�~�j�K篌��;V­ V�E�bӳ6�7��'�/�*����e�>���������ּ�����s�s�'���:WcA�媐>!��=3L%�L�X�:EXڞ�����B��X}^h���5Ԭ{�3����*\'�a��%?y�x�1����%��q�ab\��!*W�Þ��)���v���p*�i4�o셰�����j[n�K�%+����	������K�(w'��B��o���2�~x��X� ����c7��u��Vm��A�'�[���z'(��\�(���d~PF�fk9�6�pɰ��&�䄕��Vs�E��Vsuߌ�]~l7�b�nHpk_��Sڊ�3��,��%z�����,����U� 
S��l=���ݮ�����5h����;�����&��qo�a1-���]�<7~���O~�����XHb��I�B�_�|����}�j�ǀ_@Ѓ��Gర����zx�4`n.Dx����d�B���HY��v�'u�s��~�gXTaG�I{<v~�)R�/L���H�qG������D~��c�Z�g��Z_�1ކ��c�C���<:�8�&����5���4/<3M�eV5j�!\ G���%���yY�l�^��x�hòsj�_.�KZ��cC���8��.�Y��'��	\tʺn�	�f��܍�k�=�˨��x�䫔c/���>��\p.")���+w%�C��;�c"+E,���< �ڞ%,���B'?|
/���8"ᙧ��)�O~=�������?.,�!�tİ��7�{�o�;|5-��~��q��vYZ��g�d����",ؿ�ӳ7gT*�wF�0r�%`�&A�PP0Uh��,�)�qg;�y �''���H�XO.�.h�����{I�o9�$�:a�#)�6��Ϝ��)E3�w��6��sk,B�s<���j!�MW��z��Z�{����U_f�gC�:
�D91���j��a5�ki�yYXЛ�#�M LA�D�D���C�x~����Q�J�l�rK-F���0K�� �v���3����&#`1˒Rp�����Ր��͞N~"����?�4�.L�C�'�����5(�a2�_=��=P�ۮ7���� ��}ᎄ-�Qi5"	�ڌq�Ub���m����v+w�K0���~hI��$Tr^��H+&0��a)_�5!�}f`�CJO����`2b6�NϿ#�U�_}؂�.,R�R�0���4B������W`�t~���9����Me�qx���,@��G�Ý��@9�t�"���O��A���eN8�/.d�/�Q�� �C���Z���_!���O��0A�u�v����x˨�_�
�I�|�&#R.���e?G�\+
�V��- ��&>�4����e)G�9�G�<*����t,%�@�ǎ����6p���ݣ[�������9#�{\��z[�6���Ǚ-��Y��;ϖ��k��� g���?�S9�v�s�J���at�Y��v�3���ы5�n1�y�&aA_��³~@'�=�������b���z+��z�3��̘
���\,��'�W��{�6��ցG��|�=2�w����yfہ�����$��~�����l/%�?v���$ꘇ+2΃�Hۅ�**"� 	�L�ϱ�\���Fv�*(D~G��7#F�$`	4��-��>*|3����	b�MD��-J���+߀��@*�@i/a�@�!�"!3Y����wV��
kds�7�}"���J������B�A�>��aW����T�Ҁ����x:ư�/�z����O��gT� UWx[�Vw���sxzPQ��l������S��%��鹓����3N��1���B�D���_o�g�*�l�-��=�l��z� 
ѧ�x~n�B#�����`B�u�[i �m~jGk��y|�v���-���P;���j����l�}��j�KN6��m=�G���_��S8B6�8+�6�ۻB! �濦�#�N�P�o�; �ߏ���-?����M�r�L�RЈ�*ʬZF��#K%�'*Ly ���e��X��Q�����f �b��R�����ӿM��T9	�l�\�O���$#��2]�@�X������d�17�F�H���#��c�=�������m_�\P���Q�@�c��P�y��ze@؁�0�&M!U�7��K�7o�s�1g��h��0�E",M�Q ��G���]� 9��s���|��%	Ŝ
kL�艫�	rR�=RH��mA�k�!�=! �TVE��ь�ķs��K<8|����~E��gp8�,$#YJ<���'8��<����u;M!BB��үX$v���$9����@�6��A
<��Nz��-�����QCX�d���[e8�G�ݝa96���X�'ਜ਼�S��c�Qbf55Ґ��W��j�;�O��m���$��$��B����|uxʽ�h7DN�H�aXyP<Z!��Jwb#�OO��a���>��e	b�&�u�5�h1|��x&�]컬����ܫ�9\{������O�B�6m�|�y�`�p�/
������Z*�\�����(A?���ӍOq�,o�u	"�ߛ�� (#���DrX!��e�c��.W��s;9p�"��6�$[i
םZ��n�A�(Ěx�vU��m�()Nm+���_5#�줁�sg��]��چ1e�!EW�n�93���
�r�IQ�{��E֋E�u��`�k,ݑ��^^:?YX��j�]���3i�����G�ͅ�ܹ��&G�w��$Q~��8'rg�E�$��)V�VZ��`�%W(D�����|}�4���Sxº?t�	��;`�I\�d#�u�DDޮ��v�)&j�B
�􄈩fS'��}#e���?Yg ��y�(o���E�Zĵ�H~�Re �ל2ȎG�V&K^�1"����r�	�¸<�JH��,tKW;?�d�U���H�ݍ-8Q� W0��y�����, \���*ȭ�!Or!���������� �cT����%��p�˦�!�0#��q"��0���&��MPRXG�]SV�/�����:)1g	��c�D�!b����5l'�RfjɉEV������  hM2jف���apx��t)��n!^����5L�P�5���.A ?�/.�ܗ~v���e�7�0��6�����/�'Fq���8�~T����j��{�#@M��3s-|�$&Լ��ӯ�!���{�eݚ����|
cal�20�^;( v�pb��[���	V�7�n�p�R2W{Ȱ�~Fm���G9���K�EE��Ӕ�fE��ݰ�h����ɾ.m7_�����!�؋+��n���֙�m��Ov9��}폭�+�}E����A�N!�
�ś����S$����|ka�L&% <  4k6{o���<������G W���?��T=g�-I����x/��O~���#�dcf�<��h,po�k�-�Q;#��d����3,����-��N�E�Fܾ;X�!�l@�����3�����+�g?~r�'����bW����žK��� 0��9��e1�Zǀ.
�������q�ϓ拚����½��Ţ4Z�_��p���m� >�Ѱ�1x'l�X
K`�Ć0��#��:0�$G�k�~2T��*��z���g�
@��~�}�b)��W(9d�LeY���ʜJLѮA�,R�[U!mL�ĕ�L�*V���K�H��E����	�l=}��MM�Q%ܓXO$Ռm�Ƌ�����}y��BH�y�^�@1݄Igќm�MM��Gɡ�`K��/J��`OIDp12$����>����m��K���Do�V�O�CX(��O#C�$f����d"(���]����	����+,WA��y� ���%�e���#�aH2,����=��������`��eVp!c�0�����e�c*�%������U����q),J_�.�]��H;�քb|�tw��fm�pٕ��5�N�A�;�>N Y���t(#0��)����=;�ľ^|`�I��5�B��}���~�o���d i��xl��d�!!�xOC2"rO�Z%�� ������ǵ��0d��mI&k?��[���������4{��aa�=ۘ_=>��OUm��n�\��e�=�9������$��z@����{+�}X�M�꾳�"�7A��i7y �<=�^��(���aǍ,��0���h�����$����QeN'�����&��m�O���Ah�B�X^�v1l�Z&a?�[fk�_�����q����y��7���n���0k����.f���'�L"^� ��h9�&H�u0�~/&�O/�R���CK�8�P�h��HfQ�QR�U��w~tXT  �x��jK�7��)��� �k\��1B)��44���
.'��B��_N����?A��4�I��<����ä�3|��p��u?�D/N��($$3,��5����8=uv�ThVj��4����`D�Bj!��%�b���$,D_@��&��	]�o�D2�(rh�R�.��j+�4�=Yb�'��D���<v0͢z���ol|���xb��u����e���������k1p�Q-�H���ۋ�b����>�W�An��寧��r6�I�����6���ז�G����,D!�4�>0�۩j)��jR�p�)9��I9�F����4�E3�����_H{w���o;-���w����T#ޔ�n1�'	/!������N��_Sג�0D��0�P=�O��(nZ"5 �Trߛ7S\fZ��d�a�rV�d.�Y��?��2�|�6a��/������1�W�]=�0k1>�%���ٿ�n�D�gm�F�A���w�7�;pu�nH�K&�OU��Q�S��lH0��3��S"�uq!*����UG(\A�!3�ι�,������/Fj�P�g<j�vɳ�B�i���1���+�      $      x������ � �      %      x������ � �      &   '  x�uV˲�8]���]VL᷽�`���؆Ej6¨���uG6,��9l��ds/:�n�t�n�b�Y˳h:�
Y�Zr/�fq-ږ7' �⢚N�xM��J5�m��~ ڒ�b�v�x]����s��c�/�WYcu���]���,���.U[qD�s
X�V���LV�QC��BX:9:BI�o��%�R~���9�K����lX$1Y�Aj�u|?�LK���$�f	b]� �,$k����=�2l�l�ra�g~Ql�.G�O_��D"�(UɊ,�%�VgP�_Lf'��p�Lvd�x�ظ��l&q���	�`�w�B�h�V�b�YAV\6'پ��d�pR�@
�
�O�m�;0h[�����l��Ny�"��+X��� �G֓�B��]��¡���s�=,��jإ$��w�M6k~4�J�����n���o�C�����Ȏ �!F
r�Y�|�3��䀳V�j�����{m�z)ݒ�yӼ<䲅ЗA��9��4ןJ���㳅D�b��bEN��|6��,�bINLC� �ϱRr"�Ъ�p�5�K�9�3�D[��S����rN�ŖJ˻	�嵖�`,'K��ώ\�-�5��϶D<��.���6�l���򽴰*�E�i�a�EF���S�Kr�U%z�k�1|@�r�Sr#D�)ݼ�^�7��I�]1B,��V;�ɳQ�Jh��/�&%��{�a�%��Q6���#m
�<�:DhQ���$�gq�jb�-O�I��Y s�ʑl6s�B���k�d7�!���T{�#T=EC���o�-�@%�M��ɷ�$�h�l�a۫ңsn��lg*�v��%���G���7�hW�ﳝ���cһ���e�d����W�C`��W�Dd8aT_>�0�g0�~�hف�eB_M��/�n͖� [̌�^��N��8�T���#�S�"#Ѕ��;�x����g+
|uJ�В�T�����7V�� �U��k$��; e����(������[.��B �����c
m�5}ϻ�G�R���租"�)tY������Wz@.�߯�[
}fV�3~R��M���1��@��7o��F��b㫧((�ay{L�~n(���}~�E60ͫq���"��\��*v��D�����4eL��J42��K��S��_�*4����ih�!C���PfEϻ��Wt���lfL7�Y*�C�*E��I@%n���'�G�������
O 1���f沗w��a��JE�|c�̓idHa�����A��9�y$�������<t��:H�ѣz)耗^_��@��Z��1~"p����� @-      '   '   x�3766���q�wt����2766��C�]��b���� ��9      (   =   x�376���LN-+-I�276��HLO��8���
��ˠB��N9��� ^� O~�      )      x�3766�4766����� S[      *   h   x�3766���LL���sH��M���K���,��%����D����{��:';�$���{�U�T�y��%���zF�V�x�y�d�WB������ O+     