.class public Lmediatek/telephony/MtkCarrierConfigManager;
.super Ljava/lang/Object;
.source "MtkCarrierConfigManager.java"


# static fields
.field public static final KEY_CARRIER_AVOID_CMAS_LIST_BOOL:Ljava/lang/String; = "carrier_avoid_cmas_list_bool"

.field public static final KEY_CARRIER_INTERNATIONAL_ROAMING_EXCEPTION_LIST_STRINGS:Ljava/lang/String; = "carrier_international_roaming_exception_list_strings"

.field public static final KEY_DOMESTIC_ROAMING_ENABLED_ONLY_BY_MOBILE_DATA_SETTING:Ljava/lang/String; = "mtk_domestic_roaming_enabled_only_by_mobile_data_setting"

.field public static final KEY_DOMESTIC_ROAMING_ENABLED_ONLY_BY_MOBILE_DATA_SETTING_CHECK_NW_PLMN:Ljava/lang/String; = "mtk_domestic_roaming_enabled_only_by_mobile_data_setting_check_nw_plmn"

.field public static final KEY_EMERGENCY_BEARER_MANAGEMENT_POLICY:Ljava/lang/String; = "emergency_bearer_management_policy"

.field public static final KEY_IMS_PDN_SYNC_FAIL_CAUSE_TO_MODEM_BOOL:Ljava/lang/String; = "ims_pdn_sync_fail_cause_to_modem_bool"

.field public static final KEY_INTL_ROAMING_ENABLED_ONLY_BY_ROAMING_DATA_SETTING:Ljava/lang/String; = "mtk_intl_roaming_enabled_only_by_roaming_data_setting"

.field public static final KEY_OPERATOR_ID_INT:Ljava/lang/String; = "operator_id"

.field public static final KEY_SHOW_MERGE_ON_PARTICIPANT:Ljava/lang/String; = "show_merge_button_on_conference_participant"

.field public static final KEY_UNIQUE_SETTINGS_FOR_DOMESTIC_AND_INTL_ROAMING:Ljava/lang/String; = "mtk_unique_settings_for_domestic_and_intl_roaming"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkCarrierConfigMgr"

.field public static final MTK_KEY_ADD_MNOAPNS_INTO_ALLAPNLIST:Ljava/lang/String; = "mtk_key_add_mnoapns_into_allapnlist"

.field public static final MTK_KEY_ALLOW_AUTO_START_TIMER_FOR_CANCEL_UPGRADE_BOOL:Ljava/lang/String; = "mtk_allow_auto_start_timer_for_cancel_upgrade_bool"

.field public static final MTK_KEY_ALLOW_CANCEL_VIDEO_UPGRADE_BOOL:Ljava/lang/String; = "mtk_allow_cancel_video_upgrade_bool"

.field public static final MTK_KEY_ALLOW_ONE_VIDEO_CALL_ONLY_BOOL:Ljava/lang/String; = "mtk_allow_one_video_call_only_bool"

.field public static final MTK_KEY_ALLOW_ONE_WAY_VIDEO_BOOL:Ljava/lang/String; = "mtk_allow_one_way_video_bool"

.field public static final MTK_KEY_BLIND_ASSURED_ECT_SUPPORTED:Ljava/lang/String; = "mtk_carrier_blind_assured_ect_supported"

.field public static final MTK_KEY_CARRIER_IGNORE_CLIR_WHEN_ECC_BOOL:Ljava/lang/String; = "mtk_ignore_clir_when_ecc"

.field public static final MTK_KEY_CARRIER_IMS_ECBM_SUPPORTED:Ljava/lang/String; = "mtk_carrier_ims_ecbm_supported"

.field public static final MTK_KEY_CARRIER_NEED_SHOW_ROAMING_ICON:Ljava/lang/String; = "mtk_key_carrier_need_show_roaming_icon"

.field public static final MTK_KEY_CARRIER_NOTIFY_BAD_WIFI_QUALITY_DISCONNECT_CAUSE:Ljava/lang/String; = "mtk_carrier_notify_bad_wifi_quality_disconnect_cause"

.field public static final MTK_KEY_CARRIER_NOURTH_AMERICA_HIGH_PRIORITY_CLIR_PREFIX_SUPPORTED:Ljava/lang/String; = "mtk_carrier_nouth_america_high_priority_clir_prefix_supported"

