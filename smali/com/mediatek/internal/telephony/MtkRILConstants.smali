.class public interface abstract Lcom/mediatek/internal/telephony/MtkRILConstants;
.super Ljava/lang/Object;
.source "MtkRILConstants.java"

# interfaces
.implements Lcom/android/internal/telephony/RILConstants;


# static fields
.field public static final DATA_PROFILE_ALL:I = 0x3f2

.field public static final DATA_PROFILE_BIP:I = 0x3ef

.field public static final DATA_PROFILE_EMERGENCY:I = 0x3ec

.field public static final DATA_PROFILE_HIPRI:I = 0x3eb

.field public static final DATA_PROFILE_MCX:I = 0x3f1

.field public static final DATA_PROFILE_MMS:I = 0x3e9

.field public static final DATA_PROFILE_RCS:I = 0x3ee

.field public static final DATA_PROFILE_SUPL:I = 0x3ea

.field public static final DATA_PROFILE_VSIM:I = 0x3f0

.field public static final DATA_PROFILE_XCAP:I = 0x3ed

.field public static final DEACTIVATE_REASON_APN_CHANGED:I = 0x7d5

.field public static final DEACTIVATE_REASON_BASE:I = 0x7d0

.field public static final DEACTIVATE_REASON_NORMAL:I = 0x7d1

.field public static final DEACTIVATE_REASON_NO_PCSCF:I = 0x7d3

.field public static final DEACTIVATE_REASON_RA_INITIAL_FAIL:I = 0x7d2

.field public static final DEACTIVATE_REASON_RA_REFRESH_FAIL:I = 0x7d4

.field public static final DEACTIVATE_REASON_TEMP_DATA_SWITCHING:I = 0x7d6

.field public static final MIMO_CONFIG_4X4_MIMO_CCA_ENABLE:I = 0x38

.field public static final MIMO_CONFIG_4X4_MIMO_DISABLE:I = 0x20

.field public static final MIMO_CONFIG_4X4_MIMO_ENABLE:I = 0x30

.field public static final MIMO_CONFIG_RAS_2RX_1RX_ENABLE:I = 0x21

.field public static final MIMO_CONFIG_RAS_4RX_2RX_CCA_ENABLE:I = 0x26

.field public static final MIMO_CONFIG_RAS_4RX_2RX_ENABLE:I = 0x24

.field public static final MIMO_CONFIG_RX_MIMO_DISABLE:I = 0x0

.field public static final MSIM_MODE_SETTING:Ljava/lang/String; = "msim_mode_setting"

.field public static final NETWORK_MODE_CDMA_EVDO_GSM:I = 0x68

.field public static final NETWORK_MODE_CDMA_GSM:I = 0x67

.field public static final NETWORK_MODE_LTE_CDMA_EVDO_GSM:I = 0x69

.field public static final NETWORK_MODE_LTE_GSM:I = 0x65

.field public static final NETWORK_MODE_LTE_TDD_ONLY:I = 0x66

.field public static final PHB_ADN:I = 0x0

.field public static final PHB_ECC:I = 0x3

.field public static final PHB_FDN:I = 0x1

.field public static final PHB_MAX_ENTRY:I = 0xa

.field public static final PHB_MSISDN:I = 0x2

.field public static final RIL_REQUEST_ABORT_FEMTOCELL_LIST:I = 0x808

.field public static final RIL_REQUEST_ABORT_QUERY_AVAILABLE_NETWORKS:I = 0x7d7

.field public static final RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER:I = 0x82a

.field public static final RIL_REQUEST_CANCEL_USSI:I = 0x82e

.field public static final RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE_EX:I = 0x87c

.field public static final RIL_REQUEST_CLEAR_LTE_AVAILABLE_FILE:I = 0x8b2

.field public static final RIL_REQUEST_CONFERENCE_DIAL:I = 0x829

.field public static final RIL_REQUEST_CONFIG_A2_OFFSET:I = 0x88e

.field public static final RIL_REQUEST_CONFIG_B1_OFFSET:I = 0x88f

.field public static final RIL_REQUEST_DATA_CONNECTION_ATTACH:I = 0x860

.field public static final RIL_REQUEST_DATA_CONNECTION_DETACH:I = 0x861

.field public static final RIL_REQUEST_DEACTIVATE_NR_SCG_COMMUNICATION:I = 0x89a

.field public static final RIL_REQUEST_DELETE_UPB_ENTRY:I = 0x7f9

.field public static final RIL_REQUEST_DIAL_WITH_SIP_URI:I = 0x826

.field public static final RIL_REQUEST_DISABLE_ALL_CA_LINKS:I = 0x8a4

.field public static final RIL_REQUEST_DISABLE_NR:I = 0x891

