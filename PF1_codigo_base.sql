prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_default_workspace_id=>1116324118630036697
);
end;
/
-- Oracle Application Express 21.1.0-13 SQL Script Export file
-- Exported 21:03 Sexta-Feira Maio 14, 2021 by: ENOCK.SOUZA@CCC.UFCG.EDU.BR
-- Scripts included:
--      ENOCK.SOUZA@CCC.UFCG.EDU.BR
 
begin wwv_flow.g_user := nvl(wwv_flow.g_user,'ENOCK.SOUZA@CCC.UFCG.EDU.BR'); end;
/
prompt --application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '2D2D20454E44455245434F0D0A435245415445205441424C4520454E44455245434F20280D0A2020434F4449474F2020494E54454745522C0D0A2020525541202020202056415243484152322831363029204E4F54204E554C4C2C0D0A20204E554D4552';
    wwv_flow_api.g_varchar2_table(2) := '4F202056415243484152322831363029204E4F54204E554C4C2C0D0A202042414952524F202056415243484152322831363029204E4F54204E554C4C2C0D0A2020434944414445202056415243484152322831363029204E4F54204E554C4C2C0D0A2020';
    wwv_flow_api.g_varchar2_table(3) := '45535441444F20205641524348415232283229204E4F54204E554C4C2C0D0A202043455020202020205641524348415232283929204E4F54204E554C4C2C0D0A2020434F4E53545241494E5420454E44455245434F5F504B205052494D415259204B4559';
    wwv_flow_api.g_varchar2_table(4) := '2028434F4449474F290D0A293B0D0A0D0A2D2D20434C49454E54450D0A435245415445205441424C4520434C49454E544520280D0A20202020434F4449474F20202020202020202020494E54454745522C0D0A202020204E4F4D45202020202020202020';
    wwv_flow_api.g_varchar2_table(5) := '202020564152434841523228363029204E4F54204E554C4C2C0D0A20202020534F4252454E4F4D4520202020202020564152434841523228363029204E4F54204E554C4C2C0D0A20202020454D41494C2020202020202020202020564152434841523228';
    wwv_flow_api.g_varchar2_table(6) := '31363029204E4F54204E554C4C2C0D0A20202020444154415F4E415343494D454E544F2044415445204E4F54204E554C4C2C0D0A20202020504F4E544F53202020202020202020204E554D4245522044454641554C5420302C0D0A202020205345584F20';
    wwv_flow_api.g_varchar2_table(7) := '202020202020202020202056415243484152322839292C0D0A20202020444154415F494E4449434143414F2020444154452C0D0A20202020434C49454E54455F494E444943412020494E54454745522C0D0A20202020434F4449474F5F454E4445524543';
    wwv_flow_api.g_varchar2_table(8) := '4F20494E54454745522C0D0A20202020434F4E53545241494E5420434C49454E54455F504B2020202020202020205052494D415259204B45592028434F4449474F292C0D0A20202020434F4E53545241494E5420434F4449474F5F454E44455245434F5F';
    wwv_flow_api.g_varchar2_table(9) := '464B20464F524549474E204B45592028434F4449474F5F454E44455245434F29205245464552454E43455320454E44455245434F28434F4449474F290D0A293B0D0A0D0A414C544552205441424C4520434C49454E54452041444420434F4E5354524149';
    wwv_flow_api.g_varchar2_table(10) := '4E5420434C49454E54455F494E444943415F464B20464F524549474E204B45592028434C49454E54455F494E4449434129205245464552454E43455320434C49454E544528434F4449474F293B0D0A0D0A2D2D2054454C45464F4E455320434C49454E54';
    wwv_flow_api.g_varchar2_table(11) := '450D0A435245415445205441424C452054454C45464F4E45535F434C49454E544520280D0A20202020434F4449474F20202020202020202020494E54454745522C0D0A20202020434F4449474F5F434C49454E54452020494E54454745522C0D0A202020';
    wwv_flow_api.g_varchar2_table(12) := '204E554D45524F20202020202020202020564152434841523228333029204E4F54204E554C4C2C0D0A20202020434F4E53545241494E542054454C45464F4E45535F434C49454E54455F504B205052494D415259204B45592028434F4449474F292C0D0A';
    wwv_flow_api.g_varchar2_table(13) := '20202020434F4E53545241494E5420434C49454E54455F54454C45464F4E455F554B2020554E495155452028434F4449474F5F434C49454E54452C204E554D45524F292C200D0A20202020434F4E53545241494E5420434F4449474F5F434C49454E5445';
    wwv_flow_api.g_varchar2_table(14) := '5F464B20202020464F524549474E204B45592028434F4449474F5F434C49454E544529205245464552454E43455320434C49454E544528434F4449474F290D0A293B0D0A0D0A2D2D20454D41494C0D0A435245415445205441424C4520454D41494C2028';
    wwv_flow_api.g_varchar2_table(15) := '0D0A2020434F4449474F20202020202020202020494E54454745522C0D0A2020415353554E544F202020202020202020564152434841523228313630292C0D0A2020434F4E544555444F202020202020202056415243484152322832353529204E4F5420';
    wwv_flow_api.g_varchar2_table(16) := '4E554C4C2C0D0A2020444154415F454E56494F20202020202044415445204E4F54204E554C4C2C0D0A2020434C49454E54455F414252495520202056415243484152322833292044454641554C5420274E414F27204E4F54204E554C4C2C0D0A2020434C';
    wwv_flow_api.g_varchar2_table(17) := '49454E54455F434C49434F55202056415243484152322833292044454641554C5420274E414F27204E4F54204E554C4C2C0D0A2020434F4449474F5F434C49454E54452020494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E54';
    wwv_flow_api.g_varchar2_table(18) := '20454D41494C5F504B202020202020202020202020205052494D415259204B45592028434F4449474F292C0D0A2020434F4E53545241494E5420434C49454E54455F5245434542455F464B20202020464F524549474E204B45592028434F4449474F5F43';
    wwv_flow_api.g_varchar2_table(19) := '4C49454E544529205245464552454E43455320434C49454E544528434F4449474F29204F4E2044454C45544520434153434144452C0D0A2020434F4E53545241494E5420434845434B5F434C49454E54455F41425249552020434845434B2028434C4945';
    wwv_flow_api.g_varchar2_table(20) := '4E54455F414252495520494E20282753494D272C20274E414F2729292C0D0A2020434F4E53545241494E5420434845434B5F434C49454E54455F434C49434F5520434845434B2028434C49454E54455F434C49434F5520494E20282753494D272C20274E';
    wwv_flow_api.g_varchar2_table(21) := '414F2729290D0A293B0D0A0D0A2D2D205452414E53504F525441444F52410D0A435245415445205441424C45205452414E53504F525441444F524120280D0A2020434F4449474F20202020494E54454745522C0D0A20204E4F4D45202020202020564152';
    wwv_flow_api.g_varchar2_table(22) := '43484152322831363029204E4F54204E554C4C2C0D0A2020454D41494C2020202020564152434841523228313630292C0D0A202054454C45464F4E4520205641524348415232283330292C0D0A2020534954452020202020205641524348415232283136';
    wwv_flow_api.g_varchar2_table(23) := '30292C0D0A2020434F4449474F5F454E44455245434F20494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E54205452414E53504F525441444F52415F504B205052494D415259204B45592028434F4449474F292C0D0A2020434F';
    wwv_flow_api.g_varchar2_table(24) := '4E53545241494E5420434F4449474F5F454E44455245434F5F5452414E53504F525441444F52415F464B20464F524549474E204B45592028434F4449474F5F454E44455245434F29205245464552454E43455320454E44455245434F28434F4449474F29';
    wwv_flow_api.g_varchar2_table(25) := '0D0A293B0D0A0D0A2D2D20464F524E454345444F520D0A435245415445205441424C4520464F524E454345444F5220280D0A2020434F4449474F20202020202020202020494E54454745522C0D0A20204E4F4D4520202020202020202020202056415243';
    wwv_flow_api.g_varchar2_table(26) := '4841523228353029204E4F54204E554C4C2C0D0A2020484F4D455F50414745202020202020205641524348415232283530292C0D0A2020454D41494C2020202020202020202020564152434841523228313630292C0D0A202054454C45464F4E45202020';
    wwv_flow_api.g_varchar2_table(27) := '20202020205641524348415232283330292C0D0A2020434F4449474F5F454E44455245434F20494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E5420464F524E454345444F525F504B205052494D415259204B45592028434F44';
    wwv_flow_api.g_varchar2_table(28) := '49474F292C0D0A2020434F4E53545241494E5420434F4449474F5F454E44455245434F5F464F524E454345444F525F464B20464F524549474E204B45592028434F4449474F5F454E44455245434F29205245464552454E43455320454E44455245434F28';
    wwv_flow_api.g_varchar2_table(29) := '434F4449474F290D0A293B0D0A0D0A2D2D2043454E54524F2044452044495354524942554943414F0D0A435245415445205441424C452043454E54524F5F44455F44495354524942554943414F20280D0A2020434F4449474F2020202020202020202049';
    wwv_flow_api.g_varchar2_table(30) := '4E54454745522C0D0A20204E4F4D45202020202020202020202020564152434841523228353029204E4F54204E554C4C2C0D0A2020434F4449474F5F454E44455245434F20494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E54';
    wwv_flow_api.g_varchar2_table(31) := '2043454E54524F5F44455F44495354524942554943414F5F504B205052494D415259204B455928434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F454E44455245434F5F43454E54524F5F44495354524942554943414F5F464B';
    wwv_flow_api.g_varchar2_table(32) := '20464F524549474E204B45592028434F4449474F5F454E44455245434F29205245464552454E43455320454E44455245434F28434F4449474F290D0A293B0D0A0D0A2D2D2043415445474F5249410D0A435245415445205441424C452043415445474F52';
    wwv_flow_api.g_varchar2_table(33) := '494120280D0A2020434F4449474F2020494E54454745522C0D0A20204E4F4D4520202020564152434841523228353029204E4F54204E554C4C2C0D0A2020434F4E53545241494E542043415445474F5249415F504B205052494D415259204B4559202843';
    wwv_flow_api.g_varchar2_table(34) := '4F4449474F290D0A293B0D0A0D0A2D2D204E4F54412046495343414C0D0A435245415445205441424C45204E4F54415F46495343414C20280D0A2020434F4449474F2020202020202020202020202020494E54454745522C0D0A20204E554D45524F2020';
    wwv_flow_api.g_varchar2_table(35) := '20202020202020202020202056415243484152322832303029204E4F54204E554C4C2C0D0A2020534552494520202020202020202020202020202056415243484152322832303029204E4F54204E554C4C2C0D0A2020494E5343524943414F5F45535441';
    wwv_flow_api.g_varchar2_table(36) := '4455414C202056415243484152322832303029204E4F54204E554C4C2C0D0A202043484156455F41434553534F202020202020202056415243484152322831363029204E4F54204E554C4C2C0D0A202056414C4F525F544F54414C202020202020202020';
    wwv_flow_api.g_varchar2_table(37) := '4E554D4245522831312C3229204E4F54204E554C4C2C0D0A2020434F4E53545241494E54204E4F54415F46495343414C5F504B205052494D415259204B455928434F4449474F290D0A293B0D0A0D0A0D0A2D2D204355504F4D20444520444553434F4E54';
    wwv_flow_api.g_varchar2_table(38) := '4F0D0A435245415445205441424C45204355504F4D5F44455F444553434F4E544F20280D0A2020434F4449474F20494E54454745522C0D0A2020444553434F4E544F204E554D42455228342C32292C0D0A2020434F4E53545241494E54204355504F4D5F';
    wwv_flow_api.g_varchar2_table(39) := '44455F444553434F4E544F5F504B205052494D415259204B45592028434F4449474F290D0A293B0D0A0D0A2D2D204355504F4D20444520444553434F4E544F20582043415445474F5249410D0A435245415445205441424C45204355504F4D5F52455354';
    wwv_flow_api.g_varchar2_table(40) := '524943414F5F43415445474F52494120280D0A2020434F4449474F5F4355504F4D20494E54454745522C0D0A2020434F4449474F5F43415445474F52494120494E54454745522C0D0A2020434F4E53545241494E54204355504F4D5F5245535452494341';
    wwv_flow_api.g_varchar2_table(41) := '4F5F43415445474F524941205052494D415259204B45592028434F4449474F5F4355504F4D2C20434F4449474F5F43415445474F524941292C0D0A2020434F4E53545241494E5420434F4449474F5F4355504F4D5F464B20464F524549474E204B455920';
    wwv_flow_api.g_varchar2_table(42) := '28434F4449474F5F4355504F4D29205245464552454E434553204355504F4D5F44455F444553434F4E544F28434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F43415445474F5249415F464B20464F524549474E204B45592028';
    wwv_flow_api.g_varchar2_table(43) := '434F4449474F5F43415445474F52494129205245464552454E4345532043415445474F52494128434F4449474F290D0A293B0D0A0D0A2D2D2050524F4455544F0D0A435245415445205441424C452050524F4455544F20280D0A2020434F4449474F2049';
    wwv_flow_api.g_varchar2_table(44) := '4E54454745522C0D0A20204E4F4D452056415243484152322832303029204E4F54204E554C4C2C0D0A2020505245434F204E554D4245522831312C3229204E4F54204E554C4C2C0D0A2020444154415F4641425249434143414F2044415445204E4F5420';
    wwv_flow_api.g_varchar2_table(45) := '4E554C4C2C0D0A202044455343524943414F2056415243484152322831303030292C0D0A20204553504543494649434143414F2056415243484152322832303030292C0D0A2020444154415F56414C49444144452044415445204E4F54204E554C4C2C0D';
    wwv_flow_api.g_varchar2_table(46) := '0A2020434F4449474F5F43415445474F52494120494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E5420434F4449474F5F50524F4455544F5F504B205052494D415259204B45592028434F4449474F292C0D0A2020434F4E5354';
    wwv_flow_api.g_varchar2_table(47) := '5241494E5420434F4449474F5F43415445474F5249415F50524F4455544F5F464B20464F524549474E204B45592028434F4449474F5F43415445474F52494129205245464552454E4345532043415445474F52494128434F4449474F290D0A293B0D0A0D';
    wwv_flow_api.g_varchar2_table(48) := '0A2D2D20464F544F535F50524F4455544F0D0A435245415445205441424C4520464F544F535F50524F4455544F20280D0A2020434F4449474F20494E54454745522C0D0A2020434F4449474F5F50524F4455544F20494E54454745522C0D0A202055524C';
    wwv_flow_api.g_varchar2_table(49) := '2056415243484152322832353029204E4F54204E554C4C2C0D0A2020434F4E53545241494E5420464F544F535F50524F4455544F5F504B205052494D415259204B45592028434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F50';
    wwv_flow_api.g_varchar2_table(50) := '524F4455544F5F464F544F535F464B20464F524549474E204B45592028434F4449474F5F50524F4455544F29205245464552454E4345532050524F4455544F28434F4449474F290D0A293B0D0A0D0A435245415445205441424C4520464F524E45434544';
    wwv_flow_api.g_varchar2_table(51) := '4F525F464F524E4543455F50524F4455544F20280D0A2020434F4449474F5F50524F4455544F20202020494E54454745522C0D0A2020434F4449474F5F464F524E454345444F5220494E54454745522C0D0A2020434F4E53545241494E5420464F524E45';
    wwv_flow_api.g_varchar2_table(52) := '4345444F525F464F524E4543455F50524F4455544F5F504B20205052494D415259204B45592028434F4449474F5F50524F4455544F2C20434F4449474F5F464F524E454345444F52292C0D0A2020434F4E53545241494E5420434F4449474F5F50524F44';
    wwv_flow_api.g_varchar2_table(53) := '55544F5F464F524E4543455F464B202020202020464F524549474E204B45592028434F4449474F5F50524F4455544F29205245464552454E4345532050524F4455544F28434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F464F';
    wwv_flow_api.g_varchar2_table(54) := '524E454345444F525F464F524E4543455F464B202020464F524549474E204B45592028434F4449474F5F464F524E454345444F5229205245464552454E43455320464F524E454345444F5228434F4449474F290D0A293B0D0A0D0A435245415445205441';
    wwv_flow_api.g_varchar2_table(55) := '424C452050524F445F4553544F4341444F5F43454E545F4449535420280D0A2020434F4449474F5F50524F4455544F20202020202020202020202020494E54454745522C0D0A2020434F4449474F5F43454E54524F5F44495354524942554943414F2049';
    wwv_flow_api.g_varchar2_table(56) := '4E54454745522C0D0A20205155414E5449444144452020202020202020202020202020202020494E54454745522044454641554C542030204E4F54204E554C4C2C0D0A2020434F4E53545241494E542050524F445F4553544F4341444F5F43454E54525F';
    wwv_flow_api.g_varchar2_table(57) := '444953545F504B20205052494D415259204B45592028434F4449474F5F50524F4455544F2C20434F4449474F5F43454E54524F5F44495354524942554943414F292C0D0A2020434F4E53545241494E5420434F4449474F5F50524F4455544F5F4553544F';
    wwv_flow_api.g_varchar2_table(58) := '4341444F5F464B202020464F524549474E204B45592028434F4449474F5F50524F4455544F2920205245464552454E434553202050524F4455544F28434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F43454E545F444953545F';
    wwv_flow_api.g_varchar2_table(59) := '4553544F4341444F5F464B20464F524549474E204B45592028434F4449474F5F43454E54524F5F44495354524942554943414F29205245464552454E434553202043454E54524F5F44455F44495354524942554943414F28434F4449474F290D0A293B0D';
    wwv_flow_api.g_varchar2_table(60) := '0A0D0A2D2D43415252494E484F0D0A435245415445205441424C452043415252494E484F20280D0A2020434F4449474F202020202020202020202020494E54454745522C0D0A2020434F4449474F5F4355504F4D202020202020494E54454745522C0D0A';
    wwv_flow_api.g_varchar2_table(61) := '2020434F4449474F5F434C49454E544520202020494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E542043415252494E484F5F504B20202020202020202020202020205052494D415259204B455928434F4449474F292C0D0A20';
    wwv_flow_api.g_varchar2_table(62) := '20434F4E53545241494E5420434C49454E54455F504F535355495F43415252494E484F2020464F524549474E204B455928434F4449474F5F434C49454E544529205245464552454E43455320434C49454E544528434F4449474F29204F4E2044454C4554';
    wwv_flow_api.g_varchar2_table(63) := '4520434153434144452C0D0A2020434F4E53545241494E54204355504F4D5F444553434F4E544F5F464B2020202020202020464F524549474E204B455928434F4449474F5F4355504F4D29205245464552454E434553204355504F4D5F44455F44455343';
    wwv_flow_api.g_varchar2_table(64) := '4F4E544F28434F4449474F290D0A293B0D0A0D0A2D2D2043415252494E484F20582050524F4455544F0D0A435245415445205441424C452043415252494E484F5F54454D5F50524F4455544F20280D0A2020434F4449474F5F50524F4455544F2020494E';
    wwv_flow_api.g_varchar2_table(65) := '54454745522C0D0A2020434F4449474F5F43415252494E484F20494E54454745522C0D0A20205155414E544944414445202020202020494E54454745522044454641554C542030204E4F54204E554C4C2C0D0A2020434F4E53545241494E542043415252';
    wwv_flow_api.g_varchar2_table(66) := '494E484F5F54454D5F50524F4455544F5F504B202020205052494D415259204B45592028434F4449474F5F50524F4455544F2C20434F4449474F5F43415252494E484F292C0D0A2020434F4E53545241494E5420434F4449474F5F50524F4455544F5F43';
    wwv_flow_api.g_varchar2_table(67) := '415252494E484F5F464B20464F524549474E204B45592028434F4449474F5F50524F4455544F29205245464552454E4345532050524F4455544F28434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F43415252494E484F5F5052';
    wwv_flow_api.g_varchar2_table(68) := '4F4455544F5F464B20464F524549474E204B45592028434F4449474F5F43415252494E484F29205245464552454E4345532043415252494E484F28434F4449474F290D0A293B0D0A0D0A2D2D204F5244454D20444520434F4D5052410D0A435245415445';
    wwv_flow_api.g_varchar2_table(69) := '205441424C45204F5244454D5F44455F434F4D50524120280D0A2020434F4449474F202020202020202020202020202020202020494E54454745522C0D0A2020444154415F434F4D50524120202020202020202020202020444154452044454641554C54';
    wwv_flow_api.g_varchar2_table(70) := '2053595344415445204E4F54204E554C4C2C0D0A20205354415455532020202020202020202020202020202020205641524348415232283230292044454641554C542027414755415244414E444F20504147414D454E544F27204E4F54204E554C4C2C0D';
    wwv_flow_api.g_varchar2_table(71) := '0A2020444553434F4E544F202020202020202020202020202020204E554D42455228342C32292C0D0A202056414C4F525F4652455445202020202020202020202020204E554D4245522831302C3229204E4F54204E554C4C2C0D0A2020434F4449474F5F';
    wwv_flow_api.g_varchar2_table(72) := '454E44455245434F202020202020202020494E5445474552204E4F54204E554C4C2C0D0A2020434F4449474F5F434C49454E544520202020202020202020494E5445474552204E4F54204E554C4C2C0D0A2020434F4449474F5F4E4F54415F4649534341';
    wwv_flow_api.g_varchar2_table(73) := '4C202020202020494E5445474552204E4F54204E554C4C2C0D0A2020434F4449474F5F5452414E53504F525441444F5241202020494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E54204F5244454D5F44455F434F4D5052415F';
    wwv_flow_api.g_varchar2_table(74) := '504B2020202020202020202020202020205052494D415259204B45592028434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F454E44455245434F5F434F4D5052415F464B2020202020202020464F524549474E204B4559202843';
    wwv_flow_api.g_varchar2_table(75) := '4F4449474F5F454E44455245434F29202020202020205245464552454E43455320454E44455245434F28434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F434C49454E54455F434F4D5052415F464B202020202020202020464F';
    wwv_flow_api.g_varchar2_table(76) := '524549474E204B45592028434F4449474F5F434C49454E54452920202020202020205245464552454E43455320434C49454E544528434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F4E4F54415F46495343414C5F434F4D5052';
    wwv_flow_api.g_varchar2_table(77) := '415F464B2020202020464F524549474E204B45592028434F4449474F5F4E4F54415F46495343414C29202020205245464552454E434553204E4F54415F46495343414C28434F4449474F292C0D0A2020434F4E53545241494E5420434F4449474F5F5452';
    wwv_flow_api.g_varchar2_table(78) := '414E53504F525441444F52415F434F4D5052415F464B2020464F524549474E204B45592028434F4449474F5F5452414E53504F525441444F524129205245464552454E434553205452414E53504F525441444F524128434F4449474F292C0D0A2020434F';
    wwv_flow_api.g_varchar2_table(79) := '4E53545241494E5420434845434B5F5354415455532020434845434B202853544154555320494E202827414755415244414E444F20504147414D454E544F272C2027454D2053455041524143414F272C2027454D205452414E53504F525445272C202746';
    wwv_flow_api.g_varchar2_table(80) := '494E414C495A414441272929200D0A293B0D0A0D0A2D2D204F5244454D20444520434F4D50524120504F535355492050524F4455544F0D0A435245415445205441424C4520434F4D5052415F504F535355495F50524F4455544F20280D0A2020434F4449';
    wwv_flow_api.g_varchar2_table(81) := '474F5F434F4D505241202020494E54454745522C0D0A2020434F4449474F5F50524F4455544F2020494E54454745522C0D0A20205155414E544944414445202020202020494E54454745522044454641554C542030204E4F54204E554C4C2C0D0A202056';
    wwv_flow_api.g_varchar2_table(82) := '414C4F525F415455414C20202020204E554D4245522831312C3229204E4F54204E554C4C2C0D0A2020434F4E53545241494E5420434F4D5052415F50524F4455544F5F504B205052494D415259204B455928434F4449474F5F434F4D5052412C20434F44';
    wwv_flow_api.g_varchar2_table(83) := '49474F5F50524F4455544F292C0D0A2020434F4E53545241494E5420434F4D5052415F50524F4455544F5F464B20464F524549474E204B455928434F4449474F5F434F4D505241292020205245464552454E434553204F5244454D5F44455F434F4D5052';
    wwv_flow_api.g_varchar2_table(84) := '4128434F4449474F292C0D0A2020434F4E53545241494E542050524F4455544F5F434F4D5052415F464B20464F524549474E204B455928434F4449474F5F50524F4455544F2920205245464552454E4345532050524F4455544F28434F4449474F290D0A';
    wwv_flow_api.g_varchar2_table(85) := '293B0D0A0D0A2D2D204F5244454D20444520434F4D505241204156414C49412050524F4455544F0D0A435245415445205441424C4520434F4D5052415F4156414C49415F50524F4455544F20280D0A2020434F4449474F5F434F4D505241202020494E54';
    wwv_flow_api.g_varchar2_table(86) := '454745522C0D0A2020434F4449474F5F50524F4455544F2020494E54454745522C0D0A20204E4F54412020202020202020202020204E554D42455228312C30292044454641554C542030204E4F54204E554C4C2C0D0A202044455343524943414F202020';
    wwv_flow_api.g_varchar2_table(87) := '2020202056415243484152322832303030292C0D0A2020434F4E53545241494E54204156414C49415F50524F4455544F5F504B205052494D415259204B455928434F4449474F5F434F4D5052412C20434F4449474F5F50524F4455544F292C0D0A202043';
    wwv_flow_api.g_varchar2_table(88) := '4F4E53545241494E54204156414C49415F50524F4455544F5F464B20464F524549474E204B455928434F4449474F5F434F4D505241292020205245464552454E434553204F5244454D5F44455F434F4D50524128434F4449474F292C0D0A2020434F4E53';
    wwv_flow_api.g_varchar2_table(89) := '545241494E542050524F4455544F5F4156414C49415F464B20464F524549474E204B455928434F4449474F5F50524F4455544F2920205245464552454E4345532050524F4455544F28434F4449474F290D0A293B0D0A0D0A435245415445205441424C45';
    wwv_flow_api.g_varchar2_table(90) := '20484953544F5249434F20280D0A2020434F4449474F20202020202020202020494E54454745522C0D0A202044415441202020202020202020202020444154452044454641554C542053595344415445204E4F54204E554C4C2C0D0A202054454D504F5F';
    wwv_flow_api.g_varchar2_table(91) := '504147494E41202020204E554D4245522834292C0D0A202046494E414C495A4F552020202020202056415243484152322833292C0D0A2020434F4449474F5F50524F4455544F2020494E5445474552204E4F54204E554C4C2C0D0A2020434F4449474F5F';
    wwv_flow_api.g_varchar2_table(92) := '434C49454E54452020494E5445474552204E4F54204E554C4C2C0D0A2020434F4E53545241494E5420484953544F5249434F5F504B202020202020202020202020205052494D415259204B455928434F4449474F292C0D0A2020434F4E53545241494E54';
    wwv_flow_api.g_varchar2_table(93) := '20434845434B5F434C49454E54455F46494E414C495A4F552020434845434B202846494E414C495A4F5520494E20282753494D272C20274E414F2729292C0D0A2020434F4E53545241494E5420484953544F5249434F5F50524F4455544F5F464B202020';
    wwv_flow_api.g_varchar2_table(94) := '2020464F524549474E204B455928434F4449474F5F50524F4455544F2920205245464552454E4345532050524F4455544F28434F4449474F292C0D0A2020434F4E53545241494E5420484953544F5249434F5F434C49454E54455F464B2020202020464F';
    wwv_flow_api.g_varchar2_table(95) := '524549474E204B455928434F4449474F5F434C49454E54452920205245464552454E43455320434C49454E544528434F4449474F290D0A293B';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := '5124709596616619785/PF1_codigo_base';
  wwv_flow_api.import_script(
    p_name          => l_name,
    p_varchar2_table=> wwv_flow_api.g_varchar2_table,
    p_pathid=> null,
    p_filename=> 'PF1_codigo_base',
    p_title=> 'PF1_codigo_base',
    p_mime_type=> 'text/plain',
    p_dad_charset=> '',
    p_deleted_as_of=> to_date('00010101000000','YYYYMMDDHH24MISS'),
    p_content_type=> 'BLOB',
    p_language=> '',
    p_description=> '',
    p_file_type=> 'SCRIPT',
    p_file_charset=> 'utf-8');
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
--commit;
end;
/
set verify on feedback on define on
prompt  ...done
