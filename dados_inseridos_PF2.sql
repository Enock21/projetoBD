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
-- Exported 21:04 Sexta-Feira Maio 14, 2021 by: ENOCK.SOUZA@CCC.UFCG.EDU.BR
-- Scripts included:
--      ENOCK.SOUZA@CCC.UFCG.EDU.BR
 
begin wwv_flow.g_user := nvl(wwv_flow.g_user,'ENOCK.SOUZA@CCC.UFCG.EDU.BR'); end;
/
prompt --application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '494E5345525420494E544F2043617465676F7269612056616C75657328322C2027616C696D656E746F7327293B0D0A0D0A494E5345525420494E544F2050726F6475746F2056616C75657328322C20276D696F6A6F272C20312E30302C20544F5F444154';
    wwv_flow_api.g_varchar2_table(2) := '452827323032312F30352F3033272C2027797979792F6D6D2F646427292C2027756D206D696F6A6F272C202763617573612063616E636572272C20544F5F444154452827323032322F30352F3033272C2027797979792F6D6D2F646427292C2031293B0D';
    wwv_flow_api.g_varchar2_table(3) := '0A0D0A494E5345525420494E544F20456E64657265636F2056616C75657328322C202741272C202741272C202741272C202741272C202741272C20274127293B0D0A0D0A494E5345525420494E544F20436C69656E74652056616C75657328322C202741';
    wwv_flow_api.g_varchar2_table(4) := '726D616E646F272C202764612053696C7661272C202761726D616E646F40676D61696C272C20544F5F444154452827313938372F30352F3033272C2027797979792F6D6D2F646427292C20302C20274D617363756C696E6F272C20544F5F444154452827';
    wwv_flow_api.g_varchar2_table(5) := '323031322F30352F3033272C2027797979792F6D6D2F646427292C206E756C6C2C2031293B0D0A0D0A494E5345525420494E544F204E6F74615F46697363616C2056616C75657328322C202731272C202731272C2027696E7363726963616F2065737461';
    wwv_flow_api.g_varchar2_table(6) := '6475616C2041272C202763686176652041272C20312E3030293B0D0A0D0A494E5345525420494E544F205472616E73706F727461646F72612056616C75657328322C20275472616E73706F727461646F72612041272C2027456D61696C205441272C2027';
    wwv_flow_api.g_varchar2_table(7) := '54656C2041272C2027536974652041272C2031293B0D0A0D0A494E5345525420494E544F204F7264656D5F64655F436F6D7072612056616C75657328322C20544F5F444154452827323032312F30352F3033272C2027797979792F6D6D2F646427292C20';
    wwv_flow_api.g_varchar2_table(8) := '27414755415244414E444F20504147414D454E544F272C2030302E30302C2030302E30302C20312C20312C20312C2031293B0D0A0D0A434F4D4D49543B';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := '5182975100989250464/dados_inseridos_PF2';
  wwv_flow_api.import_script(
    p_name          => l_name,
    p_varchar2_table=> wwv_flow_api.g_varchar2_table,
    p_pathid=> null,
    p_filename=> 'dados_inseridos_PF2',
    p_title=> 'dados_inseridos_PF2',
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
