.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.super Lcom/android/internal/telephony/dataconnection/DataConnection;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final EVENT_ADDRESS_REMOVED:I = 0x4002a

.field static final EVENT_FALLBACK_RETRY_CONNECTION:I = 0x4002c

.field static final EVENT_GET_DATA_CALL_LIST:I = 0x4002e

.field static final EVENT_IPV4_ADDRESS_REMOVED:I = 0x40028

.field static final EVENT_IPV6_ADDRESS_REMOVED:I = 0x40029

.field static final EVENT_IPV6_ADDRESS_UPDATED:I = 0x4002d

.field static final EVENT_VOICE_CALL:I = 0x4002b

.field private static final INTENT_RETRY_ALARM_TAG:Ljava/lang/String; = "tag"

.field private static final INTENT_RETRY_ALARM_WHAT:Ljava/lang/String; = "what"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkDc"

.field private static final RA_GET_IPV6_VALID_FAIL:I = -0x3e8

.field private static final RA_INITIAL_FAIL:I = -0x1

.field private static final RA_REFRESH_FAIL:I = -0x2

.field private static final VDBG:Z


# instance fields
.field private mActionRetry:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mCause:I

.field private mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

.field protected mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

.field private mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsInVoiceCall:Z

.field private mIsOp20:Z

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mRetryCount:I

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field private mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private mValid:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 153
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    .line 154
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    .line 200
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EVENT_CONNECT"

    aput-object v2, v0, v1

    .line 202
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "EVENT_SETUP_DATA_CONNECTION_DONE"

    aput-object v2, v0, v1

    .line 204
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "EVENT_DEACTIVATE_DONE"

    aput-object v2, v0, v1

    .line 205
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "EVENT_DISCONNECT"

    aput-object v2, v0, v1

    .line 206
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "EVENT_DISCONNECT_ALL"

    aput-object v2, v0, v1

    .line 207
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "EVENT_DATA_STATE_CHANGED"

    aput-object v2, v0, v1

    .line 208
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "EVENT_TEAR_DOWN_NOW"

    aput-object v2, v0, v1

    .line 209
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "EVENT_LOST_CONNECTION"

    aput-object v2, v0, v1

    .line 210
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    aput-object v2, v0, v1

    .line 212
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_ON"

    aput-object v2, v0, v1

    .line 213
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_OFF"

    aput-object v2, v0, v1

    .line 214
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "EVENT_BW_REFRESH_RESPONSE"

    aput-object v2, v0, v1

    .line 215
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_STARTED"

    aput-object v2, v0, v1

    .line 217
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_ENDED"

    aput-object v2, v0, v1

    .line 219
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "EVENT_DATA_CONNECTION_CONGESTEDNESS_CHANGED"

    aput-object v2, v0, v1

    .line 221
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "EVENT_KEEPALIVE_STATUS"

    aput-object v2, v0, v1

    .line 222
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "EVENT_KEEPALIVE_STARTED"

    aput-object v2, v0, v1

    .line 223
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "EVENT_KEEPALIVE_STOPPED"

    aput-object v2, v0, v1

    .line 224
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "EVENT_KEEPALIVE_START_REQUEST"

    aput-object v2, v0, v1

    .line 225
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "EVENT_KEEPALIVE_STOP_REQUEST"

    aput-object v2, v0, v1

    .line 226
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "EVENT_LINK_CAPACITY_CHANGED"

    aput-object v2, v0, v1

    .line 227
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "EVENT_RESET"

    aput-object v2, v0, v1

    .line 228
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "EVENT_REEVALUATE_RESTRICTED_STATE"

    aput-object v2, v0, v1

    .line 230
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "EVENT_REEVALUATE_DATA_CONNECTION_PROPERTIES"

    aput-object v2, v0, v1

    .line 232
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "EVENT_NR_STATE_CHANGED"

    aput-object v2, v0, v1

    .line 233
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1c

    const-string v2, "EVENT_DATA_CONNECTION_METEREDNESS_CHANGED"

    aput-object v2, v0, v1

    .line 235
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1d

    const-string v2, "EVENT_NR_FREQUENCY_CHANGED"

    aput-object v2, v0, v1

    .line 236
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "EVENT_CARRIER_CONFIG_LINK_BANDWIDTHS_CHANGED"

    aput-object v2, v0, v1

    .line 238
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "EVENT_CARRIER_PRIVILEGED_UIDS_CHANGED"

    aput-object v2, v0, v1

    .line 240
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "EVENT_CSS_INDICATOR_CHANGED"

    aput-object v2, v0, v1

    .line 241
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "EVENT_UPDATE_SUSPENDED_STATE"

    aput-object v2, v0, v1

    .line 242
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "EVENT_START_HANDOVER"

    aput-object v2, v0, v1

    .line 243
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x23

    const-string v2, "EVENT_CANCEL_HANDOVER"

    aput-object v2, v0, v1

    .line 244
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x24

    const-string v2, "EVENT_START_HANDOVER_ON_TARGET"

    aput-object v2, v0, v1

    .line 245
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x25

    const-string v2, "EVENT_ALLOCATE_PDU_SESSION_ID"

    aput-object v2, v0, v1

    .line 246
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "EVENT_RELEASE_PDU_SESSION_ID"

    aput-object v2, v0, v1

    .line 247
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "EVENT_LINK_BANDWIDTH_ESTIMATOR_UPDATE"

    aput-object v2, v0, v1

    .line 250
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x28

    const-string v2, "EVENT_IPV4_ADDRESS_REMOVED"

    aput-object v2, v0, v1

    .line 251
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x29

    const-string v2, "EVENT_IPV6_ADDRESS_REMOVED"

    aput-object v2, v0, v1

    .line 252
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x2a

    const-string v2, "EVENT_ADDRESS_REMOVED"

    aput-object v2, v0, v1

    .line 253
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x2b

    const-string v2, "EVENT_VOICE_CALL"

    aput-object v2, v0, v1

    .line 254
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x2c

    const-string v2, "EVENT_FALLBACK_RETRY_CONNECTION"

    aput-object v2, v0, v1

    .line 255
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x2d

    const-string v2, "EVENT_IPV6_ADDRESS_UPDATED"

    aput-object v2, v0, v1

    .line 256
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x2e

    const-string v2, "EVENT_GET_DATA_CALL_LIST"

    aput-object v2, v0, v1

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;Z)V
    .registers 13
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "tagSuffix"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p5, "dataServiceManager"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p6, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p7, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p8, "doAllocatePduSessionId"    # Z

    .line 365
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;Z)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 157
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 168
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    .line 171
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 178
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    .line 180
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 182
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 185
    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    .line 260
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 893
    const-string v0, "persist.vendor.operator.optr"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OP20"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 894
    const-string v0, "ril.fwk.test.optr"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 895
    const-string v0, "ro.build.type"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    goto :goto_53

    :cond_52
    :goto_52
    const/4 v1, 0x1

    :goto_53
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsOp20:Z

    .line 1928
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 369
    :try_start_5c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 370
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 371
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 372
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDataConnectionExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_74} :catch_75

    .line 378
    goto :goto_82

    .line 373
    :catch_75
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_7f

    .line 375
    const-string v1, "mDataConnectionExt init fail"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 377
    :cond_7f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getInstance(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    .line 385
    const-string v0, "get INetworkManagementService"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 386
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 387
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlarmManager:Landroid/app/AlarmManager;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action_retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 151
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->syncQosToNetworkAgent()V

    return-void
.end method

.method static synthetic access$10100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic access$10200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDataConnectionState()V

    return-void
.end method

.method static synthetic access$10500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I

    move-result v0

    return v0
.end method

.method static synthetic access$10700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I

    move-result v0

    return v0
.end method

.method static synthetic access$10900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I

    move-result v0

    return v0
.end method

.method static synthetic access$11400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$11772(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    return v0
.end method

.method static synthetic access$11800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSuspended:Z

    return v0
.end method

.method static synthetic access$12100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V
    .registers 5
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    return-void
.end method

.method static synthetic access$12300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object p1
.end method

.method static synthetic access$12802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p1
.end method

.method static synthetic access$12900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    return p1
.end method

.method static synthetic access$13100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "x2"    # Z

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$13500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "x2"    # Z

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$13600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    return v0
.end method

.method static synthetic access$13700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/os/Message;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/os/Message;

    .line 151
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J

    return-wide v0
.end method

.method static synthetic access$14302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # J

    .line 151
    iput-wide p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J

    return-wide p1
.end method

.method static synthetic access$14400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onAddressRemoved()V

    return-void
.end method

.method static synthetic access$14500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    return-object v0
.end method

.method static synthetic access$14502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    return-object p1
.end method

.method static synthetic access$14600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataRegState:I

    return v0
.end method

.method static synthetic access$14900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$15302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic access$15400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    return v0
.end method

.method static synthetic access$15708(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    return v0
.end method

.method static synthetic access$15802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic access$15902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$16000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$16100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$16200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->canSendNetworkCapabilities()Z

    move-result v0

    return v0
.end method

.method static synthetic access$16300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$16800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ZLandroid/net/LinkAddress;)I
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getEventByAddress(ZLandroid/net/LinkAddress;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/LinkAddress;

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "x2"    # Z

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverFailureMode:I

    return v0
.end method

.method static synthetic access$3100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Landroid/telephony/data/DataCallResponse;
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onSetupFallbackConnection(Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void
.end method

.method static synthetic access$3802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic access$3900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->registerNetworkAlertObserver()V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mId:I

    return v0
.end method

.method static synthetic access$4800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->canHandleDefault()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I

    return v0
.end method

.method static synthetic access$5300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateTcpBufferSizes(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I

    return v0
.end method

.method static synthetic access$5500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkBandwidthsFromCarrierConfig(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isUnmeteredUseOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mMmsUseOnly:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isMmsUseOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mEnterpriseUse:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isEnterpriseUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mMmsUseOnly:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mEnterpriseUse:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->unregisterNetworkAlertObserver()V

    return-void
.end method

.method static synthetic access$7000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/vcn/VcnManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mVcnManager:Landroid/net/vcn/VcnManager;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandoverSourceTransport()I

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic access$8200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    return p1
.end method

.method static synthetic access$8900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->calculateScore()I

    move-result v0

    return v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 151
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$9176(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # I

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    return v0
.end method

.method static synthetic access$9200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getDisallowedApnTypes()I

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkPropertiesHttpProxy()V

    return-void
.end method

.method static synthetic access$9402(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object p1
.end method

.method static synthetic access$9500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    return v0
.end method

.method static synthetic access$9700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    return v0
.end method

.method static synthetic access$9800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/vcn/VcnManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mVcnManager:Landroid/net/vcn/VcnManager;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    return-object v0
.end method

.method private addInternetCapForDunOnlyType(Landroid/telephony/data/ApnSetting;Landroid/net/NetworkCapabilities$Builder;)V
    .registers 8
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities$Builder;

    .line 898
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsOp20:Z

    if-eqz v0, :cond_3c

    .line 899
    nop

    .line 900
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    const/16 v1, 0x8

    or-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v3

    .line 901
    .local v0, "isDunOnly":Z
    :goto_13
    nop

    .line 902
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "pam"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    move v1, v2

    .line 904
    .local v1, "isDunApn":Z
    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    .line 905
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I

    packed-switch v2, :pswitch_data_3e

    :pswitch_36
    goto :goto_3c

    .line 912
    :pswitch_37
    const/16 v2, 0xc

    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 919
    .end local v0    # "isDunOnly":Z
    .end local v1    # "isDunApn":Z
    :cond_3c
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x4
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method

.method private canSendNetworkCapabilities()Z
    .registers 6

    .line 2166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2168
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2169
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2170
    const-string v0, "Not update network capabilities of default PDN for non-preferred data phone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2172
    const/4 v0, 0x0

    return v0

    .line 2174
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_33
    goto :goto_12

    .line 2176
    :cond_34
    const/4 v0, 0x1

    return v0
.end method

.method private getEventByAddress(ZLandroid/net/LinkAddress;)I
    .registers 7
    .param p1, "bUpdated"    # Z
    .param p2, "linkAddr"    # Landroid/net/LinkAddress;

    .line 1891
    const/4 v0, -0x1

    .line 1892
    .local v0, "event":I
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 1893
    .local v1, "addr":Ljava/net/InetAddress;
    const-string v2, "unknown address type, linkAddr: "

    if-nez p1, :cond_30

    .line 1894
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_11

    .line 1895
    const v0, 0x40029

    goto :goto_4e

    .line 1896
    :cond_11
    instance-of v3, v1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_19

    .line 1897
    const v0, 0x40028

    goto :goto_4e

    .line 1899
    :cond_19
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_4e

    .line 1900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    goto :goto_4e

    .line 1904
    :cond_30
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_38

    .line 1905
    const v0, 0x4002d

    goto :goto_4e

    .line 1907
    :cond_38
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_4e

    .line 1908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1913
    :cond_4e
    :goto_4e
    return v0
.end method

.method private isAddInternetCapability()Z
    .registers 6

    .line 2277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDefaultDataPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3c

    .line 2281
    :cond_11
    const/4 v0, 0x0

    .line 2282
    .local v0, "hasVsimType":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2283
    .local v2, "ctx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vsim"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2284
    const/4 v0, 0x1

    .line 2285
    goto :goto_39

    .line 2287
    .end local v2    # "ctx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_38
    goto :goto_1c

    .line 2288
    :cond_39
    :goto_39
    xor-int/lit8 v1, v0, 0x1

    return v1

    .line 2278
    .end local v0    # "hasVsimType":Z
    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    return v0
.end method

.method private onAddressRemoved()V
    .registers 9

    .line 1944
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v2, v0, :cond_12

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1945
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    if-ne v1, v0, :cond_8d

    .line 1946
    :cond_12
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isIpv4Connected()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1947
    const-string v0, "onAddressRemoved: IPv6 RA failed and didn\'t connect with IPv4"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    if-eqz v0, :cond_96

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddressRemoved: mApnContexts size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1950
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1951
    .local v2, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1952
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    .line 1953
    .local v4, "apnType":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_8b

    .line 1954
    const-string v0, "onAddressRemoved: send message EVENT_DISCONNECT_ALL"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1955
    new-instance v0, Landroid/util/Pair;

    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mConnectionGeneration:I

    .line 1956
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1957
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v6, 0x4200f

    .line 1958
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1960
    .local v5, "msg":Landroid/os/Message;
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const-string v7, "raFailed"

    invoke-direct {v6, v3, v7, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;ILandroid/os/Message;)V

    move-object v1, v6

    .line 1963
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    const v6, 0x40006

    .line 1964
    invoke-virtual {p0, v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1963
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1965
    goto :goto_8c

    .line 1967
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v2    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "apnType":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8b
    goto :goto_45

    :cond_8c
    :goto_8c
    goto :goto_96

    .line 1970
    :cond_8d
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_96

    const-string v0, "onAddressRemoved: no need to remove"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1972
    :cond_96
    :goto_96
    return-void
.end method

.method private onSetupFallbackConnection(Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .registers 16
    .param p1, "response"    # Landroid/telephony/data/DataCallResponse;
    .param p2, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1855
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-eq v0, v1, :cond_2d

    .line 1856
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_2a

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupFallbackConnection stale cp.tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1859
    :cond_2a
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    goto :goto_a4

    .line 1861
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_2d
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_36

    const-string v0, "onSetupFallbackConnection received successful DataCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1862
    :cond_36
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    .line 1864
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v0

    .line 1865
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1864
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 1867
    new-instance v0, Landroid/telephony/data/DataCallResponse;

    const/4 v2, 0x0

    .line 1869
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v3

    .line 1870
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v4

    .line 1871
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v5

    .line 1872
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v6

    .line 1873
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 1874
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v8

    .line 1875
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v9

    .line 1876
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v10

    .line 1877
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v11

    .line 1878
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/telephony/data/DataCallResponse;-><init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 1879
    .local v0, "tempResponse":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 1882
    .local v1, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 1883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetupFallbackConnection: ifname-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 1885
    .end local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :goto_a4
    return-void
.end method

.method private registerNetworkAlertObserver()V
    .registers 3

    .line 1975
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_1c

    .line 1976
    const-string v0, "registerNetworkAlertObserver X"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1978
    :try_start_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1979
    const-string v0, "registerNetworkAlertObserver E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    .line 1983
    goto :goto_1c

    .line 1980
    :catch_16
    move-exception v0

    .line 1982
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "registerNetworkAlertObserver failed E"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1985
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method private resetRetryCount()V
    .registers 3

    .line 2042
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    .line 2043
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_1d

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetRetryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2046
    :cond_1d
    return-void
.end method

.method private sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "address"    # Landroid/net/LinkAddress;

    .line 1917
    if-gez p1, :cond_8

    .line 1918
    const-string v0, "sendMessageForSM: Skip notify!!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1919
    return-void

    .line 1921
    :cond_8
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 1922
    .local v0, "addrInfo":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_31

    .line 1923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageForSM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", addressInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1925
    :cond_31
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1926
    return-void
.end method

.method private unregisterNetworkAlertObserver()V
    .registers 3

    .line 1988
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_1f

    .line 1989
    const-string v0, "unregisterNetworkAlertObserver X"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1991
    :try_start_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1992
    const-string v0, "unregisterNetworkAlertObserver E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_16

    .line 1996
    goto :goto_1c

    .line 1993
    :catch_16
    move-exception v0

    .line 1995
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "unregisterNetworkAlertObserver failed E"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1997
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 1999
    :cond_1f
    return-void
.end method

.method private updateCpaConnectionInfo(Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .registers 10
    .param p1, "res"    # Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .param p2, "response"    # Landroid/telephony/data/DataCallResponse;

    .line 2342
    move-object v0, p1

    .line 2343
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    const/4 v1, 0x0

    .line 2347
    .local v1, "mCpaDct":Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-result-object v1

    .line 2348
    if-nez v1, :cond_f

    .line 2349
    const-string v2, "[CpaDct]can\'t mCpaDct!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 2350
    :cond_f
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-eq v2, v3, :cond_22

    .line 2351
    const-string v2, "[CpaDct]mCpaDct\'s phone id not match!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 2354
    :cond_22
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NAVI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2355
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3c

    .line 2356
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7d

    .line 2357
    :cond_3c
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v2

    .line 2358
    .local v2, "lp":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 2359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CpaDct]updateCpaConnectionInfo() new res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    .line 2361
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/net/LinkAddress;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/LinkAddress;

    .line 2362
    .local v3, "la":[Landroid/net/LinkAddress;
    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 2363
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    new-array v4, v4, [Ljava/net/InetAddress;

    invoke-interface {v6, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/net/InetAddress;

    .line 2362
    invoke-virtual {v1, v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConInfo(Ljava/net/InetAddress;[Ljava/net/InetAddress;)V

    .line 2364
    .end local v2    # "lp":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .end local v3    # "la":[Landroid/net/LinkAddress;
    goto :goto_a1

    .line 2365
    :cond_7d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]not handle, with requestMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " CpaDctState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2365
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    .line 2369
    :goto_a1
    return-object v0
.end method


# virtual methods
.method protected checkSetMtu(Landroid/telephony/data/ApnSetting;Landroid/net/LinkProperties;)V
    .registers 10
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 294
    if-nez p2, :cond_3

    return-void

    .line 296
    :cond_3
    if-eqz p1, :cond_146

    if-nez p2, :cond_9

    goto/16 :goto_146

    .line 298
    :cond_9
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    if-eqz v0, :cond_28

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTU set by call response to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logi(Ljava/lang/String;)V

    .line 300
    return-void

    .line 304
    :cond_28
    const-string v0, "persist.vendor.radio.mobile.mtu"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "strMtu":Ljava/lang/String;
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7a

    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, "mtu":I
    const/4 v2, 0x0

    .line 309
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 308
    :cond_45
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_4d} :catch_4f

    move v1, v2

    .line 313
    goto :goto_58

    .line 310
    :catch_4f
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 312
    const-string v3, "mtu is invalid"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 314
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_58
    if-lez v1, :cond_7a

    .line 315
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTU set by EM ,strmtu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intmtu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logi(Ljava/lang/String;)V

    .line 317
    return-void

    .line 322
    .end local v1    # "mtu":I
    :cond_7a
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    .line 323
    .local v1, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 324
    .local v2, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_d1

    if-eqz v1, :cond_d1

    .line 325
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isTestIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 326
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x80b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 328
    .local v3, "testSimMtu":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test SIM MTU configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logi(Ljava/lang/String;)V

    .line 329
    if-eqz v3, :cond_d1

    .line 330
    invoke-virtual {p2, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTU set by test SIM MTU configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logi(Ljava/lang/String;)V

    .line 332
    return-void

    .line 336
    .end local v3    # "testSimMtu":I
    :cond_d1
    if-eqz p1, :cond_f9

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v3

    if-eqz v3, :cond_f9

    .line 337
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTU set by APN to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logi(Ljava/lang/String;)V

    .line 339
    return-void

    .line 343
    :cond_f9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    check-cast v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getMtu()I

    move-result v3

    .line 344
    .local v3, "mtuFromResource":I
    if-eqz v3, :cond_11b

    .line 345
    invoke-virtual {p2, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTU set by \'self-created\' config resource to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logi(Ljava/lang/String;)V

    .line 347
    return-void

    .line 351
    :cond_11b
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 353
    .local v4, "mtu":I
    if-eqz v4, :cond_145

    .line 354
    invoke-virtual {p2, v4}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MTU set by config resource to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logi(Ljava/lang/String;)V

    .line 357
    :cond_145
    return-void

    .line 296
    .end local v0    # "strMtu":Ljava/lang/String;
    .end local v1    # "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .end local v2    # "phoneId":I
    .end local v3    # "mtuFromResource":I
    .end local v4    # "mtu":I
    :cond_146
    :goto_146
    return-void
.end method

.method protected clearSettings()V
    .registers 2

    .line 629
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    .line 630
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 631
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 632
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    .line 634
    return-void
.end method

.method protected connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I
    .registers 28
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 397
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect: carrier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' APN=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 398
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' proxy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 399
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' port=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 400
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v11, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 401
    iget-object v0, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v0, :cond_58

    iget-object v0, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    const-string v1, "MtkDataConnection.connect"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 404
    :cond_58
    iget-object v0, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    const/4 v1, 0x0

    const v2, 0x40001

    const/4 v3, 0x1

    const/4 v13, 0x0

    if-lez v0, :cond_cd

    .line 405
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    iget-object v4, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 406
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:I

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-object v4, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 408
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:J

    .line 407
    invoke-virtual {v0, v4, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v13}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0, v13}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    .line 413
    .local v0, "response":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v11, v2, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 414
    .local v2, "msg":Landroid/os/Message;
    invoke-static {v2, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 415
    invoke-virtual {v11, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 416
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_c1

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect: FailBringUpAll="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " send error response="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 420
    :cond_c1
    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    .line 421
    return v13

    .line 424
    .end local v0    # "response":Landroid/telephony/data/DataCallResponse;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_cd
    const-wide/16 v4, -0x1

    iput-wide v4, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCreateTime:J

    .line 425
    iput-wide v4, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailTime:J

    .line 426
    iput v13, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailCause:I

    .line 428
    invoke-virtual {v11, v2, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 429
    .local v14, "msg":Landroid/os/Message;
    iput-object v12, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget-object v0, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget v2, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    iget-boolean v4, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mIsPreferredApn:Z

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;IZ)Landroid/telephony/data/DataProfile;

    move-result-object v15

    .line 437
    .local v15, "dp":Landroid/telephony/data/DataProfile;
    iget-object v0, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v10

    .line 440
    .local v10, "isModemRoaming":Z
    iget-object v0, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 441
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v0

    iget-object v2, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 440
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v0

    xor-int/2addr v0, v3

    move v9, v0

    .line 446
    .local v9, "isUnmeteredApnType":Z
    iget-object v0, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_118

    if-eqz v10, :cond_116

    iget-object v0, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 447
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_118

    if-eqz v9, :cond_116

    goto :goto_118

    :cond_116
    move v0, v13

    goto :goto_119

    :cond_118
    :goto_118
    move v0, v3

    :goto_119
    move v8, v0

    .line 450
    .local v8, "allowRoaming":Z
    const/4 v0, 0x0

    .line 451
    .local v0, "dnn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 452
    .local v2, "osAppId":[B
    iget-object v4, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v4

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_12d

    .line 453
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getEnterpriseOsAppId()[B

    move-result-object v2

    move-object v7, v0

    move-object v6, v2

    goto :goto_135

    .line 455
    :cond_12d
    iget-object v4, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v6, v2

    .line 457
    .end local v0    # "dnn":Ljava/lang/String;
    .end local v2    # "osAppId":[B
    .local v6, "osAppId":[B
    .local v7, "dnn":Ljava/lang/String;
    :goto_135
    if-nez v6, :cond_13a

    if-nez v7, :cond_13a

    goto :goto_13f

    .line 458
    :cond_13a
    new-instance v1, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v1, v7, v6}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    :goto_13f
    move-object v5, v1

    .line 459
    .local v5, "td":Landroid/telephony/data/TrafficDescriptor;
    if-eqz v5, :cond_14a

    invoke-virtual {v5}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v0

    if-nez v0, :cond_149

    goto :goto_14a

    :cond_149
    move v3, v13

    :cond_14a
    :goto_14a
    move v4, v3

    .line 461
    .local v4, "matchAllRuleAllowed":Z
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_1a3

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPhone.getDataRoamingEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 463
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isModemRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPhone.getServiceState().getDataRoaming()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 466
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUnmeteredApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trafficDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchAllRuleAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {v11, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 474
    :cond_1a3
    const/16 v16, 0x0

    .line 475
    .local v16, "linkProperties":Landroid/net/LinkProperties;
    const/16 v17, 0x1

    .line 476
    .local v17, "reason":I
    iget v0, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_267

    .line 479
    iget-object v0, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandoverSourceTransport()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    .line 480
    .local v3, "srcDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    const v0, 0x10006

    if-eqz v3, :cond_23d

    iget-object v1, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-nez v1, :cond_1cc

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v21, v9

    move-object v9, v3

    goto/16 :goto_248

    .line 486
    :cond_1cc
    iget-object v1, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 487
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    .line 488
    .local v2, "srcDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v2, :cond_1de

    .line 489
    const-string v1, "connect: Can\'t find data connection for handover."

    invoke-virtual {v11, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 490
    return v0

    .line 493
    :cond_1de
    iget-object v1, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 494
    .local v1, "srcDsm":Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    if-nez v1, :cond_1e5

    const-string v0, "(null)"

    goto :goto_1e9

    :cond_1e5
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "srcDsmTag":Ljava/lang/String;
    :goto_1e9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    .end local v1    # "srcDsm":Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .local v18, "srcDsm":Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    const-string v1, "connect: REQUEST_TYPE_HANDOVER - Request handover from "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetDsm="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 496
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceDsm="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {v11, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    .line 502
    new-instance v13, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda2;

    move-object/from16 v19, v0

    .end local v0    # "srcDsmTag":Ljava/lang/String;
    .local v19, "srcDsmTag":Ljava/lang/String;
    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    .end local v2    # "srcDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .local v20, "srcDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move/from16 v21, v9

    move-object v9, v3

    .end local v3    # "srcDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .local v9, "srcDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .local v21, "isUnmeteredApnType":Z
    move-object/from16 v3, p1

    move/from16 v22, v4

    .end local v4    # "matchAllRuleAllowed":Z
    .local v22, "matchAllRuleAllowed":Z
    move-object v4, v14

    move-object/from16 v23, v5

    .end local v5    # "td":Landroid/telephony/data/TrafficDescriptor;
    .local v23, "td":Landroid/telephony/data/TrafficDescriptor;
    move-object v5, v15

    move-object/from16 v24, v6

    .end local v6    # "osAppId":[B
    .local v24, "osAppId":[B
    move v6, v10

    move-object/from16 v25, v7

    .end local v7    # "dnn":Ljava/lang/String;
    .local v25, "dnn":Ljava/lang/String;
    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V

    .line 510
    .local v0, "onCompleted":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    move-object/from16 v1, v20

    .end local v20    # "srcDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .local v1, "srcDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->startHandover(Ljava/util/function/Consumer;)V

    .line 511
    const/4 v2, 0x0

    return v2

    .line 480
    .end local v0    # "onCompleted":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    .end local v1    # "srcDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v18    # "srcDsm":Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .end local v19    # "srcDsmTag":Ljava/lang/String;
    .end local v21    # "isUnmeteredApnType":Z
    .end local v22    # "matchAllRuleAllowed":Z
    .end local v23    # "td":Landroid/telephony/data/TrafficDescriptor;
    .end local v24    # "osAppId":[B
    .end local v25    # "dnn":Ljava/lang/String;
    .restart local v3    # "srcDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .restart local v4    # "matchAllRuleAllowed":Z
    .restart local v5    # "td":Landroid/telephony/data/TrafficDescriptor;
    .restart local v6    # "osAppId":[B
    .restart local v7    # "dnn":Ljava/lang/String;
    .local v9, "isUnmeteredApnType":Z
    :cond_23d
    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v21, v9

    move-object v9, v3

    .line 481
    .end local v3    # "srcDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v4    # "matchAllRuleAllowed":Z
    .end local v5    # "td":Landroid/telephony/data/TrafficDescriptor;
    .end local v6    # "osAppId":[B
    .end local v7    # "dnn":Ljava/lang/String;
    .local v9, "srcDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .restart local v21    # "isUnmeteredApnType":Z
    .restart local v22    # "matchAllRuleAllowed":Z
    .restart local v23    # "td":Landroid/telephony/data/TrafficDescriptor;
    .restart local v24    # "osAppId":[B
    .restart local v25    # "dnn":Ljava/lang/String;
    :goto_248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: Handover failed. dcTracker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 483
    return v0

    .line 514
    .end local v21    # "isUnmeteredApnType":Z
    .end local v22    # "matchAllRuleAllowed":Z
    .end local v23    # "td":Landroid/telephony/data/TrafficDescriptor;
    .end local v24    # "osAppId":[B
    .end local v25    # "dnn":Ljava/lang/String;
    .restart local v4    # "matchAllRuleAllowed":Z
    .restart local v5    # "td":Landroid/telephony/data/TrafficDescriptor;
    .restart local v6    # "osAppId":[B
    .restart local v7    # "dnn":Ljava/lang/String;
    .local v9, "isUnmeteredApnType":Z
    :cond_267
    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v21, v9

    .end local v4    # "matchAllRuleAllowed":Z
    .end local v5    # "td":Landroid/telephony/data/TrafficDescriptor;
    .end local v6    # "osAppId":[B
    .end local v7    # "dnn":Ljava/lang/String;
    .end local v9    # "isUnmeteredApnType":Z
    .restart local v21    # "isUnmeteredApnType":Z
    .restart local v22    # "matchAllRuleAllowed":Z
    .restart local v23    # "td":Landroid/telephony/data/TrafficDescriptor;
    .restart local v24    # "osAppId":[B
    .restart local v25    # "dnn":Ljava/lang/String;
    iget-object v0, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v0, :cond_285

    iget-object v0, v12, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_285

    .line 515
    const-string v0, "Apn context is disabled, ignore setup data call"

    invoke-virtual {v11, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 516
    const/16 v0, 0x7fd

    return v0

    .line 520
    :cond_285
    move/from16 v6, v17

    .line 522
    .local v6, "setupReason":I
    new-instance v13, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v10

    move v5, v8

    move-object/from16 v7, v16

    move/from16 v18, v8

    .end local v8    # "allowRoaming":Z
    .local v18, "allowRoaming":Z
    move-object/from16 v8, v23

    move/from16 v19, v21

    .end local v21    # "isUnmeteredApnType":Z
    .local v19, "isUnmeteredApnType":Z
    move/from16 v9, v22

    move/from16 v20, v10

    .end local v10    # "isModemRoaming":Z
    .local v20, "isModemRoaming":Z
    move-object v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    invoke-virtual {v11, v13}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->allocatePduSessionId(Ljava/util/function/Consumer;)V

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public fakeNetworkAgent(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .registers 36
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2108
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2111
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incAndGetConnectionGeneration()I

    move-result v13

    iget-object v2, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2112
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v15

    const/16 v10, 0x3e9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object v8, v1

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v16}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;IIIZ)V

    .line 2108
    move-object/from16 v8, p1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2116
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    const-string v10, "44010"

    const-string v11, "Fake APN"

    const-string v12, "fake_apn"

    const-string v18, ""

    const-string v19, ""

    const-string v33, ""

    invoke-static/range {v9 .. v33}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 2144
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->calculateScore()I

    move-result v0

    iput v0, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    .line 2146
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    move-object v9, v0

    .line 2147
    .local v9, "configBuilder":Landroid/net/NetworkAgentConfig$Builder;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 2148
    const-string v0, "MOBILE"

    invoke-virtual {v9, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 2149
    const-string v0, "invalid_apn"

    invoke-virtual {v9, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 2150
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .line 2151
    .local v10, "subscriberId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2152
    invoke-virtual {v9, v10}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 2155
    :cond_8b
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2156
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2155
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkFactory(I)Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    move-result-object v11

    .line 2157
    .local v11, "factory":Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    if-nez v11, :cond_99

    const/4 v0, 0x0

    goto :goto_9d

    :cond_99
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getProvider()Landroid/net/NetworkProvider;

    move-result-object v0

    :goto_9d
    move-object v5, v0

    .line 2159
    .local v5, "provider":Landroid/net/NetworkProvider;
    new-instance v12, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v3, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I

    .line 2160
    invoke-virtual {v9}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v4

    iget v6, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;I)V

    iput-object v12, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 2161
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->markConnected()V

    .line 2162
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->clearSettings()V

    .line 2163
    return-void
.end method

.method getApnType()[Ljava/lang/String;
    .registers 9

    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, "aryApnType":[Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    if-eqz v1, :cond_1f

    .line 1832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnType: mApnContexts.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1834
    :cond_1f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_29

    .line 1835
    const/4 v1, 0x0

    return-object v1

    .line 1837
    :cond_29
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1838
    const/4 v1, 0x0

    .line 1839
    .local v1, "i":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1840
    .local v3, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1841
    .local v4, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    .line 1842
    .local v5, "apnType":Ljava/lang/String;
    sget-boolean v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z

    if-eqz v6, :cond_6a

    .line 1843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApnType: apnType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1845
    :cond_6a
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v1

    .line 1846
    nop

    .end local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnType":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1847
    goto :goto_40

    .line 1849
    .end local v1    # "i":I
    :cond_75
    return-object v0
.end method

.method public getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 18

    .line 711
    move-object/from16 v0, p0

    new-instance v1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 712
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v1

    .line 713
    .local v1, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/4 v3, 0x0

    .line 715
    .local v3, "unmeteredApns":Z
    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/16 v5, 0xc

    if-eqz v4, :cond_ef

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mEnterpriseUse:Z

    if-nez v4, :cond_ef

    .line 716
    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 717
    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v4

    iget v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I

    not-int v7, v7

    and-int/2addr v4, v7

    .line 716
    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesFromBitmask(I)[I

    move-result-object v4

    .line 718
    .local v4, "types":[I
    array-length v7, v4

    move v8, v2

    :goto_27
    if-ge v8, v7, :cond_df

    aget v9, v4, v8

    .line 719
    .local v9, "type":I
    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    if-nez v10, :cond_5a

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    if-eqz v10, :cond_5a

    iget-object v10, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 720
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 721
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropped the metered "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " type for the unmetered data call."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 723
    goto/16 :goto_db

    .line 725
    :cond_5a
    const/16 v10, 0x8

    const/16 v11, 0x1f

    const/16 v12, 0x1e

    const/16 v13, 0x9

    const/4 v14, 0x7

    const/4 v6, 0x3

    const/4 v15, 0x1

    sparse-switch v9, :sswitch_data_1c4

    goto/16 :goto_db

    .line 803
    :sswitch_6a
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 804
    goto/16 :goto_db

    .line 795
    :sswitch_6f
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 796
    goto/16 :goto_db

    .line 799
    :sswitch_74
    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 800
    goto :goto_db

    .line 790
    :sswitch_78
    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 791
    goto :goto_db

    .line 786
    :sswitch_7c
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 787
    goto :goto_db

    .line 782
    :sswitch_82
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 783
    goto :goto_db

    .line 778
    :sswitch_88
    invoke-virtual {v1, v14}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 779
    goto :goto_db

    .line 727
    :sswitch_8c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isAddInternetCapability()Z

    move-result v16

    if-eqz v16, :cond_95

    .line 728
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 730
    :cond_95
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 731
    invoke-virtual {v1, v15}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 732
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 736
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 737
    invoke-virtual {v1, v14}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 738
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 740
    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 741
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 742
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 743
    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 745
    goto :goto_db

    .line 774
    :sswitch_b6
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 775
    goto :goto_db

    .line 770
    :sswitch_bb
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 771
    goto :goto_db

    .line 766
    :sswitch_c0
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 767
    goto :goto_db

    .line 748
    :sswitch_c4
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isAddInternetCapability()Z

    move-result v6

    if-eqz v6, :cond_db

    .line 749
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_db

    .line 762
    :sswitch_ce
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 763
    goto :goto_db

    .line 758
    :sswitch_d3
    invoke-virtual {v1, v15}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 759
    goto :goto_db

    .line 754
    :sswitch_d7
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 755
    nop

    .line 718
    .end local v9    # "type":I
    :cond_db
    :goto_db
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_27

    .line 811
    :cond_df
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_ea

    .line 812
    const/4 v3, 0x1

    .line 816
    :cond_ea
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-direct {v0, v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->addInternetCapForDunOnlyType(Landroid/telephony/data/ApnSetting;Landroid/net/NetworkCapabilities$Builder;)V

    .line 823
    .end local v4    # "types":[I
    :cond_ef
    const/16 v4, 0xb

    if-nez v3, :cond_100

    iget-boolean v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z

    if-eqz v6, :cond_fc

    iget-boolean v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    if-nez v6, :cond_fc

    goto :goto_100

    .line 826
    :cond_fc
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_103

    .line 824
    :cond_100
    :goto_100
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 829
    :goto_103
    iget-boolean v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mEnterpriseUse:Z

    const/16 v7, 0x1d

    if-eqz v6, :cond_10f

    .line 830
    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 831
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 834
    :cond_10f
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z

    move-result v5

    const/16 v6, 0xd

    if-eqz v5, :cond_11e

    .line 835
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 838
    :cond_11e
    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mMmsUseOnly:Z

    if-eqz v5, :cond_13b

    .line 839
    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x2

    invoke-static {v8, v5}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 840
    const-string v5, "Adding unmetered capability for the unmetered MMS-only data connection"

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 843
    :cond_133
    const-string v4, "Adding MMS capability for the MMS-only data connection"

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 847
    :cond_13b
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mEnterpriseUse:Z

    if-eqz v2, :cond_142

    .line 848
    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 851
    :cond_142
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    if-eqz v2, :cond_14d

    .line 852
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 854
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 857
    :cond_14d
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDownlinkBandwidth:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 858
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUplinkBandwidth:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 860
    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubId:I

    .line 861
    invoke-virtual {v2, v4}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v2

    .line 860
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    .line 862
    iget v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 864
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-nez v2, :cond_187

    .line 865
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 868
    :cond_187
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCongestedOverride:Z

    if-nez v2, :cond_190

    .line 869
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 872
    :cond_190
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredOverride:Z

    if-eqz v2, :cond_199

    .line 873
    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 876
    :cond_199
    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSuspended:Z

    if-nez v2, :cond_1a2

    .line 877
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 880
    :cond_1a2
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAdministratorUids:[I

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 884
    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 885
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isVcnManaged(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 886
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 889
    :cond_1b9
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 890
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v2

    return-object v2

    :sswitch_data_1c4
    .sparse-switch
        0x2 -> :sswitch_d7
        0x4 -> :sswitch_d3
        0x8 -> :sswitch_ce
        0x11 -> :sswitch_c4
        0x20 -> :sswitch_c0
        0x40 -> :sswitch_bb
        0x80 -> :sswitch_b6
        0xff -> :sswitch_8c
        0x100 -> :sswitch_88
        0x200 -> :sswitch_82
        0x400 -> :sswitch_7c
        0x800 -> :sswitch_78
        0x1000 -> :sswitch_74
        0x2000 -> :sswitch_6f
        0x8000 -> :sswitch_6a
    .end sparse-switch
.end method

.method protected getNetworkType()I
    .registers 7

    .line 2185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2186
    .local v0, "ss":Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    .line 2188
    .local v1, "networkType":I
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 2190
    .local v2, "nri":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_14

    .line 2191
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 2195
    :cond_14
    if-nez v1, :cond_4c

    .line 2196
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    check-cast v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getTurboSS()Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    .line 2197
    .local v4, "turboSs":Lmediatek/telephony/MtkServiceState;
    if-eqz v4, :cond_2c

    .line 2198
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I

    invoke-virtual {v4, v3, v5}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 2200
    .local v3, "turboNri":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v3, :cond_2c

    .line 2201
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 2204
    .end local v3    # "turboNri":Landroid/telephony/NetworkRegistrationInfo;
    :cond_2c
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_4c

    .line 2205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkInfo: turboSs = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " networkType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2210
    .end local v4    # "turboSs":Lmediatek/telephony/MtkServiceState;
    :cond_4c
    return v1
.end method

.method protected getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J
    .registers 10
    .param p1, "response"    # Landroid/telephony/data/DataCallResponse;

    .line 1796
    if-nez p1, :cond_5

    .line 1797
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1801
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v0

    .line 1802
    .local v0, "suggestedRetryTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    .line 1803
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v2, :cond_18

    const-string v2, "No suggested retry delay."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1805
    :cond_18
    const-wide/16 v2, -0x1

    .line 1806
    .local v2, "delay":J
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    if-eqz v4, :cond_26

    .line 1807
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getSuggestedRetryDelayByOp(I)J

    move-result-wide v2

    .line 1809
    :cond_26
    return-wide v2

    .line 1811
    .end local v2    # "delay":J
    :cond_27
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const-string v3, "Network suggested not retrying."

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v2, :cond_48

    cmp-long v2, v0, v4

    if-nez v2, :cond_48

    .line 1813
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v2, :cond_47

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1814
    :cond_47
    return-wide v4

    .line 1815
    :cond_48
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v0, v6

    if-nez v2, :cond_65

    .line 1817
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v2, :cond_64

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1818
    :cond_64
    return-wide v4

    .line 1823
    :cond_65
    return-wide v0
.end method

.method public synthetic lambda$connect$0$MtkDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Boolean;)V
    .registers 18
    .param p1, "srcDc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "dataServiceCallbackResultCode"    # Ljava/lang/Integer;
    .param p3, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p4, "msg"    # Landroid/os/Message;
    .param p5, "dp"    # Landroid/telephony/data/DataProfile;
    .param p6, "isModemRoaming"    # Z
    .param p7, "allowRoaming"    # Z
    .param p8, "inCorrectState"    # Ljava/lang/Boolean;

    .line 507
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 508
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 507
    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->requestHandover(ZLcom/android/internal/telephony/dataconnection/DataConnection;ILcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V

    return-void
.end method

.method public synthetic lambda$connect$1$MtkDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZLjava/lang/Integer;)V
    .registers 18
    .param p1, "srcDc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "dp"    # Landroid/telephony/data/DataProfile;
    .param p5, "isModemRoaming"    # Z
    .param p6, "allowRoaming"    # Z
    .param p7, "dataServiceCallbackResultCode"    # Ljava/lang/Integer;

    .line 506
    new-instance v9, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda3;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda3;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/os/Message;Landroid/telephony/data/DataProfile;ZZ)V

    const v0, 0x40024

    invoke-virtual {p0, v0, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendRunnableMessage(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$connect$2$MtkDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;Ljava/lang/Integer;)V
    .registers 35
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "dp"    # Landroid/telephony/data/DataProfile;
    .param p3, "isModemRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "setupReason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "td"    # Landroid/telephony/data/TrafficDescriptor;
    .param p8, "matchAllRuleAllowed"    # Z
    .param p9, "msg"    # Landroid/os/Message;
    .param p10, "psi"    # Ljava/lang/Integer;

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->setPduSessionId(I)V

    .line 525
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataServiceBound()Z

    move-result v2

    if-nez v2, :cond_38

    .line 526
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 527
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v4

    .line 533
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    .line 526
    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    goto :goto_59

    .line 539
    :cond_38
    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 540
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v13

    .line 546
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    .line 539
    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v23, p9

    invoke-virtual/range {v12 .. v23}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 552
    :goto_59
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v7

    .line 552
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    .line 554
    return-void
.end method

.method public synthetic lambda$tearDownData$3$MtkDataConnection(ILjava/lang/Object;)V
    .registers 8
    .param p1, "fDiscReason"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->setPduSessionId(I)V

    .line 621
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    .line 622
    const v4, 0x40003

    invoke-virtual {p0, v4, v3, v0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 621
    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 623
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->setDeactivateDataCallReason(I)V

    .line 624
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2293
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->logd(Ljava/lang/String;)V

    .line 2294
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2324
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDc"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    return-void
.end method

.method protected mtkGetLinkProperties()Landroid/net/LinkProperties;
    .registers 5

    .line 2077
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    if-nez v0, :cond_7

    .line 2078
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0

    .line 2080
    :cond_7
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 2081
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2082
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2e

    .line 2083
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 2084
    goto :goto_2f

    .line 2086
    .end local v2    # "linkAddr":Landroid/net/LinkAddress;
    :cond_2e
    goto :goto_16

    .line 2087
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 2088
    return-object v0
.end method

.method protected mtkReplaceStates()V
    .registers 3

    .line 2065
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    .line 2066
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    .line 2067
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    .line 2068
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    .line 2069
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 2070
    return-void
.end method

.method protected mtkSetApnContextReason(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    .registers 8
    .param p1, "alreadySent"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2097
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2098
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2099
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-ne v2, p1, :cond_39

    .line 2100
    const-string v3, "raFailed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2104
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_39
    goto :goto_a

    .line 2105
    :cond_3a
    return-void
.end method

.method public notifyVoiceCallEvent(Z)V
    .registers 3
    .param p1, "bInVoiceCall"    # Z

    .line 2056
    const v0, 0x4002b

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(II)V

    .line 2057
    return-void
.end method

.method protected onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "response"    # Landroid/telephony/data/DataCallResponse;
    .param p3, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupConnectionCompleted: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 643
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-eq v0, v1, :cond_4a

    .line 644
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_46

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupConnectionCompleted stale cp.tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 647
    :cond_46
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    goto/16 :goto_17f

    .line 649
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_4a
    const v0, 0x10001

    if-eqz p2, :cond_17a

    const/4 v1, 0x4

    if-ne p1, v1, :cond_54

    goto/16 :goto_17a

    .line 653
    :cond_54
    const/4 v1, 0x5

    if-ne p1, v1, :cond_60

    .line 654
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 655
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    const v1, 0x10009

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_17f

    .line 656
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_60
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6c

    .line 657
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_INVALID_ARG:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 658
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    const v1, 0x10002

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_17f

    .line 659
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_6c
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v1

    if-eqz v1, :cond_8d

    .line 660
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v1

    if-ne v1, v0, :cond_7f

    .line 661
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 662
    .local v1, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    move-object v0, v1

    goto/16 :goto_17f

    .line 664
    .end local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_7f
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 665
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_17f

    .line 667
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_8d
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_c8

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 668
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    if-eqz v0, :cond_c8

    .line 669
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataConnection already exists for cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 670
    :cond_bf
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DUPLICATE_CID:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 671
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    const v1, 0x10007

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_17f

    .line 672
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_c8
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v0

    if-ne v0, v1, :cond_f0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 673
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->isDefaultDataActive()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 674
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_e1

    const-string v0, "No default data connection currently active"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 675
    :cond_e1
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    .line 676
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_NO_DEFAULT_CONNECTION:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 677
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    const v1, 0x10008

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto/16 :goto_17f

    .line 679
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_f0
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v0, :cond_f9

    const-string v0, "onSetupConnectionCompleted received successful DataCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 680
    :cond_f9
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    .line 681
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getPduSessionId()I

    move-result v1

    if-eq v0, v1, :cond_13b

    .line 682
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getDoAllocatePduSessionId()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The pdu session id on DataCallResponse is different than the one allocated.  response psi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allocated psi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getPduSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    goto :goto_13b

    .line 687
    :cond_134
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->setPduSessionId(I)V

    .line 691
    :cond_13b
    :goto_13b
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updatePcscfAddr(Landroid/telephony/data/DataCallResponse;)V

    .line 692
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateResponseFields(Landroid/telephony/data/DataCallResponse;)V

    .line 693
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 695
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupConnectionCompleted: ifname-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 700
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 699
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 701
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateCpaConnectionInfo(Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object v0

    goto :goto_17f

    .line 651
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_17a
    :goto_17a
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 652
    .restart local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    move-object v0, v1

    .line 706
    .end local v1    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .restart local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :cond_17f
    :goto_17f
    return-object v0
.end method

.method public setLostConnectionCause(I)V
    .registers 2
    .param p1, "cause"    # I

    .line 2180
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I

    .line 2181
    return-void
.end method

.method public startRetryAlarm(IIJ)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "tag"    # I
    .param p3, "delay"    # J

    .line 2023
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2024
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "what"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2025
    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2027
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v1, :cond_3d

    .line 2028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRetryAlarm: next attempt in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2032
    :cond_3d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2034
    .local v1, "retryIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 2035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p3

    .line 2034
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2036
    return-void
.end method

.method protected tearDownData(Ljava/lang/Object;)V
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 560
    const/4 v0, 0x1

    .line 561
    .local v0, "discReason":I
    const/4 v1, 0x0

    .line 562
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_b8

    instance-of v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    if-eqz v2, :cond_b8

    .line 563
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 564
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v1, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 565
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "radioTurnedOff"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 566
    const/4 v0, 0x2

    goto :goto_57

    .line 567
    :cond_19
    iget v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReleaseType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_20

    .line 568
    const/4 v0, 0x3

    goto :goto_57

    .line 570
    :cond_20
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "raFailed"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 571
    iget-wide v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_35

    .line 572
    const/16 v0, 0x7d2

    goto :goto_57

    .line 573
    :cond_35
    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_57

    .line 574
    const/16 v0, 0x7d4

    goto :goto_57

    .line 576
    :cond_3e
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "pcscfFailed"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 578
    const/16 v0, 0x7d3

    goto :goto_57

    .line 579
    :cond_4b
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "apnChanged"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 580
    const/16 v0, 0x7d5

    .line 589
    :cond_57
    :goto_57
    const/4 v3, 0x0

    .line 590
    .local v3, "hasDefaultApnContext":Z
    const-string v4, "default"

    if-eqz v1, :cond_68

    .line 591
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 592
    const/4 v3, 0x1

    goto :goto_8d

    .line 595
    :cond_68
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 596
    .local v6, "ctx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v6, :cond_8c

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 598
    const/4 v3, 0x1

    .line 599
    goto :goto_8d

    .line 601
    .end local v6    # "ctx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_8c
    goto :goto_72

    .line 603
    :cond_8d
    :goto_8d
    const/4 v4, 0x1

    if-ne v0, v4, :cond_b8

    if-eqz v3, :cond_b8

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 605
    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    if-ne v4, v5, :cond_b8

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 606
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 607
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getTempDataSwitchState()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 608
    const/16 v0, 0x7d6

    .line 613
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v3    # "hasDefaultApnContext":Z
    :cond_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearDownData. mCid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "str":Ljava/lang/String;
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_da

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 615
    :cond_da
    if-eqz v1, :cond_df

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 617
    :cond_df
    move v3, v0

    .line 618
    .local v3, "fDiscReason":I
    new-instance v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->releasePduSessionId(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public toStringSimple()Ljava/lang/String;
    .registers 4

    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;

    .line 2329
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLastFailCause:I

    .line 2332
    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " linkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRestrictedNetworkOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2328
    return-object v0
.end method

.method protected updateSuspendState()V
    .registers 9

    .line 2215
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    if-nez v0, :cond_d

    .line 2216
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting suspend state without a NetworkAgent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_d
    const/4 v0, 0x0

    .line 2220
    .local v0, "newSuspendedState":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    if-ne v1, v2, :cond_ce

    .line 2222
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    .line 2223
    .local v1, "dataRegState":I
    if-eqz v1, :cond_48

    .line 2224
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getTurboSS()Lmediatek/telephony/MtkServiceState;

    move-result-object v2

    .line 2225
    .local v2, "turboSs":Lmediatek/telephony/MtkServiceState;
    if-eqz v2, :cond_30

    .line 2226
    invoke-virtual {v2}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v1

    .line 2228
    :cond_30
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v3, :cond_48

    .line 2229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSuspendState: dataRegState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2232
    .end local v2    # "turboSs":Lmediatek/telephony/MtkServiceState;
    :cond_48
    if-eqz v1, :cond_63

    .line 2236
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    if-nez v2, :cond_63

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnType()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isImsOrEmergencyApn([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 2237
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnType()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->hasVsimApn([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 2238
    const/4 v0, 0x1

    .line 2243
    :cond_63
    if-nez v0, :cond_ce

    .line 2244
    const/4 v2, 0x1

    .line 2245
    .local v2, "bSupportConcurrent":Z
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    if-eqz v3, :cond_78

    .line 2246
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2247
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v2

    .line 2249
    :cond_78
    nop

    .line 2250
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnType()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isImsOrEmergencyApn([Ljava/lang/String;)Z

    move-result v3

    .line 2251
    .local v3, "bImsOrEmergencyApn":Z
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8f

    .line 2252
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isWifiCallingEnabled()Z

    move-result v4

    goto :goto_90

    :cond_8f
    move v4, v5

    .line 2254
    .local v4, "bWifiCallingEnabled":Z
    :goto_90
    sget-boolean v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z

    if-eqz v6, :cond_c2

    .line 2255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSuspended: mIsInVoiceCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bSupportConcurrent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bImsOrEmergencyApn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bWifiCallingEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 2261
    :cond_c2
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z

    if-eqz v6, :cond_cd

    if-nez v2, :cond_cd

    if-nez v3, :cond_cd

    if-nez v4, :cond_cd

    const/4 v5, 0x1

    :cond_cd
    move v0, v5

    .line 2266
    .end local v1    # "dataRegState":I
    .end local v2    # "bSupportConcurrent":Z
    .end local v3    # "bImsOrEmergencyApn":Z
    .end local v4    # "bWifiCallingEnabled":Z
    :cond_ce
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSuspended:Z

    if-eq v1, v0, :cond_dd

    .line 2267
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSuspended:Z

    .line 2270
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isActive()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 2271
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDataConnectionState()V

    .line 2274
    :cond_dd
    return-void
.end method
