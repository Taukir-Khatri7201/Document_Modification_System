PGDMP     6    '                y            systemdb    13.2    13.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    34756    systemdb    DATABASE     l   CREATE DATABASE systemdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE systemdb;
                postgres    false            �            1259    35177 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    35175    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    35187    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    35185    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    35169    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    35167    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    35195 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    35205    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    35203    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    35193    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            �            1259    35213    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    35211 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            �            1259    35273    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    35271    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    35159    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    35157    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    35148    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    35146    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    35525    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    35304 
   dms_aadhar    TABLE     �  CREATE TABLE public.dms_aadhar (
    "Aadhar_Number" bigint NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Age" integer NOT NULL,
    "Sex" character varying(6) NOT NULL,
    "DOB" date NOT NULL,
    "Mobile_NUmber" bigint NOT NULL,
    "Enrollment_Number" bigint NOT NULL,
    "QR_code" character varying(100) NOT NULL,
    "Bar_Code" character varying(100) NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    pincode integer NOT NULL,
    "fp_Actualdata" character varying(100) NOT NULL,
    "fName" character varying(50) NOT NULL,
    "lName" character varying(50) NOT NULL,
    "mName" character varying(50) NOT NULL
);
    DROP TABLE public.dms_aadhar;
       public         heap    postgres    false            �            1259    35546    dms_aadhar_status    TABLE     �  CREATE TABLE public.dms_aadhar_status (
    id integer NOT NULL,
    "Actual_AadharNo" bigint NOT NULL,
    "AadharNo" character varying(10) NOT NULL,
    "FirstName" character varying(10) NOT NULL,
    "MidName" character varying(10) NOT NULL,
    "LastName" character varying(10) NOT NULL,
    "Street" character varying(10) NOT NULL,
    city character varying(10) NOT NULL,
    pincode character varying(10) NOT NULL,
    address_proof character varying(10) NOT NULL,
    "Sex" character varying(10) NOT NULL,
    "Mobile_Number" character varying(10) NOT NULL,
    "DOB" character varying(10) NOT NULL,
    birth_proof character varying(10) NOT NULL
);
 %   DROP TABLE public.dms_aadhar_status;
       public         heap    postgres    false            �            1259    35544    dms_aadhar_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_aadhar_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.dms_aadhar_status_id_seq;
       public          postgres    false    253                       0    0    dms_aadhar_status_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.dms_aadhar_status_id_seq OWNED BY public.dms_aadhar_status.id;
          public          postgres    false    252            �            1259    35314    dms_aadharq    TABLE     -  CREATE TABLE public.dms_aadharq (
    id integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "MidName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    pincode integer NOT NULL,
    "AadharNo" bigint NOT NULL,
    "DOB" date NOT NULL,
    "Mobile_Number" bigint NOT NULL,
    "Sex" character varying(6) NOT NULL,
    address_proof character varying(100) NOT NULL,
    birth_proof character varying(100) NOT NULL
);
    DROP TABLE public.dms_aadharq;
       public         heap    postgres    false            �            1259    35312    dms_aadharq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_aadharq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dms_aadharq_id_seq;
       public          postgres    false    220                       0    0    dms_aadharq_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dms_aadharq_id_seq OWNED BY public.dms_aadharq.id;
          public          postgres    false    219            �            1259    35322 	   dms_admin    TABLE     �   CREATE TABLE public.dms_admin (
    id integer NOT NULL,
    eid integer NOT NULL,
    ename character varying(100) NOT NULL,
    city character varying(100) NOT NULL
);
    DROP TABLE public.dms_admin;
       public         heap    postgres    false            �            1259    35320    dms_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dms_admin_id_seq;
       public          postgres    false    222                       0    0    dms_admin_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dms_admin_id_seq OWNED BY public.dms_admin.id;
          public          postgres    false    221            �            1259    35473    dms_admininfo    TABLE     L  CREATE TABLE public.dms_admininfo (
    id integer NOT NULL,
    "EmpId" character varying(100) NOT NULL,
    "fName" character varying(50) NOT NULL,
    "mName" character varying(50) NOT NULL,
    "lName" character varying(50) NOT NULL,
    "DocName" character varying(100) NOT NULL,
    "Image" character varying(100) NOT NULL
);
 !   DROP TABLE public.dms_admininfo;
       public         heap    postgres    false            �            1259    35471    dms_admininfo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_admininfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dms_admininfo_id_seq;
       public          postgres    false    248                       0    0    dms_admininfo_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dms_admininfo_id_seq OWNED BY public.dms_admininfo.id;
          public          postgres    false    247            �            1259    35427    dms_drivinglicence    TABLE     �  CREATE TABLE public.dms_drivinglicence (
    id integer NOT NULL,
    "LicenceNo" character varying(15) NOT NULL,
    "Pic" character varying(100) NOT NULL,
    "DateOfFirstIssue" date NOT NULL,
    "DOB" date NOT NULL,
    "contactInfo" bigint NOT NULL,
    validity integer NOT NULL,
    "Personal" boolean NOT NULL,
    "Commercial" boolean NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    "pinCode" integer NOT NULL,
    "AadharNo_id" bigint NOT NULL,
    "fName" character varying(50) NOT NULL,
    "lName" character varying(50) NOT NULL,
    "mName" character varying(50) NOT NULL
);
 &   DROP TABLE public.dms_drivinglicence;
       public         heap    postgres    false            �            1259    35425    dms_drivinglicence_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_drivinglicence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.dms_drivinglicence_id_seq;
       public          postgres    false    246                       0    0    dms_drivinglicence_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.dms_drivinglicence_id_seq OWNED BY public.dms_drivinglicence.id;
          public          postgres    false    245            �            1259    35330    dms_imagemodel    TABLE     �   CREATE TABLE public.dms_imagemodel (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    "AadharNo" bigint NOT NULL
);
 "   DROP TABLE public.dms_imagemodel;
       public         heap    postgres    false            �            1259    35328    dms_imagemodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_imagemodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dms_imagemodel_id_seq;
       public          postgres    false    224                       0    0    dms_imagemodel_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dms_imagemodel_id_seq OWNED BY public.dms_imagemodel.id;
          public          postgres    false    223            �            1259    35338    dms_licenceq    TABLE     �  CREATE TABLE public.dms_licenceq (
    id integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "MidName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    pincode integer NOT NULL,
    "DOB" date NOT NULL,
    "Mobile_NUmber" bigint NOT NULL
);
     DROP TABLE public.dms_licenceq;
       public         heap    postgres    false            �            1259    35336    dms_licenceq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_licenceq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.dms_licenceq_id_seq;
       public          postgres    false    226                       0    0    dms_licenceq_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.dms_licenceq_id_seq OWNED BY public.dms_licenceq.id;
          public          postgres    false    225            �            1259    35419    dms_pancard    TABLE     �  CREATE TABLE public.dms_pancard (
    id integer NOT NULL,
    "QR_code" character varying(100) NOT NULL,
    "PRNnumber" character varying(15) NOT NULL,
    "DOB" date NOT NULL,
    signature character varying(100) NOT NULL,
    pic character varying(100) NOT NULL,
    "AadharNo_id" bigint NOT NULL,
    "fName" character varying(50) NOT NULL,
    "lName" character varying(50) NOT NULL,
    "mName" character varying(50) NOT NULL
);
    DROP TABLE public.dms_pancard;
       public         heap    postgres    false            �            1259    35417    dms_pancard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_pancard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dms_pancard_id_seq;
       public          postgres    false    244                       0    0    dms_pancard_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dms_pancard_id_seq OWNED BY public.dms_pancard.id;
          public          postgres    false    243            �            1259    35346    dms_pancardq    TABLE     �   CREATE TABLE public.dms_pancardq (
    id integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "MidName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "DOB" date NOT NULL
);
     DROP TABLE public.dms_pancardq;
       public         heap    postgres    false            �            1259    35344    dms_pancardq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_pancardq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.dms_pancardq_id_seq;
       public          postgres    false    228                       0    0    dms_pancardq_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.dms_pancardq_id_seq OWNED BY public.dms_pancardq.id;
          public          postgres    false    227            �            1259    35408 
   dms_ration    TABLE     |  CREATE TABLE public.dms_ration (
    id integer NOT NULL,
    "QR_code" character varying(100) NOT NULL,
    "HOF_name" character varying(100) NOT NULL,
    "HOF_relation" character varying(50) NOT NULL,
    "Father_or_Husband" boolean NOT NULL,
    "name_F_or_H" character varying(100) NOT NULL,
    "dealersName" character varying(100) NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    "pinCode" integer NOT NULL,
    "AadharNo_id" bigint NOT NULL,
    "fName" character varying(50) NOT NULL,
    "lName" character varying(50) NOT NULL,
    "mName" character varying(50) NOT NULL
);
    DROP TABLE public.dms_ration;
       public         heap    postgres    false            �            1259    35406    dms_ration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_ration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dms_ration_id_seq;
       public          postgres    false    242                       0    0    dms_ration_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dms_ration_id_seq OWNED BY public.dms_ration.id;
          public          postgres    false    241            �            1259    35354    dms_rationq    TABLE       CREATE TABLE public.dms_rationq (
    id integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "MidName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    pincode integer NOT NULL,
    "HOF_name" character varying(100) NOT NULL,
    "HOF_relation" character varying(50) NOT NULL,
    "Father_or_Husband" boolean NOT NULL,
    "name_F_or_H" character varying(100) NOT NULL,
    "DOB" date NOT NULL
);
    DROP TABLE public.dms_rationq;
       public         heap    postgres    false            �            1259    35352    dms_rationq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_rationq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dms_rationq_id_seq;
       public          postgres    false    230                       0    0    dms_rationq_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dms_rationq_id_seq OWNED BY public.dms_rationq.id;
          public          postgres    false    229            �            1259    35365 
   dms_signup    TABLE     �   CREATE TABLE public.dms_signup (
    id integer NOT NULL,
    "Aadhar_Number" bigint NOT NULL,
    "fp_User" character varying(100) NOT NULL
);
    DROP TABLE public.dms_signup;
       public         heap    postgres    false            �            1259    35481    dms_signup1    TABLE     �   CREATE TABLE public.dms_signup1 (
    id integer NOT NULL,
    "EmpId" character varying(100) NOT NULL,
    "fp_User" character varying(100) NOT NULL
);
    DROP TABLE public.dms_signup1;
       public         heap    postgres    false            �            1259    35479    dms_signup1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_signup1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dms_signup1_id_seq;
       public          postgres    false    250                       0    0    dms_signup1_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dms_signup1_id_seq OWNED BY public.dms_signup1.id;
          public          postgres    false    249            �            1259    35363    dms_signup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_signup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dms_signup_id_seq;
       public          postgres    false    232                       0    0    dms_signup_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dms_signup_id_seq OWNED BY public.dms_signup.id;
          public          postgres    false    231            �            1259    35397    dms_user    TABLE     F  CREATE TABLE public.dms_user (
    id integer NOT NULL,
    "AppId" integer NOT NULL,
    message_senders_id integer NOT NULL,
    message_senders_name character varying(100) NOT NULL,
    message character varying(200) NOT NULL,
    "System_message" character varying(200) NOT NULL,
    "Aadhar_Number_id" bigint NOT NULL
);
    DROP TABLE public.dms_user;
       public         heap    postgres    false            �            1259    35395    dms_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.dms_user_id_seq;
       public          postgres    false    240                        0    0    dms_user_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.dms_user_id_seq OWNED BY public.dms_user.id;
          public          postgres    false    239            �            1259    35373    dms_userlogin    TABLE     �   CREATE TABLE public.dms_userlogin (
    id integer NOT NULL,
    "AadharNo" bigint NOT NULL,
    password character varying(100) NOT NULL
);
 !   DROP TABLE public.dms_userlogin;
       public         heap    postgres    false            �            1259    35371    dms_userlogin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_userlogin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dms_userlogin_id_seq;
       public          postgres    false    234            !           0    0    dms_userlogin_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dms_userlogin_id_seq OWNED BY public.dms_userlogin.id;
          public          postgres    false    233            �            1259    35389    dms_voterid    TABLE     *  CREATE TABLE public.dms_voterid (
    id integer NOT NULL,
    "Bar_Code" character varying(13) NOT NULL,
    "Pic" character varying(100) NOT NULL,
    "FathersName" character varying(100) NOT NULL,
    "DOB" date NOT NULL,
    "Sex" character varying(6) NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    "pinCode" integer NOT NULL,
    "AadharNo_id" bigint NOT NULL,
    "fName" character varying(50) NOT NULL,
    "lName" character varying(50) NOT NULL,
    "mName" character varying(50) NOT NULL
);
    DROP TABLE public.dms_voterid;
       public         heap    postgres    false            �            1259    35387    dms_voterid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_voterid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dms_voterid_id_seq;
       public          postgres    false    238            "           0    0    dms_voterid_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dms_voterid_id_seq OWNED BY public.dms_voterid.id;
          public          postgres    false    237            �            1259    35381    dms_voteridq    TABLE     �  CREATE TABLE public.dms_voteridq (
    id integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "MidName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Street" character varying(100) NOT NULL,
    city character varying(50) NOT NULL,
    pincode integer NOT NULL,
    "DOB" date NOT NULL,
    "FathersName" character varying(100) NOT NULL,
    "Sex" character varying(6) NOT NULL
);
     DROP TABLE public.dms_voteridq;
       public         heap    postgres    false            �            1259    35379    dms_voteridq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dms_voteridq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.dms_voteridq_id_seq;
       public          postgres    false    236            #           0    0    dms_voteridq_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.dms_voteridq_id_seq OWNED BY public.dms_voteridq.id;
          public          postgres    false    235            �           2604    35180    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    35190    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    35172    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    35198    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    35208    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    35216    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    35276    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    35162    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    35151    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    35549    dms_aadhar_status id    DEFAULT     |   ALTER TABLE ONLY public.dms_aadhar_status ALTER COLUMN id SET DEFAULT nextval('public.dms_aadhar_status_id_seq'::regclass);
 C   ALTER TABLE public.dms_aadhar_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    35317    dms_aadharq id    DEFAULT     p   ALTER TABLE ONLY public.dms_aadharq ALTER COLUMN id SET DEFAULT nextval('public.dms_aadharq_id_seq'::regclass);
 =   ALTER TABLE public.dms_aadharq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    35325    dms_admin id    DEFAULT     l   ALTER TABLE ONLY public.dms_admin ALTER COLUMN id SET DEFAULT nextval('public.dms_admin_id_seq'::regclass);
 ;   ALTER TABLE public.dms_admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    35476    dms_admininfo id    DEFAULT     t   ALTER TABLE ONLY public.dms_admininfo ALTER COLUMN id SET DEFAULT nextval('public.dms_admininfo_id_seq'::regclass);
 ?   ALTER TABLE public.dms_admininfo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            �           2604    35430    dms_drivinglicence id    DEFAULT     ~   ALTER TABLE ONLY public.dms_drivinglicence ALTER COLUMN id SET DEFAULT nextval('public.dms_drivinglicence_id_seq'::regclass);
 D   ALTER TABLE public.dms_drivinglicence ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            �           2604    35333    dms_imagemodel id    DEFAULT     v   ALTER TABLE ONLY public.dms_imagemodel ALTER COLUMN id SET DEFAULT nextval('public.dms_imagemodel_id_seq'::regclass);
 @   ALTER TABLE public.dms_imagemodel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    35341    dms_licenceq id    DEFAULT     r   ALTER TABLE ONLY public.dms_licenceq ALTER COLUMN id SET DEFAULT nextval('public.dms_licenceq_id_seq'::regclass);
 >   ALTER TABLE public.dms_licenceq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    35422    dms_pancard id    DEFAULT     p   ALTER TABLE ONLY public.dms_pancard ALTER COLUMN id SET DEFAULT nextval('public.dms_pancard_id_seq'::regclass);
 =   ALTER TABLE public.dms_pancard ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    35349    dms_pancardq id    DEFAULT     r   ALTER TABLE ONLY public.dms_pancardq ALTER COLUMN id SET DEFAULT nextval('public.dms_pancardq_id_seq'::regclass);
 >   ALTER TABLE public.dms_pancardq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    35411    dms_ration id    DEFAULT     n   ALTER TABLE ONLY public.dms_ration ALTER COLUMN id SET DEFAULT nextval('public.dms_ration_id_seq'::regclass);
 <   ALTER TABLE public.dms_ration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            �           2604    35357    dms_rationq id    DEFAULT     p   ALTER TABLE ONLY public.dms_rationq ALTER COLUMN id SET DEFAULT nextval('public.dms_rationq_id_seq'::regclass);
 =   ALTER TABLE public.dms_rationq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    35368    dms_signup id    DEFAULT     n   ALTER TABLE ONLY public.dms_signup ALTER COLUMN id SET DEFAULT nextval('public.dms_signup_id_seq'::regclass);
 <   ALTER TABLE public.dms_signup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    35484    dms_signup1 id    DEFAULT     p   ALTER TABLE ONLY public.dms_signup1 ALTER COLUMN id SET DEFAULT nextval('public.dms_signup1_id_seq'::regclass);
 =   ALTER TABLE public.dms_signup1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            �           2604    35400    dms_user id    DEFAULT     j   ALTER TABLE ONLY public.dms_user ALTER COLUMN id SET DEFAULT nextval('public.dms_user_id_seq'::regclass);
 :   ALTER TABLE public.dms_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    35376    dms_userlogin id    DEFAULT     t   ALTER TABLE ONLY public.dms_userlogin ALTER COLUMN id SET DEFAULT nextval('public.dms_userlogin_id_seq'::regclass);
 ?   ALTER TABLE public.dms_userlogin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    35392    dms_voterid id    DEFAULT     p   ALTER TABLE ONLY public.dms_voterid ALTER COLUMN id SET DEFAULT nextval('public.dms_voterid_id_seq'::regclass);
 =   ALTER TABLE public.dms_voterid ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    35384    dms_voteridq id    DEFAULT     r   ALTER TABLE ONLY public.dms_voteridq ALTER COLUMN id SET DEFAULT nextval('public.dms_voteridq_id_seq'::regclass);
 >   ALTER TABLE public.dms_voteridq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �          0    35177 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   �0      �          0    35187    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   1      �          0    35169    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   81      �          0    35195 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   5      �          0    35205    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   5      �          0    35213    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   <5      �          0    35273    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   Y5      �          0    35159    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   v5      �          0    35148    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   `6                0    35525    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    251   I8      �          0    35304 
   dms_aadhar 
   TABLE DATA           �   COPY public.dms_aadhar ("Aadhar_Number", "Image", "Age", "Sex", "DOB", "Mobile_NUmber", "Enrollment_Number", "QR_code", "Bar_Code", "Street", city, pincode, "fp_Actualdata", "fName", "lName", "mName") FROM stdin;
    public          postgres    false    218   f8                0    35546    dms_aadhar_status 
   TABLE DATA           �   COPY public.dms_aadhar_status (id, "Actual_AadharNo", "AadharNo", "FirstName", "MidName", "LastName", "Street", city, pincode, address_proof, "Sex", "Mobile_Number", "DOB", birth_proof) FROM stdin;
    public          postgres    false    253   �8      �          0    35314    dms_aadharq 
   TABLE DATA           �   COPY public.dms_aadharq (id, "FirstName", "MidName", "LastName", "Street", city, pincode, "AadharNo", "DOB", "Mobile_Number", "Sex", address_proof, birth_proof) FROM stdin;
    public          postgres    false    220   �8      �          0    35322 	   dms_admin 
   TABLE DATA           9   COPY public.dms_admin (id, eid, ename, city) FROM stdin;
    public          postgres    false    222   D9      �          0    35473    dms_admininfo 
   TABLE DATA           c   COPY public.dms_admininfo (id, "EmpId", "fName", "mName", "lName", "DocName", "Image") FROM stdin;
    public          postgres    false    248   a9      �          0    35427    dms_drivinglicence 
   TABLE DATA           �   COPY public.dms_drivinglicence (id, "LicenceNo", "Pic", "DateOfFirstIssue", "DOB", "contactInfo", validity, "Personal", "Commercial", "Street", city, "pinCode", "AadharNo_id", "fName", "lName", "mName") FROM stdin;
    public          postgres    false    246   ~9      �          0    35330    dms_imagemodel 
   TABLE DATA           ?   COPY public.dms_imagemodel (id, image, "AadharNo") FROM stdin;
    public          postgres    false    224   �9      �          0    35338    dms_licenceq 
   TABLE DATA              COPY public.dms_licenceq (id, "FirstName", "MidName", "LastName", "Street", city, pincode, "DOB", "Mobile_NUmber") FROM stdin;
    public          postgres    false    226   �9      �          0    35419    dms_pancard 
   TABLE DATA           �   COPY public.dms_pancard (id, "QR_code", "PRNnumber", "DOB", signature, pic, "AadharNo_id", "fName", "lName", "mName") FROM stdin;
    public          postgres    false    244   �9      �          0    35346    dms_pancardq 
   TABLE DATA           U   COPY public.dms_pancardq (id, "FirstName", "MidName", "LastName", "DOB") FROM stdin;
    public          postgres    false    228   �9      �          0    35408 
   dms_ration 
   TABLE DATA           �   COPY public.dms_ration (id, "QR_code", "HOF_name", "HOF_relation", "Father_or_Husband", "name_F_or_H", "dealersName", "Street", city, "pinCode", "AadharNo_id", "fName", "lName", "mName") FROM stdin;
    public          postgres    false    242   :      �          0    35354    dms_rationq 
   TABLE DATA           �   COPY public.dms_rationq (id, "FirstName", "MidName", "LastName", "Street", city, pincode, "HOF_name", "HOF_relation", "Father_or_Husband", "name_F_or_H", "DOB") FROM stdin;
    public          postgres    false    230   ,:      �          0    35365 
   dms_signup 
   TABLE DATA           D   COPY public.dms_signup (id, "Aadhar_Number", "fp_User") FROM stdin;
    public          postgres    false    232   I:                 0    35481    dms_signup1 
   TABLE DATA           =   COPY public.dms_signup1 (id, "EmpId", "fp_User") FROM stdin;
    public          postgres    false    250   �:      �          0    35397    dms_user 
   TABLE DATA           �   COPY public.dms_user (id, "AppId", message_senders_id, message_senders_name, message, "System_message", "Aadhar_Number_id") FROM stdin;
    public          postgres    false    240   �;      �          0    35373    dms_userlogin 
   TABLE DATA           A   COPY public.dms_userlogin (id, "AadharNo", password) FROM stdin;
    public          postgres    false    234   �;      �          0    35389    dms_voterid 
   TABLE DATA           �   COPY public.dms_voterid (id, "Bar_Code", "Pic", "FathersName", "DOB", "Sex", "Street", city, "pinCode", "AadharNo_id", "fName", "lName", "mName") FROM stdin;
    public          postgres    false    238   �;      �          0    35381    dms_voteridq 
   TABLE DATA           �   COPY public.dms_voteridq (id, "FirstName", "MidName", "LastName", "Street", city, pincode, "DOB", "FathersName", "Sex") FROM stdin;
    public          postgres    false    236    <      $           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            %           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            &           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 100, true);
          public          postgres    false    204            '           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            (           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    210            )           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            *           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    216            +           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 25, true);
          public          postgres    false    202            ,           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    200            -           0    0    dms_aadhar_status_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.dms_aadhar_status_id_seq', 1, false);
          public          postgres    false    252            .           0    0    dms_aadharq_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dms_aadharq_id_seq', 22, true);
          public          postgres    false    219            /           0    0    dms_admin_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dms_admin_id_seq', 1, false);
          public          postgres    false    221            0           0    0    dms_admininfo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dms_admininfo_id_seq', 1, false);
          public          postgres    false    247            1           0    0    dms_drivinglicence_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.dms_drivinglicence_id_seq', 1, false);
          public          postgres    false    245            2           0    0    dms_imagemodel_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dms_imagemodel_id_seq', 1, false);
          public          postgres    false    223            3           0    0    dms_licenceq_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dms_licenceq_id_seq', 1, false);
          public          postgres    false    225            4           0    0    dms_pancard_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dms_pancard_id_seq', 1, false);
          public          postgres    false    243            5           0    0    dms_pancardq_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dms_pancardq_id_seq', 1, false);
          public          postgres    false    227            6           0    0    dms_ration_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dms_ration_id_seq', 1, false);
          public          postgres    false    241            7           0    0    dms_rationq_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dms_rationq_id_seq', 1, false);
          public          postgres    false    229            8           0    0    dms_signup1_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dms_signup1_id_seq', 10, true);
          public          postgres    false    249            9           0    0    dms_signup_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dms_signup_id_seq', 7, true);
          public          postgres    false    231            :           0    0    dms_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.dms_user_id_seq', 1, false);
          public          postgres    false    239            ;           0    0    dms_userlogin_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dms_userlogin_id_seq', 1, false);
          public          postgres    false    233            <           0    0    dms_voterid_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dms_voterid_id_seq', 1, false);
          public          postgres    false    237            =           0    0    dms_voteridq_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dms_voteridq_id_seq', 1, false);
          public          postgres    false    235            �           2606    35302    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    35229 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    35192 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    35182    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    35220 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    35174 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205                       2606    35210 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213                       2606    35244 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            �           2606    35200    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            	           2606    35218 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215                       2606    35258 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215                        2606    35296     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211                       2606    35282 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    35166 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    35164 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    35156 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            :           2606    35532 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    251                       2606    35311    dms_aadhar dms_aadhar_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.dms_aadhar
    ADD CONSTRAINT dms_aadhar_pkey PRIMARY KEY ("Aadhar_Number");
 D   ALTER TABLE ONLY public.dms_aadhar DROP CONSTRAINT dms_aadhar_pkey;
       public            postgres    false    218            =           2606    35551 (   dms_aadhar_status dms_aadhar_status_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.dms_aadhar_status
    ADD CONSTRAINT dms_aadhar_status_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.dms_aadhar_status DROP CONSTRAINT dms_aadhar_status_pkey;
       public            postgres    false    253                       2606    35319    dms_aadharq dms_aadharq_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dms_aadharq
    ADD CONSTRAINT dms_aadharq_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dms_aadharq DROP CONSTRAINT dms_aadharq_pkey;
       public            postgres    false    220                       2606    35327    dms_admin dms_admin_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dms_admin
    ADD CONSTRAINT dms_admin_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dms_admin DROP CONSTRAINT dms_admin_pkey;
       public            postgres    false    222            5           2606    35478     dms_admininfo dms_admininfo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dms_admininfo
    ADD CONSTRAINT dms_admininfo_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dms_admininfo DROP CONSTRAINT dms_admininfo_pkey;
       public            postgres    false    248            3           2606    35432 *   dms_drivinglicence dms_drivinglicence_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.dms_drivinglicence
    ADD CONSTRAINT dms_drivinglicence_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.dms_drivinglicence DROP CONSTRAINT dms_drivinglicence_pkey;
       public            postgres    false    246                       2606    35335 "   dms_imagemodel dms_imagemodel_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dms_imagemodel
    ADD CONSTRAINT dms_imagemodel_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dms_imagemodel DROP CONSTRAINT dms_imagemodel_pkey;
       public            postgres    false    224                       2606    35343    dms_licenceq dms_licenceq_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dms_licenceq
    ADD CONSTRAINT dms_licenceq_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.dms_licenceq DROP CONSTRAINT dms_licenceq_pkey;
       public            postgres    false    226            0           2606    35424    dms_pancard dms_pancard_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dms_pancard
    ADD CONSTRAINT dms_pancard_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dms_pancard DROP CONSTRAINT dms_pancard_pkey;
       public            postgres    false    244                       2606    35351    dms_pancardq dms_pancardq_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dms_pancardq
    ADD CONSTRAINT dms_pancardq_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.dms_pancardq DROP CONSTRAINT dms_pancardq_pkey;
       public            postgres    false    228            -           2606    35416    dms_ration dms_ration_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dms_ration
    ADD CONSTRAINT dms_ration_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.dms_ration DROP CONSTRAINT dms_ration_pkey;
       public            postgres    false    242                       2606    35362    dms_rationq dms_rationq_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dms_rationq
    ADD CONSTRAINT dms_rationq_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dms_rationq DROP CONSTRAINT dms_rationq_pkey;
       public            postgres    false    230            7           2606    35486    dms_signup1 dms_signup1_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dms_signup1
    ADD CONSTRAINT dms_signup1_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dms_signup1 DROP CONSTRAINT dms_signup1_pkey;
       public            postgres    false    250                        2606    35370    dms_signup dms_signup_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dms_signup
    ADD CONSTRAINT dms_signup_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.dms_signup DROP CONSTRAINT dms_signup_pkey;
       public            postgres    false    232            *           2606    35405    dms_user dms_user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.dms_user
    ADD CONSTRAINT dms_user_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.dms_user DROP CONSTRAINT dms_user_pkey;
       public            postgres    false    240            "           2606    35378     dms_userlogin dms_userlogin_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dms_userlogin
    ADD CONSTRAINT dms_userlogin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dms_userlogin DROP CONSTRAINT dms_userlogin_pkey;
       public            postgres    false    234            '           2606    35394    dms_voterid dms_voterid_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dms_voterid
    ADD CONSTRAINT dms_voterid_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dms_voterid DROP CONSTRAINT dms_voterid_pkey;
       public            postgres    false    238            $           2606    35386    dms_voteridq dms_voteridq_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dms_voteridq
    ADD CONSTRAINT dms_voteridq_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.dms_voteridq DROP CONSTRAINT dms_voteridq_pkey;
       public            postgres    false    236            �           1259    35303    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    35240 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    35241 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    35226 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205                       1259    35256 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213                       1259    35255 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213                       1259    35270 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            
           1259    35269 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            �           1259    35297     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211                       1259    35293 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217                       1259    35294 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            8           1259    35534 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    251            ;           1259    35533 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    251            1           1259    35462 '   dms_drivinglicence_AadharNo_id_e282d1ed    INDEX     q   CREATE INDEX "dms_drivinglicence_AadharNo_id_e282d1ed" ON public.dms_drivinglicence USING btree ("AadharNo_id");
 =   DROP INDEX public."dms_drivinglicence_AadharNo_id_e282d1ed";
       public            postgres    false    246            .           1259    35456     dms_pancard_AadharNo_id_1d0415f0    INDEX     c   CREATE INDEX "dms_pancard_AadharNo_id_1d0415f0" ON public.dms_pancard USING btree ("AadharNo_id");
 6   DROP INDEX public."dms_pancard_AadharNo_id_1d0415f0";
       public            postgres    false    244            +           1259    35450    dms_ration_AadharNo_id_c7e59364    INDEX     a   CREATE INDEX "dms_ration_AadharNo_id_c7e59364" ON public.dms_ration USING btree ("AadharNo_id");
 5   DROP INDEX public."dms_ration_AadharNo_id_c7e59364";
       public            postgres    false    242            (           1259    35444 "   dms_user_Aadhar_Number_id_fc673fb3    INDEX     g   CREATE INDEX "dms_user_Aadhar_Number_id_fc673fb3" ON public.dms_user USING btree ("Aadhar_Number_id");
 8   DROP INDEX public."dms_user_Aadhar_Number_id_fc673fb3";
       public            postgres    false    240            %           1259    35438     dms_voterid_AadharNo_id_94918e6e    INDEX     c   CREATE INDEX "dms_voterid_AadharNo_id_94918e6e" ON public.dms_voterid USING btree ("AadharNo_id");
 6   DROP INDEX public."dms_voterid_AadharNo_id_94918e6e";
       public            postgres    false    238            @           2606    35235 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    205    3056            ?           2606    35230 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    3061    209            >           2606    35221 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    3051    203            B           2606    35250 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    207    3061    213            A           2606    35245 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    3069    211            D           2606    35264 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    3056    205            C           2606    35259 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3069    211    215            E           2606    35283 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    3051    203            F           2606    35288 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3069    217    211            K           2606    35457 G   dms_drivinglicence dms_drivinglicence_AadharNo_id_e282d1ed_fk_dms_aadha    FK CONSTRAINT     �   ALTER TABLE ONLY public.dms_drivinglicence
    ADD CONSTRAINT "dms_drivinglicence_AadharNo_id_e282d1ed_fk_dms_aadha" FOREIGN KEY ("AadharNo_id") REFERENCES public.dms_aadhar("Aadhar_Number") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.dms_drivinglicence DROP CONSTRAINT "dms_drivinglicence_AadharNo_id_e282d1ed_fk_dms_aadha";
       public          postgres    false    246    3090    218            J           2606    35451 H   dms_pancard dms_pancard_AadharNo_id_1d0415f0_fk_dms_aadhar_Aadhar_Number    FK CONSTRAINT     �   ALTER TABLE ONLY public.dms_pancard
    ADD CONSTRAINT "dms_pancard_AadharNo_id_1d0415f0_fk_dms_aadhar_Aadhar_Number" FOREIGN KEY ("AadharNo_id") REFERENCES public.dms_aadhar("Aadhar_Number") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dms_pancard DROP CONSTRAINT "dms_pancard_AadharNo_id_1d0415f0_fk_dms_aadhar_Aadhar_Number";
       public          postgres    false    3090    244    218            I           2606    35445 F   dms_ration dms_ration_AadharNo_id_c7e59364_fk_dms_aadhar_Aadhar_Number    FK CONSTRAINT     �   ALTER TABLE ONLY public.dms_ration
    ADD CONSTRAINT "dms_ration_AadharNo_id_c7e59364_fk_dms_aadhar_Aadhar_Number" FOREIGN KEY ("AadharNo_id") REFERENCES public.dms_aadhar("Aadhar_Number") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.dms_ration DROP CONSTRAINT "dms_ration_AadharNo_id_c7e59364_fk_dms_aadhar_Aadhar_Number";
       public          postgres    false    242    218    3090            H           2606    35439 G   dms_user dms_user_Aadhar_Number_id_fc673fb3_fk_dms_aadhar_Aadhar_Number    FK CONSTRAINT     �   ALTER TABLE ONLY public.dms_user
    ADD CONSTRAINT "dms_user_Aadhar_Number_id_fc673fb3_fk_dms_aadhar_Aadhar_Number" FOREIGN KEY ("Aadhar_Number_id") REFERENCES public.dms_aadhar("Aadhar_Number") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.dms_user DROP CONSTRAINT "dms_user_Aadhar_Number_id_fc673fb3_fk_dms_aadhar_Aadhar_Number";
       public          postgres    false    3090    218    240            G           2606    35433 H   dms_voterid dms_voterid_AadharNo_id_94918e6e_fk_dms_aadhar_Aadhar_Number    FK CONSTRAINT     �   ALTER TABLE ONLY public.dms_voterid
    ADD CONSTRAINT "dms_voterid_AadharNo_id_94918e6e_fk_dms_aadhar_Aadhar_Number" FOREIGN KEY ("AadharNo_id") REFERENCES public.dms_aadhar("Aadhar_Number") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dms_voterid DROP CONSTRAINT "dms_voterid_AadharNo_id_94918e6e_fk_dms_aadhar_Aadhar_Number";
       public          postgres    false    238    218    3090            �      x������ � �      �      x������ � �      �   �  x�m�K��0@׮Sp���a=�)B�I#uHH����O�Ue�5�3~���a)�q,>��bZ��Gie����?B��ǰ�'A�%k���K0,x���<��[ �If_����m~.��j� -� �1�p?�� c;R�wd\�,�����j/��]r���^�h��A�"�xܮ��{�Vu��O�~?���h����h�n��W�M�n�=��~�b���T�pɭ��H���{������$͌�����z��Wm�0>A%��L��v�P/a,�	�V	�H��cX��B�*�@���N�D�uB�J�̤x�����.�2:��G�	#�U�����e(�1/�J�o�E���h��"aq���)���`�y<�qe�ۉ�%���E)��8�pd���y{Y�R�ηi�M�w�X���.��s.�������X�ʫ;CyO���r��QX�Â�dy�\,�	�՝���'�w��0ʆu�m�:(�����F��P/�"8�r	d	�1�� ʈm�/�%�P��4")�%)�D�
�KbBC������m��&�!� �H��������ؖ%� S�B�2���O��y(����Vd��P�P�EGBYF�+�H�b�6\�����ԃ���r�v�b\�^|a�;2L�W�ͧ���>f�J~C�Os���<T�gY�rLB���3�Q"���y�9�%��V�J��J^��tY�J�,Z`��f%P�,�JQ��t��:��=�_U�ʏ˸
����3���r��c,N�%?�OF����]�}�ߛ�*6�d�НN'/���'s��;�Tsx�a�:y�x��T�Ƒb^�>UU������ �<`9�	�OF�C�@iF
`ޗ��xc�Пt&��d����9ќ,w�N�b��2&����7<z����2Z��$J茌<���t���� ���?      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�M�]�� ���aV�4���J
�)@�@�޾�t[��,챥�ƻ �h)����X(y��b��+6Ų�CaJ�C���\�{�I057�?pƳ���u¥�ם�"���kK>�!eSf7Q�h�T�&�L�qҹ��xl�Ά�W����u�j�#fJns�{��|�C^�`�Cjoe�{�`��T7춖�I|�sa��Ӆ��W�Pco~�~ � S�      �   �  x���ݎ�0���S��j���4鳬E%Ӊ�0����.I�+z�M8���#cu���i�n�  ����m[�#��x!��5�� .NT�y�8Q����U��|�B�*�Uş*2m�����DׅOgR�ئ��h�rq�İ'&I��N>�潵7s������1j��o�Qni}0ˋ�m��a�	�G<7��vr�.v~�����i]K��j�i��Bc+m��uַ� .�^9�p���|=�a�7��Q��;B��-������	�v?L+�Ya������b�cf�o��AJ�����ym�Ӷ��S��#.�M������΄��+D��ԁ�\s���K���`ZB^!�LCXi���5��I�yHn93��u�Du�*�b�)QGڎ����I�$樣����vQ����t����(�D���y��&�F�|P���,��0Wf�VfiU[=��X�.�տ�����]��            x������ � �      �      x������ � �            x������ � �      �   �   x�Mʻ�0 ���_��x��L��8�4Z�(Po1A�޸y�#%\�u����I����g;�{$P;!���*��� 9	�	/�P��ZU:�>�)f~����%�	�,�9�El�1C��O�`ZG��|��3��;��n)c�rR3�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m�K�@���̏Q�\u[ٮ���^#-�R��ggf������u~�ڪp>`�<�a_�/�ޔ�}�X����5;��DH�K�qv8�����d�Mf#�KR�0
�-mW�k�8���0 FL��wۦ��~��&\LE���<��F_�]�:��ѣ��ErQ�          �   x�uϻ
�0 й�5>b�;���v)H����Rk	~}�r��z��M��Ԙ�����R�V�*��%k���U���3�TM��>�T�*U۟#�hWaĎ*��`�(��4�I{]AŨ*�ל�%(�����k�SJ��׶��gP�C��b�f=��C�|�u�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     