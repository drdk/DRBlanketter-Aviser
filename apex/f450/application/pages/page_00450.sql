prompt --application/pages/page_00450
begin
--   Manifest
--     PAGE: 00450
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page(
 p_id=>450
,p_user_interface_id=>wwv_flow_api.id(44893356055877273)
,p_name=>'Avisabonnementer'
,p_alias=>'AVISABONNEMENTER'
,p_step_title=>'Avisabonnementer'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doActionDialog(pAddress,pfieldId){',
'',
'//      alert("doActionDialog:" + pAddress);',
'      apex.item(''P450_ADDRESS''+pfieldId).setValue(pAddress);  ',
'//      apex.event.trigger(''#P450_ADDRESS'', ''doActionDialog'', '''');',
'    $x_Hide(''adresseListe'');',
'//javascript:closeModal(''AnvisningRegion'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RUJO'
,p_last_upd_yyyymmddhh24miss=>'20231020105343'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67967190266894711)
,p_plug_name=>'4. Leveringsdetaljer'
,p_region_template_options=>'#DEFAULT#:t-Region--controlsPosEnd:is-collapsed:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px"'
,p_plug_template=>wwv_flow_api.id(44750332354877183)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P450_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'')'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94076563277692941)
,p_plug_name=>'AdresseListe'
,p_region_name=>'adresseListe'
,p_parent_plug_id=>wwv_flow_api.id(67967190266894711)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(44782484569877199)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_api.id(45002988176884700)
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P450_ADDRESS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94076697863692943)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'KLCH'
,p_internal_uid=>94076697863692943
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44908801586884607)
,p_db_column_name=>'TEKST'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Adresser'
,p_sync_form_label=>'N'
,p_column_link=>'javascript:doActionDialog("#TEKST#","");'
,p_column_linktext=>'#TEKST#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44909256871884609)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44909613911884609)
,p_db_column_name=>'HREF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Href'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44910071038884609)
,p_db_column_name=>'VEJNAVN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vejnavn'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44910402811884610)
,p_db_column_name=>'HUSNR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Husnr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44910889338884610)
,p_db_column_name=>'ETAGE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Etage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44911233216884610)
,p_db_column_name=>unistr('C_D\00D8R_')
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('C D\00F8r')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44911693161884610)
,p_db_column_name=>'SUPPLERENDEBYNAVN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Supplerendebynavn'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44912009586884610)
,p_db_column_name=>'POSTNR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Postnr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44912460654884611)
,p_db_column_name=>'POSTNRNAVN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Postnrnavn'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44912895232884611)
,p_db_column_name=>'STORMODTAGERPOSTNR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Stormodtagerpostnr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44913269230884611)
,p_db_column_name=>'STORMODTAGERPOSTNRNAVN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Stormodtagerpostnrnavn'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94119962881897992)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'247026'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('TEKST:ID:HREF:VEJNAVN:HUSNR:ETAGE:C_D\00D8R_:SUPPLERENDEBYNAVN:POSTNR:POSTNRNAVN:STORMODTAGERPOSTNR:STORMODTAGERPOSTNRNAVN')
);
wwv_flow_api.create_web_source_comp_param(
 p_id=>wwv_flow_api.id(44908492553884601)
,p_page_id=>450
,p_web_src_param_id=>wwv_flow_api.id(45003663832884704)
,p_page_plug_id=>wwv_flow_api.id(94076563277692941)
,p_value_type=>'ITEM'
,p_value=>'P450_ADDRESS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80324146258476884)
,p_plug_name=>'3. Avis og abonnementstype'
,p_region_name=>'periods'
,p_region_template_options=>'#DEFAULT#:t-Region--controlsPosEnd:is-collapsed:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px"'
,p_plug_template=>wwv_flow_api.id(44750332354877183)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P450_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'')'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(85417260711378258)
,p_plug_name=>'1. Bestilling'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px"'
,p_plug_template=>wwv_flow_api.id(44786795637877201)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P450_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'');'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(85417403156378259)
,p_plug_name=>'Handlinger'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(44786795637877201)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(85745200081941478)
,p_name=>'Kommentarer'
,p_template=>wwv_flow_api.id(44750332354877183)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--controlsPosEnd:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_region_attributes=>'style="width:1050px"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    apex_string.get_initials(a.user_name, 4)   AS user_icon,',
'    ''u-color-''|| ora_hash(a.user_name, 45)     AS icon_modifier,',
'    a.timestamp                                AS comment_date,',
'    b.navn                                     AS user_name,',
'    c.description                              AS actions,',
'    a.note                                     AS comment_text,',
'    '' '' attribute_1,',
'    '' '' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4',
'FROM',
'    bl_noter a,',
'    xxdr_user_managers b,',
'    bl_statuses c',
'WHERE',
'    a.blanket_id = :p450_blanket_id',
'    AND a.user_name = b.user_name (+)',
'    AND a.note_type = c.status (+)',
'ORDER BY a.timestamp desc;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(44833653895877223)
,p_query_num_rows=>3
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44921902129884626)
,p_query_column_id=>1
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>1
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44922313016884626)
,p_query_column_id=>2
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>2
,p_column_heading=>'Icon Modifier'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44922770911884627)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44923185358884627)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44923506879884627)
,p_query_column_id=>5
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>5
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44923903846884627)
,p_query_column_id=>6
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44924328100884628)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>7
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44924779936884628)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44925159375884628)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44925591234884628)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>10
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86582556576257077)
,p_plug_name=>'Hidden'
,p_plug_display_sequence=>80
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88220295457762285)
,p_plug_name=>'Avisabonnementer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(44786795637877201)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88237254906786004)
,p_plug_name=>'2. Modtager & Godkender'
,p_region_template_options=>'#DEFAULT#:t-Region--controlsPosEnd:is-collapsed:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(44750332354877183)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44918459894884622)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_HELP'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('<u>H</u>j\00E6lp')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=127:90:&SESSION.::&DEBUG.::P90_TYPE_ID:&P450_OLD_TYPE_ID.'
,p_button_cattributes=>'accesskey=''h'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44925919938884629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(85745200081941478)
,p_button_name=>'P450_ADD_COMMENT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_image_alt=>unistr('Tilf\00F8j kommentar')
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=127:50:&SESSION.::&DEBUG.::P50_BLANKET_ID,P50_FROM_PAGE,CALLING_APPLICATION_EXT:&P450_BLANKET_ID.,&APP_PAGE_ID.,&APP_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44918862788884622)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_REGRET'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_image_alt=>'<u>F</u>ortryd'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>unistr('javascript:apex.confirm(''Er du sikker p\00E5, at du vil afbryde?'',''P450_REGRET'');')
,p_button_execute_validations=>'N'
,p_button_condition=>'P450_STATUS'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''f'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44919223649884623)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>O</u>pret/send'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P450_STATUS'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''o'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44919661215884623)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_REJECT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_image_alt=>'<u>A</u>fvis'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=127:40:&SESSION.::&DEBUG.::P40_BLANKET_ID,P40_REQUEST_OWNER,P40_STATUS,P40_TYPE_ID,P40_BLANKET_CREATED_BY,P40_ACTION:&P450_BLANKET_ID.,&P450_CURRENT_OWNER.,&P450_STATUS.,&P450_OLD_TYPE_ID.,&P450_CREATED_BY.,REJECT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    1',
'FROM',
'    bl_blanket b',
'WHERE',
'    b.blanket_id = :p450_blanket_id',
'    AND ( b.current_owner = v(''APP_USER'')',
'          AND ( b.approver1 = v(''APP_USER'') ) )',
'UNION',
'SELECT',
'    1',
'FROM',
'    bl_blanket b',
'WHERE',
'    b.blanket_id = :p450_blanket_id',
'    AND ( xxdr_blanket.blanketaccessible(b.blanket_id) = ''Y''',
'          AND :p450_status in (''APPROVED'',''CREATED'') );'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''a'''
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 from bl_blanket b',
'WHERE ',
'b.blanket_id = :P2000_BLANKET_ID',
'AND (b.current_owner = V(''APP_USER'')',
'    AND (b.approver1 = V(''APP_USER'')',
'         OR b.approver2 = V(''APP_USER'')',
'         OR b.approver3 = V(''APP_USER'')',
'        )',
'    )',
'OR   (xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND :P2000_status=''APPROVED'');'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44920072731884624)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_image_alt=>unistr('<u>A</u>nnull\00E9r')
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>unistr('javascript:apex.confirm(''Er du sikker p\00E5, at du vil annullere anmodningen? Anmodningen kan herefter ikke genfremsendes'',''P450_CANCEL'');')
,p_button_condition=>'P450_STATUS'
,p_button_condition2=>'REJECTED'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''a'''
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44920434610884624)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_RESUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>G</u>enfremsend'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P450_STATUS'
,p_button_condition2=>'REJECTED'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''g'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44920873707884624)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_APPROVE1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>G</u>odkend'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    1',
'FROM',
'    bl_blanket b',
'WHERE',
'    b.blanket_id = :p450_blanket_id',
'    AND ( b.current_owner = v(''APP_USER'')',
'          AND ( b.approver1 = v(''APP_USER'') ) )',
'    AND :p450_status = ''CREATED'';'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''g'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44921222109884624)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(85417403156378259)
,p_button_name=>'P450_EXECUTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44868645816877245)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>B</u>ehandlet'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P450_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND STATUS in (''APPROVED'',''CREATED'')',
'   AND (b.approver1 <> v(''APP_USER'') OR b.approver1 is null)'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''b'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44927748274884631)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(88220295457762285)
,p_button_name=>'P450_PROCESS_LOG'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44867999871877244)
,p_button_image_alt=>'Log'
,p_button_redirect_url=>'f?p=127:20:&SESSION.::&DEBUG.::P20_BLANKET_ID:&P450_BLANKET_ID.'
,p_button_condition=>'select 1 from bl_process_log where blanket_id = :P450_blanket_id'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-paperclip'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44913942683884616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94076563277692941)
,p_button_name=>'P450_LUK_ADRESSE_LISTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(44868724456877245)
,p_button_image_alt=>'Luk listen'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44984090154884671)
,p_branch_name=>'P2000_HOME_CREATE'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,450::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44919223649884623)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44984463369884672)
,p_branch_name=>'P2000_HOME_APPROVE1'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,450::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44920873707884624)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44985228054884672)
,p_branch_name=>'P2000_HOME_EXECUTE'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,450::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44921222109884624)
,p_branch_sequence=>40
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44984889895884672)
,p_branch_name=>'P2000_HOME_CANCEL'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,450::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44920072731884624)
,p_branch_sequence=>60
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44985673303884672)
,p_branch_name=>'P2000_HOME_RESUBMIT'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,450::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44920434610884624)
,p_branch_sequence=>70
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44983697156884671)
,p_branch_name=>'P2000_HOME_REGRET'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,450::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44918862788884622)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44906084115884594)
,p_name=>'P450_ADDRESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(67967190266894711)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gade/vej'
,p_source=>'TEXT_ATTRIBUTE7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>2000
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44906446434884595)
,p_name=>'P450_EMAIL_ADRESSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(67967190266894711)
,p_use_cache_before_default=>'NO'
,p_prompt=>'E-mailadresse'
,p_source=>'TEXT_ATTRIBUTE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44906894411884596)
,p_name=>'P450_DEP_ADDRESS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(67967190266894711)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('V\00E6lg modtagelsesadresse')
,p_source=>'TEXT_ATTRIBUTE8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    sted||'' - ''||',
'    vej_gade||'' - ''||',
'    post_nr||'' ''||"BY"||'', ''||land||'': ''||',
'    leverings_kommentar display,',
'    sted||'' - ''||',
'    vej_gade||'' - ''||',
'    post_nr||'' ''||"BY"||'', ''||land||'': ''||',
'    leverings_kommentar value',
'FROM',
'    bl_avis_leveringssteder;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44907279488884597)
,p_name=>'P450_DEP_EMAIL_ADRESSE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(67967190266894711)
,p_use_cache_before_default=>'NO'
,p_prompt=>'E-mailadresse'
,p_source=>'TEXT_ATTRIBUTE12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_inline_help_text=>unistr('Der f\00F8lger som regel en personlig digital adgang med til de danske aviser. Adgangen m\00E5 <i>ikke</i> deles af flere, s\00E5 for at udnytte adgangen skal der oplyses et navn og en personlig e-mail.')
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44907647214884598)
,p_name=>'P450_DEP_DIGITAL_MODTAGER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(67967190266894711)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Navn p\00E5 modtager')
,p_source=>'TEXT_ATTRIBUTE13'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44914635551884618)
,p_name=>'P450_AVIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80324146258476884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Avis'
,p_source=>'TEXT_ATTRIBUTE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    avis,',
'    avis id',
'FROM',
'    bl_aviser',
'UNION',
'SELECT',
'    ''Anden avis'' avis,',
'    ''Z-OTHER'' id',
'FROM',
'    dual',
'ORDER BY',
'    id;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44915008150884618)
,p_name=>'P450_AVIS_OTHER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80324146258476884)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Hvilken avis \00F8nsker du?')
,p_source=>'TEXT_ATTRIBUTE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44915453019884618)
,p_name=>'P450_LEV_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80324146258476884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Abonnementstype'
,p_source=>'TEXT_ATTRIBUTE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Papiravis;PAPER,Digital;DIGITAL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44915836769884618)
,p_name=>'P450_LEV_TYPE_DETAILS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80324146258476884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leveringsdetaljer'
,p_source=>'TEXT_ATTRIBUTE11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Hele ugen print og online;FULL,Mandag-fredag print og online;MAN-FRE,Kombi: hele ugen online og weekend print;KOMBI'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44916244064884619)
,p_name=>'P450_START_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(80324146258476884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Levering fra'
,p_source=>'DATE_ATTRIBUTE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_inline_help_text=>unistr('Fornyes automatisk efter \00E9t \00E5r. \00D8nskes en anden periode skal det noteres under bem\00E6rkninger.')
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44916923269884620)
,p_name=>'P450_REASON'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(85417260711378258)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Vedr\00F8rer')
,p_source=>'TEXT_ATTRIBUTE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Oprettelse;NEW,\00C6ndring;CHANGE,Nedl\00E6ggelse;CANCEL,Andet;OTHER')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44917389892884620)
,p_name=>'P450_MODTAGER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(85417260711378258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modtager'
,p_source=>'TEXT_ATTRIBUTE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Medarbejder;EMPLOYEE,Redaktion;DEPARTMENT'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44917730035884620)
,p_name=>'P450_REMARKS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(85417260711378258)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Bem\00E6rkninger')
,p_source=>'TEXT_ATTRIBUTE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P450_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'')'
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44926695678884629)
,p_name=>'P450_BLANKET_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(86582556576257077)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return bl_getNewBlanketID;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'BLANKET_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="visibility: hidden;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44927059535884630)
,p_name=>'P450_HELP1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(86582556576257077)
,p_item_default=>'select help_Text from bl_helptext where key1=:P450_OLD_TYPE_ID and key2=''P450_PERIODS'''
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44928109393884632)
,p_name=>'P450_TYPE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    blanket_type_id',
'FROM',
'    bl_blanket_defs',
'WHERE apex_page_id = :APP_PAGE_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'BLANKET_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44928592687884632)
,p_name=>'P450_OLD_TYPE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    old_type_id',
'FROM',
'    bl_blanket_defs',
'WHERE apex_page_id = :APP_PAGE_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44928913363884632)
,p_name=>'P450_BLANKET_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'bl_getNewBlanket_Lbnr'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Blanketnr.'
,p_source=>'LBNR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_tag_attributes=>'readonly="readonly", style="border-style: none;font-size:10.5pt;font-weight:bold; background-color:White;disabled="true";"'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929328263884633)
,p_name=>'P450_CREATED_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Oprettelsesdato'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;font-size:10.5pt;font-weight:bold; background-color:White;disabled="true";"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44929775534884634)
,p_name=>'P450_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT :APP_USER from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44930199812884634)
,p_name=>'P450_CREATED_BY_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_prompt=>'Oprettet af'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_attributes=>'readonly="readonly", style="border-style: none;font-size:10.5pt;font-weight:bold; background-color:White;disabled="true";"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44930587228884634)
,p_name=>'P450_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NEW'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44930974623884635)
,p_name=>'P450_CURRENT_OWNER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT :APP_USER from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Udf\00F8rende person/funktion')
,p_source=>'CURRENT_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;font-size:10.5pt;font-weight:bold; background-color:White;disabled="true";"'
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44931373658884635)
,p_name=>'P450_STATUS_DESC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;font-size:10.5pt;font-weight:bold; background-color:White;disabled="true";"'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44931791186884635)
,p_name=>'P450_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT :APP_USER from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44932191783884635)
,p_name=>'P450_UPDATED_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(88220295457762285)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44932852697884636)
,p_name=>'P450_REGARDING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88237254906786004)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Vedr\00F8rer medarbejder')
,p_source=>'REGARDING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    navn,',
'    upper(user_name)',
'FROM',
'    xxdr_user_managers',
'WHERE',
unistr('    org NOT IN ( ''18001 F\00E6llesposter - driftsomk.'', ''18007 Faste Freelancere'', ''18231 DR L\00F8nudbetaling'','),
unistr('                 ''18232 Fratr\00E6delsesordninger generelt'','),
unistr('                 ''18233 Fratr\00E6delsesordninger november 2005'' )'),
'    AND user_name IS NOT NULL;'))
,p_lov_display_null=>'YES'
,p_cSize=>50
,p_begin_on_new_line=>'N'
,p_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P450_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'')'
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44933222615884636)
,p_name=>'P450_DEPARTMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88237254906786004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Redaktion/afdeling'
,p_source=>'TEXT_ATTRIBUTE6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.beskrivelse display,',
'    a.beskrivelse value',
'FROM',
'    bl_sted_nr                   a,',
'    xxdr_org_managers@appsebs    b',
'WHERE',
'        a.sted_nr = b.stednr',
'    AND b.a_nr IS NOT NULL',
'    AND a.sted_nr not in (''18231'')',
'ORDER BY',
'    a.sted_nr;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P450_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'')'
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44933612142884637)
,p_name=>'P450_ORG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(88237254906786004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stednr.'
,p_source=>'DEPARTMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;font-size:10.5pt;font-weight:bold; background-color:White;disabled="true";"'
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44934043707884637)
,p_name=>'P450_SUPERVISOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88237254906786004)
,p_use_cache_before_default=>'NO'
,p_source=>'SUPERVISOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44934437433884637)
,p_name=>'P450_SUPERVISOR_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(88237254906786004)
,p_prompt=>'Medarbejders chef'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;font-size:10.5pt;font-weight:bold; background-color:White;disabled="true";"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44934898116884638)
,p_name=>'P450_APPROVER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(88237254906786004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Godkender'
,p_source=>'APPROVER1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT u.full_name display,',
'                um.manager_init value',
'  FROM xxdr_user_managers um,',
'       bl_users u',
' WHERE um.manager_init = u.username',
'   AND um.manager_init IS NOT NULL',
' ORDER BY um.manager_init;'))
,p_lov_display_null=>'YES'
,p_cSize=>50
,p_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P450_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'')'
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(44866254946877242)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44935282449884638)
,p_name=>'P450_APPROVER_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(88237254906786004)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45005458473907907)
,p_name=>'P450_DEP_NOTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(85417260711378258)
,p_item_default=>unistr('Online adgang er <u>personlig</u> og m\00E5 ikke deles p\00E5 redaktionen/afdelingen')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_api.id(44865976259877241)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44935758804884643)
,p_validation_name=>'P450_REMARKS'
,p_validation_sequence=>10
,p_validation=>'P450_REMARKS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Bem\00E6rkninger skal udfyldes ved \00E6ndringer, nedl\00E6ggelser og andet')
,p_validation_condition=>'P450_REASON'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44917730035884620)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44936132381884643)
,p_validation_name=>'P450_MODTAGER'
,p_validation_sequence=>20
,p_validation=>'P450_MODTAGER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg modtager')
,p_validation_condition=>'P450_REASON'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44917389892884620)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44937726243884644)
,p_validation_name=>'P450_AVIS'
,p_validation_sequence=>30
,p_validation=>'P450_AVIS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg avis')
,p_validation_condition=>'P450_REASON'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44914635551884618)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44938540239884644)
,p_validation_name=>'P450_AVIS_OTHER'
,p_validation_sequence=>40
,p_validation=>'P450_AVIS_OTHER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Angiv hvilken avis, du \00F8nsker')
,p_validation_condition=>'P450_AVIS'
,p_validation_condition2=>'Z-OTHER'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44915008150884618)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44938173819884644)
,p_validation_name=>'P450_LEV_TYPE'
,p_validation_sequence=>50
,p_validation=>'P450_LEV_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg abonnementstype')
,p_validation_condition=>'P450_REASON'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44915453019884618)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44939319636884644)
,p_validation_name=>'P450_START_DATE'
,p_validation_sequence=>60
,p_validation=>'P450_START_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg 1. leveringsdag')
,p_validation_condition=>'P450_REASON'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44916244064884619)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44938939248884644)
,p_validation_name=>'P450_LEV_TYPE_DETAILS'
,p_validation_sequence=>70
,p_validation=>'P450_LEV_TYPE_DETAILS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg leveringsdetaljer')
,p_validation_condition=>'P450_LEV_TYPE'
,p_validation_condition2=>'PAPER'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44915836769884618)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44937356410884643)
,p_validation_name=>'P450_APPROVER'
,p_validation_sequence=>80
,p_validation=>'P450_APPROVER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg godkender')
,p_validation_condition=>'P450_REASON'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44934898116884638)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44936554169884643)
,p_validation_name=>'P450_REGARDING'
,p_validation_sequence=>90
,p_validation=>'P450_REGARDING'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg hvem abonnementet er til')
,p_validation_condition=>'P450_MODTAGER'
,p_validation_condition2=>'EMPLOYEE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44932852697884636)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44939741479884645)
,p_validation_name=>'P450_ADDRESS'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    1',
'FROM',
'    dual',
'WHERE',
'    :p450_modtager = ''EMPLOYEE''',
'    AND ( :p450_lev_type = ''DIGITAL''',
'          AND :p450_address IS NULL )',
'    OR :p450_address IS NOT NULL;'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Indtast leveringsadresse'
,p_validation_condition=>'P450_MODTAGER'
,p_validation_condition2=>'EMPLOYEE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44906084115884594)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44940146307884645)
,p_validation_name=>'P450_EMAIL_ADRESSE'
,p_validation_sequence=>110
,p_validation=>'P450_EMAIL_ADRESSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indtast modtagers e-mailadresse'
,p_validation_condition=>'P450_MODTAGER'
,p_validation_condition2=>'EMPLOYEE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44906446434884595)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44940945009884645)
,p_validation_name=>'P450_EMAIL_ADRESSE_FORM'
,p_validation_sequence=>120
,p_validation=>'regexp_like (:P450_EMAIL_ADRESSE, ''^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'E-mailadresse har ikke et korrekt format'
,p_validation_condition=>'P450_MODTAGER'
,p_validation_condition2=>'EMPLOYEE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44906446434884595)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44936962329884643)
,p_validation_name=>'P450_DEPARTMENT'
,p_validation_sequence=>130
,p_validation=>'P450_DEPARTMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg hvilken redaktion som skal modtage abonnementet')
,p_validation_condition=>'P450_MODTAGER'
,p_validation_condition2=>'DEPARTMENT'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44933222615884636)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44940572123884645)
,p_validation_name=>'P450_DEP_ADDRESS'
,p_validation_sequence=>140
,p_validation=>'P450_DEP_ADDRESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('V\00E6lg leveringsadresse')
,p_validation_condition=>'P450_MODTAGER'
,p_validation_condition2=>'DEPARTMENT'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(44919223649884623)
,p_associated_item=>wwv_flow_api.id(44906894411884596)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44944475836884649)
,p_name=>'P450_EXPAND_DATA_REGIONS'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    status ',
'from ',
'    bl_blanket ',
'where blanket_id = :P450_BLANKET_ID ',
'AND STATUS NOT IN (''NEW'');'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44944997985884651)
,p_event_id=>wwv_flow_api.id(44944475836884649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(88237254906786004)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44945473025884652)
,p_event_id=>wwv_flow_api.id(44944475836884649)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80324146258476884)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44945969256884652)
,p_event_id=>wwv_flow_api.id(44944475836884649)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(67967190266894711)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44946325481884652)
,p_name=>'P450_UPDATE_SUP_NAME'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_SUPERVISOR'
,p_condition_element=>'P450_SUPERVISOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44946870701884653)
,p_event_id=>wwv_flow_api.id(44946325481884652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_SUPERVISOR_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name ',
'from bl_users ',
'where username = :P450_SUPERVISOR;'))
,p_attribute_07=>'P450_SUPERVISOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44947281835884653)
,p_name=>'P450_EXPAND_COMMENTS'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'SELECT 1 from bl_noter where blanket_ID = :P450_blanket_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44947776546884653)
,p_event_id=>wwv_flow_api.id(44947281835884653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(85745200081941478)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44948136309884653)
,p_name=>'P450_HIDE_COMMENTS_ON_NEW'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P450_STATUS'
,p_display_when_cond2=>'NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44948614704884653)
,p_event_id=>wwv_flow_api.id(44948136309884653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(85745200081941478)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44949042293884654)
,p_name=>'P450_HIDE_REGIONS_ON_NEW'
,p_event_sequence=>110
,p_condition_element=>'P450_REASON'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44949569538884654)
,p_event_id=>wwv_flow_api.id(44949042293884654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(88237254906786004)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44950066755884654)
,p_event_id=>wwv_flow_api.id(44949042293884654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80324146258476884)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44950522211884654)
,p_event_id=>wwv_flow_api.id(44949042293884654)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(67967190266894711)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44950976026884654)
,p_name=>'P450_ADD_COMMENT_SUBMIT'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9097499501376321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44951455191884655)
,p_event_id=>wwv_flow_api.id(44950976026884654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44951810209884655)
,p_name=>'P450_REASON_CLICK'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_REASON'
,p_condition_element=>'P450_REASON'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44952352941884655)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(88237254906786004)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44952879378884655)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_MODTAGER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44953302092884655)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80324146258476884)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44953805804884656)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(88237254906786004)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44954383552884656)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(67967190266894711)
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44954809337884656)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80324146258476884)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44955333778884656)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_MODTAGER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44955876596884657)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(67967190266894711)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44956305475884657)
,p_event_id=>wwv_flow_api.id(44951810209884655)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_MODTAGER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44956767532884657)
,p_name=>'P450_REGARDING'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_REGARDING'
,p_condition_element=>'P450_REGARDING'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44957225293884658)
,p_event_id=>wwv_flow_api.id(44956767532884657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        um.org,',
'        um.manager_init,',
'        um2.navn',
'    INTO',
'        :p450_org,',
'        :p450_supervisor,',
'        :p450_supervisor_name',
'    FROM',
'        xxdr_user_managers   um,',
'        xxdr_user_managers   um2',
'    WHERE',
'        um.user_name = :p450_regarding',
'        AND um.manager_init = um2.user_name;',
'',
'    IF upper(:p450_regarding) = upper(:p450_supervisor) THEN SELECT',
'                                                                CASE',
'                                                                    WHEN d.udirektor = :p450_regarding THEN d.direktor',
'                                                                    ELSE d.udirektor',
'                                                                END godkender,',
'                                                                CASE',
'                                                                    WHEN d.udirektor = :p450_regarding THEN d_name.full_name',
'                                                                    ELSE ud_name.full_name',
'                                                                END godkender_navn',
'                                                            INTO',
'                                                                :p450_approver,',
'                                                                :p450_approver_name',
'                                                            FROM',
'                                                                xxdr_user_managers   um3,',
'                                                                bl_direktor          d,',
'                                                                bl_users             d_name,',
'                                                                bl_users             ud_name',
'                                                            WHERE',
'                                                                um3.user_name = :p450_regarding',
'                                                                AND substr(um3.org, 1, 2) = substr(d.orgno, 4, 2)',
'                                                                AND d.direktor  = d_name.username',
'                                                                AND d.udirektor = ud_name.username;',
'',
'    ELSE SELECT',
'            um.manager_init,',
'            um2.navn',
'        INTO',
'            :p450_approver,',
'            :p450_approver_name',
'        FROM',
'            xxdr_user_managers   um,',
'            xxdr_user_managers   um2',
'        WHERE',
'            um.user_name = :p450_regarding',
'            AND um.manager_init = um2.user_name;',
'',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P450_REGARDING'
,p_attribute_03=>'P450_ORG,P450_SUPERVISOR,P450_SUPERVISOR_NAME,P450_APPROVER,P450_APPROVER_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44957703973884658)
,p_event_id=>wwv_flow_api.id(44956767532884657)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P450_APPROVER").val($v("P450_APPROVER_NAME"))'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44958231220884658)
,p_event_id=>wwv_flow_api.id(44956767532884657)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80324146258476884)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44958707151884658)
,p_event_id=>wwv_flow_api.id(44956767532884657)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_AVIS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44959147441884658)
,p_name=>'P450_DEPARTMENT'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_DEPARTMENT'
,p_condition_element=>'P450_DEPARTMENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44959662607884659)
,p_event_id=>wwv_flow_api.id(44959147441884658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    b.stednr,',
'    b.a_nr,',
'    b.leder_navn',
'INTO',
'    :p450_org,',
'    :p450_approver,',
'    :p450_approver_name',
'FROM',
'    bl_sted_nr                   a,',
'    xxdr_org_managers@appsebs    b',
'WHERE',
'        a.sted_nr = b.stednr',
'    and a.sted_nr = substr(:p450_department,1,5);'))
,p_attribute_02=>'P450_DEPARTMENT'
,p_attribute_03=>'P450_ORG,P450_APPROVER,P450_APPROVER_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44960119635884659)
,p_event_id=>wwv_flow_api.id(44959147441884658)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P450_APPROVER").val($v("P450_APPROVER_NAME"))'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44961138632884659)
,p_event_id=>wwv_flow_api.id(44959147441884658)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80324146258476884)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44960627608884659)
,p_event_id=>wwv_flow_api.id(44959147441884658)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_AVIS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44961590385884660)
,p_name=>'P450_CREATED_BY'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_CREATED_BY'
,p_condition_element=>'P450_CREATED_BY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44962037784884660)
,p_event_id=>wwv_flow_api.id(44961590385884660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_CREATED_BY_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select full_name from bl_users where username = :p450_created_by;'
,p_attribute_07=>'P450_CREATED_BY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44962408079884660)
,p_name=>'P450_STATUS'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_STATUS'
,p_condition_element=>'P450_STATUS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44962948287884660)
,p_event_id=>wwv_flow_api.id(44962408079884660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_STATUS_DESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select description from bl_statuses where status = :p450_status'
,p_attribute_07=>'P450_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44963309528884660)
,p_name=>'P450_AVIS'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_AVIS'
,p_condition_element=>'P450_AVIS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Z-OTHER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44963896096884661)
,p_event_id=>wwv_flow_api.id(44963309528884660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_AVIS_OTHER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44964363563884661)
,p_event_id=>wwv_flow_api.id(44963309528884660)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_AVIS_OTHER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44964841721884661)
,p_event_id=>wwv_flow_api.id(44963309528884660)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_AVIS_OTHER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44965370144884661)
,p_event_id=>wwv_flow_api.id(44963309528884660)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_LEV_TYPE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44965748354884662)
,p_name=>'P450_START_DATE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_START_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44966258378884662)
,p_event_id=>wwv_flow_api.id(44965748354884662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(67967190266894711)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44966762328884662)
,p_event_id=>wwv_flow_api.id(44965748354884662)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_ADDRESS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44967183246884662)
,p_name=>'P450_LEV_TYPE_PAPER'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_LEV_TYPE'
,p_condition_element=>'P450_LEV_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PAPER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44967673132884663)
,p_event_id=>wwv_flow_api.id(44967183246884662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_LEV_TYPE_DETAILS,P450_ADDRESS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44968114458884663)
,p_event_id=>wwv_flow_api.id(44967183246884662)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_LEV_TYPE_DETAILS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44968524941884663)
,p_name=>'P450_LEV_TYPE_DIGITAL'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_LEV_TYPE'
,p_condition_element=>'P450_LEV_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DIGITAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44969047821884663)
,p_event_id=>wwv_flow_api.id(44968524941884663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_LEV_TYPE_DETAILS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44969586657884664)
,p_event_id=>wwv_flow_api.id(44968524941884663)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_ADDRESS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44970047085884664)
,p_event_id=>wwv_flow_api.id(44968524941884663)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_START_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44970488122884664)
,p_name=>'P450_LEV_TYPE_NULL'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_LEV_TYPE'
,p_condition_element=>'P450_LEV_TYPE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44970900535884664)
,p_event_id=>wwv_flow_api.id(44970488122884664)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_LEV_TYPE_DETAILS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44971357881884665)
,p_name=>'P450_MODTAGER'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_MODTAGER'
,p_condition_element=>'P450_MODTAGER'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44971877141884665)
,p_event_id=>wwv_flow_api.id(44971357881884665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL,',
'    NULL,',
'    NULL,',
'    NULL,',
'    null',
'INTO',
'    :p450_regarding,',
'    :p450_department,',
'    :p450_org,',
'    :p450_supervisor_name,',
'    :p450_approver',
'FROM',
'    dual;'))
,p_attribute_03=>'P450_REGARDING,P450_DEPARTMENT,P450_ORG,P450_SUPERVISOR_NAME,P450_APPROVER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44972365013884665)
,p_event_id=>wwv_flow_api.id(44971357881884665)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_REGARDING,P450_DEPARTMENT,P450_ADDRESS,P450_EMAIL_ADRESSE,P450_DEP_ADDRESS,P450_DEP_EMAIL_ADRESSE,P450_DEP_DIGITAL_MODTAGER,P450_ORG'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45005579978907908)
,p_event_id=>wwv_flow_api.id(44971357881884665)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_DEP_NOTE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44972781353884665)
,p_name=>'P450_MODTAGER_DEP'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_MODTAGER'
,p_condition_element=>'P450_MODTAGER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DEPARTMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44973272425884666)
,p_event_id=>wwv_flow_api.id(44972781353884665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL,',
'    NULL,',
'    NULL,',
'    NULL,',
'    null',
'INTO',
'    :p450_regarding,',
'    :p450_department,',
'    :p450_org,',
'    :p450_supervisor_name,',
'    :p450_approver',
'FROM',
'    dual;'))
,p_attribute_03=>'P450_REGARDING,P450_DEPARTMENT,P450_ORG,P450_SUPERVISOR_NAME,P450_APPROVER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44973743019884666)
,p_event_id=>wwv_flow_api.id(44972781353884665)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(88237254906786004)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44974238171884666)
,p_event_id=>wwv_flow_api.id(44972781353884665)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_REGARDING,P450_ADDRESS,P450_EMAIL_ADRESSE,P450_SUPERVISOR_NAME,P450_ORG'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45006094133907913)
,p_event_id=>wwv_flow_api.id(44972781353884665)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94076563277692941)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45005893990907911)
,p_event_id=>wwv_flow_api.id(44972781353884665)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_DEP_NOTE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44974710607884667)
,p_event_id=>wwv_flow_api.id(44972781353884665)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_DEPARTMENT,P450_DEP_ADDRESS,P450_DEP_EMAIL_ADRESSE,P450_DEP_DIGITAL_MODTAGER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44975231250884667)
,p_event_id=>wwv_flow_api.id(44972781353884665)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_DEPARTMENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44975616839884667)
,p_name=>'P450_MODTAGER_EMP'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_MODTAGER'
,p_condition_element=>'P450_MODTAGER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'EMPLOYEE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44976102595884667)
,p_event_id=>wwv_flow_api.id(44975616839884667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL,',
'    NULL,',
'    NULL,',
'    NULL,',
'    null',
'INTO',
'    :p450_regarding,',
'    :p450_department,',
'    :p450_org,',
'    :p450_supervisor_name,',
'    :p450_approver',
'FROM',
'    dual;'))
,p_attribute_03=>'P450_REGARDING,P450_DEPARTMENT,P450_ORG,P450_SUPERVISOR_NAME,P450_APPROVER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44976665940884667)
,p_event_id=>wwv_flow_api.id(44975616839884667)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(88237254906786004)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44977165737884668)
,p_event_id=>wwv_flow_api.id(44975616839884667)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_SUPERVISOR_NAME,P450_REGARDING,P450_ADDRESS,P450_EMAIL_ADRESSE,P450_ORG'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45006193458907914)
,p_event_id=>wwv_flow_api.id(44975616839884667)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94076563277692941)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44977699879884668)
,p_event_id=>wwv_flow_api.id(44975616839884667)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_DEPARTMENT,P450_DEP_ADDRESS,P450_DEP_EMAIL_ADRESSE,P450_DEP_DIGITAL_MODTAGER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45005971611907912)
,p_event_id=>wwv_flow_api.id(44975616839884667)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_DEP_NOTE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44978124595884668)
,p_event_id=>wwv_flow_api.id(44975616839884667)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_REGARDING'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44978513457884668)
,p_name=>'P450_LEV_TYPE_DETAILS'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_LEV_TYPE_DETAILS'
,p_condition_element=>'P450_LEV_TYPE_DETAILS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44979006467884669)
,p_event_id=>wwv_flow_api.id(44978513457884668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_START_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44979490698884669)
,p_name=>'P450_APPROVER'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_APPROVER'
,p_condition_element=>'P450_APPROVER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44979941585884669)
,p_event_id=>wwv_flow_api.id(44979490698884669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(80324146258476884)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44980479329884669)
,p_event_id=>wwv_flow_api.id(44979490698884669)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P450_AVIS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44980856940884669)
,p_name=>'P450_ADDRESS'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_ADDRESS'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44981373113884670)
,p_event_id=>wwv_flow_api.id(44980856940884669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94076563277692941)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44981734655884670)
,p_name=>'P450_ADDRESS_OPDT'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P450_ADDRESS'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44982203885884670)
,p_event_id=>wwv_flow_api.id(44981734655884670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94076563277692941)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44982683209884670)
,p_name=>'P450_LUK_ADRESSE_LISTE'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44913942683884616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44983185482884670)
,p_event_id=>wwv_flow_api.id(44982683209884670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94076563277692941)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45058339467237101)
,p_name=>'New'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44925919938884629)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45058499801237102)
,p_event_id=>wwv_flow_api.id(45058339467237101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P450_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44941620085884646)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P450_CREATE_NEW_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    presult   VARCHAR2(1);',
'    pmessage  VARCHAR2(1000);',
'BEGIN',
'    INSERT INTO bl_blanket (',
'        blanket_id,',
'        blanket_type_id,',
'        lbnr,',
'        created_by,',
'        created_date,',
'        updated_by,',
'        updated_date,',
'        status,',
'        regarding,',
'        department,',
'        supervisor,',
'        approver1,',
'        text_attribute1,',
'        text_attribute5,',
'        text_attribute9,',
'        text_attribute6,',
'        text_attribute2,',
'        text_attribute3,',
'        text_attribute4,',
'        text_attribute11,',
'        date_attribute1,',
'        text_attribute7,',
'        text_attribute10,',
'        text_attribute8,',
'        text_attribute12,',
'        text_attribute13',
'    ) VALUES (',
'        :p450_blanket_id,',
'        :p450_type_id,',
'        :p450_blanket_no,',
'        :p450_created_by,',
'        sysdate,',
'        :p450_updated_by,',
'        sysdate,',
'        :p450_status,',
'        :p450_regarding,',
'        :p450_org,',
'        :p450_supervisor,',
'        :p450_approver,',
'        :p450_reason,',
'        :p450_modtager,',
'        :p450_remarks,',
'        :p450_department,',
'        :p450_avis,',
'        :p450_avis_other,',
'        :p450_lev_type,',
'        :p450_lev_type_details,',
'        :p450_start_date,',
'        :p450_address,',
'        :p450_email_adresse,',
'        :p450_dep_address,',
'        :p450_dep_email_adresse,',
'        :p450_dep_digital_modtager',
'    );',
'',
'    xxdr_blanket.process_blanket(:p450_blanket_id, ''CREATE'', presult, pmessage);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44919223649884623)
,p_process_when=>'P450_REASON'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'NEW'
,p_process_success_message=>'Bestilling &P450_BLANKET_NO. er oprettet og sendt til godkendelse hos &P450_APPROVER_NAME.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44943684626884647)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P450_CREATE_OTHER_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    presult   VARCHAR2(1);',
'    pmessage  VARCHAR2(1000);',
'BEGIN',
'    INSERT INTO bl_blanket (',
'        blanket_id,',
'        blanket_type_id,',
'        lbnr,',
'        created_by,',
'        created_date,',
'        updated_by,',
'        updated_date,',
'        status,',
'        text_attribute1,',
'        text_attribute9',
'    ) VALUES (',
'        :p450_blanket_id,',
'        :p450_type_id,',
'        :p450_blanket_no,',
'        :p450_created_by,',
'        sysdate,',
'        :p450_updated_by,',
'        sysdate,',
'        :p450_status,',
'        :p450_reason,',
'        :p450_remarks',
'    );',
'',
'    xxdr_blanket.process_blanket(:p450_blanket_id, ''CREATE'', presult, pmessage);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44919223649884623)
,p_process_when=>'P450_REASON'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'NEW'
,p_process_success_message=>'Bestilling &P450_BLANKET_NO. er oprettet og sendt til godkendelse hos &P450_APPROVER_NAME.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44942078590884646)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P450_APPROVE1_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'',
'BEGIN',
'   ',
'    xxdr_blanket.process_blanket(:p450_blanket_id,''APPROVE'',pResult,pMessage);',
'    ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44920873707884624)
,p_process_success_message=>unistr('Bestilling &P450_BLANKET_NO. er nu godkendt og sendt til behandling hos \00D8SC')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44942826113884647)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P450_EXECUTE_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'',
'BEGIN',
'    xxdr_blanket.process_blanket(:p450_blanket_id,''EXECUTE'',pResult,pMessage);',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44921222109884624)
,p_process_success_message=>unistr('Bestilling &P450_BLANKET_NO. er nu f\00E6rdigbehandlet. Opretter og modtager underrettes herom.')
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44942480609884647)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P450_CANCEL_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'',
'BEGIN',
' ',
'    xxdr_blanket.process_blanket(:p450_blanket_id,''CANCEL'',pResult,pMessage);',
'    ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44920072731884624)
,p_process_success_message=>'Bestilling &P450_BLANKET_NO. er nu annulleret'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44943204070884647)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P450_RESUBMIT_NEW_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    presult   VARCHAR2(1);',
'    pmessage  VARCHAR2(1000);',
'BEGIN',
'    UPDATE bl_blanket',
'    SET',
'        regarding = :p450_regarding,',
'        department = :p450_org,',
'        supervisor = :p450_supervisor,',
'        approver1 = :p450_approver,',
'        text_attribute1 = :p450_reason,',
'        text_attribute5 = :p450_modtager,',
'        text_attribute9 = :p450_remarks,',
'        text_attribute6 = :p450_department,',
'        text_attribute2 = :p450_avis,',
'        text_attribute3 = :p450_avis_other,',
'        text_attribute4 = :p450_lev_type,',
'        text_attribute11 = :p450_lev_type_details,',
'        date_attribute1 = :p450_start_date,',
'        text_attribute7 = :p450_address,',
'        text_attribute10 = :p450_email_adresse,',
'        text_attribute8 = :p450_dep_address,',
'        text_attribute12 = :p450_dep_email_adresse,',
'        text_attribute13 = :p450_dep_digital_modtager',
'    WHERE',
'        blanket_id = :p450_blanket_id;',
'',
'    xxdr_blanket.process_blanket(:p450_blanket_id, ''RESUBMIT'', presult, pmessage);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44920434610884624)
,p_process_when=>'P450_REASON'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'NEW'
,p_process_success_message=>'Bestilling &P450_BLANKET_NO. er nu genfremsendt til &P450_APPROVER_NAME.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44944043303884648)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P450_RESUBMIT_OTHER_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    presult   VARCHAR2(1);',
'    pmessage  VARCHAR2(1000);',
'BEGIN',
'    UPDATE bl_blanket',
'    SET',
'        regarding = NULL,',
'        department = NULL,',
'        supervisor = NULL,',
'        approver1 = NULL,',
'        text_attribute1 = :p450_reason,',
'        text_attribute5 = NULL,',
'        text_attribute9 = :p450_remarks,',
'        text_attribute6 = NULL,',
'        text_attribute2 = NULL,',
'        text_attribute3 = NULL,',
'        text_attribute4 = NULL,',
'        text_attribute11 = NULL,',
'        date_attribute1 = NULL,',
'        text_attribute7 = NULL,',
'        text_attribute10 = NULL,',
'        text_attribute8 = NULL,',
'        text_attribute12 = NULL,',
'        text_attribute13 = NULL',
'    WHERE',
'        blanket_id = :p450_blanket_id;',
'',
'    xxdr_blanket.process_blanket(:p450_blanket_id, ''RESUBMIT'', presult, pmessage);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44920434610884624)
,p_process_when=>'P450_REASON'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'NEW'
,p_process_success_message=>'Bestilling &P450_BLANKET_NO. er nu genfremsendt'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44941273658884645)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'P450_BEFORE_HEADER_DATA_FETCH'
,p_attribute_02=>'BL_BLANKET'
,p_attribute_03=>'P450_BLANKET_ID'
,p_attribute_04=>'BLANKET_ID'
,p_attribute_05=>'P450_STATUS'
,p_attribute_06=>'STATUS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P450_STATUS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'NEW'
);
wwv_flow_api.component_end;
end;
/