.field public static final RIL_REQUEST_ECC_REDIAL_APPROVE:I = 0x896

.field public static final RIL_REQUEST_EDIT_UPB_ENTRY:I = 0x7f8

.field public static final RIL_REQUEST_EMBMS_AT_CMD:I = 0x80c

.field public static final RIL_REQUEST_ENABLE_DSDA_INDICATION:I = 0x889

.field public static final RIL_REQUEST_ENABLE_SCG_FAILURE:I = 0x890

.field public static final RIL_REQUEST_ENTER_DEPERSONALIZATION:I = 0x85f

.field public static final RIL_REQUEST_ENTER_DEVICE_NETWORK_DEPERSONALIZATION:I = 0x87b

.field public static final RIL_REQUEST_FORCE_RELEASE_CALL:I = 0x7f2

.field public static final RIL_REQUEST_GENERAL_SIM_AUTH:I = 0x810

.field public static final RIL_REQUEST_GET_4X4MIMO_ENABLED:I = 0x8ae

.field public static final RIL_REQUEST_GET_ALL_BAND_MODE:I = 0x8c0

.field public static final RIL_REQUEST_GET_BAND_MODE:I = 0x8b3

.field public static final RIL_REQUEST_GET_BAND_PRIORITY_LIST:I = 0x8ab

.field public static final RIL_REQUEST_GET_CALL_SUB_ADDRESS:I = 0x8a1

.field public static final RIL_REQUEST_GET_CAMPED_FEMTO_CELL_INFO:I = 0x8b5

.field public static final RIL_REQUEST_GET_CA_BAND_MODE:I = 0x8b4

.field public static final RIL_REQUEST_GET_CA_LINK_CAPABILITY_LIST:I = 0x8a7

.field public static final RIL_REQUEST_GET_CA_LINK_ENABLE_STATUS:I = 0x8a5

.field public static final RIL_REQUEST_GET_COLP:I = 0x838

.field public static final RIL_REQUEST_GET_COLR:I = 0x839

.field public static final RIL_REQUEST_GET_DEACTIVATE_NR_SCG_COMMUNICATION:I = 0x89b

.field public static final RIL_REQUEST_GET_DISABLE_2G:I = 0x8bd

.field public static final RIL_REQUEST_GET_DSDA_STATUS:I = 0x88a

.field public static final RIL_REQUEST_GET_ECC_NUM:I = 0x865

.field public static final RIL_REQUEST_GET_ECHOLOCATE_METRICS:I = 0x8be

.field public static final RIL_REQUEST_GET_FEMTOCELL_LIST:I = 0x807

.field public static final RIL_REQUEST_GET_GSM_SMS_BROADCAST_ACTIVATION:I = 0x843

.field public static final RIL_REQUEST_GET_LTE_1XRTT_CELL_LIST:I = 0x8b1

.field public static final RIL_REQUEST_GET_LTE_BSR_TIMER:I = 0x8af

.field public static final RIL_REQUEST_GET_LTE_DATA:I = 0x8a8

.field public static final RIL_REQUEST_GET_LTE_RELEASE_VERSION:I = 0x868

.field public static final RIL_REQUEST_GET_LTE_RRC_STATE:I = 0x8a9

.field public static final RIL_REQUEST_GET_LTE_SCAN_DURATION:I = 0x8bb

.field public static final RIL_REQUEST_GET_PHB_MEM_STORAGE:I = 0x7fe

.field public static final RIL_REQUEST_GET_PHB_STRING_LENGTH:I = 0x7fd

.field public static final RIL_REQUEST_GET_POL_CAPABILITY:I = 0x83b

.field public static final RIL_REQUEST_GET_POL_LIST:I = 0x83c

.field public static final RIL_REQUEST_GET_PROVISION_VALUE:I = 0x81e

.field public static final RIL_REQUEST_GET_PSEUDO_CELL_INFO:I = 0x7e6

.field public static final RIL_REQUEST_GET_QAM_ENABLED:I = 0x8b7

.field public static final RIL_REQUEST_GET_ROAMING_ENABLE:I = 0x840

.field public static final RIL_REQUEST_GET_SMS_PARAMS:I = 0x7dc

.field public static final RIL_REQUEST_GET_SMS_RUIM_MEM_STATUS:I = 0x7e8

.field public static final RIL_REQUEST_GET_SMS_SIM_MEM_STATUS:I = 0x7db

.field public static final RIL_REQUEST_GET_SUGGESTED_PLMN_LIST:I = 0x88d

.field public static final RIL_REQUEST_GET_TM9_ENABLED:I = 0x8b9

.field public static final RIL_REQUEST_GET_TOE_INFO:I = 0x8a3

.field public static final RIL_REQUEST_GET_XCAP_STATUS:I = 0x873

