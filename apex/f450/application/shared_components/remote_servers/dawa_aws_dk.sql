prompt --application/shared_components/remote_servers/dawa_aws_dk
begin
--   Manifest
--     REMOTE SERVER: dawa-aws-dk
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(26801286067509717)
,p_name=>'dawa-aws-dk'
,p_static_id=>'dawa_aws_dk'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('dawa_aws_dk'),'http://dawa.aws.dk/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('dawa_aws_dk'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('dawa_aws_dk'),'')
,p_prompt_on_install=>false
);
wwv_flow_api.component_end;
end;
/
