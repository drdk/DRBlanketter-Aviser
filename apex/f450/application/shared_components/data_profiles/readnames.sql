prompt --application/shared_components/data_profiles/readnames
begin
--   Manifest
--     DATA PROFILE: ReadNames
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>450
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'ReadNames'
,p_format=>'JSON'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(44999337196884698)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'TEKST'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'tekst'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(44999607229884699)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'ID'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adresse.id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(44999900194884699)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'HREF'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'adresse.href'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45000293714884699)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'VEJNAVN'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.vejnavn'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45000597080884699)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'HUSNR'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.husnr'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45000893716884699)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'ETAGE'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.etage'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45001103252884699)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>unistr('C_D\00D8R_')
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>unistr('adresse."d\00F8r"')
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45001409880884700)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'SUPPLERENDEBYNAVN'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.supplerendebynavn'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45001770945884700)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'POSTNR'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.postnr'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45002087419884700)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'POSTNRNAVN'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.postnrnavn'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45002359983884700)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'STORMODTAGERPOSTNR'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.stormodtagerpostnr'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(45002602149884700)
,p_data_profile_id=>wwv_flow_api.id(44999105962884696)
,p_name=>'STORMODTAGERPOSTNRNAVN'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector=>'adresse.stormodtagerpostnrnavn'
);
wwv_flow_api.component_end;
end;
/