.field public static final RIL_REQUEST_GSM_GET_BROADCAST_LANGUAGE:I = 0x7da

.field public static final RIL_REQUEST_GSM_SET_BROADCAST_LANGUAGE:I = 0x7d9

.field public static final RIL_REQUEST_HANGUP_ALL:I = 0x7e3

.field public static final RIL_REQUEST_HANGUP_WITH_REASON:I = 0x887

.field public static final RIL_REQUEST_HOLD_CALL:I = 0x824

.field public static final RIL_REQUEST_IMS_BEARER_STATE_CONFIRM:I = 0x820

.field public static final RIL_REQUEST_IMS_CONFIG_GET_FEATURE:I = 0x859

.field public static final RIL_REQUEST_IMS_CONFIG_GET_PROVISION:I = 0x85b

.field public static final RIL_REQUEST_IMS_CONFIG_GET_RESOURCE_CAP:I = 0x85d

.field public static final RIL_REQUEST_IMS_CONFIG_SET_FEATURE:I = 0x858

.field public static final RIL_REQUEST_IMS_CONFIG_SET_PROVISION:I = 0x85a

.field public static final RIL_REQUEST_IMS_DEREG_NOTIFICATION:I = 0x822

.field public static final RIL_REQUEST_IMS_DIAL:I = 0x832

.field public static final RIL_REQUEST_IMS_ECT:I = 0x823

.field public static final RIL_REQUEST_IMS_EMERGENCY_DIAL:I = 0x827

.field public static final RIL_REQUEST_IMS_SEND_SMS_EX:I = 0x855

.field public static final RIL_REQUEST_IMS_VT_DIAL:I = 0x833

.field public static final RIL_REQUEST_IWLAN_REGISTER_CELLULAR_QUALITY_REPORT:I = 0x88c

.field public static final RIL_REQUEST_IWLAN_REGISTRATION_STATE:I = 0x8bf

.field public static final RIL_REQUEST_MODEM_POWEROFF:I = 0x7d4

.field public static final RIL_REQUEST_MODEM_POWERON:I = 0x7d3

.field public static final RIL_REQUEST_MODIFY_MODEM_TYPE:I = 0x888

.field public static final RIL_REQUEST_NOTIFY_EPDG_SCREEN_STATE:I = 0x883

.field public static final RIL_REQUEST_OEM_HOOK_ATCI_INTERNAL:I = 0x7d8

.field public static final RIL_REQUEST_PULL_CALL:I = 0x830

.field public static final RIL_REQUEST_QUERY_AVAILABLE_NETWORKS_WITH_ACT:I = 0x7d6

.field public static final RIL_REQUEST_QUERY_CALL_FORWARD_IN_TIME_SLOT:I = 0x84d

.field public static final RIL_REQUEST_QUERY_FEMTOCELL_SYSTEM_SELECTION_MODE:I = 0x80a

.field public static final RIL_REQUEST_QUERY_PHB_STORAGE_INFO:I = 0x7f4

.field public static final RIL_REQUEST_QUERY_SIM_NETWORK_LOCK:I = 0x813

.field public static final RIL_REQUEST_QUERY_UPB_AVAILABLE:I = 0x802

.field public static final RIL_REQUEST_QUERY_UPB_CAPABILITY:I = 0x7f7

.field public static final RIL_REQUEST_QUERY_VOPS_STATUS:I = 0x882

.field public static final RIL_REQUEST_READ_ANR_ENTRY:I = 0x805

.field public static final RIL_REQUEST_READ_EMAIL_ENTRY:I = 0x803

.field public static final RIL_REQUEST_READ_PHB_ENTRY:I = 0x7f6

.field public static final RIL_REQUEST_READ_PHB_ENTRY_EXT:I = 0x800

.field public static final RIL_REQUEST_READ_SNE_ENTRY:I = 0x804

.field public static final RIL_REQUEST_READ_UPB_AAS_LIST:I = 0x806

.field public static final RIL_REQUEST_READ_UPB_GAS_LIST:I = 0x7fa

.field public static final RIL_REQUEST_READ_UPB_GRP:I = 0x7fb

.field public static final RIL_REQUEST_REMOVE_CB_MESSAGE:I = 0x7df

.field public static final RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER:I = 0x82b

.field public static final RIL_REQUEST_RESET_ALL_CONNECTIONS:I = 0x862

.field public static final RIL_REQUEST_RESET_MD_DATA_RETRY_COUNT:I = 0x80f

.field public static final RIL_REQUEST_RESET_SUPP_SERV:I = 0x874

.field public static final RIL_REQUEST_RESTART_RILD:I = 0x866

.field public static final RIL_REQUEST_RESUME_CALL:I = 0x825

