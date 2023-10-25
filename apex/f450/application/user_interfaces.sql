prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 450
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(44893356055877273)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.'
,p_login_url=>'f?p=127:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(44705736116877146)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(44853426342877234)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_FILES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(44893022458877272)
,p_nav_bar_list_template_id=>wwv_flow_api.id(44856215252877235)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_api.component_end;
end;
/
