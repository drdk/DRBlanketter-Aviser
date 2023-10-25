prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 450
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(44871664340877256)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(44733013217877171)
,p_default_dialog_template=>wwv_flow_api.id(44712926235877161)
,p_error_template=>wwv_flow_api.id(44714459922877162)
,p_printer_friendly_template=>wwv_flow_api.id(44733013217877171)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(44714459922877162)
,p_default_button_template=>wwv_flow_api.id(44868645816877245)
,p_default_region_template=>wwv_flow_api.id(44786795637877201)
,p_default_chart_template=>wwv_flow_api.id(44786795637877201)
,p_default_form_template=>wwv_flow_api.id(44786795637877201)
,p_default_reportr_template=>wwv_flow_api.id(44786795637877201)
,p_default_tabform_template=>wwv_flow_api.id(44786795637877201)
,p_default_wizard_template=>wwv_flow_api.id(44786795637877201)
,p_default_menur_template=>wwv_flow_api.id(44799011924877205)
,p_default_listr_template=>wwv_flow_api.id(44786795637877201)
,p_default_irr_template=>wwv_flow_api.id(44782484569877199)
,p_default_report_template=>wwv_flow_api.id(44831097678877221)
,p_default_label_template=>wwv_flow_api.id(44866194635877242)
,p_default_menu_template=>wwv_flow_api.id(44870230918877246)
,p_default_calendar_template=>wwv_flow_api.id(44870389835877248)
,p_default_list_template=>wwv_flow_api.id(44864235062877239)
,p_default_nav_list_template=>wwv_flow_api.id(44855236658877235)
,p_default_top_nav_list_temp=>wwv_flow_api.id(44855236658877235)
,p_default_side_nav_list_temp=>wwv_flow_api.id(44853426342877234)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(44744421479877180)
,p_default_dialogr_template=>wwv_flow_api.id(44741662278877179)
,p_default_option_label=>wwv_flow_api.id(44866194635877242)
,p_default_required_label=>wwv_flow_api.id(44867475320877243)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(44856215252877235)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