.field public static final RIL_REQUEST_RESUME_REGISTRATION:I = 0x7d0

.field public static final RIL_REQUEST_RTT_MODIFY_REQUST_RESPONSE:I = 0x881

.field public static final RIL_REQUEST_RUN_GBA:I = 0x84f

.field public static final RIL_REQUEST_SEARCH_RAT:I = 0x894

.field public static final RIL_REQUEST_SEARCH_STORED_FREQUENCY_INFO:I = 0x893

.field public static final RIL_REQUEST_SELECT_FEMTOCELL:I = 0x809

.field public static final RIL_REQUEST_SEND_CNAP:I = 0x83a

.field public static final RIL_REQUEST_SEND_RTT_MODIFY_REQUEST:I = 0x87f

.field public static final RIL_REQUEST_SEND_RTT_TEXT:I = 0x880

.field public static final RIL_REQUEST_SEND_SAR_INDICATOR:I = 0x899

.field public static final RIL_REQUEST_SEND_USSI:I = 0x82d

.field public static final RIL_REQUEST_SEND_WIFI_ASSOCIATED:I = 0x89e

.field public static final RIL_REQUEST_SEND_WIFI_ENABLED:I = 0x89d

.field public static final RIL_REQUEST_SEND_WIFI_IP_ADDRESS:I = 0x89f

.field public static final RIL_REQUEST_SETPROP_IMS_HANDOVER:I = 0x86f

.field public static final RIL_REQUEST_SETUP_XCAP_USER_AGENT_STRING:I = 0x877

.field public static final RIL_REQUEST_SET_4X4MIMO_ENABLED:I = 0x8ad

.field public static final RIL_REQUEST_SET_BACKGROUND_SEARCH_TIMER:I = 0x895

.field public static final RIL_REQUEST_SET_BAND_PRIORITY_LIST:I = 0x8ac

.field public static final RIL_REQUEST_SET_CALL_FORWARD_IN_TIME_SLOT:I = 0x84e

.field public static final RIL_REQUEST_SET_CALL_INDICATION:I = 0x7e0

.field public static final RIL_REQUEST_SET_CALL_SUB_ADDRESS:I = 0x8a0

.field public static final RIL_REQUEST_SET_CA_LINK_ENABLE_STATUS:I = 0x8a6

.field public static final RIL_REQUEST_SET_CLIP:I = 0x837

.field public static final RIL_REQUEST_SET_COLP:I = 0x84b

.field public static final RIL_REQUEST_SET_COLR:I = 0x84c

.field public static final RIL_REQUEST_SET_DISABLE_2G:I = 0x8bc

.field public static final RIL_REQUEST_SET_E911_STATE:I = 0x851

.field public static final RIL_REQUEST_SET_ECC_LIST:I = 0x7ee

.field public static final RIL_REQUEST_SET_ECC_MODE:I = 0x7f3

.field public static final RIL_REQUEST_SET_ECC_NUM:I = 0x864

.field public static final RIL_REQUEST_SET_EMERGENCY_ADDRESS_ID:I = 0x849

.field public static final RIL_REQUEST_SET_ETWS:I = 0x7de

.field public static final RIL_REQUEST_SET_FD_MODE:I = 0x7e9

.field public static final RIL_REQUEST_SET_FEMTOCELL_SYSTEM_SELECTION_MODE:I = 0x80b

.field public static final RIL_REQUEST_SET_GEO_LOCATION:I = 0x848

.field public static final RIL_REQUEST_SET_GWSD_CALL_VALID:I = 0x885

.field public static final RIL_REQUEST_SET_GWSD_IGNORE_CALL_INTERVAL:I = 0x886

.field public static final RIL_REQUEST_SET_GWSD_KEEP_ALIVE_IPDATA:I = 0x898

.field public static final RIL_REQUEST_SET_GWSD_KEEP_ALIVE_PDCP:I = 0x897

.field public static final RIL_REQUEST_SET_GWSD_MODE:I = 0x884

.field public static final RIL_REQUEST_SET_IMSCFG:I = 0x81d

.field public static final RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION:I = 0x857

.field public static final RIL_REQUEST_SET_IMS_ENABLE:I = 0x815

.field public static final RIL_REQUEST_SET_IMS_REGISTRATION_REPORT:I = 0x831

.field public static final RIL_REQUEST_SET_IMS_RTP_REPORT:I = 0x828

.field public static final RIL_REQUEST_SET_LTE_BAND_ENABLE_STATUS:I = 0x8aa

.field public static final RIL_REQUEST_SET_LTE_BSR_TIMER:I = 0x8b0

.field public static final RIL_REQUEST_SET_LTE_RELEASE_VERSION:I = 0x867

