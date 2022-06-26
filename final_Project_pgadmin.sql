PGDMP                      
    y            football    13.4    13.4 E               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24865    football    DATABASE     d   CREATE DATABASE football WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE football;
                postgres    false                        2615    24866    project    SCHEMA        CREATE SCHEMA project;
    DROP SCHEMA project;
                postgres    false                       0    0    SCHEMA project    COMMENT     7   COMMENT ON SCHEMA project IS 'standard public schema';
                   postgres    false    4            �            1255    25010    foreign key()    FUNCTION     l  CREATE FUNCTION project."foreign key"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE 
A_ID character varying;
BEGIN
SELECT "Complaint_by" into A_ID from "Complaint" where "Complaint_by" = new."Complaint_by";

if (A_ID = New."Complaint_by")
then RAISE NOTICE 'Foreign Key Already Exists.... Try Again...'; 
RETURN null; 
else
RETURN New;
end if; 
END
$$;
 '   DROP FUNCTION project."foreign key"();
       project          postgres    false    4            �            1255    24867    fun1()    FUNCTION     s  CREATE FUNCTION project.fun1() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

if(TG_OP = 'DELETE') 
 then
 if(select "Login"."User_ID" from "project"."Login" where "Login"."User_ID" = old."Player_ID") != 'NULL'
 then
 --update "Login"
 DELETE FROM project."Login"
 where "Login"."User_ID" = old."Player_ID"; 

 return NULL;
 end if;
 end if;
return NULL;
END;
$$;
    DROP FUNCTION project.fun1();
       project          postgres    false    4            �            1255    24868    fun2()    FUNCTION     q  CREATE FUNCTION project.fun2() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

if(TG_OP = 'DELETE') 
 then
 if(select "Login"."User_ID" from "project"."Login" where "Login"."User_ID" = old."Coach_ID") != 'NULL'
 then
 --update "Login"
 DELETE FROM project."Login"
 where "Login"."User_ID" = old."Coach_ID"; 

 return NULL;
 end if;
 end if;
return NULL;
END;
$$;
    DROP FUNCTION project.fun2();
       project          postgres    false    4            �            1255    24869    fun3()    FUNCTION     {  CREATE FUNCTION project.fun3() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

if(TG_OP = 'DELETE') 
 then
 if(select "Login"."User_ID" from "project"."Login" where "Login"."User_ID" = old."Super_User_ID") != 'NULL'
 then
 --update "Login"
 DELETE FROM project."Login"
 where "Login"."User_ID" = old."Super_User_ID"; 

 return NULL;
 end if;
 end if;
return NULL;
END;
$$;
    DROP FUNCTION project.fun3();
       project          postgres    false    4            �            1255    24870    fun4()    FUNCTION     }  CREATE FUNCTION project.fun4() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

if(TG_OP = 'DELETE') 
 then
 if(select "Login"."User_ID" from "project"."Login" where "Login"."User_ID" = old."Super_Admin_ID") != 'NULL'
 then
 --update "Login"
 DELETE FROM project."Login"
 where "Login"."User_ID" = old."Super_Admin_ID"; 

 return NULL;
 end if;
 end if;
return NULL;
END;
$$;
    DROP FUNCTION project.fun4();
       project          postgres    false    4            �            1255    24871    fun5()    FUNCTION     u  CREATE FUNCTION project.fun5() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

if(TG_OP = 'DELETE') 
 then
 if(select "Login"."User_ID" from "project"."Login" where "Login"."User_ID" = old."Trainer_ID") != 'NULL'
 then
 --update "Login"
 DELETE FROM project."Login"
 where "Login"."User_ID" = old."Trainer_ID"; 

 return NULL;
 end if;
 end if;
return NULL;
END;
$$;
    DROP FUNCTION project.fun5();
       project          postgres    false    4            �            1255    25008    primary key()    FUNCTION     b  CREATE FUNCTION project."primary key"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
A_ID character varying;
BEGIN

SELECT "Player_ID" into A_ID from "Player_Info" where "Player_ID" = new."Player_ID";