.field public static final MTK_KEY_CARRIER_SS_ENABLE_XCAP_HTTP_RESPONSE_409:Ljava/lang/String; = "mtk_carrier_ss_enable_xcap_http_response_409"

.field public static final MTK_KEY_CARRIER_SS_GSM_UT_SUPPORT:Ljava/lang/String; = "mtk_carrier_ss_gsm_ut_support"

.field public static final MTK_KEY_CARRIER_SS_IMS_NW_CW:Ljava/lang/String; = "mtk_carrier_ss_ims_nw_cw"

.field public static final MTK_KEY_CARRIER_SS_NEED_CHECK_DATA_ENABLE:Ljava/lang/String; = "mtk_carrier_ss_need_check_data_enable"

.field public static final MTK_KEY_CARRIER_SS_NEED_CHECK_DATA_ROAMING:Ljava/lang/String; = "mtk_carrier_ss_need_check_data_roaming"

.field public static final MTK_KEY_CARRIER_SS_NEED_CHECK_IMS_WHEN_ROAMING:Ljava/lang/String; = "mtk_carrier_ss_need_check_ims_when_roaming"

.field public static final MTK_KEY_CARRIER_SS_NOT_SUPPORT_CALL_IDENTITY:Ljava/lang/String; = "mtk_carrier_ss_not_support_call_identity"

.field public static final MTK_KEY_CARRIER_SS_NOT_SUPPORT_OCB:Ljava/lang/String; = "mtk_carrier_ss_not_support_ocb"

.field public static final MTK_KEY_CARRIER_SS_NOT_SUPPORT_WFC_UT:Ljava/lang/String; = "mtk_carrier_ss_not_support_wfc_ut"

.field public static final MTK_KEY_CARRIER_SS_NOT_SUPPORT_XCAP:Ljava/lang/String; = "mtk_carrier_ss_not_support_xcap"

.field public static final MTK_KEY_CARRIER_SS_QUERY_CFU_AGAIN_AFTER_SET:Ljava/lang/String; = "mtk_carrier_ss_query_cfu_again_after_set"

.field public static final MTK_KEY_CARRIER_SS_QUERY_DELAY_TIME:Ljava/lang/String; = "mtk_carrier_ss_query_delay_time"

.field public static final MTK_KEY_CARRIER_SS_RE_REGISTER_FOR_CF:Ljava/lang/String; = "mtk_carrier_ss_re_register_for_cf"

.field public static final MTK_KEY_CARRIER_SS_SUPPORT_SAVE_CF_NUMBER:Ljava/lang/String; = "mtk_carrier_ss_support_save_cf_number"

.field public static final MTK_KEY_CARRIER_SS_TB_CLIR:Ljava/lang/String; = "mtk_carrier_ss_tb_clir"

.field public static final MTK_KEY_CARRIER_SS_TRANSFER_XCAP_404:Ljava/lang/String; = "mtk_carrier_ss_transfer_xcap_404"

.field public static final MTK_KEY_CARRIER_SWAP_CONFERENCE_TO_FOREGROUND_BEFORE_MERGE:Ljava/lang/String; = "mtk_carrier_swap_conference_to_foreground_before_merge"

.field public static final MTK_KEY_CARRIER_SWAP_VT_CONFERENCE_TO_FOREGROUND_BEFORE_MERGE:Ljava/lang/String; = "mtk_carrier_swap_vt_conference_to_foreground_before_merge"

.field public static final MTK_KEY_CARRIER_SWITCH_WFC_MODE_REQUIRED_BOOL:Ljava/lang/String; = "mtk_carrier_switch_wfc_mode_required_bool"

.field public static final MTK_KEY_CARRIER_TURN_OFF_WIFI_BEFORE_E911:Ljava/lang/String; = "mtk_carrier_turn_off_wifi_before_e911"

.field public static final MTK_KEY_CARRIER_UPDATE_DIALING_ADDRESS_FROM_PAU:Ljava/lang/String; = "mtk_carrier_update_dialing_address_from_pau"

.field public static final MTK_KEY_CNAP_DISPLAY_SUPPORTED_BOOL:Ljava/lang/String; = "mtk_cnap_display_supported_bool"

.field public static final MTK_KEY_CONFERENCE_MANAGEMENT_SUPPORTED:Ljava/lang/String; = "mtk_key_conference_management_supported"