.field public static final RIL_REQUEST_SET_LTE_SCAN_DURATION:I = 0x8ba

.field public static final RIL_REQUEST_SET_MD_IMSCFG:I = 0x850

.field public static final RIL_REQUEST_SET_NATT_KEEPALIVE_STATUS:I = 0x853

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL_WITH_ACT:I = 0x7d5

.field public static final RIL_REQUEST_SET_NR_BAND_MODE:I = 0x8c1

.field public static final RIL_REQUEST_SET_NR_OPTION:I = 0x8a2

.field public static final RIL_REQUEST_SET_OVERRIDE_APN:I = 0x871

.field public static final RIL_REQUEST_SET_PDN_NAME_REUSE:I = 0x872

.field public static final RIL_REQUEST_SET_PDN_REUSE:I = 0x870

.field public static final RIL_REQUEST_SET_PHB_MEM_STORAGE:I = 0x7ff

.field public static final RIL_REQUEST_SET_PHONEBOOK_READY:I = 0x86d

.field public static final RIL_REQUEST_SET_POL_ENTRY:I = 0x83d

.field public static final RIL_REQUEST_SET_PROVISION_VALUE:I = 0x81f

.field public static final RIL_REQUEST_SET_PSEUDO_CELL_MODE:I = 0x7e5

.field public static final RIL_REQUEST_SET_PS_REGISTRATION:I = 0x7e4

.field public static final RIL_REQUEST_SET_QAM_ENABLED:I = 0x8b6

.field public static final RIL_REQUEST_SET_RCS_UA_ENABLE:I = 0x876

.field public static final RIL_REQUEST_SET_REMOVE_RESTRICT_EUTRAN_MODE:I = 0x834

.field public static final RIL_REQUEST_SET_ROAMING_ENABLE:I = 0x83f

.field public static final RIL_REQUEST_SET_RTT_MODE:I = 0x87e

.field public static final RIL_REQUEST_SET_SERVICE_STATE:I = 0x852

.field public static final RIL_REQUEST_SET_SIM_NETWORK_LOCK:I = 0x814

.field public static final RIL_REQUEST_SET_SIM_POWER:I = 0x7d2

.field public static final RIL_REQUEST_SET_SMS_FWK_READY:I = 0x856

.field public static final RIL_REQUEST_SET_SMS_PARAMS:I = 0x7dd

.field public static final RIL_REQUEST_SET_SS_PROPERTY:I = 0x878

.field public static final RIL_REQUEST_SET_TM9_ENABLED:I = 0x8b8

.field public static final RIL_REQUEST_SET_TRM:I = 0x7ec

.field public static final RIL_REQUEST_SET_TX_POWER:I = 0x892

.field public static final RIL_REQUEST_SET_TX_POWER_STATUS:I = 0x86e

.field public static final RIL_REQUEST_SET_VENDOR_SETTING:I = 0x87d

.field public static final RIL_REQUEST_SET_VILTE_ENABLE:I = 0x818

.field public static final RIL_REQUEST_SET_VIWIFI_ENABLE:I = 0x819

.field public static final RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE:I = 0x84a

.field public static final RIL_REQUEST_SET_VOLTE_ENABLE:I = 0x816

.field public static final RIL_REQUEST_SET_WFC_CONFIG:I = 0x88b

.field public static final RIL_REQUEST_SET_WFC_ENABLE:I = 0x817

.field public static final RIL_REQUEST_SET_WFC_PROFILE:I = 0x82f

.field public static final RIL_REQUEST_SET_WIFI_ASSOCIATED:I = 0x845

.field public static final RIL_REQUEST_SET_WIFI_ENABLED:I = 0x844

.field public static final RIL_REQUEST_SET_WIFI_IP_ADDRESS:I = 0x847

.field public static final RIL_REQUEST_SET_WIFI_PING_RESULT:I = 0x854

.field public static final RIL_REQUEST_SET_WIFI_SIGNAL_LEVEL:I = 0x846

.field public static final RIL_REQUEST_SIGNAL_STRENGTH_WITH_WCDMA_ECIO:I = 0x869

.field public static final RIL_REQUEST_SIM_GET_ATR:I = 0x7d1

.field public static final RIL_REQUEST_SIM_GET_ICCID:I = 0x85e

.field public static final RIL_REQUEST_SML_RSU_REQUEST:I = 0x89c

.field public static final RIL_REQUEST_SMS_ACKNOWLEDGE_EX:I = 0x87a

.field public static final RIL_REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM_WITH_RESULT_CODE:I = 0x7ed

.field public static final RIL_REQUEST_SWITCH_MODE_FOR_ECC:I = 0x7e7

.field public static final RIL_REQUEST_SYNC_DATA_SETTINGS_TO_MD:I = 0x80e