if (A_ID = New."Player_ID") then
RAISE NOTICE 'Primary Key Already Exists.... Try Again...';
RETURN null; 
else 
RETURN New; 
end if;
END
$$;
 '   DROP FUNCTION project."primary key"();
       project          postgres    false    4            �            1259    24872    Assist    TABLE     �   CREATE TABLE project."Assist" (
    "Player_ID" character varying(20) NOT NULL,
    "Coach_ID" character varying(20) NOT NULL,
    "Performance" character varying,
    "Improvement" character varying
);
    DROP TABLE project."Assist";
       project         heap    postgres    false    4            �            1259    24878    Coach    TABLE     $  CREATE TABLE project."Coach" (
    "Coach_ID" character varying(20) NOT NULL,
    "Name" character varying(40) NOT NULL,
    "Age" integer NOT NULL,
    "Email ID" character varying(40),
    "Contact No" bigint NOT NULL,
    "Address" character varying,
    "Experience(in Month)" integer
);
    DROP TABLE project."Coach";
       project         heap    postgres    false    4            �            1259    24884 	   Complaint    TABLE     
  CREATE TABLE project."Complaint" (
    "Complaint No" integer NOT NULL,
    "Complaint_by" character varying(20) NOT NULL,
    "Type" character varying,
    "Detail" character varying,
    "Resolved_by" character varying(20),
    "Resolved?" character varying(3)
);
     DROP TABLE project."Complaint";
       project         heap    postgres    false    4            �            1259    24890    Fitness    TABLE     �   CREATE TABLE project."Fitness" (
    "Player_ID" character varying(20) NOT NULL,
    "Trainer_ID" character varying(20),
    "Rating" integer
);
    DROP TABLE project."Fitness";
       project         heap    postgres    false    4            �            1259    24893    Login    TABLE     ~   CREATE TABLE project."Login" (
    "User_ID" character varying(20) NOT NULL,
    "Password" character varying(20) NOT NULL
);
    DROP TABLE project."Login";
       project         heap    postgres    false    4            �            1259    24896    Player Statistic    TABLE     �   CREATE TABLE project."Player Statistic" (
    "Player_ID" character varying(20) NOT NULL,
    "Rating" integer,
    "Goals" integer,
    "Position" character varying(20) NOT NULL
);
 '   DROP TABLE project."Player Statistic";
       project         heap    postgres    false    4            �            1259    24899    Player_Info    TABLE     :  CREATE TABLE project."Player_Info" (
    "Player_ID" character varying(20) NOT NULL,
    "Name" character varying(40) NOT NULL,
    "Age" integer NOT NULL,
    "Batch No" character varying(10),
    "Joining Date" date NOT NULL,
    "Attendance" integer,
    "Contact No" bigint,
    "Address" character varying
);
 "   DROP TABLE project."Player_Info";
       project         heap    postgres    false    4            �            1259    24905    Salary    TABLE     �   CREATE TABLE project."Salary" (
    "Sr No" integer NOT NULL,
    "User_ID" character varying(20) NOT NULL,
    "Salary" integer,
    "Role" character varying(20)
);
    DROP TABLE project."Salary";
       project         heap    postgres    false    4            �            1259    24908    Super_Admin    TABLE     �   CREATE TABLE project."Super_Admin" (
    "Super_Admin_ID" character varying(20) NOT NULL,
    "Name" character varying(40) NOT NULL,
    "Email ID" character varying(40),
    "Contact No" bigint NOT NULL
);
 "   DROP TABLE project."Super_Admin";
       project         heap    postgres    false    4            �            1259    24911 
   Super_User    TABLE     �   CREATE TABLE project."Super_User" (
    "Super_User_ID" character varying(20) NOT NULL,
    "Name" character varying(40) NOT NULL,
    "Contact No" bigint NOT NULL,
    "Email ID" character varying(40)
);
 !   DROP TABLE project."Super_User";
       project         heap    postgres    false    4            �            1259    24914    Trainer_Info    TABLE     �   CREATE TABLE project."Trainer_Info" (
    "Trainer_ID" character varying(20) NOT NULL,
    "Name" character varying(40) NOT NULL,
    "Age" integer,
    "Contact No." bigint NOT NULL,
    "Email ID" character varying(40)
);
 #   DROP TABLE project."Trainer_Info";
       project         heap    postgres    false    4            �            1259    24917    Training    TABLE     �   CREATE TABLE project."Training" (
    "Training_ID" character varying(20) NOT NULL,
    "Coach_ID" character varying(20),
    "Player_ID" character varying(20) NOT NULL
);
    DROP TABLE project."Training";
       project         heap    postgres    false    4            �            1259    24920    Training_Info    TABLE     �   CREATE TABLE project."Training_Info" (
    "Training_ID" character varying(20) NOT NULL,
    "Date" date NOT NULL,
    "Batch No" character varying(10) NOT NULL,
    "Time" time without time zone NOT NULL,
    "Extra Session" integer
);
 $   DROP TABLE project."Training_Info";
       project         heap    postgres    false    4                      0    24872    Assist 
   TABLE DATA           Z   COPY project."Assist" ("Player_ID", "Coach_ID", "Performance", "Improvement") FROM stdin;
    project          postgres    false    201   8]       	          0    24878    Coach 
   TABLE DATA           z   COPY project."Coach" ("Coach_ID", "Name", "Age", "Email ID", "Contact No", "Address", "Experience(in Month)") FROM stdin;
    project          postgres    false    202   )_       
          0    24884 	   Complaint 
   TABLE DATA           t   COPY project."Complaint" ("Complaint No", "Complaint_by", "Type", "Detail", "Resolved_by", "Resolved?") FROM stdin;
    project          postgres    false    203   b                 0    24890    Fitness 
   TABLE DATA           I   COPY project."Fitness" ("Player_ID", "Trainer_ID", "Rating") FROM stdin;
    project          postgres    false    204   �e                 0    24893    Login 
   TABLE DATA           9   COPY project."Login" ("User_ID", "Password") FROM stdin;
    project          postgres    false    205   g                 0    24896    Player Statistic 
   TABLE DATA           Y   COPY project."Player Statistic" ("Player_ID", "Rating", "Goals", "Position") FROM stdin;
    project          postgres    false    206   �i                 0    24899    Player_Info 
   TABLE DATA           �   COPY project."Player_Info" ("Player_ID", "Name", "Age", "Batch No", "Joining Date", "Attendance", "Contact No", "Address") FROM stdin;
    project          postgres    false    207   kl                 0    24905    Salary 
   TABLE DATA           I   COPY project."Salary" ("Sr No", "User_ID", "Salary", "Role") FROM stdin;
    project          postgres    false    208   �x                 0    24908    Super_Admin 
   TABLE DATA           \   COPY project."Super_Admin" ("Super_Admin_ID", "Name", "Email ID", "Contact No") FROM stdin;
    project          postgres    false    209   �y                 0    24911 
   Super_User 
   TABLE DATA           Z   COPY project."Super_User" ("Super_User_ID", "Name", "Contact No", "Email ID") FROM stdin;
    project          postgres    false    210   ~|                 0    24914    Trainer_Info 
   TABLE DATA           a   COPY project."Trainer_Info" ("Trainer_ID", "Name", "Age", "Contact No.", "Email ID") FROM stdin;
    project          postgres    false    211                    0    24917    Training 
   TABLE DATA           M   COPY project."Training" ("Training_ID", "Coach_ID", "Player_ID") FROM stdin;
    project          postgres    false    212   ��                 0    24920    Training_Info 
   TABLE DATA           f   COPY project."Training_Info" ("Training_ID", "Date", "Batch No", "Time", "Extra Session") FROM stdin;
    project          postgres    false    213   �       ]           2606    24924    Assist Assist_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY project."Assist"
    ADD CONSTRAINT "Assist_pkey" PRIMARY KEY ("Player_ID");
 A   ALTER TABLE ONLY project."Assist" DROP CONSTRAINT "Assist_pkey";
       project            postgres    false    201            _           2606    24926    Coach Coach_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY project."Coach"
    ADD CONSTRAINT "Coach_pkey" PRIMARY KEY ("Coach_ID");
 ?   ALTER TABLE ONLY project."Coach" DROP CONSTRAINT "Coach_pkey";
       project            postgres    false    202            a           2606    24928    Complaint Complaint_2_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY project."Complaint"
    ADD CONSTRAINT "Complaint_2_pkey" PRIMARY KEY ("Complaint No");
 I   ALTER TABLE ONLY project."Complaint" DROP CONSTRAINT "Complaint_2_pkey";
       project            postgres    false    203            c           2606    24930    Fitness Fitness_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY project."Fitness"
    ADD CONSTRAINT "Fitness_pkey" PRIMARY KEY ("Player_ID");
 C   ALTER TABLE ONLY project."Fitness" DROP CONSTRAINT "Fitness_pkey";
       project            postgres    false    204            e           2606    24932    Login Login_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY project."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY ("User_ID");
 ?   ALTER TABLE ONLY project."Login" DROP CONSTRAINT "Login_pkey";
       project            postgres    false    205            g           2606    24934    Player_Info Playar Info._pkey 
   CONSTRAINT     i   ALTER TABLE ONLY project."Player_Info"
    ADD CONSTRAINT "Playar Info._pkey" PRIMARY KEY ("Player_ID");
 L   ALTER TABLE ONLY project."Player_Info" DROP CONSTRAINT "Playar Info._pkey";
       project            postgres    false    207            i           2606    24936    Salary Salary_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY project."Salary"
    ADD CONSTRAINT "Salary_pkey" PRIMARY KEY ("Sr No");
 A   ALTER TABLE ONLY project."Salary" DROP CONSTRAINT "Salary_pkey";
       project            postgres    false    208            k           2606    24938    Super_Admin Super Admin_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY project."Super_Admin"
    ADD CONSTRAINT "Super Admin_pkey" PRIMARY KEY ("Super_Admin_ID");
 K   ALTER TABLE ONLY project."Super_Admin" DROP CONSTRAINT "Super Admin_pkey";
       project            postgres    false    209            m           2606    24940    Super_User Super_User_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY project."Super_User"
    ADD CONSTRAINT "Super_User_pkey" PRIMARY KEY ("Super_User_ID");
 I   ALTER TABLE ONLY project."Super_User" DROP CONSTRAINT "Super_User_pkey";
       project            postgres    false    210            o           2606    24942    Trainer_Info Trainer Info._pkey 
   CONSTRAINT     l   ALTER TABLE ONLY project."Trainer_Info"
    ADD CONSTRAINT "Trainer Info._pkey" PRIMARY KEY ("Trainer_ID");
 N   ALTER TABLE ONLY project."Trainer_Info" DROP CONSTRAINT "Trainer Info._pkey";
       project            postgres    false    211            s           2606    24944 !   Training_Info Training Info._pkey 
   CONSTRAINT     o   ALTER TABLE ONLY project."Training_Info"
    ADD CONSTRAINT "Training Info._pkey" PRIMARY KEY ("Training_ID");
 P   ALTER TABLE ONLY project."Training_Info" DROP CONSTRAINT "Training Info._pkey";
       project            postgres    false    213            q           2606    24946    Training Training_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY project."Training"
    ADD CONSTRAINT "Training_pkey" PRIMARY KEY ("Training_ID");
 E   ALTER TABLE ONLY project."Training" DROP CONSTRAINT "Training_pkey";
       project            postgres    false    212            �           2620    25011    Complaint foreign key    TRIGGER     y   CREATE TRIGGER "foreign key" BEFORE INSERT ON project."Complaint" FOR EACH ROW EXECUTE FUNCTION project."foreign key"();
 3   DROP TRIGGER "foreign key" ON project."Complaint";
       project          postgres    false    203    219            �           2620    25009    Player_Info primary key    TRIGGER     {   CREATE TRIGGER "primary key" BEFORE INSERT ON project."Player_Info" FOR EACH ROW EXECUTE FUNCTION project."primary key"();
 5   DROP TRIGGER "primary key" ON project."Player_Info";
       project          postgres    false    207    220            �           2620    24947    Player_Info tri1    TRIGGER     |   CREATE TRIGGER tri1 AFTER INSERT OR DELETE OR UPDATE ON project."Player_Info" FOR EACH ROW EXECUTE FUNCTION project.fun1();
 ,   DROP TRIGGER tri1 ON project."Player_Info";
       project          postgres    false    207    214                       2620    24948 
   Coach tri2    TRIGGER     v   CREATE TRIGGER tri2 AFTER INSERT OR DELETE OR UPDATE ON project."Coach" FOR EACH ROW EXECUTE FUNCTION project.fun2();
 &   DROP TRIGGER tri2 ON project."Coach";
       project          postgres    false    202    215            �           2620    24949    Super_User tri3    TRIGGER     {   CREATE TRIGGER tri3 AFTER INSERT OR DELETE OR UPDATE ON project."Super_User" FOR EACH ROW EXECUTE FUNCTION project.fun3();
 +   DROP TRIGGER tri3 ON project."Super_User";
       project          postgres    false    216    210            �           2620    24950    Super_Admin tri4    TRIGGER     |   CREATE TRIGGER tri4 AFTER INSERT OR DELETE OR UPDATE ON project."Super_Admin" FOR EACH ROW EXECUTE FUNCTION project.fun4();
 ,   DROP TRIGGER tri4 ON project."Super_Admin";
       project          postgres    false    209    217            �           2620    24951    Trainer_Info tri5    TRIGGER     }   CREATE TRIGGER tri5 AFTER INSERT OR DELETE OR UPDATE ON project."Trainer_Info" FOR EACH ROW EXECUTE FUNCTION project.fun5();
 -   DROP TRIGGER tri5 ON project."Trainer_Info";
       project          postgres    false    218    211            |           2606    24952    Training Coach_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Training"
    ADD CONSTRAINT "Coach_ID" FOREIGN KEY ("Coach_ID") REFERENCES project."Coach"("Coach_ID") ON DELETE SET NULL NOT VALID;
 @   ALTER TABLE ONLY project."Training" DROP CONSTRAINT "Coach_ID";
       project          postgres    false    2911    202    212            t           2606    24957    Assist Coach_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Assist"
    ADD CONSTRAINT "Coach_ID" FOREIGN KEY ("Coach_ID") REFERENCES project."Coach"("Coach_ID") ON DELETE SET NULL NOT VALID;
 >   ALTER TABLE ONLY project."Assist" DROP CONSTRAINT "Coach_ID";
       project          postgres    false    201    2911    202            v           2606    24962    Complaint Complaint_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY project."Complaint"
    ADD CONSTRAINT "Complaint_by_fkey" FOREIGN KEY ("Complaint_by") REFERENCES project."Player_Info"("Player_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY project."Complaint" DROP CONSTRAINT "Complaint_by_fkey";
       project          postgres    false    203    207    2919            u           2606    24967    Assist Player_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Assist"
    ADD CONSTRAINT "Player_ID" FOREIGN KEY ("Player_ID") REFERENCES project."Player_Info"("Player_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY project."Assist" DROP CONSTRAINT "Player_ID";
       project          postgres    false    207    201    2919            }           2606    24972    Training Player_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Training"
    ADD CONSTRAINT "Player_ID" FOREIGN KEY ("Player_ID") REFERENCES project."Player_Info"("Player_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY project."Training" DROP CONSTRAINT "Player_ID";
       project          postgres    false    2919    212    207            x           2606    24977    Fitness Player_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Fitness"
    ADD CONSTRAINT "Player_ID" FOREIGN KEY ("Player_ID") REFERENCES project."Player_Info"("Player_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY project."Fitness" DROP CONSTRAINT "Player_ID";
       project          postgres    false    2919    207    204            z           2606    24982    Player Statistic Player_Id    FK CONSTRAINT     �   ALTER TABLE ONLY project."Player Statistic"
    ADD CONSTRAINT "Player_Id" FOREIGN KEY ("Player_ID") REFERENCES project."Player_Info"("Player_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY project."Player Statistic" DROP CONSTRAINT "Player_Id";
       project          postgres    false    207    206    2919            w           2606    24987    Complaint Resolved_by    FK CONSTRAINT     �   ALTER TABLE ONLY project."Complaint"
    ADD CONSTRAINT "Resolved_by" FOREIGN KEY ("Resolved_by") REFERENCES project."Super_User"("Super_User_ID") ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 D   ALTER TABLE ONLY project."Complaint" DROP CONSTRAINT "Resolved_by";
       project          postgres    false    2925    210    203            y           2606    24992    Fitness Trainer_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Fitness"
    ADD CONSTRAINT "Trainer_ID" FOREIGN KEY ("Trainer_ID") REFERENCES project."Trainer_Info"("Trainer_ID") ON DELETE SET NULL NOT VALID;
 A   ALTER TABLE ONLY project."Fitness" DROP CONSTRAINT "Trainer_ID";
       project          postgres    false    2927    204    211            ~           2606    24997    Training Training_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Training"
    ADD CONSTRAINT "Training_ID" FOREIGN KEY ("Training_ID") REFERENCES project."Training_Info"("Training_ID") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY project."Training" DROP CONSTRAINT "Training_ID";
       project          postgres    false    2931    213    212            {           2606    25002    Salary User_ID    FK CONSTRAINT     �   ALTER TABLE ONLY project."Salary"
    ADD CONSTRAINT "User_ID" FOREIGN KEY ("User_ID") REFERENCES project."Login"("User_ID") ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY project."Salary" DROP CONSTRAINT "User_ID";
       project          postgres    false    205    2917    208               �  x����J�@��ۧ�����*(B��z�M����YiW}}[$;���d����ٙI��q�d�������p���]�ͪ�5���C���]���^w1v����b1��e��mX}��7��x����k���B�t������/Sq��u��1���)xj��[��~<�n���v�}��~ �d]����ܹ-�:T��R)�`9����֭�~}��@���خ�ȴފ�����W�
�4�駰��@%�⁤IVr]�����XB)��dEJ���UuM�μ��V�th�43a���KqP�T*�k�$���6�OW8�Ɏҗ���U���Y�J��l���Y�@UY*4����{7!��<k�����@%�x`�W��=^`ñ�FLOh�a���� i�G��܌8s���,8}�1~:kYˁ�Lh�JP�W�*�'5\�T�����ĺY�����R��W�̮8��I\�5���#��+_�����oe      	   �  x�e�M��0��=��	R֯�]�HH�P�L6�4X�56�K����Ӓ1�C������D��e�px�gl��+6�D�68���"6�]8����á=A��M�s\k�vx({�Y�O����n��$��X`�v�o��8�֦�
"�o��pm��,��-�����Cm���.����g籌��%�%6 S8���a��;�Z&R�T ��`k[���lَ~ ��|���;B���O��s��X�����mq)��[��Rn4�<Sl�]m/��:o�����@&�z�|)�Q<��_�JRM
7l76E�ְ���6`f���Ǫ�PbM��hS��&���Kϴ2�������ys�M���Oi�d�t5��>�8 �z_����s.��9$lq���a�9�#�L�`�-����|����W�K1��G�,�ƀ�l��E���V�W�֝��59���bJ}�`O3�sHs�BvΎ�׵}�E�'�+��i����lϡ�H���\KA�DT����+������\�t/؏�UcGwo���נ���M��~Y���pHL���~Y�n�y[� ���<>G�'�!�����ln���ԩa��[b��n.)춣Eh�װ�ھt!��^�A><2�Zsȕ�{[�b.�v+X[;��'Bǐ,|�G�����Ta�b�} ��hA^=��Y�C���vX����*,'u/���Lk�A&9����7/~xzz����>      
   �  x���͎�0���S�	�؉��X�RU�
U]��R/De�U�x��x'�8�Hl��o��A0���G*�S�����sU��Ѻ�/��T��D^_�;�����ۿ�{3ئ��ow��y��}מ�-�����캁Q��9���Zc���m�s5�m�W��*'6�o��lv{:Z�9V���|�v\����y����9۴�����P���Ա/���v^������l����cu�����M�(��p���8;��'����j���������u�L�S_���G��0kc{��>񪳼�l�{�TH�]Ԝ�d���$���J��s/nr/�u��T�)��^�G�4�9�#�CX��A�8�	E�v�(��{hԭ!����&� ����-�A�����% y�	�s��fB����~�7I��20��U"����5�Y��_�-K�s� L�s &U�x,�I:,%A�"�UPz���2�e��"=�H��V�륾�3�H^��P=�|�,4���&de	��fAC1��(gH"�_�5u_\�	�4\�o/O9�.�\
����s��n�W�"T�P0s/�&�u��6���7�d�$/�9��F�_�I����,(���]��C:��4�H��_+�T.�5���R� -�t/n2�bQ��?�y�t��_���|6#�>��e`DL��)D٬i�	�&䠵�&0����G� �Yp%�����"br�k�ff�>a�^��Dx=דqwfO֓�v����7�ox�����a�X2��cC/v�Q9�~_��"kD�R���|,�E� ��z^�a)a��_���i����e����H��[*8�xc,�+�����5)	)��t�L�$� �����)I�|1�[         o  x�mTAn1;�<�J��=�����#um#en#/`l������5��������0����7��{Sa�pi�6Js�j^j^�6H\��0/�UHR�f���\��D!���WB�3�$Tҩ�o�A![��w��������B��dj �Rn�dik��d�"�X��ĆR���y~Zh��35�j�Ml����B�M��]��zB��dR��x�Q�	{y&��/�{	�ӄhj�2Q�c����	�-B����g:"�Kl�������ċ�&�����Y�y~a�v&F[)^�<�!�U�l�ѳ��7��c]�n�.�����"�K��-%��-a�j�	�kAbC�������Kh4*         �  x�M�;�[AD��Z����=���Lb���:�U�ͺ+;������uُ����z?^G�
¡p"�
¥p#�
£�Fx+|"|�B�ޡ]
!2�"�� 2�"�� 2�"�� 2�"�� 2�"��!r�"��!r�"��!r�"��!r�"��!r�DC�ѐh@4$�DC�ѐh@4$�DC�ѐhB4%�M�&DS�	єhB4%�M�&DS�	єhB4%�M�DK�ђhA�$Z-�DK�ђhA�$Z-�DK�ђhC�%�m�6D[�іhC�%�m�6D[�іhC�%�m�DG�ё�@t$:�DG�ё�@t$:�DG�ё�������/
,Wh��Z��r��+�\��
,Wh��Z��r��+�\��
,Wh��Z��r��+�\��
,Wh��Z��r��+q����K�.q����K�.q����K�.q����K�.q����K�.q����K�.q����K�.q�|�� 2�"�� 2�"��!z���_(��ӱ3�����d<;^�WǛ���0>ߌ���ߵ}:��ZiTZ+�Jk�Qi�4*��F��Ҩ�V��J��Z�T��b��]����eu��.��,vY�e���.�]VwY첺�b��]����eu��.��,vY�e���.�]VwY첺�b��]����eu��.�}_?��_��         �  x�m�=n1�k�S��(Q�郤
��1�g��n|�w�$Ob�%w�i8��{kLl�)��==�=>=?\_/�<��S;��ח�统�����؅�}�>>^�W'�L������������$n4f�QQ��߲�Á)YTU�:��s �U&��б����A$0��6����0�w�V(��	V4���mm�)�����!CR|�3�P��v�9�f��G��a����ؕ`b�R����%<a��#�h����	��վ�L���9��@$+�H�^���8\ �SGZ����H�������H��^(���"GZ*bw���X[
� ����V-��LJ�ǂ����;�4y��Y���@7o�Z �Uj����G������G�5��%����K�4I?<���v�oL3�6��=g3B݊	���`��#.U���'8e��{r,D&\��ī�f�g��8�
'ͽ��"I@q�~�͵i��������u7T�9鹤��@� �
ͽ�Y@�WD����L$�TY�c/�j�H��v4N��2���;^ݙ%�|���%�U~�<�\��o��HK �[�ac�$��|5��S��|5����Ex�9���t?>].�?C�!`         o  x�mY[S�8~V�
��[�-K�#$,���ڪ}�H�q,Jv�ܿ~�#'��j�k(�A:��g�<d�`O�Z�����/Bl_C��P����sg�:�sVU�de.DYh��J�۹�����[>���S��(�:~�������rV�uFՔ���2�ʒ?o�j��;]�>�ǒ{޸������[~�bt}��bRV�����RB�,�_�������%[��7�3�l���K���1QM*�g�R�TQIU���?ص뿜�d7�5��x��1!'��3\E�T����h*��t���C>ظ=�S�f����}�5��k���y/q�UE:�&�$����k���[����|�>����C����k��ng�yIs�뱤�M�F�\W���{�µ���z�s�`1����K�]��r��8)�֦bef��wv�>B�����k;���u�1������5�����t�~��T�4�2E�2]�0z����ݻCI������M���߸~ic�}��o�Г��:��REf�b�T��O{�n�I��ǁ��vǟV�~�0�b�M�\���	3SHV���w��g�kW���[�2���sj��x>Vgy�*b�c�7�Ϊ�?xp�}}=�(�e��j@�ehmS"�i��S��a�*j�F���bۓ^�M�x�	���}\AH�yEMD�)�\V�^)�O��e��*��ٶ��oہ�v,���K�*�hY�+L	�n��8���c=�,�s$��j�;�M�
�Utc�i(�2L���]h��o�c9̀P��/;oנ9a�b�E�N��2(�0%+
�!>�����U쇋�8O��������0�A*te�G����%)��qL����]0��}k1ǟ�����0���$�c'�<(Y�/\Ӭ�7�75�����b�k����9I������&g����ӻ�]�s�'%ɩ�bN9�%PCk��Li�zU��'�Ɲз򹷱S,�c^�U����C�6d\�1�o��4m�ߝV$1+F6繐p(U��hH����hB�G^4.g1�y[��2+� `S��f���7��;�Ҷ�5�d1.��ә�En`���=>��?�9W�z�t<�9��,�
��QJer���I+�{���{��&=4��ø�M�I�?�P,�.A޻��Y�NS(H2�U�_�)}��,��]v�R�_�z�ûm���/聾�
�T�r��2��/|\5��5�G���}D�l�G���>��ا��#�MY�S���D��P����N��N
У��d �2�<D�����ב�D�j˹��4^�/Kָg�C��D~�c�i�F�%hƾHU�I����J�SU�M�rj��X�`�;~Cj��M�a&�t�kJK%� �g�0�L|K���O���O��m�/���;X|.T��d^H�o�}O=��� 2t�qĹ���R�rB^���TU!3�����N�P���H)q��E�@"!z9�SqH7���2�G�]�������B��!�|�}R�𥏈t	3Uz��r���y���ﾡ^�1�a�_��7�ױ��h��M�.A(����Þ��uD�ؠ(�����`��f�,��9غ( CZٓr�ǯ8'3F���t�g����{�{"(���p�i��*j��W�PҊ1�Я���>�c���E�m���o�p�i���R����U[��O�LE���2���\�e�1 ��9���~��h�ߧ�9�*
a�_�����.	�S�;N|:oA;�%A|q�=J_�V��1ֈ<3;���	q�-ٱ�o�W�sDn9?kq��%%�q$��ѝS�1ɘ���}%RO�H�Im����m|�k��l֚]a˳��=�-�0<=!;�*���� .l3�u���A���Do\�9l�SVIdǀ$�L#j��|��8O��)V}�Ë�`�z�6�cF����4�����j�#� ��=��G�j���}�ډ�*WZVp%�C�8Y(�0��"�?�u�_mH$.O��L��E�$��9���
:�K��6;P/����n�a ^N̞�{DwYF�)0�Mұ������*�I�ϽO�pzT|�|�las������V���a��Y{���Pt9�1*��̫4,�D�ZmI�f������&��Uf�&���|�>LVd4w.���R1�Hk_ �q�|ۧ��Y?eZ���J1�Dv�f�))�m��tk�B�GⴚH�K,�E՘�������|�I���G�Gz��d�}�ӎ
�����<4T�R��ae�j�V��1.:K���v���*�qf`��=� �7  �dHC�&�I��i��t��x��>��x��&��x�k�FO����`[*7���t"	��a�eUE�W�5]zk�:aˈA,^9��/.a��RԺs;��K����f�;��"JJ����v��
�N�p&Tۯ������W9��	��i���-eӣ�{l��X���&�&���t�
�g�$1E�N`ÿ��#!��m���Քe8V9�,4VDiUP�E<�����8q޻�K�2=��,�Ҥ��`�� ��P�B�%`X�K�0++��J
��j�J$O%%?���+���0�fH������f�a��mִB�����Ó<�{����:�W%f��52�������l���2o�qei���݄�;��!bB��Q%ְ7�כ~zIlV�>Y"�t^4@4��zꚇg81�:/P��F���-ǀ��[�c}�o��Ӌ���R�
��:��h�F���sH�e"L0�G���~��������p=!AZ�
*t�UHZ�Dpi���K���Q��h�z�I��!�IO@X�A��(��}k���C�v�㖨{rY�7^u��(U�Ux���b����KIC�J�s7&�ٜ�Oɚވ2z$��w+��: �������PS�Ɛ�"p=�4�(Ye�*
C?o�h�Skӆ���7 4��m�ao>���ФFb׬h�ڭ��% �����7t�$��{�
�t�\r��a=@Xng,A�ϻ��v��Ǖm�/'�y16|D��P%v$�'*�;_�s5��B����{ ������Bð��t+��R��2�^��ޘm���?;�	=�*�t���Ȳ������۷�U��           x�]��n�0�g�a
Q'Y֜W��%$K�����N���?�;YBN�o)I(I�p�}<�1� 1څ��p%�a�{#�ʅqs���{��I'��ݒ�u�4����H��%���Il?M�-Ǔߏ���uDiT���Tv*�DvJ�RF�Tr�RGxS*��o*�Jާ*�JuJ���?S�b	;?���C3f`5�g����0k�)`ց��@��f�u��f`u��1��o������J���W�����)         q  x�mTmo�0���
~�D	��u7i�M;M�t�I�bjB!��r�?::��zl���8<d�C,��F��4��^�� �e���?N5��A�"�8K�pǯ���^c�U�Sc����G�9By�<�h$O��"Zh"���tAۛ��ڠa��I��MG�tF����(�	�\pKp�c�I�P	�����#Z<ѿ;����uv�F2U��H��m�Pdh)�>�='B��P�<�ɒ��}��5�ڜ�C�.xEK�����v6�T2L��R�_�N�����������0�W�5�`Q�x!R�jl?��NOby�xZ�ηIq���^�o$��6�����	�Yxʹ���18��0�Ԓm����Cg����dmIW�їZ8<Gc��l��!�8{g���p9�	[D¼l鸞�� �z ��l}��jntŕ��B�Q��C1�����^t��E�l6�kQ3�-�a����'ݵXMU��wA�)�������[��$�D�+*s�ye�~�)���E)��RSM�7���`�#m�����3��Tp�,8#5��{ƺ�j��t�����ll�P������͖f4W-~��)�"���%�'���aM/�Q�۾�l�"�W+Q�j�~�������         v  x�}�An�0E��)x���HJ�U��)\u�U7�X5)��@�t��PvQ�~?}��a.2��-D��O֍���{����-Df��M�?�����o������^z�ʯ���qh���m<{��"�B�3Kd���d�TC�/�
D��F@?c�`�R��*�)�p��A���;|Sw���:���)-2U0;���$Ş������9��g��BG0�K�^u�|���lC��fq�y҅,t��;T] �l�4�,!�~�nU�B
��}:�T^@T��	u�uͭ=[��4Z�*�Q�h��ǰtp� x�Rc� �;�%�e��b�D: <���	��	��;-L��c�����?�|��c����#~�J�委R+���5��r�պls��t7\��E�"�3�^�bO�
Fy:�vg$���Ɲ�iN��TH���du�}��؄�r����2�Q�)��� Q�~�8�����s_�Gi\�L*�sU-`0�8ƀ�؄}�Q��-��,q�	o$��=����r݆%u�W�bmR|2�
!�s��
�$y*u�*�$�' �0r#���W�{o;�6T`����1%����w��� D�����0���Ƨ�;�߻�j���         �  x�uT�n�0<���_�%Q�Ui�C�A�(���rKZ/���ﻤ� ���p�3;��¾r.��9?�����9���C��nuaU	��Nz�_��軛��o�$���ar������~a�(�
!��ڕx�.9)/t��՞{l�p��iI�����~�M	��h��Ό,�##��#(ǩd���D֔��L���n��n����2*�\V�
8��nr%<�;M���4ʝ��$�+!�S��D<јG�Zܻ@�N�O�%	]p]
	Cd�����et~f���p?bI����*!?����߰״��s�ɖ�RktMd�'$#!8�!���~v���I�+�Q4,F�wr�|��̞NجE[�B[)E�<�����0�k��~lh����\[V؊W��0\i�ɭF(�߱fO�Ha��"*)-��dք�{?�0�3������TҨز+/�R@���BV��|�.�_C�E�Vq+hm���VD��ŮGZv�g�k �1�T�������G:<��b�rNU�j��^�B��=�V 'RA���vG6�*�\X%�V���`�����~R ��6U�9,��$$� y�}ʶ.���<�Y��JV��=m�n6��_���_         t  x�e�+�1DQ�^�C����	C�~`tA'�����e���Z��?��=�|���KsZHZJKZI+ZKk�Hږ�iGڹ�ֻ٢���b.i�XJ��J.�K܆��4\lK�Ŏ4\|����&wi�8.y.��p񒆋�R���#��p�#�X���I�%\.�p���K�4\B\���%�%p	\�6\r�[�&��en�%C.��pɒ�K�4\r��[.y��R��
�2i���.%.�K�oåJ.�˹�i�Ԗ�Ki��z�ƥM.��p�����?�Ni�tIå[.=�p��bwW�>�p��n�˘4\ƥ�2!�Ii�.w��ii�.w���p�#���݀��6i�l\�?�����<��4��         ;  x�eV;�\;�g�r\��7�=�ȑ÷�u<$�4�ٝ�]�4M�`�� o$]���O���6���0$��``���:&h�Ձ!jÆ�K�?0�a������S>����Ň�3a��9g��Ei�ISC���rC���a�Yg�'a�.#�:2�^�V/��_Z'��:���`i"���W�0^g��<0���٘���|��������c��`|R�c���+�:S����e�!�^���������L��+����E��#"�}ї�����h�Y�b`�{���Ǫb��<���^�q�-��s��<��kHe�N���ϴu�S{����=��:�udv�O���<TC��zZ|�8S#���}��i�|���n���z�O��匞ʙ�WCZ�\�4����SfY�����T4|������9M�}^g��w���"�}����p������[��ŷ������z�N9Z�(���\��b׉^C6�Q<F2
�޹��K\g:03�G&���{E���{�������k�ԫ��оA���xL�^-��a��U�G�D��8�z���?x����q`���y�^����>c1o��-o���{��⟷�)�s�UG�譙@���������$�|��u�i�����ߝ��Y��z�E��89��0�|6>����M��v澼7��Yނ���3!�o}>���5̰�^�N=w�q��#=|�i�%�x��.r�s�й���,yhu���q�')&�}m�i͎qr>�E���~�h>�c�������iv����u
�|z�����~���}�Ϩ2sc|�}�������q�����     