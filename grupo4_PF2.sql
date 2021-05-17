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
,p_default_workspace_id=>45665955479994913968
);
end;
/
-- Oracle Application Express 21.1.0 SQL Script Export file
-- Exported 14:32 Segunda-Feira Maio 17, 2021 by: PEDROKUSHIRO@GMAIL.COM
-- Scripts included:
--      PEDROKUSHIRO@GMAIL.COM
 
begin wwv_flow.g_user := nvl(wwv_flow.g_user,'PEDROKUSHIRO@GMAIL.COM'); end;
/
prompt --application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '2D2D456E6F636B2042657A6572726120466572726569726120646520536F757A613B203131383231303531320D0A2D2D5669746F72204D6F7461204C656974652044696E697A3B203131383231303337390D0A0D0A0D0A2D2D5175657374C3A36F20313A';
    wwv_flow_api.g_varchar2_table(2) := '0D0A0D0A53454C454354204341502E44455343524943414F2C204341502E4E4F54410D0A46524F4D204F5244454D5F44455F434F4D505241204F432C2050524F4455544F20502C20434F4D5052415F4156414C49415F50524F4455544F204341500D0A57';
    wwv_flow_api.g_varchar2_table(3) := '48455245204341502E434F4449474F5F50524F4455544F203D20502E434F4449474F20414E4420502E505245434F203C204F432E56414C4F525F465245544520414E44204341502E434F4449474F5F434F4D505241203D204F432E434F4449474F3B0D0A';
    wwv_flow_api.g_varchar2_table(4) := '0D0A0D0A2D2D5175657374C3A36F20323A0D0A0D0A53454C45435420434C492E454D41494C2C20434C492E4E4F4D450D0A46524F4D20434C49454E544520434C492C20484953544F5249434F20482C2050524F4455544F20500D0A574845524520202043';
    wwv_flow_api.g_varchar2_table(5) := '4C492E434F4449474F203D20482E434F4449474F5F434C49454E544520414E440D0A2020202020202020502E4E4F4D45203D20274361626F2048444D492720414E440D0A2020202020202020482E54454D504F5F504147494E41203E20330D0A494E5445';
    wwv_flow_api.g_varchar2_table(6) := '52534543540D0A53454C45435420434C492E454D41494C2C20434C492E4E4F4D450D0A46524F4D20434C49454E544520434C490D0A5748455245204E4F54204558495354532028202053454C454354202A0D0A2020202020202020202020202020202020';
    wwv_flow_api.g_varchar2_table(7) := '20202046524F4D2050524F4455544F20502C2043415252494E484F204341522C2043415252494E484F5F54454D5F50524F4455544F204354500D0A20202020202020202020202020202020202020205748455245202020434C492E434F4449474F203D20';
    wwv_flow_api.g_varchar2_table(8) := '4341522E434F4449474F5F434C49454E544520414E440D0A202020202020202020202020202020202020202020202020202020204341522E434F4449474F203D204354502E434F4449474F5F43415252494E484F20414E440D0A20202020202020202020';
    wwv_flow_api.g_varchar2_table(9) := '2020202020202020202020202020202020204354502E434F4449474F5F50524F4455544F203D20502E434F4449474F20414E440D0A20202020202020202020202020202020202020202020202020202020502E4E4F4D45203D20274361626F2048444D49';
    wwv_flow_api.g_varchar2_table(10) := '27293B0D0A0D0A2D2D5175657374616F20330D0A0D0A53454C45435420432E4E4F4D45200D0A46524F4D20434F4D5052415F504F535355495F50524F4455544F204350502C2050524F4455544F20502C204F5244454D5F44455F434F4D505241204F4443';
    wwv_flow_api.g_varchar2_table(11) := '2C20434C49454E54452043200D0A5748455245204F44432E434F4449474F5F434C49454E5445203D20432E434F4449474F0D0A20202020414E44204F44432E434F4449474F203D204350502E434F4449474F5F434F4D5052410D0A20202020414E442043';
    wwv_flow_api.g_varchar2_table(12) := '50502E434F4449474F5F50524F4455544F203D20502E434F4449474F0D0A20202020414E44204350502E5155414E544944414445203E20340D0A20202020414E4420502E4E4F4D45203D20274368757272617371756569726120456CC3A9747269636120';
    wwv_flow_api.g_varchar2_table(13) := '636F6D20436F6E74726F6C652052656D6F746F270D0A0D0A2D2D5175657374C3A36F20343A0D0A0D0A53454C45435420462E4E4F4D450D0A46524F4D20464F524E454345444F5220460D0A5748455245202853454C4543542041564728502E505245434F';
    wwv_flow_api.g_varchar2_table(14) := '290D0A202020202020202046524F4D20464F524E454345444F525F464F524E4543455F50524F4455544F2046502C2050524F4455544F20500D0A2020202020202020574845524520202046502E434F4449474F5F50524F4455544F203D20502E434F4449';
    wwv_flow_api.g_varchar2_table(15) := '474F20414E440D0A2020202020202020202020202020202046502E434F4449474F5F464F524E454345444F52203D20462E434F4449474F29203E3D203234312E30300D0A0D0A0D0A0D0A2D2D7175657374616F20350D0A0D0A53454C45435420502E4E4F';
    wwv_flow_api.g_varchar2_table(16) := '4D450D0A46524F4D20454E44455245434F20452C2043454E54524F5F44455F44495354524942554943414F204344442C2050524F445F4553544F4341444F5F43454E545F4449535420504543442C2050524F4455544F2050200D0A574845524520502E43';
    wwv_flow_api.g_varchar2_table(17) := '4F4449474F203D20504543442E434F4449474F5F50524F4455544F0D0A20202020414E4420504543442E434F4449474F5F43454E54524F5F44495354524942554943414F203D204344442E434F4449474F0D0A20202020414E44204344442E434F444947';
    wwv_flow_api.g_varchar2_table(18) := '4F5F454E44455245434F203D20452E434F4449474F0D0A20202020414E4420504543442E5155414E544944414445203E203130300D0A20202020414E4420452E45535441444F203D202753C3A36F205061756C6F270D0A0D0A2D2D7175657374616F2036';
    wwv_flow_api.g_varchar2_table(19) := '0D0A0D0A53454C45435420502E4E4F4D452C20504543442E5155414E5449444144452C204344442E4E4F4D45200D0A46524F4D2043454E54524F5F44455F44495354524942554943414F204344442C2050524F445F4553544F4341444F5F43454E545F44';
    wwv_flow_api.g_varchar2_table(20) := '49535420504543442C2050524F4455544F2050200D0A574845524520502E434F4449474F203D20504543442E434F4449474F5F50524F4455544F0D0A20202020414E4420504543442E434F4449474F5F43454E54524F5F44495354524942554943414F20';
    wwv_flow_api.g_varchar2_table(21) := '3D204344442E434F4449474F0D0A202020202D2D61696E64612070726563697361206F7264656E6172206120746162656C61206465207175616E746964616465732C20646520666F726D6120717565206F732063656E74726F7320646520646F73747269';
    wwv_flow_api.g_varchar2_table(22) := '62756963616F20636F6D206D61696F72207175616E74696120646F2070726F6475746F20617061726563616D207072696D6569726F20286F7264656D2064656372657363656E7465293B0D0A0D0A2D2D7175657374616F20370D0A0D0A53454C45435420';
    wwv_flow_api.g_varchar2_table(23) := '452E4349444144450D0A46524F4D20454E44455245434F20452C2043454E54524F5F44455F44495354524942554943414F204344442C2050524F445F4553544F4341444F5F43454E545F4449535420504543442C2043415445474F52494120432C205052';
    wwv_flow_api.g_varchar2_table(24) := '4F4455544F2050200D0A574845524520502E434F4449474F5F43415445474F524941203D20432E434F4449474F0D0A20202020414E4420502E434F4449474F203D20504543442E434F4449474F5F50524F4455544F0D0A20202020414E4420504543442E';
    wwv_flow_api.g_varchar2_table(25) := '434F4449474F5F43454E54524F5F44495354524942554943414F203D204344442E434F4449474F0D0A20202020414E44204344442E434F4449474F5F454E44455245434F203D20452E434F4449474F0D0A20202020414E4420432E4E4F4D45203D20276C';
    wwv_flow_api.g_varchar2_table(26) := '696D70657A61270D0A20202020414E4420504543442E5155414E544944414445203E20300D0A0D0A0D0A2D2D5175657374C3A36F20383A0D0A0D0A53454C45435420502E2A0D0A46524F4D2050524F4455544F20500D0A5748455245204E4F5420455849';
    wwv_flow_api.g_varchar2_table(27) := '5354532028202053454C454354202A0D0A202020202020202020202020202020202020202046524F4D20484953544F5249434F20482C20434C49454E544520432C20454E44455245434F20450D0A20202020202020202020202020202020202020205748';
    wwv_flow_api.g_varchar2_table(28) := '45524520482E434F4449474F5F50524F4455544F203D20502E434F4449474F20414E440D0A20202020202020202020202020202020202020202020202020202020482E434F4449474F5F434C49454E5445203D20432E434F4449474F20414E440D0A2020';
    wwv_flow_api.g_varchar2_table(29) := '2020202020202020202020202020202020202020202020202020432E434F4449474F5F454E44455245434F203D20452E434F4449474F20414E440D0A20202020202020202020202020202020202020202020202020202020452E45535441444F203D2027';
    wwv_flow_api.g_varchar2_table(30) := '53502720414E440D0A20202020202020202020202020202020202020202020202020202020482E46494E414C495A4F55203D202753494D27293B0D0A0D0A2D2D7175657374616F20390D0A0D0A53454C454354206D6178284350502E56414C4F525F4154';
    wwv_flow_api.g_varchar2_table(31) := '55414C290D0A46524F4D204F5244454D5F44455F434F4D505241204F44502C20454E44455245434F20452C20434C49454E544520432C20434F4D5052415F504F535355495F50524F4455544F20435050200D0A5748455245204350502E434F4449474F5F';
    wwv_flow_api.g_varchar2_table(32) := '434F4D505241203D204F44502E434F4449474F0D0A20202020414E44204F44502E434F4449474F5F434C49454E5445203D20432E434F4449474F0D0A20202020414E4420432E434F4449474F5F454E44455245434F203D20452E434F4449474F0D0A2020';
    wwv_flow_api.g_varchar2_table(33) := '2020414E4420452E45535441444F203D202750617261C3AD6261270D0A20202020414E4420452E434944414445203D202743616D70696E61204772616E6465270D0A0D0A202020202D2D636F6469676F2070656761206170656E617320636F6D70726120';
    wwv_flow_api.g_varchar2_table(34) := '6D6169732063617261206461206369646164652064652063616D70696E61206772616E6465206E6120706172616962612C2061696E646120707265636973612064617220696E7465727365637420636F6D206F7320636C69656E746573206E6173636964';
    wwv_flow_api.g_varchar2_table(35) := '6F73206E61206465636164612064652039300D0A202020202D2D6F20717565206575206E616F207365692066617A65722E0D0A0D0A2D2D7175657374616F2031300D0A0D0A53454C45435420542E4E4F4D450D0A46524F4D2050524F4455544F20502C20';
    wwv_flow_api.g_varchar2_table(36) := '434F4D5052415F504F535355495F50524F4455544F204350502C205452414E53504F525441444F524120542C204F5244454D5F44455F434F4D505241204F4443200D0A574845524520542E434F4449474F203D204F44432E434F4449474F5F5452414E53';
    wwv_flow_api.g_varchar2_table(37) := '504F525441444F52410D0A20202020414E44204F44432E434F4449474F203D204350502E434F4449474F5F434F4D5052410D0A20202020414E44204350502E434F4449474F5F50524F4455544F203D20502E434F4449474F0D0A20202020414E4420502E';
    wwv_flow_api.g_varchar2_table(38) := '4E4F4D4520203D2027466F67C3A36F203720426F636173270D0A0D0A202020202D2D6C69737461206F206E6F6D6520646173207472616E73706F727461646F72617320717565206A61207265616C697A6172616D20656E74726567617320646F2070726F';
    wwv_flow_api.g_varchar2_table(39) := '6475746F20636F6D206E6F6D6520466F67616F203720426F6361730D0A202020202D2D2061207175657374616F2070656465206173207472616E73706F727461646F72617320717565206E756E6361207265616C697A6172616D206573736120656E7472';
    wwv_flow_api.g_varchar2_table(40) := '6567612E0D0A0D0A2D2D5175657374616F2031310D0A0D0A53454C45435420462E4E4F4D450D0A2046524F4D2043415445474F52494120432C2050524F4455544F20502C20464F524E454345444F525F464F524E4543455F50524F4455544F204646502C';
    wwv_flow_api.g_varchar2_table(41) := '20464F524E454345444F522046200D0A20574845524520462E434F4449474F203D204646502E434F4449474F5F464F524E454345444F520D0A20202020414E44204646502E434F4449474F5F50524F4455544F203D20502E434F4449474F0D0A20202020';
    wwv_flow_api.g_varchar2_table(42) := '414E4420502E434F4449474F5F43415445474F524941203D20432E434F4449474F0D0A20202020414E4420432E4E4F4D4520213D20275665726475726173270D0A494E544552534543540D0A53454C45435420462E4E4F4D4520200D0A2046524F4D2043';
    wwv_flow_api.g_varchar2_table(43) := '415445474F52494120432C2050524F4455544F20502C20464F524E454345444F525F464F524E4543455F50524F4455544F204646502C20464F524E454345444F522046200D0A20574845524520462E434F4449474F203D204646502E434F4449474F5F46';
    wwv_flow_api.g_varchar2_table(44) := '4F524E454345444F520D0A20202020414E44204646502E434F4449474F5F50524F4455544F203D20502E434F4449474F0D0A20202020414E4420502E434F4449474F5F43415445474F524941203D20432E434F4449474F0D0A20202020414E4420432E4E';
    wwv_flow_api.g_varchar2_table(45) := '4F4D4520213D202754656D7065726F73270D0A0D0A2D2D5155455354414F203133202D2D0D0A0D0A4352454154452056494557206E6F7661566973616F2041530D0A2020202053454C454354206F2E636F6469676F2C207374617475732C20702E636F64';
    wwv_flow_api.g_varchar2_table(46) := '69676F20617320636F6469676F5F70726F6475746F2C20702E6E6F6D65206173206E6F6D655F70726F6475746F2C20636C692E6E6F6D65206173206E6F6D655F636C69656E74652C20636C692E636F6469676F20617320636F6469676F5F636C69656E74';
    wwv_flow_api.g_varchar2_table(47) := '650D0A2020202046524F4D204F5244454D5F44455F434F4D505241206F202C2050524F4455544F20702C20434C49454E544520636C690D0A202020205748455245206F2E636F6469676F203D20702E636F6469676F0D0A0D0A2D2D5155455354414F2031';
    wwv_flow_api.g_varchar2_table(48) := '34202D2D0D0A0D0A435245415445204F52205245504C414345205452494747455220617475616C697A615020414654455220494E53455254204F5220555044415445204F4620737461747573206F6E204F5244454D5F44455F434F4D5052410D0A464F52';
    wwv_flow_api.g_varchar2_table(49) := '204541434820524F570D0A5748454E286E65772E737461747573203D202746494E414C495A41444127290D0A424547494E0D0A55504441544520436C69656E746520636C690D0A53455420636C692E706F6E746F73203D20636C692E706F6E746F73202B';
    wwv_flow_api.g_varchar2_table(50) := '203130303B0D0A454E443B0D0A';
end;
/
 
declare
  l_name   varchar2(255);
begin
  l_name   := 'F5673871463579608573/Grupo4_PF2';
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