.field public static final RIL_REQUEST_VENDOR_BASE:I = 0x7d0

.field public static final RIL_REQUEST_VIDEO_CALL_ACCEPT:I = 0x81c

.field public static final RIL_REQUEST_VSIM_NOTIFICATION:I = 0x841

.field public static final RIL_REQUEST_VSIM_OPERATION:I = 0x842

.field public static final RIL_REQUEST_VSS_ANTENNA_CONF:I = 0x835

.field public static final RIL_REQUEST_VSS_ANTENNA_INFO:I = 0x836

.field public static final RIL_REQUEST_VT_DIAL_WITH_SIP_URI:I = 0x82c

.field public static final RIL_REQUEST_WRITE_PHB_ENTRY:I = 0x7f5

.field public static final RIL_REQUEST_WRITE_PHB_ENTRY_EXT:I = 0x801

.field public static final RIL_REQUEST_WRITE_UPB_GRP:I = 0x7fc

.field public static final RIL_UNSOL_5GUW_INFO_IND:I = 0xc47

.field public static final RIL_UNSOL_ACTIVE_WIFI_PDN_COUNT:I = 0xc05

.field public static final RIL_UNSOL_ATCI_RESPONSE:I = 0xbc1

.field public static final RIL_UNSOL_CALLMOD_CHANGE_INDICATOR:I = 0xbda

.field public static final RIL_UNSOL_CALL_ADDITIONAL_INFO:I = 0xc36

.field public static final RIL_UNSOL_CALL_FORWARDING:I = 0xbfe

.field public static final RIL_UNSOL_CALL_INFO_INDICATION:I = 0xbd7

.field public static final RIL_UNSOL_CARD_DETECTED_IND:I = 0xc35

.field public static final RIL_UNSOL_CDMA_CALL_ACCEPTED:I = 0xbfd

.field public static final RIL_UNSOL_CDMA_CARD_INITIAL_ESN_OR_MEID:I = 0xbcf

.field public static final RIL_UNSOL_CDMA_PLMN_CHANGED:I = 0xbbc

.field public static final RIL_UNSOL_CIPHER_INDICATION:I = 0xbd0

.field public static final RIL_UNSOL_CRSS_NOTIFICATION:I = 0xbd1

.field public static final RIL_UNSOL_DATA_ATTACH_APN_CHANGED:I = 0xbcd

.field public static final RIL_UNSOL_DEDICATE_BEARER_ACTIVATED:I = 0xc0a

.field public static final RIL_UNSOL_DEDICATE_BEARER_DEACTIVATED:I = 0xc0c

.field public static final RIL_UNSOL_DEDICATE_BEARER_MODIFIED:I = 0xc0b

.field public static final RIL_UNSOL_DSBP_STATE_CHANGED:I = 0xc2a

.field public static final RIL_UNSOL_ECC_NUM:I = 0xc17

.field public static final RIL_UNSOL_ECONF_RESULT_INDICATION:I = 0xbd8

.field public static final RIL_UNSOL_ECONF_SRVCC_INDICATION:I = 0xc00

.field public static final RIL_UNSOL_ECT_INDICATION:I = 0xbe6

.field public static final RIL_UNSOL_EMBMS_AT_INFO:I = 0xbef

.field public static final RIL_UNSOL_EMBMS_SESSION_STATUS:I = 0xbee

.field public static final RIL_UNSOL_FEMTOCELL_INFO:I = 0xbd5

.field public static final RIL_UNSOL_GET_PROVISION_DONE:I = 0xbdd

.field public static final RIL_UNSOL_GMSS_RAT_CHANGED:I = 0xbbb

.field public static final RIL_UNSOL_GTT_CAPABILITY_INDICATION:I = 0xbe8

.field public static final RIL_UNSOL_ICCID_CHANGED:I = 0xc3f

.field public static final RIL_UNSOL_IMEI_LOCK:I = 0xbbf

.field public static final RIL_UNSOL_IMSI_REFRESH_DONE:I = 0xbc0

.field public static final RIL_UNSOL_IMS_BEARER_INIT:I = 0xbeb

.field public static final RIL_UNSOL_IMS_BEARER_STATE_NOTIFY:I = 0xbe9

.field public static final RIL_UNSOL_IMS_CONFERENCE_INFO_INDICATION:I = 0xc11

.field public static final RIL_UNSOL_IMS_CONFIG_CONFIG_CHANGED:I = 0xc15

.field public static final RIL_UNSOL_IMS_CONFIG_CONFIG_LOADED:I = 0xc16

.field public static final RIL_UNSOL_IMS_CONFIG_DYNAMIC_IMS_SWITCH_COMPLETE:I = 0xc13

