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
-- Exported 18:27 Sábado Maio 15, 2021 by: ENOCK.SOUZA@CCC.UFCG.EDU.BR
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
    wwv_flow_api.g_varchar2_table(3) := '502E505245434F203C204F432E56414C4F525F465245544520414E44204341502E434F4449474F5F434F4D505241203D204F432E434F4449474F3B0D0A0D0A0D0A2D2D5175657374C3A36F20323A0D0A0D0A53454C45435420434C492E454D41494C2C20';
    wwv_flow_api.g_varchar2_table(4) := '434C492E4E4F4D450D0A46524F4D20434C49454E544520434C492C20484953544F5249434F20482C2050524F4455544F20500D0A5748455245202020434C492E434F4449474F203D20482E434F4449474F5F434C49454E544520414E440D0A2020202020';
    wwv_flow_api.g_varchar2_table(5) := '202020502E4E4F4D45203D20274361626F2048444D492720414E440D0A2020202020202020482E54454D504F5F504147494E41203E20330D0A494E544552534543540D0A53454C45435420434C492E454D41494C2C20434C492E4E4F4D450D0A46524F4D';
    wwv_flow_api.g_varchar2_table(6) := '20434C49454E544520434C490D0A5748455245204E4F54204558495354532028202053454C454354202A0D0A202020202020202020202020202020202020202046524F4D2050524F4455544F20502C2043415252494E484F204341522C2043415252494E';
    wwv_flow_api.g_varchar2_table(7) := '484F5F54454D5F50524F4455544F204354500D0A20202020202020202020202020202020202020205748455245202020434C492E434F4449474F203D204341522E434F4449474F5F434C49454E544520414E440D0A202020202020202020202020202020';
    wwv_flow_api.g_varchar2_table(8) := '202020202020202020202020204341522E434F4449474F203D204354502E434F4449474F5F43415252494E484F20414E440D0A202020202020202020202020202020202020202020202020202020204354502E434F4449474F5F50524F4455544F203D20';
    wwv_flow_api.g_varchar2_table(9) := '502E434F4449474F20414E440D0A20202020202020202020202020202020202020202020202020202020502E4E4F4D45203D20274361626F2048444D492729';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := '5310657255479091444/Grupo4_PF2';
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
