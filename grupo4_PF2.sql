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
-- Exported 13:35 Sábado Maio 15, 2021 by: ENOCK.SOUZA@CCC.UFCG.EDU.BR
-- Scripts included:
--      ENOCK.SOUZA@CCC.UFCG.EDU.BR
 
begin wwv_flow.g_user := nvl(wwv_flow.g_user,'ENOCK.SOUZA@CCC.UFCG.EDU.BR'); end;
/
prompt --application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '2D2D456E6F636B2042657A6572726120466572726569726120646520536F757A613B203131383231303531320D0A0D0A2D2D5175657374C3A36F20313A0D0A0D0A53454C454354204341502E44455343524943414F2C204341502E4E4F54410D0A46524F';
    wwv_flow_api.g_varchar2_table(2) := '4D204F5244454D5F44455F434F4D505241204F432C2050524F4455544F20502C20434F4D5052415F4156414C49415F50524F4455544F204341500D0A5748455245204341502E434F4449474F5F50524F4455544F203D20502E434F4449474F20414E4420';
    wwv_flow_api.g_varchar2_table(3) := '502E505245434F203C204F432E56414C4F525F465245544520414E44204341502E434F4449474F5F434F4D505241203D204F432E434F4449474F3B';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := '5124584232503599342/Grupo4_PF2';
  wwv_flow_api.import_script(
    p_name          => l_name,
    p_varchar2_table=> wwv_flow_api.g_varchar2_table,
    p_pathid=> null,
    p_filename=> 'Grupo4_PF2',
    p_title=> 'Grupo4_PF2',
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