.field public static final RIL_UNSOL_IMS_CONFIG_FEATURE_CHANGED:I = 0xc14

.field public static final RIL_UNSOL_IMS_DATA_INFO_NOTIFY:I = 0xc27

.field public static final RIL_UNSOL_IMS_DEREG_DONE:I = 0xbec

.field public static final RIL_UNSOL_IMS_DISABLE_DONE:I = 0xbe3

.field public static final RIL_UNSOL_IMS_DISABLE_START:I = 0xbe5

.field public static final RIL_UNSOL_IMS_ENABLE_DONE:I = 0xbe2

.field public static final RIL_UNSOL_IMS_ENABLE_START:I = 0xbe4

.field public static final RIL_UNSOL_IMS_EVENT_PACKAGE_INDICATION:I = 0xbe0

.field public static final RIL_UNSOL_IMS_REGISTRATION_INFO:I = 0xbe1

.field public static final RIL_UNSOL_IMS_RTP_INFO:I = 0xbde

.field public static final RIL_UNSOL_INCOMING_CALL_INDICATION:I = 0xbc7

.field public static final RIL_UNSOL_INVALID_SIM:I = 0xbc8

.field public static final RIL_UNSOL_IWLAN_CELLULAR_QUALITY_CHANGED_IND:I = 0xc3c

.field public static final RIL_UNSOL_IWLAN_REGISTRATION_STATE_IND:I = 0xc45

.field public static final RIL_UNSOL_LTE_MESSAGE_WAITING_INDICATION:I = 0xc12

.field public static final RIL_UNSOL_MCCMNC_CHANGED:I = 0xc18

.field public static final RIL_UNSOL_MD_DATA_RETRY_COUNT_RESET:I = 0xbf3

.field public static final RIL_UNSOL_MELOCK_NOTIFICATION:I = 0xbf0

.field public static final RIL_UNSOL_ME_SMS_STORAGE_FULL:I = 0xbc3

.field public static final RIL_UNSOL_MOBILE_DATA_USAGE:I = 0xc3d

.field public static final RIL_UNSOL_MOBILE_WIFI_HANDOVER:I = 0xc04

.field public static final RIL_UNSOL_MOBILE_WIFI_ROVEOUT:I = 0xc03

.field public static final RIL_UNSOL_MODULATION_INFO:I = 0xbcb

.field public static final RIL_UNSOL_NATT_KEEP_ALIVE_CHANGED:I = 0xc0e

.field public static final RIL_UNSOL_NETWORK_BAND_INFO:I = 0xc43

.field public static final RIL_UNSOL_NETWORK_EVENT:I = 0xbca

.field public static final RIL_UNSOL_NETWORK_INFO:I = 0xbd6

.field public static final RIL_UNSOL_NETWORK_REJECT_CAUSE:I = 0xc25

.field public static final RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE:I = 0xc2d

.field public static final RIL_UNSOL_NR_CA_BAND_IND:I = 0xc46

.field public static final RIL_UNSOL_NR_SYS_INFO:I = 0xc48

.field public static final RIL_UNSOL_NW_LIMIT:I = 0xc3e

.field public static final RIL_UNSOL_ON_DSDA_CHANGED:I = 0xc3b

.field public static final RIL_UNSOL_ON_USSI:I = 0xbdc

.field public static final RIL_UNSOL_ON_VOLTE_SUBSCRIPTION:I = 0xc26

.field public static final RIL_UNSOL_ON_XUI:I = 0xbdf

.field public static final RIL_UNSOL_PCO_DATA_AFTER_ATTACHED:I = 0xbed

.field public static final RIL_UNSOL_PCO_STATUS:I = 0xbf5

.field public static final RIL_UNSOL_PHB_READY_NOTIFICATION:I = 0xbd4

.field public static final RIL_UNSOL_PLMN_DATA:I = 0xc40

.field public static final RIL_UNSOL_PSEUDO_CELL_INFO:I = 0xbc9

.field public static final RIL_UNSOL_QUALIFIED_NETWORK_TYPES_CHANGED:I = 0xc3a

.field public static final RIL_UNSOL_REMOVE_RESTRICT_EUTRAN:I = 0xbf4

.field public static final RIL_UNSOL_REQUEST_GEO_LOCATION:I = 0xc08

.field public static final RIL_UNSOL_RESET_ATTACH_APN:I = 0xbcc

.field public static final RIL_UNSOL_RESPONSE_CDMA_NEW_SMS_EX:I = 0xc2c

.field public static final RIL_UNSOL_RESPONSE_CS_NETWORK_STATE_CHANGED:I = 0xbc5

.field public static final RIL_UNSOL_RESPONSE_ETWS_NOTIFICATION:I = 0xbc2

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_EX:I = 0xc29

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX:I = 0xc28

