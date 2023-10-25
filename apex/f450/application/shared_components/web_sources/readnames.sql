prompt --application/shared_components/web_sources/readnames
begin
--   Manifest
--     WEB SOURCE: ReadNames
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(45002988176884700)
,p_name=>'ReadNames'
,p_static_id=>'ReadNames'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_remote_server_id=>wwv_flow_api.id(26801286067509717)
,p_url_path_prefix=>'/adresser/autocomplete'
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(45003663832884704)
,p_web_src_module_id=>wwv_flow_api.id(45002988176884700)
,p_name=>'q'
,p_param_type=>'QUERY_STRING'
,p_is_required=>false
,p_value=>'Holbergs'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(45003232328884702)
,p_web_src_module_id=>wwv_flow_api.id(45002988176884700)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_caching=>'ALL_USERS'
);
wwv_flow_api.component_end;
end;
/
