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
-- Oracle Application Express 21.1.0 SQL Script Export file
-- Exported 22:31 Sábado Maio 15, 2021 by: ENOCK.SOUZA@CCC.UFCG.EDU.BR
-- Scripts included:
--      ENOCK.SOUZA@CCC.UFCG.EDU.BR
 
begin wwv_flow.g_user := nvl(wwv_flow.g_user,'ENOCK.SOUZA@CCC.UFCG.EDU.BR'); end;
/
prompt --application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '2D2D4441444F532050415241205445535441522041205155455354414F20383A2D2D0D0A0D0A2D2D436F6E6A756E746F203120636F6D2070726F6475746F20274361626F2048444D492720717565206E756E636120666F6920636F6D707261646F20706F';
    wwv_flow_api.g_varchar2_table(2) := '7220636C69656E74652064652053C3A36F205061756C6F2028657370657261646F293A2D2D0D0A494E5345525420494E544F2043617465676F7269612056616C75657328312C2027656C6574726F6E69636F7327293B0D0A0D0A494E5345525420494E54';
    wwv_flow_api.g_varchar2_table(3) := '4F2050726F6475746F2056616C75657328312C20274361626F2048444D49272C2032302E30302C20544F5F444154452827323032312F30352F3033272C2027797979792F6D6D2F646427292C20276361626F2048444D492064657363726963616F272C20';
    wwv_flow_api.g_varchar2_table(4) := '276361626F2048444D49206573706566696369636163616F272C20544F5F444154452827323032322F30352F3033272C2027797979792F6D6D2F646427292C2031293B0D0A0D0A494E5345525420494E544F20456E64657265636F2056616C7565732831';
    wwv_flow_api.g_varchar2_table(5) := '2C202741272C202741272C202741272C202741272C20274446272C20274127293B0D0A0D0A494E5345525420494E544F20436C69656E74652056616C75657328312C202741726D616E646F272C202764612053696C7661272C202761726D616E646F4067';
    wwv_flow_api.g_varchar2_table(6) := '6D61696C272C20544F5F444154452827313938372F30352F3033272C2027797979792F6D6D2F646427292C20302C20274D617363756C696E6F272C20544F5F444154452827323031322F30352F3033272C2027797979792F6D6D2F646427292C206E756C';
    wwv_flow_api.g_varchar2_table(7) := '6C2C2031293B0D0A0D0A494E5345525420494E544F20484953544F5249434F2056414C5545532028312C20544F5F444154452827323032312F30352F3033272C2027797979792F6D6D2F646427292C20342C202753494D272C20312C2031293B0D0A0D0A';
    wwv_flow_api.g_varchar2_table(8) := '0D0A2D2D436F6E6A756E746F203220636F6D2070726F6475746F202743656C756C6172204D6F746F726F6C612720636F6D707261646F20706F7220636C69656E7465206465205065726E616D6275636F3A2D2D0D0A494E5345525420494E544F2050726F';
    wwv_flow_api.g_varchar2_table(9) := '6475746F2056616C75657328322C202743656C756C6172204D6F746F726F6C61272C203630302E30302C20544F5F444154452827323032312F30352F3033272C2027797979792F6D6D2F646427292C202763656C756C61722064657363726963616F272C';
    wwv_flow_api.g_varchar2_table(10) := '202763656C756C6172206573706566696369636163616F272C20544F5F444154452827323032322F30352F3033272C2027797979792F6D6D2F646427292C2031293B0D0A0D0A494E5345525420494E544F20456E64657265636F2056616C75657328322C';
    wwv_flow_api.g_varchar2_table(11) := '202742272C202742272C202742272C202742272C20275045272C20274227293B0D0A0D0A494E5345525420494E544F20436C69656E74652056616C75657328322C20274361726C6F73272C202742657A65727261272C20276361726C6F7340676D61696C';
    wwv_flow_api.g_varchar2_table(12) := '272C20544F5F444154452827313938372F30352F3033272C2027797979792F6D6D2F646427292C20302C20274D617363756C696E6F272C20544F5F444154452827323031322F30352F3033272C2027797979792F6D6D2F646427292C206E756C6C2C2032';
    wwv_flow_api.g_varchar2_table(13) := '293B0D0A0D0A494E5345525420494E544F20484953544F5249434F2056414C5545532028322C20544F5F444154452827323032312F30352F3033272C2027797979792F6D6D2F646427292C20322C202753494D272C20322C2032293B0D0A0D0A0D0A2D2D';
    wwv_flow_api.g_varchar2_table(14) := '436F6E6A756E746F203320636F6D2070726F6475746F202743656C756C6172204D6F746F726F6C612720636F6D707261646F20706F7220636C69656E74652064652053C3A36F205061756C6F3A2D2D0D0A494E5345525420494E544F20456E6465726563';
    wwv_flow_api.g_varchar2_table(15) := '6F2056616C75657328332C202743272C202743272C202743272C202743272C20275350272C20274327293B0D0A0D0A494E5345525420494E544F20436C69656E74652056616C75657328332C20274D6172697361272C20274665727265697261272C2027';
    wwv_flow_api.g_varchar2_table(16) := '6D617269736140676D61696C272C20544F5F444154452827313938372F30352F3033272C2027797979792F6D6D2F646427292C20302C202746656D696E696E6F272C20544F5F444154452827323031322F30352F3033272C2027797979792F6D6D2F6464';
    wwv_flow_api.g_varchar2_table(17) := '27292C206E756C6C2C2033293B0D0A0D0A494E5345525420494E544F20484953544F5249434F2056414C5545532028332C20544F5F444154452827323032312F30352F3033272C2027797979792F6D6D2F646427292C20322C202753494D272C20322C20';
    wwv_flow_api.g_varchar2_table(18) := '33293B0D0A0D0A0D0A2D2D436F6E6A756E746F203420636F6D2070726F6475746F202743656C756C61722053616E73756E672720636F6D20636F6D707261206EC3A36F2066696E616C697A61646120706F7220636C69656E74652064652053C3A36F2050';
    wwv_flow_api.g_varchar2_table(19) := '61756C6F2028657370657261646F293A2D2D0D0A494E5345525420494E544F2050726F6475746F2056616C75657328332C202743656C756C61722053616E73756E67272C203630302E30302C20544F5F444154452827323032312F30352F3033272C2027';
    wwv_flow_api.g_varchar2_table(20) := '797979792F6D6D2F646427292C202763656C756C61722064657363726963616F272C202763656C756C6172206573706566696369636163616F272C20544F5F444154452827323032322F30352F3033272C2027797979792F6D6D2F646427292C2031293B';
    wwv_flow_api.g_varchar2_table(21) := '0D0A0D0A494E5345525420494E544F20436C69656E74652056616C75657328342C20274C617261272C202764612053696C7661272C20276C61726140676D61696C272C20544F5F444154452827313938372F30352F3033272C2027797979792F6D6D2F64';
    wwv_flow_api.g_varchar2_table(22) := '6427292C20302C202746656D696E696E6F272C20544F5F444154452827323031322F30352F3033272C2027797979792F6D6D2F646427292C206E756C6C2C2033293B0D0A0D0A494E5345525420494E544F20484953544F5249434F2056414C5545532028';
    wwv_flow_api.g_varchar2_table(23) := '342C20544F5F444154452827323032312F30352F3033272C2027797979792F6D6D2F646427292C20322C20274E414F272C20332C2033293B';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := '5358294272881879995/dados_teste8_PF2';
  wwv_flow_api.import_script(
    p_name          => l_name,
    p_varchar2_table=> wwv_flow_api.g_varchar2_table,
    p_pathid=> null,
    p_filename=> 'dados_teste8_PF2',
    p_title=> 'dados_teste8_PF2',
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