.field public static final RIL_UNSOL_RESPONSE_PLMN_CHANGED:I = 0xbb8

.field public static final RIL_UNSOL_RESPONSE_PS_NETWORK_CHANGED:I = 0xbba

.field public static final RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED:I = 0xbb9

.field public static final RIL_UNSOL_RESPONSE_SMS_EINFO_EXTENSIONS:I = 0xc41

.field public static final RIL_UNSOL_RSU_SIM_LOCK_NOTIFICATION:I = 0xc38

.field public static final RIL_UNSOL_RTT_AUDIO_INDICATION:I = 0xc32

.field public static final RIL_UNSOL_RTT_CAPABILITY_INDICATION:I = 0xc30

.field public static final RIL_UNSOL_RTT_MODIFY_REQUEST_RECEIVE:I = 0xc31

.field public static final RIL_UNSOL_RTT_MODIFY_RESPONSE:I = 0xc2e

.field public static final RIL_UNSOL_RTT_TEXT_RECEIVE:I = 0xc2f

.field public static final RIL_UNSOL_SIB16_TIME_INFO_IND:I = 0xc44

.field public static final RIL_UNSOL_SIGNAL_STRENGTH_WITH_WCDMA_ECIO:I = 0xc19

.field public static final RIL_UNSOL_SIM_COMMON_SLOT_NO_CHANGED:I = 0xbfc

.field public static final RIL_UNSOL_SIM_MISSING:I = 0xbf9

.field public static final RIL_UNSOL_SIM_PLUG_IN:I = 0xbf7

.field public static final RIL_UNSOL_SIM_PLUG_OUT:I = 0xbf8

.field public static final RIL_UNSOL_SIM_POWER_CHANGED:I = 0xc34

.field public static final RIL_UNSOL_SIM_RECOVERY:I = 0xbfa

.field public static final RIL_UNSOL_SIM_SLOT_LOCK_POLICY_NOTIFY:I = 0xc2b

.field public static final RIL_UNSOL_SIP_CALL_PROGRESS_INDICATOR:I = 0xbd9

.field public static final RIL_UNSOL_SMS_READY_NOTIFICATION:I = 0xbc4

.field public static final RIL_UNSOL_SPEECH_CODEC_INFO:I = 0xbd3

.field public static final RIL_UNSOL_STK_BIP_PROACTIVE_COMMAND:I = 0xbf1

.field public static final RIL_UNSOL_STK_SETUP_MENU_RESET:I = 0xbff

.field public static final RIL_UNSOL_SUPP_SVC_NOTIFICATION_EX:I = 0xbd2

.field public static final RIL_UNSOL_TOE_INFO_IND:I = 0xc42

.field public static final RIL_UNSOL_TRAY_PLUG_IN:I = 0xbfb

.field public static final RIL_UNSOL_TRIGGER_OTASP:I = 0xbf2

.field public static final RIL_UNSOL_TX_POWER_STATUS:I = 0xc23

.field public static final RIL_UNSOL_VENDOR_BASE:I = 0xbb8

.field public static final RIL_UNSOL_VIDEO_CAPABILITY_INDICATOR:I = 0xbdb

.field public static final RIL_UNSOL_VIRTUAL_SIM_OFF:I = 0xbbe

.field public static final RIL_UNSOL_VIRTUAL_SIM_ON:I = 0xbbd

.field public static final RIL_UNSOL_VIRTUAL_SIM_STATUS_CHANGED:I = 0xc39

.field public static final RIL_UNSOL_VOLTE_LTE_CONNECTION_STATUS:I = 0xc01

.field public static final RIL_UNSOL_VOLTE_SETTING:I = 0xbe7

.field public static final RIL_UNSOL_VOPS_INDICATION:I = 0xc33

.field public static final RIL_UNSOL_VSIM_OPERATION_INDICATION:I = 0xc02

.field public static final RIL_UNSOL_WFC_PDN_STATE:I = 0xc09

.field public static final RIL_UNSOL_WIFI_LOCK:I = 0xc37

.field public static final RIL_UNSOL_WIFI_PDN_ERROR:I = 0xc07

.field public static final RIL_UNSOL_WIFI_PDN_OOS:I = 0xc10

.field public static final RIL_UNSOL_WIFI_PING_REQUEST:I = 0xc0f

.field public static final RIL_UNSOL_WIFI_RSSI_MONITORING_CONFIG:I = 0xc06

.field public static final RIL_UNSOL_WORLD_MODE_CHANGED:I = 0xbce

.field public static final SIM_POWER_OFF:I = 0x0

.field public static final SIM_POWER_ON:I = 0x1

.field public static final SIM_POWER_RESET:I = 0x2
