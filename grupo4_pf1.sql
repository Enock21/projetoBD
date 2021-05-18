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
-- Exported 21:09 Sexta-Feira Maio 7, 2021 by: ENOCK.SOUZA@CCC.UFCG.EDU.BR
-- Scripts included:
--      ENOCK.SOUZA@CCC.UFCG.EDU.BR
 
begin wwv_flow.g_user := nvl(wwv_flow.g_user,'ENOCK.SOUZA@CCC.UFCG.EDU.BR'); end;
/
prompt --application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '2D2D475255504F20342D2D0D0A2D2D456E6F636B2042657A6572726120466572726569726120646520536F757A613B203131383231303531322D2D0D0A2D2D5669746F72204D6F7461204C656974652044696E697A3B203131383231303337392D2D0D0A';
    wwv_flow_api.g_varchar2_table(2) := '2D2D4A6FC3A36F20506564726F2053696C7661206465204D656C6F3B203131383231303739362D2D0D0A2D2D4A6FC3A36F20566963746F722054656F64756C6F2057616E6465726C65793B203131383131303036382D2D0D0A2D2D4361696F2043C3A973';
    wwv_flow_api.g_varchar2_table(3) := '6172204EC3B3627265676120426F726765733B203131383131303035302D2D0D0A0D0A0D0A435245415445205441424C452054726162616C686F280D0A20202020636F6450726F6A2056415243484152283130292C0D0A20202020636F6469676F205641';
    wwv_flow_api.g_varchar2_table(4) := '5243484152283130292C0D0A202020205052494D415259204B455928636F6469676F290D0A293B0D0A0D0A435245415445205441424C45205075626C69636163616F280D0A20202020636F642056415243484152283130292C0D0A20202020746974756C';
    wwv_flow_api.g_varchar2_table(5) := '6F2056415243484152283330292C0D0A2020202076656963756C6F2056415243484152283330292C0D0A20202020616E6F5F7075626C69636163616F20494E542C0D0A202020205052494D415259204B455928636F64290D0A293B0D0A0D0A4352454154';
    wwv_flow_api.g_varchar2_table(6) := '45205441424C4520506174656E7465280D0A20202020636F642056415243484152283130292C0D0A202020206E756D65726F5F726567697374726F20494E542C0D0A2020202064657363726963616F20434C4F422C0D0A202020205052494D415259204B';
    wwv_flow_api.g_varchar2_table(7) := '455928636F64290D0A293B0D0A0D0A435245415445205441424C45204175746F72280D0A202020206D6174726963756C6120564152434841522839292C0D0A202020206E6F6D652056415243484152283330292C0D0A20202020646174615F6E61736369';
    wwv_flow_api.g_varchar2_table(8) := '6D656E746F20444154452C0D0A202020205052494D415259204B4559286D6174726963756C61290D0A293B0D0A0D0A435245415445205441424C4520416C756E6F280D0A202020206D617420564152434841522839292C0D0A20202020636F644C696E68';
    wwv_flow_api.g_varchar2_table(9) := '612056415243484152283130292C0D0A20202020636F6450726F6A2056415243484152283130292C0D0A202020206E6976656C5F65737475646F2056415243484152283130292C0D0A2020202076616C6F725F626F6C7361205245414C2C0D0A20202020';
    wwv_flow_api.g_varchar2_table(10) := '5052494D415259204B4559286D6174290D0A293B0D0A0D0A435245415445205441424C452050726F666573736F72280D0A202020206D617420564152434841522839292C0D0A20202020636F6450726F6A2056415243484152283130292C0D0A20202020';
    wwv_flow_api.g_varchar2_table(11) := '746974756C6163616F2056415243484152283130292C0D0A202020205052494D415259204B4559286D6174290D0A293B0D0A0D0A435245415445205441424C4520446570617274616D656E746F280D0A202020206D617450726F66207661726368617228';
    wwv_flow_api.g_varchar2_table(12) := '39292C0D0A20202020636F6469676F2076617263686172283130292C0D0A202020206E6F6D652076617263686172283330292C0D0A20202020656E64657265636F2076617263686172283330292C0D0A202020205052494D415259204B455928636F6469';
    wwv_flow_api.g_varchar2_table(13) := '676F290D0A293B0D0A0D0A435245415445205441424C452050726F6A65746F280D0A20202020636F6469676F2056415243484152283130292C0D0A20202020636F644C696E68612056415243484152283130292C0D0A20202020746974756C6F20564152';
    wwv_flow_api.g_varchar2_table(14) := '43484152283130292C0D0A2020202064657363726963616F20434C4F422C0D0A20202020646174615F696E6963696F20444154452C0D0A20202020646174615F66696D20444154452C0D0A202020206F7263616D656E746F205245414C2C0D0A20202020';
    wwv_flow_api.g_varchar2_table(15) := '5052494D415259204B455928636F6469676F290D0A293B0D0A0D0A435245415445205441424C45204C696E68615F64655F5065737175697361280D0A20202020636F6469676F2056415243484152283130292C0D0A20202020636F6469676F5F636E7071';
    wwv_flow_api.g_varchar2_table(16) := '5F617265612056415243484152283130292C0D0A202020206E6F6D655F617265612056415243484152283130292C0D0A202020206E6F6D652056415243484152283130292C0D0A20202020636F6469676F5F636E70715F73756261726561205641524348';
    wwv_flow_api.g_varchar2_table(17) := '4152283130292C0D0A202020206E6F6D655F737562617265612056415243484152283130292C0D0A2020202064657363726963616F20434C4F422C0D0A202020205052494D415259204B455928636F6469676F290D0A293B0D0A0D0A4352454154452054';
    wwv_flow_api.g_varchar2_table(18) := '41424C45204167656E74655F46696E616E636961646F72280D0A20202020636F6469676F2056415243484152283130292C0D0A202020206E6F6D652056415243484152283130292C0D0A20202020656D61696C2056415243484152283130292C0D0A2020';
    wwv_flow_api.g_varchar2_table(19) := '2020656E64657265636F2056415243484152283130292C0D0A202020205052494D415259204B455928636F6469676F290D0A293B0D0A0D0A435245415445205441424C45204C61626F7261746F72696F5F64655F5065737175697361280D0A2020202063';
    wwv_flow_api.g_varchar2_table(20) := '6F6469676F2056415243484152283130292C0D0A202020206E6F6D652056415243484152283130292C0D0A202020206C6F63616C697A6163616F2056415243484152283130292C0D0A202020205052494D415259204B455928636F6469676F290D0A293B';
    wwv_flow_api.g_varchar2_table(21) := '0D0A0D0A435245415445205441424C4520506F73746F5F64655F54726162616C686F280D0A20202020636F6469676F506F73746F2056415243484152283130292C0D0A20202020636F6469676F4C61622056415243484152283130292C0D0A202020206E';
    wwv_flow_api.g_varchar2_table(22) := '6F6D652056415243484152283130292C0D0A2020202064657363726963616F20434C4F422C0D0A202020205052494D415259204B455928636F6469676F506F73746F2C20636F6469676F4C6162290D0A293B0D0A0D0A435245415445205441424C452041';
    wwv_flow_api.g_varchar2_table(23) := '75746F725F506F737375695F54726162616C686F280D0A20202020636F64547261622056415243484152283130292C0D0A202020206D61744175746F7220564152434841522839292C0D0A202020205052494D415259204B455928636F64547261622C20';
    wwv_flow_api.g_varchar2_table(24) := '6D61744175746F72290D0A293B0D0A0D0A435245415445205441424C452050726F666573736F725F5061727469636970615F50726F6A65746F280D0A202020206D617450726F6620564152434841522839292C0D0A20202020636F6450726F6A20564152';
    wwv_flow_api.g_varchar2_table(25) := '43484152283130292C0D0A202020205052494D415259204B4559286D617450726F662C20636F6450726F6A290D0A293B0D0A0D0A435245415445205441424C452050726F666573736F725F50657371756973615F4C696E6861280D0A202020206D617450';
    wwv_flow_api.g_varchar2_table(26) := '726F6620564152434841522839292C0D0A20202020636F644C696E68612056415243484152283130292C0D0A202020205052494D415259204B4559286D617450726F662C20636F644C696E6861290D0A293B0D0A0D0A435245415445205441424C452041';
    wwv_flow_api.g_varchar2_table(27) := '67656E74655F46696E616E6369615F50726F6A65746F280D0A20202020636F644167656E74652056415243484152283130292C0D0A20202020636F6450726F6A2056415243484152283130292C0D0A202020205052494D415259204B455928636F644167';
    wwv_flow_api.g_varchar2_table(28) := '656E74652C20636F6450726F6A290D0A293B0D0A0D0A435245415445205441424C452050726F6A65746F5F5265616C697A61646F5F4C6162280D0A20202020636F6450726F6A2056415243484152283130292C0D0A20202020636F644C61622056415243';
    wwv_flow_api.g_varchar2_table(29) := '484152283130292C0D0A202020205052494D415259204B455928636F6450726F6A2C20636F644C6162290D0A293B0D0A0D0A435245415445205441424C452054656C5F446570617274616D656E746F280D0A2020202074656C65666F6E65205641524348';
    wwv_flow_api.g_varchar2_table(30) := '41522838292C0D0A20202020636F64446570617274616D656E746F2056415243484152283130292C0D0A202020205052494D415259204B45592874656C65666F6E652C20636F64446570617274616D656E746F290D0A293B0D0A0D0A4352454154452054';
    wwv_flow_api.g_varchar2_table(31) := '41424C452054656C5F4167656E7465280D0A2020202074656C65666F6E6520564152434841522838292C0D0A20202020636F644167656E74652056415243484152283130292C0D0A202020205052494D415259204B45592874656C65666F6E652C20636F';
    wwv_flow_api.g_varchar2_table(32) := '644167656E7465290D0A293B0D0A0D0A435245415445205441424C45205265637572736F735F506F73746F280D0A202020207265637572736F2056415243484152283130292C0D0A20202020636F6469676F506F73746F2056415243484152283130292C';
    wwv_flow_api.g_varchar2_table(33) := '0D0A20202020636F6469676F4C61622056415243484152283130292C0D0A202020205052494D415259204B4559287265637572736F2C20636F6469676F506F73746F2C20636F6469676F4C6162290D0A293B0D0A0D0A435245415445205441424C452049';
    wwv_flow_api.g_varchar2_table(34) := '6D70726573736F7261735F506F73746F280D0A20202020696D70726573736F72612056415243484152283130292C0D0A20202020636F6469676F506F73746F2056415243484152283130292C0D0A20202020636F6469676F4C6162205641524348415228';
    wwv_flow_api.g_varchar2_table(35) := '3130292C0D0A202020205052494D415259204B455928696D70726573736F72612C20636F6469676F506F73746F2C20636F6469676F4C6162290D0A293B0D0A0D0A0D0A414C544552205441424C4520496D70726573736F7261735F506F73746F0D0A4144';
    wwv_flow_api.g_varchar2_table(36) := '4420434F4E53545241494E5420696D70726573736F726173506F73746F434520464F524549474E204B455928636F6469676F506F73746F2C20636F6469676F4C616229205265666572656E63657320506F73746F5F64655F54726162616C686F28636F64';
    wwv_flow_api.g_varchar2_table(37) := '69676F506F73746F2C20636F6469676F4C6162290D0A494E495449414C4C592044454645525245442044454645525241424C453B0D0A0D0A414C544552205441424C45205265637572736F735F506F73746F0D0A41444420434F4E53545241494E542072';
    wwv_flow_api.g_varchar2_table(38) := '65637572736F73506F73746F434520464F524549474E204B455928636F6469676F506F73746F2C20636F6469676F4C616229205265666572656E63657320506F73746F5F64655F54726162616C686F28636F6469676F506F73746F2C20636F6469676F4C';
    wwv_flow_api.g_varchar2_table(39) := '6162290D0A494E495449414C4C592044454645525245442044454645525241424C453B0D0A0D0A414C544552205441424C452054656C5F4167656E74650D0A41444420434F4E53545241494E54206167656E7465434520464F524549474E204B45592863';
    wwv_flow_api.g_varchar2_table(40) := '6F644167656E746529205265666572656E636573204167656E74655F46696E616E636961646F7228636F6469676F290D0A494E495449414C4C592044454645525245442044454645525241424C453B0D0A0D0A414C544552205441424C452054656C5F44';
    wwv_flow_api.g_varchar2_table(41) := '6570617274616D656E746F0D0A41444420434F4E53545241494E5420646570617274616D656E746F434520464F524549474E204B455928636F64446570617274616D656E746F29205265666572656E63657320446570617274616D656E746F28636F6469';
    wwv_flow_api.g_varchar2_table(42) := '676F290D0A494E495449414C4C592044454645525245442044454645525241424C453B0D0A0D0A414C544552205441424C452050726F6A65746F5F5265616C697A61646F5F4C61620D0A414444202820434F4E53545241494E542070726F6A65746F4345';
    wwv_flow_api.g_varchar2_table(43) := '20464F524549474E204B455928636F6450726F6A29205245464552454E4345532050726F6A65746F28636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C452C0D0A202020202020434F4E53545241494E54206C61';
    wwv_flow_api.g_varchar2_table(44) := '62434520464F524549474E204B455928636F644C616229205245464552454E434553204C61626F7261746F72696F5F64655F506573717569736128636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C4520293B0D';
    wwv_flow_api.g_varchar2_table(45) := '0A0D0A414C544552205441424C45204167656E74655F46696E616E6369615F50726F6A65746F0D0A414444202820434F4E53545241494E54206167656E746546696E616E636961646F7250726F6A65746F434520464F524549474E204B455928636F6441';
    wwv_flow_api.g_varchar2_table(46) := '67656E746529205245464552454E434553204167656E74655F46696E616E636961646F7228636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C452C0D0A202020202020434F4E53545241494E542070726F6A6574';
    wwv_flow_api.g_varchar2_table(47) := '6F46696E616E636961646F434520464F524549474E204B455928636F6450726F6A29205245464552454E4345532050726F6A65746F28636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C4520293B0D0A0D0A414C';
    wwv_flow_api.g_varchar2_table(48) := '544552205441424C452050726F666573736F725F50657371756973615F4C696E68610D0A414444202820434F4E53545241494E542070726F666573736F725065737175697361434520464F524549474E204B4559286D617450726F662920524546455245';
    wwv_flow_api.g_varchar2_table(49) := '4E4345532050726F666573736F72286D61742920494E495449414C4C592044454645525245442044454645525241424C452C0D0A202020202020434F4E53545241494E54206C696E686150657371756973616461434520464F524549474E204B45592863';
    wwv_flow_api.g_varchar2_table(50) := '6F644C696E686129205245464552454E434553204C696E68615F64655F506573717569736128636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C4520293B0D0A0D0A414C544552205441424C452050726F666573';
    wwv_flow_api.g_varchar2_table(51) := '736F725F5061727469636970615F50726F6A65746F0D0A414444202820434F4E53545241494E542070726F666573736F72506172746963697061434520464F524549474E204B4559286D617450726F6629205245464552454E4345532050726F66657373';
    wwv_flow_api.g_varchar2_table(52) := '6F72286D61742920494E495449414C4C592044454645525245442044454645525241424C452C0D0A202020202020434F4E53545241494E542070726F6A65746F506172746963697061646F434520464F524549474E204B455928636F6450726F6A292052';
    wwv_flow_api.g_varchar2_table(53) := '45464552454E4345532050726F6A65746F28636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C4520293B0D0A0D0A414C544552205441424C45204175746F725F506F737375695F54726162616C686F0D0A414444';
    wwv_flow_api.g_varchar2_table(54) := '202820434F4E53545241494E542074726162616C686F434520464F524549474E204B455928636F645472616229205245464552454E4345532054726162616C686F28636F6469676F2920494E495449414C4C592044454645525245442044454645525241';
    wwv_flow_api.g_varchar2_table(55) := '424C452C0D0A202020202020434F4E53545241494E54206175746F72434520464F524549474E204B4559286D61744175746F7229205245464552454E434553204175746F72286D6174726963756C612920494E495449414C4C5920444546455252454420';
    wwv_flow_api.g_varchar2_table(56) := '44454645525241424C4520293B0D0A0D0A414C544552205441424C4520506F73746F5F64655F54726162616C686F0D0A41444420434F4E53545241494E54206C6162506F73746F434520464F524549474E204B455928636F6469676F4C61622920524546';
    wwv_flow_api.g_varchar2_table(57) := '4552454E434553204C61626F7261746F72696F5F64655F506573717569736128636F6469676F290D0A494E495449414C4C592044454645525245442044454645525241424C453B0D0A0D0A414C544552205441424C452050726F6A65746F0D0A41444420';
    wwv_flow_api.g_varchar2_table(58) := '434F4E53545241494E54206C696E686150726F6A65746F434520464F524549474E204B455928636F644C696E686129205245464552454E434553204C696E68615F64655F506573717569736128636F6469676F290D0A494E495449414C4C592044454645';
    wwv_flow_api.g_varchar2_table(59) := '525245442044454645525241424C453B0D0A0D0A414C544552205441424C4520446570617274616D656E746F0D0A41444420434F4E53545241494E542070726F666573736F72446570617274616D656E746F434520464F524549474E204B4559286D6174';
    wwv_flow_api.g_varchar2_table(60) := '50726F6629205245464552454E4345532050726F666573736F72286D6174290D0A494E495449414C4C592044454645525245442044454645525241424C453B0D0A0D0A414C544552205441424C452050726F666573736F720D0A414444202820434F4E53';
    wwv_flow_api.g_varchar2_table(61) := '545241494E54206175746F7250726F666573736F72434520464F524549474E204B4559286D617429205245464552454E434553204175746F72286D6174726963756C612920494E495449414C4C592044454645525245442044454645525241424C452C0D';
    wwv_flow_api.g_varchar2_table(62) := '0A202020202020434F4E53545241494E542070726F6A65746F50726F666573736F72434520464F524549474E204B455928636F6450726F6A29205245464552454E4345532050726F6A65746F28636F6469676F2920494E495449414C4C59204445464552';
    wwv_flow_api.g_varchar2_table(63) := '5245442044454645525241424C4520293B0D0A0D0A414C544552205441424C4520416C756E6F0D0A414444202820434F4E53545241494E54206175746F72416C756E6F434520464F524549474E204B4559286D617429205245464552454E434553204175';
    wwv_flow_api.g_varchar2_table(64) := '746F72286D6174726963756C612920494E495449414C4C592044454645525245442044454645525241424C452C0D0A202020202020434F4E53545241494E542070726F6A65746F416C756E6F434520464F524549474E204B455928636F6450726F6A2920';
    wwv_flow_api.g_varchar2_table(65) := '5245464552454E4345532050726F6A65746F28636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C452C0D0A202020202020434F4E53545241494E54206C696E6861416C756E6F434520464F524549474E204B4559';
    wwv_flow_api.g_varchar2_table(66) := '28636F644C696E686129205245464552454E434553204C696E68615F64655F506573717569736128636F6469676F2920494E495449414C4C592044454645525245442044454645525241424C4520293B0D0A0D0A414C544552205441424C452050617465';
    wwv_flow_api.g_varchar2_table(67) := '6E74650D0A41444420434F4E53545241494E542074726162616C686F506174656E7465434520464F524549474E204B455928636F6429205245464552454E4345532054726162616C686F28636F6469676F290D0A494E495449414C4C5920444546455252';
    wwv_flow_api.g_varchar2_table(68) := '45442044454645525241424C453B0D0A0D0A414C544552205441424C45205075626C69636163616F0D0A41444420434F4E53545241494E542074726162616C686F5075626C69636163616F434520464F524549474E204B455928636F6429205245464552';
    wwv_flow_api.g_varchar2_table(69) := '454E4345532054726162616C686F28636F6469676F290D0A494E495449414C4C592044454645525245442044454645525241424C453B0D0A0D0A414C544552205441424C452054726162616C686F0D0A41444420434F4E53545241494E542070726F6A65';
    wwv_flow_api.g_varchar2_table(70) := '746F54726162616C686F434520464F524549474E204B455928636F6450726F6A29205245464552454E4345532050726F6A65746F28636F6469676F290D0A494E495449414C4C592044454645525245442044454645525241424C453B';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := '1989935883890924017/Grupo4_PF1';
  wwv_flow_api.import_script(
    p_name          => l_name,
    p_varchar2_table=> wwv_flow_api.g_varchar2_table,
    p_pathid=> null,
    p_filename=> 'Grupo4_PF1',
    p_title=> 'Grupo4_PF1',
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