.field public static final MTK_KEY_CONF_FIRST_PARTICIPANT_AS_HOST_SUPPORTED:Ljava/lang/String; = "mtk_key_conference_first_participant_as_host_supported"

.field public static final MTK_KEY_CONSULTATIVE_ECT_SUPPORTED:Ljava/lang/String; = "mtk_carrier_consultative_ect_supported"

.field public static final MTK_KEY_CT_VOLTE_STATUS_BOOL:Ljava/lang/String; = "mtk_ct_volte_status_bool"

.field public static final MTK_KEY_DEFAULT_DNS_ENABLED_BOOL:Ljava/lang/String; = "default_dns_enabled_bool"

.field public static final MTK_KEY_DEFAULT_ENHANCED_4G_MODE_BOOL:Ljava/lang/String; = "mtk_default_enhanced_4g_mode_bool"

.field public static final MTK_KEY_DEFAULT_WFC_MODE_INT:Ljava/lang/String; = "mtk_default_wfc_mode_int"

.field public static final MTK_KEY_DEVICE_SWITCH_SUPPORTED:Ljava/lang/String; = "mtk_carrier_device_switch_supported"

.field public static final MTK_KEY_DIALER_CALL_PULL_BOOL:Ljava/lang/String; = "mtk_dialer_call_pull_bool"

.field public static final MTK_KEY_DISABLE_VT_OVER_WIFI_BOOL:Ljava/lang/String; = "disable_vt_over_wifi_bool"

.field public static final MTK_KEY_DISABLE_WFC_AFTER_AUTH_FAIL:Ljava/lang/String; = "mtk_carrier_disable_wfc_after_auth_fail_bool"

.field public static final MTK_KEY_DISALLOW_OUTGOING_CALLS_DURING_CONFERENCE_BOOL:Ljava/lang/String; = "mtk_disallow_outgoing_calls_during_conference_bool"

.field public static final MTK_KEY_DISALLOW_OUTGOING_CALLS_DURING_VIDEO_OR_VOICE_CALL_BOOL:Ljava/lang/String; = "mtk_disallow_outgoing_calls_during_video_or_voice_call_bool"

.field public static final MTK_KEY_EARLY_VIDEO_CONFIG_STRING_ARRAY:Ljava/lang/String; = "mtk_key_early_video_config_string_array"

.field public static final MTK_KEY_EMC_RTT_GUARD_TIMER_BOOL:Ljava/lang/String; = "mtk_emc_rtt_guard_timer_bool"

.field public static final MTK_KEY_HANDLE_DIALING_DATA_DURING_CALL_BOOL:Ljava/lang/String; = "mtk_handle_dialing_data_during_call_bool"

.field public static final MTK_KEY_IGNORE_DATA_ROAMING_FOR_VIDEO_CALLS:Ljava/lang/String; = "mtk_ignore_data_roaming_for_video_calls"

.field public static final MTK_KEY_IMS_NO_CONF_REQ_AFTER_MAX_CONNECTION_BOOL:Ljava/lang/String; = "no_merge_req_after_max_connection"

.field public static final MTK_KEY_IMS_NO_SIP_MESSAGE_ON_PAUSE_VIDEO_BOOL:Ljava/lang/String; = "no_sip_message_on_pause_video_bool"

.field public static final MTK_KEY_IMS_SUPPORT_AUTO_DECLINE_UPGRADE_REQUEST_BOOL:Ljava/lang/String; = "support_auto_decline_upgrade_request_bool"

.field public static final MTK_KEY_IMS_VIDEO_CONFERENCE_SIZE_LIMIT_INT:Ljava/lang/String; = "mtk_ims_video_conference_size_limit_int"

.field public static final MTK_KEY_MT_RTT_WITHOUT_PRECONDITION_BOOL:Ljava/lang/String; = "mtk_mt_rtt_without_precondition_bool"

.field public static final MTK_KEY_MULTILINE_ALLOW_CROSS_LINE_CONFERENCE_BOOL:Ljava/lang/String; = "mtk_key_multiline_allow_cross_line_conference_bool"

.field public static final MTK_KEY_MULTI_RTT_CALLS_SUPPORTED_BOOL:Ljava/lang/String; = "mtk_multi_rtt_calls_supported_bool"

