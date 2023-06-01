.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimConstants;
.super Ljava/lang/Object;
.source "ExternalSimConstants.java"


# static fields
.field public static final CAPABILITY_NOT_SUPPORT:I = 0x0

.field public static final CAPABILITY_SUPPORT_EXTERNAL_SIM:I = 0x1

.field public static final CAPABILITY_SUPPORT_NON_DSDA_REMOTE_SIM:I = 0x4

.field public static final CAPABILITY_SUPPORT_PERSIST_EXTERNAL_SIM:I = 0x2

.field public static final EVENT_TYPE_EXTERNAL_SIM_CONNECTED:I = 0xcc

.field public static final EVENT_TYPE_RECEIVE_RSIM_AUTH_RSP:I = 0xca

.field public static final EVENT_TYPE_RSIM_AUTH_DONE:I = 0xcb

.field public static final EVENT_TYPE_SEND_RSIM_AUTH_IND:I = 0xc9

.field public static final MODEM_VSIM_CAPABILITYY_EANBLE:I = 0x1

.field public static final MODEM_VSIM_CAPABILITYY_HOTSWAP:I = 0x2

.field public static final MSG_ID_AUTHENCATION_DONE_ACK:I = 0x9

.field public static final MSG_ID_CAPABILITY_SWITCH_DONE:I = 0x7d2

.field public static final MSG_ID_EVENT_REQUEST:I = 0x3

.field public static final MSG_ID_EVENT_RESPONSE:I = 0x3eb

.field public static final MSG_ID_FINALIZATION_REQUEST:I = 0x8

.field public static final MSG_ID_FINALIZATION_RESPONSE:I = 0x3f0

.field public static final MSG_ID_GET_PLATFORM_CAPABILITY_REQUEST:I = 0x2

.field public static final MSG_ID_GET_PLATFORM_CAPABILITY_RESPONSE:I = 0x3ea

.field public static final MSG_ID_GET_SERVICE_STATE_REQUEST:I = 0x7

.field public static final MSG_ID_GET_SERVICE_STATE_RESPONSE:I = 0x3ef

.field public static final MSG_ID_INITIALIZATION_REQUEST:I = 0x1

.field public static final MSG_ID_INITIALIZATION_RESPONSE:I = 0x3e9

.field public static final MSG_ID_UICC_APDU_REQUEST:I = 0x3ed

.field public static final MSG_ID_UICC_APDU_RESPONSE:I = 0x5

.field public static final MSG_ID_UICC_AUTHENTICATION_ABORT_IND:I = 0x3f2

.field public static final MSG_ID_UICC_AUTHENTICATION_DONE_IND:I = 0x3f1

.field public static final MSG_ID_UICC_AUTHENTICATION_REQUEST_IND:I = 0x7d1

.field public static final MSG_ID_UICC_POWER_DOWN_REQUEST:I = 0x3ee

.field public static final MSG_ID_UICC_POWER_DOWN_RESPONSE:I = 0x6

.field public static final MSG_ID_UICC_RESET_REQUEST:I = 0x3ec

.field public static final MSG_ID_UICC_RESET_RESPONSE:I = 0x4

.field public static final MSG_ID_UICC_TEST_MODE_REQUEST:I = 0x1389

.field public static final MULTISIM_CONFIG_DSDA:I = 0x2

.field public static final MULTISIM_CONFIG_DSDS:I = 0x1

.field public static final MULTISIM_CONFIG_TSTS:I = 0x3

.field public static final MULTISIM_CONFIG_UNKNOWN:I = 0x0

.field public static final PERSIST_TYPE_DISABLE:I = 0x0

.field public static final PERSIST_TYPE_ENABLED:I = 0x1

.field public static final PERSIST_TYPE_ENABLED_WITH_TIMEOUT:I = 0x2

.field public static final REQUEST_TYPE_DISABLE_EXTERNAL_SIM:I = 0x2

.field public static final REQUEST_TYPE_DISABLE_SIM_DIALOG:I = 0x9

.field public static final REQUEST_TYPE_ENABLE_EXTERNAL_SIM:I = 0x1

.field public static final REQUEST_TYPE_ENABLE_SIM_DIALOG:I = 0xa

.field public static final REQUEST_TYPE_PLUG_IN:I = 0x4

.field public static final REQUEST_TYPE_PLUG_OUT:I = 0x3

.field public static final REQUEST_TYPE_RESET_MAPPING_INFO:I = 0x7

.field public static final REQUEST_TYPE_SET_MAPPING_INFO:I = 0x6

.field public static final REQUEST_TYPE_SET_PERSIST_TIMEOUT:I = 0xb

.field public static final REQUEST_TYPE_SET_PERSIST_TYPE:I = 0x5

.field public static final REQUEST_TYPE_SET_TIMEOUT_TIMER:I = 0x8

.field public static final RESPONSE_RESULT_GENERIC_ERROR:I = -0x1

.field public static final RESPONSE_RESULT_OK:I = 0x0

.field public static final RESPONSE_RESULT_PLATFORM_NOT_READY:I = -0x2

.field public static final RESPONSE_RESULT_PLATFORM_RETRYING:I = -0x3

.field public static final SIM_TYPE_AKA_SIM:I = 0x3

.field public static final SIM_TYPE_LOCAL_SIM:I = 0x1

.field public static final SIM_TYPE_REMOTE_SIM:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
