.class public Lcom/mediatek/internal/telephony/MtkDctConstants;
.super Lcom/android/internal/telephony/DctConstants;
.source "MtkDctConstants.java"


# static fields
.field public static final CMD_TEAR_DOWN_PDN_BY_TYPE:I = 0x4220b

.field public static final EVENT_APN_CHANGED_DONE:I = 0x421f7

.field public static final EVENT_ATTACH_APN_CHANGED:I = 0x421fb

.field public static final EVENT_CHECK_FDN_LIST:I = 0x42208

.field public static final EVENT_DATA_ATTACHED_PCO_STATUS:I = 0x42204

.field public static final EVENT_DATA_ENABLED_SETTINGS:I = 0x42203

.field public static final EVENT_DATA_ROAMING_CHANGED:I = 0x421f5

.field public static final EVENT_DEDICATED_BEARER_ACTIVATED:I = 0x42205

.field public static final EVENT_DEDICATED_BEARER_DEACTIVATED:I = 0x42207

.field public static final EVENT_DEDICATED_BEARER_MODIFIED:I = 0x42206

.field public static final EVENT_FDN_CHANGED:I = 0x421f8

.field public static final EVENT_ICC_CHANGED:I = 0x42210

.field public static final EVENT_INIT_EMERGENCY_APN_SETTINGS:I = 0x421f6

.field public static final EVENT_MD_DATA_RETRY_COUNT_RESET:I = 0x42201

.field public static final EVENT_MOBILE_DATA_USAGE:I = 0x4220d

.field public static final EVENT_MODEM_RESET:I = 0x4220c

.field public static final EVENT_NETWORK_REJECT:I = 0x4220a

.field public static final EVENT_NW_LIMIT_STATE:I = 0x4220e

.field public static final EVENT_PLMN_DATA:I = 0x4220f

.field public static final EVENT_RECORDS_OVERRIDE:I = 0x42211

.field public static final EVENT_REG_PLMN_CHANGED:I = 0x421fc

.field public static final EVENT_REG_SUSPENDED:I = 0x421fd

.field public static final EVENT_REMOVE_RESTRICT_EUTRAN:I = 0x42202

.field public static final EVENT_RESET_ATTACH_APN:I = 0x421ff

.field public static final EVENT_RESET_PDP_DONE:I = 0x421f9

.field public static final EVENT_RIL_CONNECTED:I = 0x42209

.field public static final EVENT_ROAMING_TYPE_CHANGED:I = 0x42200

.field public static final EVENT_SETUP_PENDING_DATA:I = 0x421fa

.field public static final EVENT_SET_RESUME:I = 0x421fe

.field public static final MTK_BASE:I = 0x421f4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/DctConstants;-><init>()V

    return-void
.end method