.field public static final MTK_KEY_ONE_SETTING_FOR_DOMESTIC_AND_INTL_ROAMING_DATA:Ljava/lang/String; = "mtk_one_setting_for_domestic_and_intl_roaming_data"

.field public static final MTK_KEY_OPERATE_IMS_CONFERENCE_PARTICIPANTS_BY_USER_ENTITY:Ljava/lang/String; = "mtk_key_operate_ims_conference_participants_by_user_entity"

.field public static final MTK_KEY_OTASP_CALL_NUMBER_STRING:Ljava/lang/String; = "mtk_key_otasp_call_number_string"

.field public static final MTK_KEY_RESTORE_ADDRESS_FOR_IMS_CONFERENCE_PARTICIPANTS:Ljava/lang/String; = "mtk_key_restore_address_for_ims_conference_participants"

.field public static final MTK_KEY_RESUME_HOLD_CALL_AFTER_ACTIVE_CALL_END_BY_REMOTE:Ljava/lang/String; = "mtk_resume_hold_call_after_active_call_end_by_remote"

.field public static final MTK_KEY_ROAMING_BAR_GUARD_BOOL:Ljava/lang/String; = "mtk_key_roaming_bar_guard_bool"

.field public static final MTK_KEY_RTT_AUDIO_INDICATION_SUPPORTED_BOOL:Ljava/lang/String; = "mtk_rtt_audio_indication_supported_bool"

.field public static final MTK_KEY_RTT_AUTO_ACCEPT_REQUEST_BOOL:Ljava/lang/String; = "mtk_rtt_auto_accept_request_bool"

.field public static final MTK_KEY_RTT_IGNORE_ROAMING_CHECK_BOOL:Ljava/lang/String; = "mtk_rtt_ignore_roaming_check_bool"

.field public static final MTK_KEY_RTT_VIDEO_SWITCH_SUPPORTED_BOOL:Ljava/lang/String; = "mtk_rtt_video_switch_supported_bool"

.field public static final MTK_KEY_SEND_NETWORK_COVERAGE_LOST:Ljava/lang/String; = "mtk_send_network_coverage_lost"

.field public static final MTK_KEY_SHOW_45G_OPTIONS:Ljava/lang/String; = "mtk_key_show_45g_options"

.field public static final MTK_KEY_SHOW_CALL_BARRING_PASSWORD_BOOL:Ljava/lang/String; = "mtk_show_call_barring_password_bool"

.field public static final MTK_KEY_SHOW_CLIR_SETTING_BOOL:Ljava/lang/String; = "mtk_show_clir_setting_bool"

.field public static final MTK_KEY_SHOW_OPEN_MOBILE_DATA_DIALOG_BOOL:Ljava/lang/String; = "mtk_show_open_mobile_data_dialog_bool"

.field public static final MTK_KEY_SHOW_TOAST_WHEN_CONFERENCE_FULL_BOOL:Ljava/lang/String; = "show_toast_when_conference_full"

.field public static final MTK_KEY_SINGLE_CALL_AFTER_CONFERENCE_SRVCC:Ljava/lang/String; = "mtk_single_call_after_conference_srvcc"

.field public static final MTK_KEY_SPECIAL_CONSTRAINT_FOR_IMS_VIDEO_CONFERENCE:Ljava/lang/String; = "mtk_special_constraint_for_ims_video_conference"

.field public static final MTK_KEY_SUPPORT_ENHANCED_CALL_BLOCKING_BOOL:Ljava/lang/String; = "mtk_support_enhanced_call_blocking_bool"

.field public static final MTK_KEY_SUPPORT_VT_SS_BOOL:Ljava/lang/String; = "mtk_support_vt_ss_bool"

.field public static final MTK_KEY_TIMER_FOR_CANCEL_UPGRADE_INT:Ljava/lang/String; = "mtk_timer_for_cancel_upgrade_int"

.field public static final MTK_KEY_TIMER_FOR_DECLINE_UPGRADE_INT:Ljava/lang/String; = "mtk_timer_for_decline_upgrade_int"

.field public static final MTK_KEY_UPDATE_WIFICALLING_BY_TTY:Ljava/lang/String; = "mtk_key_update_wificalling_by_tty"

.field public static final MTK_KEY_USE_ADMINISTRATIVE_APN_BOOL:Ljava/lang/String; = "mtk_use_administrative_apn_bool"

