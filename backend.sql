PGDMP         -        	    
    y            backend    13.4    14.0 -    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    18225    backend    DATABASE     \   CREATE DATABASE backend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE backend;
                gelum    false            ?            1259    19672    comments    TABLE     ?   CREATE TABLE public.comments (
    id integer NOT NULL,
    productid integer NOT NULL,
    userid integer NOT NULL,
    messages character varying
);
    DROP TABLE public.comments;
       public         heap    gelum    false            ?            1259    19670    comments_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          gelum    false    208            ?           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          gelum    false    207            ?            1259    19816    notification    TABLE     ?   CREATE TABLE public.notification (
    id integer NOT NULL,
    userid integer NOT NULL,
    messages character varying,
    createdat timestamp without time zone DEFAULT CURRENT_DATE,
    touser integer
);
     DROP TABLE public.notification;
       public         heap    gelum    false            ?            1259    19814    notification_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.notification_id_seq;
       public          gelum    false    210            ?           0    0    notification_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.notification_id_seq OWNED BY public.notification.id;
          public          gelum    false    209            ?            1259    18236    products    TABLE     ?   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    price double precision,
    user_id integer NOT NULL,
    description character varying
);
    DROP TABLE public.products;
       public         heap    gelum    false            ?            1259    18234    products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          gelum    false    204            ?           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          gelum    false    203            ?            1259    18249    rating    TABLE     ?   CREATE TABLE public.rating (
    isliked boolean,
    productid integer NOT NULL,
    userid integer NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.rating;
       public         heap    gelum    false            ?            1259    18247    rating_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rating_id_seq;
       public          gelum    false    206            ?           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
          public          gelum    false    205            ?            1259    18228    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying,
    password character varying,
    email character varying
);
    DROP TABLE public.users;
       public         heap    gelum    false            ?            1259    18226    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          gelum    false    202            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          gelum    false    201            ?            1259    16703    users_sequence    SEQUENCE     x   CREATE SEQUENCE public.users_sequence
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.users_sequence;
       public          gelum    false            L           2604    19675    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          gelum    false    208    207    208            M           2604    19819    notification id    DEFAULT     r   ALTER TABLE ONLY public.notification ALTER COLUMN id SET DEFAULT nextval('public.notification_id_seq'::regclass);
 >   ALTER TABLE public.notification ALTER COLUMN id DROP DEFAULT;
       public          gelum    false    210    209    210            J           2604    18239    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          gelum    false    203    204    204            K           2604    18252 	   rating id    DEFAULT     f   ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);
 8   ALTER TABLE public.rating ALTER COLUMN id DROP DEFAULT;
       public          gelum    false    205    206    206            I           2604    18231    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          gelum    false    201    202    202            ?          0    19672    comments 
   TABLE DATA                 public          gelum    false    208   [/       ?          0    19816    notification 
   TABLE DATA                 public          gelum    false    210   ?/       ?          0    18236    products 
   TABLE DATA                 public          gelum    false    204   ?0       ?          0    18249    rating 
   TABLE DATA                 public          gelum    false    206   w1       ?          0    18228    users 
   TABLE DATA                 public          gelum    false    202   ?1       ?           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 13, true);
          public          gelum    false    207            ?           0    0    notification_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.notification_id_seq', 51, true);
          public          gelum    false    209            ?           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          gelum    false    203            ?           0    0    rating_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rating_id_seq', 59, true);
          public          gelum    false    205            ?           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 10, true);
          public          gelum    false    201            ?           0    0    users_sequence    SEQUENCE SET     =   SELECT pg_catalog.setval('public.users_sequence', 1, false);
          public          gelum    false    200            R           2606    18241    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            gelum    false    204            T           2606    18254    rating rating_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (userid, productid);
 <   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pkey;
       public            gelum    false    206    206            P           2606    18233    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            gelum    false    202            Y           2606    19789    comments comment_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comment_user_id_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public.comments DROP CONSTRAINT comment_user_id_fkey;
       public          gelum    false    202    208    3152            Z           2606    19825    notification fk_user_id    FK CONSTRAINT     u   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_user_id FOREIGN KEY (userid) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.notification DROP CONSTRAINT fk_user_id;
       public          gelum    false    3152    210    202            X           2606    19748     comments products_productid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT products_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id) ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public.comments DROP CONSTRAINT products_productid_fkey;
       public          gelum    false    208    204    3154            U           2606    19715    products products_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT products_user_id_fkey;
       public          gelum    false    3152    202    204            V           2606    19738    rating rating_productid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id) ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_productid_fkey;
       public          gelum    false    204    206    3154            W           2606    18260    rating rating_userid_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_userid_fkey;
       public          gelum    false    3152    202    206            ?   w   x???v
Q???W((M??L?K???M?+)V??L?Q((?O)M.1K?S?@tnjqqbzj??B??O?k?????????????zQ*Pb^Jj???5?'u?lFC??????xc?sq ??wz      ?   ?   x??ұj?0???Oq[P?N?e˙:d0???Q??"[????צ?J)?????僻??m?д?8??Goh??F'zXzK`?n?w?b??.0???Y??0?<???mw?? X??q???h?u???8??
g׈k? y?D??J?S??M??=??e}?????U?i)s???sU?_P?պ3??u?O?%??P?J)??I
??D??9?RU(?$Y?K?      ?   ?   x???v
Q???W((M??L?+(?O)M.)V??L?Q?K?M?Q((?LR?ũE? є????̂???<M?0G?P?`C? ?fCuC# sA(6T״?򤢝F??4?????OS???0;?P?4???f`?	?Nv????? ???      ?   t   x???v
Q???W((M??L?+J,??KW??,???NM?Q((?O)M.?2K?S?@tf??B??O?k??FIQi????????????5?'?f?%???MjNC!5???h& d?NR      ?   ?  x???I??0?{?
]ewU?"Ps?H?,?,?MV?b ??i??..s??U*y??K??;ɴE??j}?d[G?&^??????1?ވ?X׸DcQ~L?+??T[?/?1?????zf????C?ě???[???]׮???KIa?bOM?>??5?yuaz$}'??mA?v???I?_ ?{??|?̌F׮;Pp?E?@s?㤗???r[܄-#???????|[uǼ??C??;? ??I??JNo??%????[K???u??s7??1粱??X?;Wr?????C???p2
?ݔ$@T?`??k??p?b?T? D-?g(??P??n&??8A?aK?????????p????ĕ?	?
Gnk??.????ff????d?<????8????-???e??)X?????ek½V	?ie???Ia???????w???1#??[???/?c왺yQؖrGC??$??8?u{>?zZ??n^?-???y?MT7
w?x??i??@(??<?K?^fŅli+K&?@
??0??ƈ?7>??[?D~@?&?2?K?R	??????n??U?J6???	?;?w??lXN4??w2?=X/????|.?v???E??????y?h?[$?	MVb!??-??VJ???? ?     