.field public static final MTK_KEY_VIDEO_CALL_BACKGROUND_TRANSMISSION:Ljava/lang/String; = "mtk_video_call_background_transmission"

.field public static final MTK_KEY_VOLTE_CONFERENCE_ENHANCED_ENABLE_BOOL:Ljava/lang/String; = "mtk_volte_conference_enhanced_enable_bool"

.field public static final MTK_KEY_VONR_SHOW_SETTING_UI_BOOL:Ljava/lang/String; = "mtk_vonr_show_setting_ui_bool"

.field public static final MTK_KEY_VT_DIALPAD_SUPPORT_BOOL:Ljava/lang/String; = "mtk_vt_dialpad_support_bool"

.field public static final MTK_KEY_VT_DOWNGRADE_IN_BAD_BITRATE:Ljava/lang/String; = "mtk_key_vt_downgrade_in_bad_bitrate"

.field public static final MTK_KEY_VT_MT_RINGTONE_SUPPORT_BOOL:Ljava/lang/String; = "mtk_vt_mt_ringtone_support_bool"

.field public static final MTK_KEY_VT_NOTIFICATION_RINGTONE_SUPPORT_BOOL:Ljava/lang/String; = "mtk_vt_notification_ringtone_support_bool"

.field public static final MTK_KEY_VT_OVER_WIFI_CHECK_DATA_ENABLE_BOOL:Ljava/lang/String; = "mtk_vt_over_wifi_check_data_enable_bool"

.field public static final MTK_KEY_VT_OVER_WIFI_CHECK_VOLTE_ENABLE_BOOL:Ljava/lang/String; = "mtk_vt_over_wifi_check_volte_enable_bool"

.field public static final MTK_KEY_VT_OVER_WIFI_CHECK_WFC_ENABLE_BOOL:Ljava/lang/String; = "mtk_vt_over_wifi_check_wfc_enable_bool"

.field public static final MTK_KEY_WFC_GET_CONFIDENCE_LEVEL:Ljava/lang/String; = "mtk_carrier_wfc_get_confidence_level"

.field public static final MTK_KEY_WFC_GET_LOCATION_ALWAYS:Ljava/lang/String; = "mtk_carrier_wfc_get_location_always"

.field public static final MTK_KEY_WFC_LOCATION_RESPONSE_TIMEOUT:Ljava/lang/String; = "mtk_carrier_wfc_location_response_timeout"

.field public static final MTK_KEY_WFC_MODE_DOMESTIC_ROMAING_TO_HOME:Ljava/lang/String; = "mtk_carrier_wfc_mode_domestic_roaming_to_home"

.field public static final MTK_KEY_WFC_PROV_SUPPORTED_BOOL:Ljava/lang/String; = "mtk_wfc_provisioning_supported_bool"

.field public static final MTK_KEY_WFC_REMOVE_PREFERENCE_MODE_BOOL:Ljava/lang/String; = "mtk_wfc_remove_preference_mode_bool"

.field public static final MTK_KEY_WFC_SETTINGS_UX_TYPE_INT:Ljava/lang/String; = "mtk_wfc_settings_ux_type_int"

.field public static final MTK_KEY_WOS_SUPPORT_WFC_IN_FLIGHTMODE:Ljava/lang/String; = "wos_flight_mode_support_bool"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    return-void
.end method

.method public static putDefault(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p0, "sDefaults"    # Landroid/os/PersistableBundle;

    .line 895
    const-string v0, "carrier_volte_available_bool"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 896
    const-string v0, "carrier_vt_available_bool"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 899
    const-string v0, "mtk_volte_conference_enhanced_enable_bool"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 900
    const-string v0, "mtk_allow_one_video_call_only_bool"

    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 901
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "carrier_international_roaming_exception_list_strings"

    invoke-virtual {p0, v4, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 904
    const-string v3, "mtk_default_enhanced_4g_mode_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 906
    const-string v3, "mtk_use_administrative_apn_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 908
    const-string v3, "mtk_wfc_remove_preference_mode_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 910
    const-string v3, "mtk_show_clir_setting_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    const-string v3, "mtk_show_open_mobile_data_dialog_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 913
    const-string v3, "mtk_wfc_settings_ux_type_int"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 915
    const-string v3, "mtk_default_wfc_mode_int"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 916
    const-string v3, "mtk_wfc_provisioning_supported_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 918
    const-string v3, "mtk_support_vt_ss_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 920
    const-string v3, "mtk_dialer_call_pull_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 922
    const-string v3, "mtk_allow_one_way_video_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 925
    const-string v3, "mtk_allow_cancel_video_upgrade_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 927
    const-string v3, "mtk_allow_auto_start_timer_for_cancel_upgrade_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 929
    const-string v3, "mtk_timer_for_cancel_upgrade_int"

    const/16 v4, 0x14

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 931
    const-string v3, "mtk_timer_for_decline_upgrade_int"

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 934
    const-string v3, "support_pause_ims_video_calls_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 936
    const-string v3, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 938
    const-string v3, "ims_pdn_sync_fail_cause_to_modem_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 940
    const-string v3, "operator_id"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 942
    const-string v3, "mtk_domestic_roaming_enabled_only_by_mobile_data_setting"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 943
    const-string v3, "mtk_domestic_roaming_enabled_only_by_mobile_data_setting_check_nw_plmn"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 945
    const-string v3, "mtk_intl_roaming_enabled_only_by_roaming_data_setting"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 946
    const-string v3, "mtk_unique_settings_for_domestic_and_intl_roaming"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 949
    const-string v3, "mtk_carrier_ss_gsm_ut_support"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 950
    const-string v3, "mtk_carrier_ss_not_support_xcap"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    const-string v3, "mtk_carrier_ss_tb_clir"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 952
    const-string v3, "mtk_carrier_ss_ims_nw_cw"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    const-string v3, "mtk_carrier_ss_enable_xcap_http_response_409"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    const-string v3, "mtk_carrier_ss_transfer_xcap_404"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    const-string v3, "mtk_carrier_ss_not_support_call_identity"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    const-string v3, "mtk_carrier_ss_re_register_for_cf"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 957
    const-string v3, "mtk_carrier_ss_support_save_cf_number"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 958
    const-string v3, "mtk_carrier_ss_query_cfu_again_after_set"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 959
    const-string v3, "mtk_carrier_ss_not_support_ocb"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 960
    const-string v3, "mtk_carrier_ss_not_support_wfc_ut"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 961
    const-string v3, "mtk_carrier_ss_need_check_data_enable"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 962
    const-string v3, "mtk_carrier_ss_need_check_data_roaming"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    const-string v3, "mtk_carrier_ss_need_check_ims_when_roaming"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 964
    const-string v3, "mtk_carrier_ss_query_delay_time"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 967
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "emergency_bearer_management_policy"

    invoke-virtual {p0, v4, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 970
    const-string v3, "mtk_ct_volte_status_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 972
    const-string v3, "mtk_key_roaming_bar_guard_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 974
    const-string v3, "mtk_carrier_nouth_america_high_priority_clir_prefix_supported"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 976
    const-string v3, "mtk_carrier_swap_conference_to_foreground_before_merge"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 977
    const-string v3, "mtk_carrier_update_dialing_address_from_pau"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 978
    const-string v3, "mtk_carrier_turn_off_wifi_before_e911"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 979
    const-string v3, "mtk_carrier_ims_ecbm_supported"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 980
    const-string v3, "mtk_carrier_notify_bad_wifi_quality_disconnect_cause"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 981
    const-string v3, "mtk_video_call_background_transmission"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 982
    const-string v3, "mtk_carrier_switch_wfc_mode_required_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 983
    const-string v3, "mtk_carrier_blind_assured_ect_supported"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 984
    const-string v3, "mtk_carrier_consultative_ect_supported"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    const-string v3, "mtk_carrier_device_switch_supported"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 986
    const-string v3, "mtk_key_restore_address_for_ims_conference_participants"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 987
    const-string v3, "mtk_key_operate_ims_conference_participants_by_user_entity"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 988
    const-string v3, "mtk_key_conference_first_participant_as_host_supported"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    const-string v3, "mtk_single_call_after_conference_srvcc"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 990
    const-string v3, "mtk_ignore_clir_when_ecc"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 993
    const-string v3, "default_dns_enabled_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 995
    const-string v3, "mtk_key_add_mnoapns_into_allapnlist"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 997
    const-string v3, "wos_flight_mode_support_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1000
    const-string v3, "mtk_carrier_wfc_mode_domestic_roaming_to_home"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1003
    const-string v3, "mtk_carrier_wfc_get_location_always"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1006
    const-string v3, "mtk_carrier_wfc_get_confidence_level"

    const/16 v4, 0x44

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1009
    const-string v3, "mtk_carrier_wfc_location_response_timeout"

    const v4, 0xd6d8

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    const-string v3, "mtk_carrier_disable_wfc_after_auth_fail_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1014
    const-string v3, "carrier_avoid_cmas_list_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1017
    const-string v3, "show_toast_when_conference_full"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1020
    const-string v3, "no_merge_req_after_max_connection"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1023
    const-string v3, "mtk_key_carrier_need_show_roaming_icon"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1026
    const-string v3, "disable_vt_over_wifi_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1029
    const-string v3, "mtk_show_call_barring_password_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1033
    const-string v3, "allow_hold_call_during_emergency_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1036
    const-string v3, "gsm_cdma_calls_can_be_hd_audio"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1039
    const-string v3, "mtk_key_multiline_allow_cross_line_conference_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1043
    const-string v3, "call_barring_visibility_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1046
    const-string v3, "no_sip_message_on_pause_video_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1049
    const-string v3, "mtk_vt_dialpad_support_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1052
    const-string v3, "mtk_resume_hold_call_after_active_call_end_by_remote"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1055
    const-string v3, "support_auto_decline_upgrade_request_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1058
    const-string v3, "mtk_key_update_wificalling_by_tty"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1061
    const-string v3, "mtk_ignore_data_roaming_for_video_calls"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1064
    const-string v3, "mtk_carrier_swap_vt_conference_to_foreground_before_merge"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1066
    const-string v3, "mtk_ims_video_conference_size_limit_int"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    const-string v3, "mtk_special_constraint_for_ims_video_conference"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1070
    const-string v3, "mtk_key_show_45g_options"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    const-string v3, "rtt_supported_for_vt_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1073
    const-string v3, "rtt_upgrade_supported_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1074
    const-string v3, "rtt_downgrade_supported_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1076
    const-string v3, "mtk_rtt_video_switch_supported_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1078
    const-string v3, "mtk_rtt_auto_accept_request_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1080
    const-string v3, "mtk_multi_rtt_calls_supported_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1082
    const-string v3, "mtk_emc_rtt_guard_timer_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1084
    const-string v3, "mtk_mt_rtt_without_precondition_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1086
    const-string v3, "mtk_rtt_audio_indication_supported_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1089
    const-string v3, "mtk_vt_over_wifi_check_data_enable_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1091
    const-string v3, "mtk_vt_over_wifi_check_wfc_enable_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1093
    const-string v3, "mtk_vt_over_wifi_check_volte_enable_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1096
    const-string v3, "mtk_support_enhanced_call_blocking_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1099
    const-string v3, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1102
    const-string v3, "mtk_disallow_outgoing_calls_during_video_or_voice_call_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1105
    const-string v3, "mtk_disallow_outgoing_calls_during_conference_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1108
    const-string v3, "mtk_key_otasp_call_number_string"

    invoke-virtual {p0, v3, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v3, "mtk_one_setting_for_domestic_and_intl_roaming_data"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1114
    const-string v3, "gps.nfw_proxy_apps"

    const-string v4, "com.mediatek.gnss.nonframeworklbs"

    invoke-virtual {p0, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v3, "com.android.carrierdefaultapp/.CarrierDefaultBroadcastReceiver:com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    const-string v4, "com.mediatek.ims.pco/.PCOBootCompletedReceiver:com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "carrier_app_wake_signal_config"

    invoke-virtual {p0, v4, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1126
    const-string v3, "show_merge_button_on_conference_participant"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1129
    const-string v3, "mtk_rtt_ignore_roaming_check_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1132
    const-string v3, "mtk_key_vt_downgrade_in_bad_bitrate"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1135
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "mtk_key_early_video_config_string_array"

    invoke-virtual {p0, v3, v0}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1138
    const-string v0, "mtk_vt_mt_ringtone_support_bool"

    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1141
    const-string v0, "mtk_vt_notification_ringtone_support_bool"

    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1144
    const-string v0, "mtk_cnap_display_supported_bool"

    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1147
    const-string v0, "mtk_vonr_show_setting_ui_bool"

    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1150
    const-string v0, "mtk_send_network_coverage_lost"

    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1153
    const-string v0, "mtk_handle_dialing_data_during_call_bool"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1154
    return-void
.end method
