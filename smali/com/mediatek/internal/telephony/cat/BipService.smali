.class public Lcom/mediatek/internal/telephony/cat/BipService;
.super Ljava/lang/Object;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;,
        Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;
    }
.end annotation


# static fields
.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_CLOSED:I = 0x2

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_ID_NOT_AVAILABLE:I = 0x3

.field static final ADDITIONAL_INFO_FOR_BIP_NO_CHANNEL_AVAILABLE:I = 0x1

.field static final ADDITIONAL_INFO_FOR_BIP_NO_SPECIFIC_CAUSE:I = 0x0

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_BUFFER_SIZE_NOT_AVAILABLE:I = 0x4

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_INTERFACE_TRANSPORT_LEVEL_NOT_AVAILABLE:I = 0x6

.field static final ADDITIONAL_INFO_FOR_BIP_SECURITY_ERROR:I = 0x5

.field private static final BIP_NAME:Ljava/lang/String; = "__M-BIP__"

.field private static final CHANNEL_KEEP_TIMEOUT:I = 0x7530

.field private static final CONN_DELAY_TIMEOUT:I = 0x1388

.field private static final CONN_MGR_TIMEOUT:I = 0xc350

.field private static final DBG:Z = true

.field private static final DELAYED_CLOSE_CHANNEL_TIMEOUT:I = 0x1388

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field protected static final MSG_ID_BIP_CHANNEL_DELAYED_CLOSE:I = 0x16

.field protected static final MSG_ID_BIP_CHANNEL_KEEP_TIMEOUT:I = 0x15

.field protected static final MSG_ID_BIP_CONN_DELAY_TIMEOUT:I = 0xb

.field protected static final MSG_ID_BIP_CONN_MGR_TIMEOUT:I = 0xa

.field protected static final MSG_ID_BIP_DISCONNECT_TIMEOUT:I = 0xc

.field protected static final MSG_ID_BIP_PROACTIVE_COMMAND:I = 0x12

.field protected static final MSG_ID_BIP_WAIT_DATA_READY_TIMEOUT:I = 0x17

.field protected static final MSG_ID_CLOSE_CHANNEL_DONE:I = 0x10

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x13

.field protected static final MSG_ID_GET_CHANNEL_STATUS_DONE:I = 0x11

.field protected static final MSG_ID_OPEN_CHANNEL_DONE:I = 0xd

.field protected static final MSG_ID_RECEIVE_DATA_DONE:I = 0xf

.field protected static final MSG_ID_RIL_MSG_DECODED:I = 0x14

.field protected static final MSG_ID_SEND_DATA_DONE:I = 0xe

.field private static final PROPERTY_IA_APN:Ljava/lang/String; = "vendor.ril.radio.ia-apn"

.field private static final PROPERTY_PERSIST_IA_APN:Ljava/lang/String; = "persist.vendor.radio.ia-apn"

.field private static final WAIT_DATA_IN_SERVICE_TIMEOUT:I = 0x1388

.field private static mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

.field private static mSimCount:I


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field mApn:Ljava/lang/String;

.field private mApnType:Ljava/lang/String;

.field private mApnTypeDb:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

.field private mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

.field private mBipMsgDecoder:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

.field private mBipSrvHandler:Landroid/os/Handler;

.field mBufferSize:I

.field private mCachedParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

.field private final mCloseLock:Ljava/lang/Object;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

.field protected volatile mCurrentSetupEventCmd:Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

.field private mCurrntCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

.field mDNSaddrequest:Z

.field mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

.field private mDnsAddres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsApnInserting:Z

.field private mIsCloseInProgress:Z

.field protected mIsConnectTimeout:Z

.field private volatile mIsListenChannelStatus:Z

.field private volatile mIsListenDataAvailable:Z

.field private mIsNetworkAvailableReceived:Z

.field protected mIsOpenChannelOverWifi:Z

.field private mIsOpenInProgress:Z

.field private mIsUpdateApnParams:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mLoginDb:Ljava/lang/String;

.field private mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

.field private mNeedRetryNum:I

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mNumeric:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field private mPasswordDb:Ljava/lang/String;

.field private mPreviousKeepChannelId:I

.field private mPreviousProtocolType:I

.field private final mReleaseNetworkLock:Ljava/lang/Object;

.field private mSlotId:I

.field mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    .line 140
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCachedParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 108
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 109
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCmdMessage:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 111
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 113
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 115
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    .line 117
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 118
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 119
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 120
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    .line 121
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDnsAddres:Ljava/util/List;

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    .line 125
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mReleaseNetworkLock:Ljava/lang/Object;

    .line 129
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 133
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->NETWORK_TYPE:I

    .line 135
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 136
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    .line 137
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 138
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatusDataObject:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 139
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    .line 141
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 142
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 144
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    .line 145
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    .line 146
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousProtocolType:I

    .line 183
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 184
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 185
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 186
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 187
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 188
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 189
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 190
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 191
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 192
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    .line 200
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 201
    const-string v2, "bip"

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsUpdateApnParams:Z

    .line 203
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNeedRetryNum:I

    .line 204
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNumeric:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    .line 207
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLoginDb:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPasswordDb:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/BipService$1;-><init>(Lcom/mediatek/internal/telephony/cat/BipService;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 461
    const-string v0, "[BIP]"

    const-string v1, "Construct BipService"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    if-nez p1, :cond_96

    .line 464
    const-string v1, "Fail to construct BipService"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void

    .line 468
    :cond_96
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 469
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Construct instance sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 472
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 473
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 483
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->newThreadToDelelteApn()V

    .line 484
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I
    .param p4, "cmdIf"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCachedParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 108
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 109
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCmdMessage:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 111
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 113
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 115
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    .line 117
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 118
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 119
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 120
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    .line 121
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDnsAddres:Ljava/util/List;

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    .line 125
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mReleaseNetworkLock:Ljava/lang/Object;

    .line 129
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 133
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->NETWORK_TYPE:I

    .line 135
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 136
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    .line 137
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 138
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatusDataObject:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 139
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    .line 141
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 142
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 144
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    .line 145
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    .line 146
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousProtocolType:I

    .line 183
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 184
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 185
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 186
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 187
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 188
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 189
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 190
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 191
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 192
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    .line 200
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 201
    const-string v2, "bip"

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsUpdateApnParams:Z

    .line 203
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNeedRetryNum:I

    .line 204
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNumeric:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    .line 207
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLoginDb:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPasswordDb:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    .line 210
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/cat/BipService$1;-><init>(Lcom/mediatek/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Construct BipService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    if-nez p1, :cond_a5

    .line 491
    const-string v0, "Fail to construct BipService"

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void

    .line 495
    :cond_a5
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 496
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    .line 497
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 498
    move-object v1, p4

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 499
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 500
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 501
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 502
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v1, p5, v2, v3}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 503
    if-nez v1, :cond_d7

    .line 504
    const-string v0, "Null BipRilMessageDecoder instance"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    return-void

    .line 507
    :cond_d7
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->start()V

    .line 509
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnBipProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 518
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->newThreadToDelelteApn()V

    .line 519
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cat/BipService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "x2"    # Z

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/cat/BipService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/cat/BipService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/internal/telephony/cat/BipService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->disconnect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/cat/BipService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/cat/BipService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/internal/telephony/cat/BipService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/cat/BipService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/internal/telephony/cat/BipService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->deleteApnParams()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/cat/BipService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/mediatek/internal/telephony/cat/Channel;)Lcom/mediatek/internal/telephony/cat/Channel;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/cat/Channel;

    .line 102
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->handleRilMsg(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/mediatek/internal/telephony/cat/BipService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/cat/BipService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/cat/BipService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/cat/BipService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/mediatek/internal/telephony/cat/BipService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/cat/BipService;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->queryDnsServerAddress(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/mediatek/internal/telephony/cat/BipService;Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 102
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->connect()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/cat/BipService;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .registers 6
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "x2"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/internal/telephony/cat/ResponseData;

    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/cat/BipService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isSprintSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/CommandParams;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCachedParams:Lcom/android/internal/telephony/cat/CommandParams;

    return-object v0
.end method

.method private checkDataCapability(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)Z
    .registers 11
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 2409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2411
    .local v0, "mTelMan":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 2412
    .local v1, "simInsertedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    sget v3, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v2, v3, :cond_1b

    .line 2413
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2414
    add-int/lit8 v1, v1, 0x1

    .line 2412
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2417
    .end local v2    # "i":I
    :cond_1b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 2418
    .local v2, "defaultDataSubId":I
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 2419
    .local v3, "subId":[I
    const/4 v4, -0x1

    .line 2420
    .local v4, "currentSubId":I
    const/4 v5, 0x0

    const-string v6, "[BIP]"

    if-eqz v3, :cond_84

    .line 2421
    aget v4, v3, v5

    .line 2426
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDataCapability: simInsertedCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " currentSubId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " defaultDataSubId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const/4 v7, 0x2

    if-lt v1, v7, :cond_7d

    iget-object v8, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    if-eqz v8, :cond_7d

    iget-object v8, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v7, v8, :cond_75

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v7, v8, :cond_75

    const/16 v7, 0x9

    iget-object v8, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v7, v8, :cond_75

    const/16 v7, 0xb

    iget-object v8, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-ne v7, v8, :cond_7d

    :cond_75
    if-eq v4, v2, :cond_7d

    .line 2436
    const-string v7, "checkDataCapability: return false"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    return v5

    .line 2439
    :cond_7d
    const-string v5, "checkDataCapability: return true"

    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    const/4 v5, 0x1

    return v5

    .line 2423
    :cond_84
    const-string v7, "checkDataCapability: invalid subId"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    return v5
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .registers 9
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;
    .param p2, "exState"    # Landroid/net/NetworkInfo$State;

    .line 2012
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2013
    return v0

    .line 2016
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 2017
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 2018
    .local v2, "state":Landroid/net/NetworkInfo$State;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1b

    .line 2019
    const-string v4, "MOBILE"

    goto :goto_1d

    :cond_1b
    const-string v4, "WIFI"

    :goto_1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2018
    const-string v4, "[BIP]"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network state is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    if-nez v1, :cond_43

    if-ne v2, p2, :cond_43

    .line 2023
    const/4 v0, 0x1

    return v0

    .line 2026
    :cond_43
    return v0
.end method

.method private checkPSEvent(Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)V
    .registers 8
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 637
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 638
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v2, v1

    :goto_c
    if-ge v0, v2, :cond_32

    aget v3, v1, v0

    .line 639
    .local v3, "eventVal":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_34

    goto :goto_2f

    .line 647
    :pswitch_29
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 648
    goto :goto_2f

    .line 644
    :pswitch_2c
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 645
    nop

    .line 638
    .end local v3    # "eventVal":I
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 653
    :cond_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x9
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private connect()V
    .registers 7

    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "establishConnect"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 900
    const-string v2, "requestNetwork: establish data channel"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->establishLink()I

    move-result v0

    .line 903
    const/4 v2, 0x0

    .line 904
    .local v2, "response":Landroid/os/Message;
    const/16 v3, 0xa

    if-eq v0, v3, :cond_4a

    .line 905
    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    const/4 v4, 0x3

    if-ne v0, v4, :cond_24

    goto :goto_2d

    .line 910
    :cond_24
    const-string v4, "2 channel is un-activated"

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->updateCurrentChannelStatus(I)V

    goto :goto_37

    .line 907
    :cond_2d
    :goto_2d
    const-string v4, "1 channel is activated"

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cat/BipService;->updateCurrentChannelStatus(I)V

    .line 913
    :goto_37
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 914
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 915
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-virtual {v1, v4, v0, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 916
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 918
    :cond_4a
    return-void
.end method

.method private deleteApnParams()V
    .registers 6

    .line 2141
    const-string v0, "[BIP]"

    const-string v1, "BM-deleteApnParams: enter. "

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v1, "name = \'__M-BIP__\'"

    .line 2143
    .local v1, "selection":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2145
    .local v2, "rows":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-deleteApnParams:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    return-void
.end method

.method private deleteOrRestoreApnParams()V
    .registers 2

    .line 2361
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsUpdateApnParams:Z

    if-eqz v0, :cond_8

    .line 2362
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->restoreApnParams()V

    goto :goto_b

    .line 2364
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 2366
    :goto_b
    return-void
.end method

.method private disconnect()V
    .registers 16

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 930
    .local v1, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: opening ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    const/4 v4, 0x0

    if-nez v2, :cond_28

    .line 934
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->deleteOrRestoreApnParams()V

    .line 935
    const-string v2, "1"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    goto :goto_2a

    .line 937
    :cond_28
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 941
    :goto_2a
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v6, v2, :cond_9b

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    const/4 v7, 0x4

    if-eq v2, v7, :cond_9b

    .line 943
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v2, v6}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v2

    .line 944
    .local v2, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    const/4 v0, 0x2

    .line 946
    if-eqz v2, :cond_4b

    .line 947
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 948
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    goto :goto_58

    .line 949
    :cond_4b
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v6, :cond_58

    .line 950
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v8, v6}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 952
    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V

    .line 953
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V

    .line 954
    iput v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 955
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect(): mCurrentCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    if-eqz v3, :cond_88

    .line 957
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput v4, v3, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 959
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput-boolean v4, v3, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 961
    :cond_88
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 962
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-virtual {v3, v5, v0, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 963
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 964
    .end local v2    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    goto/16 :goto_17f

    .line 965
    :cond_9b
    const/4 v2, 0x0

    .line 966
    .local v2, "i":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v7, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v8, 0x0

    .line 968
    .local v8, "additionalInfo":[B
    const-string v9, "this is a drop link"

    invoke-static {v3, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iput v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 971
    new-instance v9, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-static {}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getCmdMsg()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v10

    const/16 v11, 0xa

    invoke-direct {v9, v10, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    .line 974
    .local v9, "resMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    const/4 v2, 0x1

    :goto_b5
    const/4 v10, 0x7

    if-gt v2, v10, :cond_13b

    .line 975
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v10, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v10

    if-ne v6, v10, :cond_137

    .line 977
    :try_start_c0
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v10, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v10

    .line 978
    .local v10, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "channel protocolType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget v12, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-eq v6, v12, :cond_e4

    iget v12, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v5, v12, :cond_12d

    .line 981
    :cond_e4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V

    .line 982
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V

    .line 985
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isVzWSupport()Z

    move-result v12

    const/4 v13, 0x5

    if-eqz v12, :cond_103

    .line 986
    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v14, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    invoke-virtual {v12, v14, v4}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->updateChannelStatus(II)V

    .line 988
    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v14, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    invoke-virtual {v12, v14, v13}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->updateChannelStatusInfo(II)V

    .line 991
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipService;->sendDelayedCloseChannel(I)V

    goto :goto_10b

    .line 993
    :cond_103
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 994
    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v12, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 997
    :goto_10b
    const/16 v12, -0x48

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    iget v12, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    or-int/2addr v12, v4

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12d
    .catch Ljava/lang/NullPointerException; {:try_start_c0 .. :try_end_12d} :catch_12e

    .line 1011
    .end local v10    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_12d
    goto :goto_137

    .line 1008
    :catch_12e
    move-exception v10

    .line 1009
    .local v10, "ne":Ljava/lang/NullPointerException;
    const-string v12, "NPE, channel null."

    invoke-static {v3, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 974
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    :cond_137
    :goto_137
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b5

    .line 1014
    :cond_13b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_17a

    .line 1015
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [B

    .line 1016
    .end local v8    # "additionalInfo":[B
    .local v5, "additionalInfo":[B
    const/4 v2, 0x0

    :goto_148
    array-length v6, v5

    if-ge v2, v6, :cond_15a

    .line 1017
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v2

    .line 1016
    add-int/lit8 v2, v2, 0x1

    goto :goto_148

    .line 1019
    :cond_15a
    const/16 v6, 0x82

    invoke-virtual {v9, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setSourceId(I)V

    .line 1020
    const/16 v6, 0x81

    invoke-virtual {v9, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setDestinationId(I)V

    .line 1021
    invoke-virtual {v9, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setAdditionalInfo([B)V

    .line 1022
    invoke-virtual {v9, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setOneShot(Z)V

    .line 1023
    invoke-virtual {v9, v11, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setEventDownload(I[B)V

    .line 1024
    const-string v4, "onEventDownload: for channel status"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-virtual {v3, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->onEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V

    goto :goto_17f

    .line 1027
    .end local v5    # "additionalInfo":[B
    .restart local v8    # "additionalInfo":[B
    :cond_17a
    const-string v4, "onEventDownload: No client channels are opened."

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .end local v2    # "i":I
    .end local v7    # "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v8    # "additionalInfo":[B
    .end local v9    # "resMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    :goto_17f
    return-void
.end method

.method private establishLink()I
    .registers 18

    .line 2030
    move-object/from16 v10, p0

    const/4 v11, 0x0

    .line 2031
    .local v11, "ret":I
    const/4 v12, 0x0

    .line 2033
    .local v12, "lChannel":Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v0, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    const/4 v13, 0x5

    const-string v14, "[BIP]"

    if-nez v0, :cond_11

    .line 2034
    const-string v0, "BM-establishLink: mTransportProtocol is null !!!"

    invoke-static {v14, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    return v13

    .line 2038
    :cond_11
    iget v0, v0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v15, 0x4

    const/4 v9, 0x7

    const/4 v8, 0x3

    if-ne v0, v8, :cond_69

    .line 2039
    const-string v0, "BM-establishLink: establish a TCPServer link"

    invoke-static {v14, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    :try_start_1d
    new-instance v0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    iget v3, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v4, v1, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v5, v1, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    move-object v7, v1

    check-cast v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    move-object v1, v0

    move v13, v8

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;-><init>(IIIIILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_39} :catch_5e

    move-object v12, v0

    .line 2048
    nop

    .line 2049
    iget-object v0, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/internal/telephony/cat/Channel;->openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v0

    .line 2050
    .end local v11    # "ret":I
    .local v0, "ret":I
    if-eqz v0, :cond_53

    if-ne v0, v13, :cond_48

    goto :goto_53

    .line 2055
    :cond_48
    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v13}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 2056
    iput v9, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_13c

    .line 2052
    :cond_53
    :goto_53
    iput v15, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 2053
    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    goto/16 :goto_13c

    .line 2044
    .end local v0    # "ret":I
    .restart local v11    # "ret":I
    :catch_5e
    move-exception v0

    .line 2045
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "BM-establishLink: NE,new TCP server channel fail."

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2047
    const/4 v1, 0x5

    return v1

    .line 2058
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :cond_69
    move v13, v8

    iget-object v0, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_d6

    .line 2059
    const-string v0, "BM-establishLink: establish a TCP link"

    invoke-static {v14, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :try_start_76
    new-instance v0, Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    iget v3, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v4, v1, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v6, v1, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v7, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v1

    check-cast v16, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    move-object v1, v0

    move v15, v8

    move-object/from16 v8, v16

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/mediatek/internal/telephony/cat/TcpChannel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    :try_end_99
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_99} :catch_c4

    move-object v12, v0

    .line 2072
    nop

    .line 2073
    iget-object v0, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/internal/telephony/cat/Channel;->openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v0

    .line 2074
    .end local v11    # "ret":I
    .local v0, "ret":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_13c

    .line 2075
    if-eqz v0, :cond_b8

    if-ne v0, v13, :cond_ac

    goto :goto_b8

    .line 2080
    :cond_ac
    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v15}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 2082
    const/4 v15, 0x7

    iput v15, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_13c

    .line 2077
    :cond_b8
    :goto_b8
    const/4 v1, 0x4

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 2078
    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    goto/16 :goto_13c

    .line 2064
    .end local v0    # "ret":I
    .restart local v11    # "ret":I
    :catch_c4
    move-exception v0

    .line 2065
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "BM-establishLink: NE,new TCP client channel fail."

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2067
    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    if-nez v1, :cond_d4

    .line 2068
    const/16 v1, 0x9

    return v1

    .line 2070
    :cond_d4
    const/4 v1, 0x5

    return v1

    .line 2085
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :cond_d6
    move v15, v9

    iget-object v0, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_133

    .line 2087
    const-string v0, "BM-establishLink: establish a UDP link"

    invoke-static {v14, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    :try_start_e3
    new-instance v0, Lcom/mediatek/internal/telephony/cat/UdpChannel;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    iget v3, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v4, v1, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v6, v1, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v7, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    move-object v8, v1

    check-cast v8, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    move-object v1, v0

    move v15, v9

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/mediatek/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    :try_end_103
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_103} :catch_128

    move-object v12, v0

    .line 2096
    nop

    .line 2097
    iget-object v0, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/internal/telephony/cat/Channel;->openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v0

    .line 2098
    .end local v11    # "ret":I
    .local v0, "ret":I
    if-eqz v0, :cond_11d

    if-ne v0, v13, :cond_112

    goto :goto_11d

    .line 2103
    :cond_112
    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v15}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 2105
    const/4 v1, 0x7

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    goto :goto_13c

    .line 2100
    :cond_11d
    :goto_11d
    const/4 v1, 0x4

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 2101
    iget-object v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    goto :goto_13c

    .line 2092
    .end local v0    # "ret":I
    .restart local v11    # "ret":I
    :catch_128
    move-exception v0

    .line 2093
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2095
    const/4 v1, 0x5

    return v1

    .line 2108
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :cond_133
    const-string v0, "BM-establishLink: unsupported channel type"

    invoke-static {v14, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    const/4 v0, 0x4

    .line 2110
    .end local v11    # "ret":I
    .local v0, "ret":I
    const/4 v1, 0x7

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 2113
    :cond_13c
    :goto_13c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-establishLink: ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    return v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 523
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 526
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getCurrentSubId()I
    .registers 5

    .line 2368
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2369
    .local v0, "subId":[I
    const/4 v1, -0x1

    .line 2371
    .local v1, "currentSubId":I
    if-eqz v0, :cond_d

    .line 2372
    const/4 v2, 0x0

    aget v1, v0, v2

    goto :goto_14

    .line 2374
    :cond_d
    const-string v2, "[BIP]"

    const-string v3, "getCurrentSubId: invalid subId"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    :goto_14
    return v1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/mediatek/internal/telephony/cat/BipService;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInstance sim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    const/4 v2, 0x0

    if-nez v0, :cond_35

    .line 532
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    .line 533
    new-array v0, v0, [Lcom/mediatek/internal/telephony/cat/BipService;

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    .line 534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    sget v3, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v0, v3, :cond_35

    .line 535
    sget-object v3, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    aput-object v2, v3, v0

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 538
    .end local v0    # "i":I
    :cond_35
    if-ltz p2, :cond_4e

    sget v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    if-le p2, v0, :cond_3c

    goto :goto_4e

    .line 542
    :cond_3c
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    aget-object v1, v0, p2

    if-nez v1, :cond_49

    .line 543
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/cat/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    aput-object v1, v0, p2

    .line 545
    :cond_49
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    aget-object v0, v0, p2

    return-object v0

    .line 539
    :cond_4e
    :goto_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance invalid sim : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/mediatek/internal/telephony/cat/BipService;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I
    .param p3, "cmdIf"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInstance sim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    const/4 v2, 0x0

    if-nez v0, :cond_35

    .line 552
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    .line 553
    new-array v0, v0, [Lcom/mediatek/internal/telephony/cat/BipService;

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    .line 554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    sget v3, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v0, v3, :cond_35

    .line 555
    sget-object v3, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    aput-object v2, v3, v0

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 558
    .end local v0    # "i":I
    :cond_35
    if-ltz p2, :cond_54

    sget v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    if-le p2, v0, :cond_3c

    goto :goto_54

    .line 562
    :cond_3c
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    aget-object v1, v0, p2

    if-nez v1, :cond_4f

    .line 563
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipService;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/internal/telephony/cat/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    aput-object v1, v0, p2

    .line 565
    :cond_4f
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    aget-object v0, v0, p2

    return-object v0

    .line 559
    :cond_54
    :goto_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance invalid sim : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-object v2
.end method

.method private getUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slodId"    # I

    .line 2118
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2119
    .local v0, "subId":[I
    const/4 v1, 0x0

    const-string v2, "[BIP]"

    if-nez v0, :cond_f

    .line 2120
    const-string v3, "BM-getUri: null subId."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    return-object v1

    .line 2123
    :cond_f
    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2126
    :cond_30
    const-string v3, "BM-getUri: invalid subId."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    return-object v1
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .registers 21
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .line 679
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object v8, v0

    .line 683
    .local v8, "cmdMsg":Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    const/4 v9, 0x0

    .line 685
    .local v9, "response":Landroid/os/Message;
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipService$5;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    packed-switch v0, :pswitch_data_1ec

    .line 802
    const-string v0, "Unsupported command"

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    return-void

    .line 796
    :pswitch_2d
    const-string v0, "SS-handleProactiveCommand: process GET_CHANNEL_STATUS"

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    iput-object v8, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mCmdMessage:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 798
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .end local v9    # "response":Landroid/os/Message;
    .local v0, "response":Landroid/os/Message;
    invoke-virtual {v6, v8, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->getChannelStatus(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    .line 800
    goto/16 :goto_1e8

    .line 791
    .end local v0    # "response":Landroid/os/Message;
    .restart local v9    # "response":Landroid/os/Message;
    :pswitch_41
    const-string v0, "SS-handleProactiveCommand: process SEND_DATA"

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 793
    .end local v9    # "response":Landroid/os/Message;
    .restart local v0    # "response":Landroid/os/Message;
    invoke-virtual {v6, v8, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->sendData(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    .line 794
    goto/16 :goto_1e8

    .line 786
    .end local v0    # "response":Landroid/os/Message;
    .restart local v9    # "response":Landroid/os/Message;
    :pswitch_53
    const-string v0, "SS-handleProactiveCommand: process RECEIVE_DATA"

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 788
    .end local v9    # "response":Landroid/os/Message;
    .restart local v0    # "response":Landroid/os/Message;
    invoke-virtual {v6, v8, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->receiveData(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    .line 789
    goto/16 :goto_1e8

    .line 781
    .end local v0    # "response":Landroid/os/Message;
    .restart local v9    # "response":Landroid/os/Message;
    :pswitch_65
    const-string v0, "SS-handleProactiveCommand: process CLOSE_CHANNEL"

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 783
    .end local v9    # "response":Landroid/os/Message;
    .restart local v0    # "response":Landroid/os/Message;
    invoke-virtual {v6, v8, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->closeChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    .line 784
    goto/16 :goto_1e8

    .line 687
    .end local v0    # "response":Landroid/os/Message;
    .restart local v9    # "response":Landroid/os/Message;
    :pswitch_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-handleProactiveCommand: process OPEN_CHANNEL,slot id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 690
    .local v10, "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    .line 691
    .local v11, "callmgr":Lcom/android/internal/telephony/CallManager;
    iget v12, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    .line 692
    .local v12, "phoneId":I
    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 694
    .local v13, "myPhone":Lcom/android/internal/telephony/Phone;
    iget-object v0, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v0, :cond_a1

    .line 695
    iget-object v0, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    move v14, v0

    .local v0, "protocolType":I
    goto :goto_a3

    .line 697
    .end local v0    # "protocolType":I
    :cond_a1
    const/4 v0, 0x0

    move v14, v0

    .line 699
    .local v14, "protocolType":I
    :goto_a3
    const/4 v0, 0x0

    if-nez v13, :cond_c1

    .line 700
    const-string v1, "myPhone is still null"

    invoke-static {v6, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    const/4 v1, 0x0

    .line 702
    .local v1, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    new-instance v5, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v2, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v3, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-direct {v5, v0, v2, v3, v14}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V

    .line 704
    .end local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 707
    return-void

    .line 710
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_c1
    const-string v2, "persist.vendor.ril.bip.disabled"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 711
    .local v15, "bipDisabled":Ljava/lang/String;
    if-eqz v15, :cond_ee

    const-string v2, "1"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 712
    const-string v1, "BIP disabled"

    invoke-static {v6, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    const/4 v1, 0x0

    .line 714
    .restart local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    new-instance v5, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v2, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v3, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-direct {v5, v0, v2, v3, v14}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V

    .line 716
    .end local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 719
    return-void

    .line 723
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_ee
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    .line 724
    .local v4, "networkType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x2

    const/16 v3, 0xd

    const/4 v5, 0x0

    if-le v4, v2, :cond_112

    if-ne v4, v1, :cond_151

    :cond_112
    if-eqz v11, :cond_151

    .line 727
    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call_state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v1, :cond_172

    .line 730
    const-string v0, "SS-handleProactiveCommand: ME is busy on call"

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->getFreeChannelId()I

    move-result v1

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v0, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 734
    iget-object v0, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput v5, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 736
    iput-object v8, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 737
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v3, v1, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 739
    .end local v9    # "response":Landroid/os/Message;
    .local v0, "response":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 740
    return-void

    .line 743
    .end local v0    # "response":Landroid/os/Message;
    .restart local v9    # "response":Landroid/os/Message;
    :cond_151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-handleProactiveCommand: type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",or null callmgr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-static {v6, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    :cond_172
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isSprintSupport()Z

    move-result v1

    if-eqz v1, :cond_18e

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_18e

    iget-boolean v1, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    if-nez v1, :cond_18e

    .line 751
    iput-object v7, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mCachedParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 752
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 753
    .end local v9    # "response":Landroid/os/Message;
    .restart local v0    # "response":Landroid/os/Message;
    invoke-virtual {v6, v8, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->openChannelOverWifi(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto :goto_1e8

    .line 755
    .end local v0    # "response":Landroid/os/Message;
    .restart local v9    # "response":Landroid/os/Message;
    :cond_18e
    iput-boolean v5, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    .line 756
    invoke-direct {v6, v12}, Lcom/mediatek/internal/telephony/cat/BipService;->isCurrentConnectionInService(I)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_1da

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isSprintSupport()Z

    move-result v1

    if-eqz v1, :cond_1be

    iget v1, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mNeedRetryNum:I

    if-eqz v1, :cond_1be

    .line 758
    const-string v0, "handleCommand: wait for data in service"

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    .line 760
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 761
    .local v0, "tMsg":Landroid/os/Message;
    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 762
    iget-object v1, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 763
    iget v1, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mNeedRetryNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mNeedRetryNum:I

    .line 764
    return-void

    .line 766
    .end local v0    # "tMsg":Landroid/os/Message;
    :cond_1be
    iput v2, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mNeedRetryNum:I

    .line 767
    new-instance v5, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;

    iget-object v1, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v2, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-direct {v5, v0, v1, v2, v14}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V

    .line 769
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, v8, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/16 v16, 0x4

    move-object/from16 v0, p0

    move/from16 v17, v4

    .end local v4    # "networkType":I
    .local v17, "networkType":I
    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 772
    return-void

    .line 774
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v17    # "networkType":I
    .restart local v4    # "networkType":I
    :cond_1da
    move/from16 v17, v4

    .end local v4    # "networkType":I
    .restart local v17    # "networkType":I
    iput v2, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mNeedRetryNum:I

    .line 775
    iget-object v0, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 776
    .end local v9    # "response":Landroid/os/Message;
    .local v0, "response":Landroid/os/Message;
    invoke-virtual {v6, v8, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    .line 779
    nop

    .line 805
    .end local v10    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v11    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .end local v12    # "phoneId":I
    .end local v13    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v14    # "protocolType":I
    .end local v15    # "bipDisabled":Ljava/lang/String;
    .end local v17    # "networkType":I
    :goto_1e8
    iput-object v8, v6, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 806
    return-void

    nop

    :pswitch_data_1ec
    .packed-switch 0x1
        :pswitch_75
        :pswitch_65
        :pswitch_53
        :pswitch_41
        :pswitch_2d
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .registers 11
    .param p1, "rilMsg"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 601
    if-nez p1, :cond_3

    .line 602
    return-void

    .line 606
    :cond_3
    const/4 v0, 0x0

    .line 607
    .local v0, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mId:I

    packed-switch v1, :pswitch_data_40

    goto :goto_3f

    .line 610
    :pswitch_a
    :try_start_a
    iget-object v1, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_e} :catch_29

    move-object v0, v1

    .line 620
    nop

    .line 621
    if-eqz v0, :cond_3f

    .line 622
    iget-object v1, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_1d

    .line 623
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/cat/BipService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_3f

    .line 628
    :cond_1d
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v4, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3f

    .line 611
    :catch_29
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "Fail to parse proactive command"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    if-eqz v2, :cond_3e

    .line 616
    iget-object v4, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 619
    :cond_3e
    nop

    .line 634
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_3f
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x12
        :pswitch_a
    .end packed-switch
.end method

.method private isBipApnTypeSupport()Z
    .registers 16

    .line 2520
    const-string v0, "00101"

    .line 2521
    .local v0, "numeric":Ljava/lang/String;
    const-string v1, "TestGp.rs"

    .line 2522
    .local v1, "apn":Ljava/lang/String;
    const-string v2, "001"

    .line 2523
    .local v2, "mcc":Ljava/lang/String;
    const-string v3, "01"

    .line 2524
    .local v3, "mnc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2525
    .local v4, "cursor":Landroid/database/Cursor;
    const-string v5, ""

    .line 2527
    .local v5, "testApnType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apn = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' COLLATE NOCASE and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "numeric"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2529
    .local v6, "selection":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBipApnTypeSupport: selection = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "[BIP]"

    invoke-static {v14, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2534
    const/4 v7, 0x1

    if-eqz v4, :cond_bc

    .line 2535
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_6e

    .line 2536
    const-string v8, "There is no bip type apn for test sim"

    invoke-static {v14, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2538
    return v7

    .line 2540
    :cond_6e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TestGp.rs count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 2542
    const-string v8, "type"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test apn type in db : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    if-eqz v5, :cond_b9

    const-string v8, "default"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 2546
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2547
    const/4 v7, 0x0

    return v7

    .line 2550
    :cond_b9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2553
    :cond_bc
    return v7
.end method

.method private isCurrentConnectionInService(I)Z
    .registers 7
    .param p1, "phoneId"    # I

    .line 2382
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "[BIP]"

    if-nez v0, :cond_f

    .line 2383
    const-string v0, "isCurrentConnectionInService(): invalid phone id"

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    return v1

    .line 2387
    :cond_f
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2388
    .local v0, "myPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_1b

    .line 2389
    const-string v3, "isCurrentConnectionInService(): phone null"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    return v1

    .line 2393
    :cond_1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    .line 2394
    .local v3, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-nez v3, :cond_27

    .line 2395
    const-string v4, "isCurrentConnectionInService(): sst null"

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    return v1

    .line 2399
    :cond_27
    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v4

    if-nez v4, :cond_34

    .line 2400
    const-string v1, "isCurrentConnectionInService(): in service"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    const/4 v1, 0x1

    return v1

    .line 2404
    :cond_34
    const-string v4, "isCurrentConnectionInService(): not in service"

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    return v1
.end method

.method private isSprintSupport()Z
    .registers 3

    .line 2503
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2504
    const-string v0, "[BIP]"

    const-string v1, "isSprintSupport: true"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    const/4 v0, 0x1

    return v0

    .line 2507
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private isVzWSupport()Z
    .registers 3

    .line 2512
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2513
    const/4 v0, 0x1

    return v0

    .line 2515
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private newRequest()V
    .registers 7

    .line 1667
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1668
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/cat/BipService$2;-><init>(Lcom/mediatek/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1724
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1725
    .local v1, "subId":[I
    const/4 v2, 0x3

    .line 1726
    .local v2, "networkCapability":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    if-eqz v3, :cond_21

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1727
    const/16 v2, 0xc

    goto :goto_4b

    .line 1728
    :cond_21
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    if-eqz v3, :cond_30

    const-string v4, "internet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1729
    const/16 v2, 0xc

    goto :goto_4b

    .line 1730
    :cond_30
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    if-eqz v3, :cond_3e

    const-string v4, "fota"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1731
    const/4 v2, 0x3

    goto :goto_4b

    .line 1732
    :cond_3e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    if-eqz v3, :cond_4b

    const-string v4, "supl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1733
    const/4 v2, 0x1

    .line 1735
    :cond_4b
    :goto_4b
    const/4 v3, 0x0

    if-eqz v1, :cond_7a

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 1736
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1737
    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 1738
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    aget v3, v1, v3

    .line 1739
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1740
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_8d

    .line 1742
    :cond_7a
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1743
    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1744
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1745
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1754
    :goto_8d
    const-string v3, "[BIP]"

    const-string v4, "Start request network timer."

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipService;->sendBipConnTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V

    .line 1756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestNetwork: mNetworkRequest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mNetworkCallback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const v5, 0xc350

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 1760
    return-void
.end method

.method private newRequestOverWifi()V
    .registers 7

    .line 1766
    const-string v0, "[BIP]"

    const-string v1, "Open channel over wifi"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 1768
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/mediatek/internal/telephony/cat/BipService$3;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/cat/BipService$3;-><init>(Lcom/mediatek/internal/telephony/cat/BipService;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1818
    const/16 v2, 0xc

    .line 1820
    .local v2, "networkCapability":I
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1821
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1822
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1823
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1825
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const v5, 0xc350

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 1828
    const-string v3, "Start request network timer."

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipService;->sendBipConnTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V

    .line 1830
    return-void
.end method

.method private newThreadToDelelteApn()V
    .registers 2

    .line 2132
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/BipService$4;-><init>(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 2137
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2138
    return-void
.end method

.method private queryDnsServerAddress(Landroid/net/Network;)V
    .registers 10
    .param p1, "network"    # Landroid/net/Network;

    .line 1856
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1857
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1859
    .local v1, "curLinkProps":Landroid/net/LinkProperties;
    const/4 v2, 0x5

    const-string v3, "[BIP]"

    if-nez v1, :cond_16

    .line 1860
    const-string v4, "curLinkProps is null !!!"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipService;->sendOpenChannelDoneMsg(I)V

    .line 1862
    return-void

    .line 1864
    :cond_16
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    .line 1865
    .local v4, "dnsAddres":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v4, :cond_7e

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_23

    goto :goto_7e

    .line 1870
    :cond_23
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    if-eqz v2, :cond_7d

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 1871
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v2, v5, :cond_7d

    .line 1873
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    new-instance v5, Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    invoke-direct {v5}, Lcom/mediatek/internal/telephony/cat/DnsServerAddress;-><init>()V

    iput-object v5, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    .line 1874
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/DnsServerAddress;->dnsAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1875
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 1876
    .local v5, "addr":Ljava/net/InetAddress;
    if-eqz v5, :cond_76

    .line 1877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DNS Server Address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/DnsServerAddress;->dnsAddresses:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    .end local v5    # "addr":Ljava/net/InetAddress;
    :cond_76
    goto :goto_4b

    .line 1882
    :cond_77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 1883
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipService;->sendOpenChannelDoneMsg(I)V

    .line 1885
    :cond_7d
    return-void

    .line 1866
    :cond_7e
    :goto_7e
    const-string v5, "LinkProps has null dnsAddres !!!"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipService;->sendOpenChannelDoneMsg(I)V

    .line 1868
    return-void
.end method

.method private releaseRequest()V
    .registers 4

    .line 1843
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mReleaseNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1844
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_1b

    .line 1845
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 1847
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1848
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1849
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    goto :goto_22

    .line 1850
    :cond_1b
    const-string v1, "[BIP]"

    const-string v2, "releaseRequest: networkCallback is null."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    :goto_22
    monitor-exit v0

    .line 1853
    return-void

    .line 1852
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private resetLocked()V
    .registers 2

    .line 1836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    .line 1837
    return-void
.end method

.method private restoreApnParams()V
    .registers 10

    .line 2324
    const/4 v0, 0x0

    .line 2325
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    const-string v2, "[BIP]"

    if-eqz v1, :cond_18

    .line 2326
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 2328
    :cond_18
    const-string v1, "restoreApnParams mUri is null!!!!"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    :goto_1d
    if-eqz v0, :cond_ce

    .line 2332
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 2333
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2335
    .local v3, "apnTypeDb":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-restoreApnParams: apnTypeDb before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2337
    .local v4, "updateValues":Landroid/content/ContentValues;
    if-eqz v3, :cond_8a

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 2338
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 2339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-restoreApnParams: apnTypeDb after = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    :cond_8a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    if-eqz v1, :cond_96

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLoginDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    :cond_96
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_b0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPasswordDb:Ljava/lang/String;

    .line 2346
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 2347
    :cond_a2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLoginDb:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPasswordDb:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    :cond_b0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_cb

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_cb

    .line 2351
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2352
    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    .line 2353
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsUpdateApnParams:Z

    .line 2356
    .end local v3    # "apnTypeDb":Ljava/lang/String;
    .end local v4    # "updateValues":Landroid/content/ContentValues;
    :cond_cb
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2358
    :cond_ce
    return-void
.end method

.method private sendBipChannelKeepTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V
    .registers 6
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1979
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1980
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1981
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1982
    return-void
.end method

.method private sendBipConnTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V
    .registers 6
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1967
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1968
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1969
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1970
    return-void
.end method

.method private sendBipDisconnectTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V
    .registers 6
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1973
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1974
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1975
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1976
    return-void
.end method

.method private sendDelayedCloseChannel(I)V
    .registers 6
    .param p1, "channelId"    # I

    .line 921
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 922
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 923
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 924
    return-void
.end method

.method private sendOpenChannelDoneMsg(I)V
    .registers 6
    .param p1, "result"    # I

    .line 1888
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1890
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1891
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .registers 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .line 812
    if-nez p1, :cond_8

    .line 813
    const-string v0, "SS-sendTR: cmdDet is null"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    return-void

    .line 817
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SS-sendTR: command type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 821
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 822
    .local v1, "tag":I
    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v2, :cond_2f

    .line 823
    or-int/lit16 v1, v1, 0x80

    .line 825
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 826
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 827
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 828
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 829
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 838
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 839
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 840
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 841
    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 842
    const/16 v3, 0x81

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 845
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 846
    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v3, :cond_6a

    .line 847
    or-int/lit16 v1, v1, 0x80

    .line 849
    :cond_6a
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 850
    if-eqz p3, :cond_70

    goto :goto_71

    :cond_70
    const/4 v2, 0x1

    .line 851
    .local v2, "length":I
    :goto_71
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 852
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 855
    if-eqz p3, :cond_80

    .line 856
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 860
    :cond_80
    if-eqz p5, :cond_8b

    .line 861
    const-string v3, "SS-sendTR: write response data into TR"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_90

    .line 865
    :cond_8b
    const-string v3, "SS-sendTR: null resp."

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    :goto_90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 869
    .local v3, "rawData":[B
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 871
    .local v4, "hexString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 875
    return-void
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 27
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .line 2149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "[BIP]"

    const-string v5, "BM-setApnParams: enter"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    if-nez v1, :cond_17

    .line 2151
    const-string v5, "BM-setApnParams: No apn parameters"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    return-void

    .line 2155
    :cond_17
    const/4 v5, 0x0

    .line 2156
    .local v5, "numeric":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2157
    .local v6, "mcc":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2158
    .local v7, "mnc":Ljava/lang/String;
    iget-object v8, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 2159
    .local v8, "apnType":Ljava/lang/String;
    iget v9, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    .line 2160
    .local v9, "subId":[I
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v10

    iget v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v10, v11}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v10

    .line 2165
    .local v10, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    const/4 v11, 0x0

    if-eqz v10, :cond_48

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->is4GCard()Z

    move-result v12

    if-eqz v12, :cond_48

    .line 2166
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v12

    iget v13, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    .line 2167
    invoke-virtual {v12, v13}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v12

    .line 2168
    .local v12, "simNumerics":[Ljava/lang/String;
    if-eqz v12, :cond_47

    aget-object v13, v12, v11

    if-eqz v13, :cond_47

    .line 2169
    aget-object v5, v12, v11

    .line 2171
    .end local v12    # "simNumerics":[Ljava/lang/String;
    :cond_47
    goto :goto_62

    :cond_48
    if-eqz v9, :cond_5d

    aget v12, v9, v11

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    if-eqz v12, :cond_5d

    .line 2172
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    aget v13, v9, v11

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_62

    .line 2174
    :cond_5d
    const-string v12, "BM-setApnParams: Invalid subId !!!"

    invoke-static {v4, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :goto_62
    if-eqz v5, :cond_357

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_357

    .line 2179
    const/4 v12, 0x0

    .line 2180
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x3

    invoke-virtual {v5, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2181
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2182
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mNumeric:Ljava/lang/String;

    .line 2183
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apn = \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\' COLLATE NOCASE and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "numeric"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " = \'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2185
    .local v13, "selection":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-setApnParams: selection = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    iget-object v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v13

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2189
    .end local v12    # "cursor":Landroid/database/Cursor;
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_34a

    .line 2190
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2191
    .local v12, "values":Landroid/content/ContentValues;
    const-string v15, "name"

    move-object/from16 v16, v5

    .end local v5    # "numeric":Ljava/lang/String;
    .local v16, "numeric":Ljava/lang/String;
    const-string v5, "__M-BIP__"

    invoke-virtual {v12, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const-string v5, "apn"

    invoke-virtual {v12, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const-string v5, "user"

    if-eqz v2, :cond_f5

    .line 2194
    invoke-virtual {v12, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    :cond_f5
    const-string v15, "password"

    if-eqz v3, :cond_fc

    .line 2197
    invoke-virtual {v12, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    :cond_fc
    const-string v2, "type"

    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    const-string v3, "mcc"

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    const-string v3, "mnc"

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const/4 v3, 0x0

    aget v14, v9, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v14, "sub_id"

    invoke-virtual {v12, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2204
    const-string v3, "web99.test-nfc1.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v14, "IP"

    const-string v1, "protocol"

    if-eqz v3, :cond_13b

    .line 2205
    invoke-virtual {v12, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v6

    goto :goto_153

    .line 2207
    :cond_13b
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    if-eqz v3, :cond_151

    .line 2208
    iget v3, v3, Lcom/mediatek/internal/telephony/cat/OtherAddress;->addressType:I

    move-object/from16 v17, v6

    .end local v6    # "mcc":Ljava/lang/String;
    .local v17, "mcc":Ljava/lang/String;
    const/16 v6, 0x57

    if-ne v3, v6, :cond_14d

    .line 2209
    const-string v3, "IPV6"

    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_153

    .line 2211
    :cond_14d
    invoke-virtual {v12, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_153

    .line 2207
    .end local v17    # "mcc":Ljava/lang/String;
    .restart local v6    # "mcc":Ljava/lang/String;
    :cond_151
    move-object/from16 v17, v6

    .line 2215
    .end local v6    # "mcc":Ljava/lang/String;
    .restart local v17    # "mcc":Ljava/lang/String;
    :goto_153
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2216
    .local v1, "count":I
    const/4 v3, 0x1

    if-nez v1, :cond_180

    .line 2219
    const-string v2, "BM-setApnParams: insert one record"

    invoke-static {v4, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget-object v2, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2222
    .local v2, "newRow":Landroid/net/Uri;
    if-eqz v2, :cond_175

    .line 2223
    const-string v5, "BM-setApnParams: insert a new record into db"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsApnInserting:Z

    goto :goto_17a

    .line 2226
    :cond_175
    const-string v3, "BM-setApnParams: Fail to insert new record into db"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    .end local v2    # "newRow":Landroid/net/Uri;
    :goto_17a
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    goto/16 :goto_346

    :cond_180
    if-lt v1, v3, :cond_33d

    .line 2229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-setApnParams: count  = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_338

    .line 2231
    :goto_19c
    const-string v6, "default"

    if-lez v1, :cond_1c7

    .line 2232
    nop

    .line 2233
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 2232
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    .line 2234
    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1b7

    .line 2235
    const-string v14, "BM-setApnParams: find default apn type"

    invoke-static {v4, v14}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    goto :goto_1c7

    .line 2238
    :cond_1b7
    add-int/lit8 v1, v1, -0x1

    .line 2240
    invoke-interface {v11}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-nez v6, :cond_1c3

    .line 2241
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_19c

    .line 2243
    :cond_1c3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_19c

    .line 2247
    :cond_1c7
    :goto_1c7
    sget-object v14, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2249
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2248
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .end local v7    # "mnc":Ljava/lang/String;
    .end local v8    # "apnType":Ljava/lang/String;
    .local v19, "apnType":Ljava/lang/String;
    .local v20, "mnc":Ljava/lang/String;
    int-to-long v7, v3

    .line 2247
    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    .line 2250
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    .line 2252
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLoginDb:Ljava/lang/String;

    .line 2254
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPasswordDb:Ljava/lang/String;

    .line 2257
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2258
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v7, 0x1

    .line 2259
    .local v7, "dataEnabled":Z
    if-eqz v3, :cond_222

    .line 2260
    const/4 v8, 0x0

    aget v8, v9, v8

    invoke-virtual {v3, v8}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v7

    .line 2261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-setApnParams: dataEnabled = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    :cond_222
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2264
    .local v8, "updateValues":Landroid/content/ContentValues;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v1

    .end local v1    # "count":I
    .local v21, "count":I
    const-string v1, "BM-setApnParams: apn old value : "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    const-string v14, "bip"

    move-object/from16 v22, v3

    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    .local v22, "telephony":Landroid/telephony/TelephonyManager;
    const-string v3, "supl"

    if-eqz v1, :cond_254

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_254

    if-eqz v7, :cond_254

    .line 2267
    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto :goto_274

    .line 2268
    :cond_254
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    if-eqz v1, :cond_263

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_263

    if-eqz v7, :cond_263

    .line 2270
    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto :goto_274

    .line 2271
    :cond_263
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    if-eqz v1, :cond_272

    const-string v6, "fota"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_272

    .line 2272
    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto :goto_274

    .line 2274
    :cond_272
    iput-object v14, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 2277
    :goto_274
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v6, "orange"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_288

    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v6, "Orange"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_297

    .line 2278
    :cond_288
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    if-eqz v1, :cond_295

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_295

    .line 2279
    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto :goto_297

    .line 2281
    :cond_295
    iput-object v14, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 2285
    :cond_297
    :goto_297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-setApnParams: mApnType :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    if-eqz v1, :cond_2e8

    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e8

    .line 2288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnTypeDb:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2289
    .local v1, "apnTypeDbNew":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-setApnParams: will update apn to :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    .end local v1    # "apnTypeDbNew":Ljava/lang/String;
    :cond_2e8
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    if-eqz v1, :cond_2f4

    iget-object v2, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLoginDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_300

    :cond_2f4
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_30f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPasswordDb:Ljava/lang/String;

    .line 2300
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30f

    .line 2301
    :cond_300
    const-string v1, "BM-setApnParams: will update login and password"

    invoke-static {v4, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    invoke-virtual {v8, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    invoke-virtual {v8, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    :cond_30f
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_330

    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_330

    .line 2306
    const-string v1, "BM-setApnParams: will update apn db"

    invoke-static {v4, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2308
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 2309
    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsUpdateApnParams:Z

    goto :goto_335

    .line 2311
    :cond_330
    const-string v1, "No need update APN db"

    invoke-static {v4, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    .end local v7    # "dataEnabled":Z
    .end local v8    # "updateValues":Landroid/content/ContentValues;
    .end local v22    # "telephony":Landroid/telephony/TelephonyManager;
    :goto_335
    move/from16 v1, v21

    goto :goto_346

    .line 2230
    .end local v19    # "apnType":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .end local v21    # "count":I
    .local v1, "count":I
    .local v7, "mnc":Ljava/lang/String;
    .local v8, "apnType":Ljava/lang/String;
    :cond_338
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .end local v7    # "mnc":Ljava/lang/String;
    .end local v8    # "apnType":Ljava/lang/String;
    .restart local v19    # "apnType":Ljava/lang/String;
    .restart local v20    # "mnc":Ljava/lang/String;
    goto :goto_346

    .line 2315
    .end local v19    # "apnType":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .restart local v7    # "mnc":Ljava/lang/String;
    .restart local v8    # "apnType":Ljava/lang/String;
    :cond_33d
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .end local v7    # "mnc":Ljava/lang/String;
    .end local v8    # "apnType":Ljava/lang/String;
    .restart local v19    # "apnType":Ljava/lang/String;
    .restart local v20    # "mnc":Ljava/lang/String;
    const-string v2, "BM-setApnParams: do not update one record"

    invoke-static {v4, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    :goto_346
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_352

    .line 2189
    .end local v1    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .end local v16    # "numeric":Ljava/lang/String;
    .end local v17    # "mcc":Ljava/lang/String;
    .end local v19    # "apnType":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .restart local v5    # "numeric":Ljava/lang/String;
    .restart local v6    # "mcc":Ljava/lang/String;
    .restart local v7    # "mnc":Ljava/lang/String;
    .restart local v8    # "apnType":Ljava/lang/String;
    :cond_34a
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v8

    .line 2320
    .end local v5    # "numeric":Ljava/lang/String;
    .end local v6    # "mcc":Ljava/lang/String;
    .end local v7    # "mnc":Ljava/lang/String;
    .end local v8    # "apnType":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "selection":Ljava/lang/String;
    .restart local v16    # "numeric":Ljava/lang/String;
    .restart local v17    # "mcc":Ljava/lang/String;
    .restart local v19    # "apnType":Ljava/lang/String;
    .restart local v20    # "mnc":Ljava/lang/String;
    :goto_352
    move-object/from16 v6, v17

    move-object/from16 v7, v20

    goto :goto_35b

    .line 2178
    .end local v16    # "numeric":Ljava/lang/String;
    .end local v17    # "mcc":Ljava/lang/String;
    .end local v19    # "apnType":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .restart local v5    # "numeric":Ljava/lang/String;
    .restart local v6    # "mcc":Ljava/lang/String;
    .restart local v7    # "mnc":Ljava/lang/String;
    .restart local v8    # "apnType":Ljava/lang/String;
    :cond_357
    move-object/from16 v16, v5

    move-object/from16 v19, v8

    .line 2320
    .end local v5    # "numeric":Ljava/lang/String;
    .end local v8    # "apnType":Ljava/lang/String;
    .restart local v16    # "numeric":Ljava/lang/String;
    .restart local v19    # "apnType":Ljava/lang/String;
    :goto_35b
    const-string v1, "BM-setApnParams: exit"

    invoke-static {v4, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    return-void
.end method

.method private setOverrideApn(Ljava/lang/String;)V
    .registers 5
    .param p1, "overrideApn"    # Ljava/lang/String;

    .line 2562
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 2564
    return-void
.end method

.method private setPdnNameReuse(Ljava/lang/String;)V
    .registers 5
    .param p1, "apnName"    # Ljava/lang/String;

    .line 2567
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 2568
    return-void
.end method

.method private setPdnReuse(Ljava/lang/String;)V
    .registers 5
    .param p1, "pdnReuse"    # Ljava/lang/String;

    .line 2557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPdnReuse to  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 2559
    return-void
.end method

.method private updateCurrentChannelStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 1986
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->updateChannelStatus(II)V

    .line 1987
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput p1, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1991
    goto :goto_2f

    .line 1988
    :catch_e
    move-exception v0

    .line 1989
    .local v0, "ne":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentChannelStatus id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1992
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :goto_2f
    return-void
.end method


# virtual methods
.method public acquireNetwork()V
    .registers 6

    .line 1033
    const/4 v0, 0x2

    .line 1034
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1036
    .local v1, "ret":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 1037
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    const-string v3, "[BIP]"

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    if-eqz v2, :cond_17

    const-string v4, "web99.test-nfc1.com"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1039
    :cond_17
    const-string v2, "acquireNetwork: already available"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v2

    .line 1041
    .local v2, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    if-nez v2, :cond_29

    .line 1042
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->connect()V

    .line 1044
    :cond_29
    return-void

    .line 1047
    .end local v2    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestNetwork: slotId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    if-nez v2, :cond_48

    .line 1049
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->newRequest()V

    goto :goto_4b

    .line 1051
    :cond_48
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->newRequestOverWifi()V

    .line 1054
    :goto_4b
    return-void
.end method

.method public closeChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 14
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .line 1514
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: enter"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const/4 v1, 0x0

    .line 1517
    .local v1, "lChannel":Lcom/mediatek/internal/telephony/cat/Channel;
    iget v2, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 1519
    .local v2, "cId":I
    const/4 v3, 0x0

    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 1520
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1521
    const/4 v4, 0x7

    if-ltz v2, :cond_156

    if-ge v4, v2, :cond_16

    goto/16 :goto_156

    .line 1526
    :cond_16
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    .line 1527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-closeChannel: getBipChannelStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 1528
    invoke-virtual {v6, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1527
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :try_start_32
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 1531
    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5d

    .line 1532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-closeChannel: mDNSaddrequest:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    if-ne v6, v5, :cond_59

    .line 1534
    iput v3, p2, Landroid/os/Message;->arg1:I

    goto/16 :goto_13d

    .line 1536
    :cond_59
    iput v4, p2, Landroid/os/Message;->arg1:I

    goto/16 :goto_13d

    .line 1538
    :cond_5d
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 1539
    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    const/4 v7, 0x2

    if-ne v7, v5, :cond_6c

    .line 1540
    const/16 v3, 0x8

    iput v3, p2, Landroid/os/Message;->arg1:I

    goto/16 :goto_13d

    .line 1542
    :cond_6c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v5

    move-object v1, v5

    .line 1543
    if-nez v1, :cond_7e

    .line 1544
    const-string v3, "BM-closeChannel: channel has already been closed"

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iput v4, p2, Landroid/os/Message;->arg1:I

    goto/16 :goto_13d

    .line 1547
    :cond_7e
    const/4 v5, 0x0

    .line 1548
    .local v5, "tcpSerCh":Lcom/mediatek/internal/telephony/cat/TcpServerChannel;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BM-closeChannel: mProtocolType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " getCmdQualifier:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1548
    invoke-static {v0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    iget v8, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v9, 0x3

    if-ne v9, v8, :cond_ba

    .line 1552
    instance-of v3, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    if-eqz v3, :cond_b3

    .line 1553
    move-object v3, v1

    check-cast v3, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    move-object v5, v3

    .line 1554
    iget-boolean v3, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 1556
    :cond_b3
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    move-result v3

    iput v3, p2, Landroid/os/Message;->arg1:I

    goto :goto_10c

    .line 1557
    :cond_ba
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v8

    and-int/2addr v8, v6

    if-ne v6, v8, :cond_ea

    .line 1562
    iput v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    .line 1564
    iget v8, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    iput v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousProtocolType:I

    .line 1565
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BM-closeChannel: mPreviousKeepChannelId:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mPreviousProtocolType:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousProtocolType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iput v3, p2, Landroid/os/Message;->arg1:I

    goto :goto_10c

    .line 1570
    :cond_ea
    const-string v8, "BM-closeChannel: stop data connection"

    invoke-static {v0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 1572
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V

    .line 1573
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V

    .line 1575
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    if-nez v8, :cond_104

    .line 1576
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->deleteOrRestoreApnParams()V

    .line 1577
    const-string v3, "1"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    goto :goto_106

    .line 1579
    :cond_104
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 1582
    :goto_106
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    move-result v3

    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 1585
    :goto_10c
    iget v3, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v8, 0x0

    if-ne v9, v3, :cond_123

    .line 1586
    if-eqz v5, :cond_11e

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v3

    if-nez v3, :cond_11e

    .line 1587
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 1589
    :cond_11e
    iput-object v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 1590
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    goto :goto_13d

    .line 1591
    :cond_123
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v3

    and-int/2addr v3, v6

    if-ne v6, v3, :cond_12e

    .line 1596
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->sendBipChannelKeepTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V

    goto :goto_13d

    .line 1598
    :cond_12e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 1599
    iput-object v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 1600
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1601
    iput-object v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 1602
    iput-object v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 1603
    iput-object v8, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;
    :try_end_13d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_13d} :catch_13e

    .line 1610
    .end local v5    # "tcpSerCh":Lcom/mediatek/internal/telephony/cat/TcpServerChannel;
    :goto_13d
    goto :goto_171

    .line 1607
    :catch_13e
    move-exception v3

    .line 1608
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    iput v4, p2, Landroid/os/Message;->arg1:I

    goto :goto_171

    .line 1522
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_156
    :goto_156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-closeChannel: channel id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is invalid !!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iput v4, p2, Landroid/os/Message;->arg1:I

    .line 1612
    :goto_171
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    if-nez v3, :cond_17d

    .line 1613
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1614
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_180

    .line 1616
    :cond_17d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->sendBipDisconnectTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V

    .line 1618
    :goto_180
    const-string v3, "BM-closeChannel: exit"

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    return-void
.end method

.method public dispose()V
    .registers 6

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispose slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    if-eqz v1, :cond_39

    .line 572
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_26

    .line 573
    aput-object v4, v1, v2

    .line 576
    :cond_26
    const/4 v0, 0x0

    :goto_27
    sget v1, Lcom/mediatek/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v0, v1, :cond_35

    .line 577
    sget-object v2, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    aget-object v2, v2, v0

    if-eqz v2, :cond_32

    .line 578
    goto :goto_35

    .line 576
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 582
    :cond_35
    :goto_35
    if-ne v0, v1, :cond_39

    .line 583
    sput-object v4, Lcom/mediatek/internal/telephony/cat/BipService;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipService;

    .line 591
    :cond_39
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    if-eqz v1, :cond_42

    .line 592
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetOnBipProactiveCmd(Landroid/os/Handler;)V

    .line 595
    :cond_42
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    if-eqz v1, :cond_49

    .line 596
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->dispose()V

    .line 598
    :cond_49
    return-void
.end method

.method public getBipChannelManager()Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    .registers 2

    .line 2499
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .registers 3

    .line 2464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BM-getChannelId: channel id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 9
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .line 1944
    const-string v0, "[BIP]"

    const/4 v1, 0x0

    .line 1945
    .local v1, "ret":I
    const/4 v2, 0x1

    .line 1946
    .local v2, "cId":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1949
    .local v3, "csList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/cat/ChannelStatus;>;"
    :goto_9
    :try_start_9
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    const/4 v5, 0x7

    if-gt v2, v5, :cond_37

    .line 1950
    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_34

    .line 1951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChannelStatus: cId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_34} :catch_38

    .line 1954
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1959
    :cond_37
    goto :goto_41

    .line 1956
    :catch_38
    move-exception v4

    .line 1957
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string v5, "getChannelStatus: NE"

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1960
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :goto_41
    iput-object v3, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 1961
    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 1962
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1963
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1964
    return-void
.end method

.method public getFreeChannelId()I
    .registers 2

    .line 2469
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method hasPsEvent(I)Z
    .registers 3
    .param p1, "eventId"    # I

    .line 659
    packed-switch p1, :pswitch_data_c

    .line 669
    const/4 v0, 0x0

    return v0

    .line 665
    :pswitch_5
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    return v0

    .line 663
    :pswitch_8
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method protected isWifiConnected()Z
    .registers 7

    .line 2444
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2445
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2447
    .local v1, "activeInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    const-string v3, "[BIP]"

    if-nez v1, :cond_13

    .line 2448
    const-string v4, "activeInfo is null !!!"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    return v2

    .line 2451
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeInfo getType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2451
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2454
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_4a

    .line 2455
    const-string v2, "Wifi connected!"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    return v5

    .line 2458
    :cond_4a
    const-string v4, "Wifi disconnected!"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    return v2
.end method

.method public openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 24
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .line 1057
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    .line 1058
    .local v3, "result":I
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: enter"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const/4 v5, 0x0

    .line 1060
    .local v5, "ret":I
    const/4 v6, 0x0

    .line 1068
    .local v6, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/cat/BipService;->checkDataCapability(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)Z

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x0

    if-nez v7, :cond_2b

    .line 1069
    new-instance v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    invoke-direct {v4, v9, v9, v9}, Lcom/mediatek/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v4, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 1072
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 1073
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1074
    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1075
    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1076
    return-void

    .line 1079
    :cond_2b
    iput-boolean v9, v0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 1080
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v10, 0x15

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v10, 0x16

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BM-openChannel: getCmdQualifier:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v7

    const/16 v10, 0x8

    and-int/2addr v7, v10

    const/4 v11, 0x1

    if-ne v10, v7, :cond_5f

    move v7, v11

    goto :goto_60

    :cond_5f
    move v7, v9

    :goto_60
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    .line 1090
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BM-openChannel: mDNSaddrequest:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BM-openChannel: cmdMsg.mApn:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mDNSaddrequest:Z

    const-string v10, "1"

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-nez v7, :cond_1c6

    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v7, :cond_1c6

    .line 1100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BM-openChannel: mPreviousKeepChannelId:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " mChannelStatus:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " mApn:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    const-string v14, "BM-openChannel: acquire channel id = 0"

    if-eqz v7, :cond_187

    iget v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    if-ne v12, v7, :cond_187

    .line 1105
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const/4 v15, 0x0

    if-nez v7, :cond_d7

    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v7, :cond_e9

    :cond_d7
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    if-eqz v7, :cond_153

    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v7, :cond_153

    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    .line 1106
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_153

    .line 1107
    :cond_e9
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget v12, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousProtocolType:I

    if-ne v7, v12, :cond_10c

    .line 1108
    iget v4, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    iput v4, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    .line 1109
    new-instance v7, Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v8, 0x80

    invoke-direct {v7, v4, v8, v9}, Lcom/mediatek/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 1112
    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1113
    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 1114
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1115
    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1116
    iput v9, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    .line 1117
    return-void

    .line 1119
    :cond_10c
    const-string v7, "BM-openChannel: channel protocol type changed!"

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v12, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    invoke-virtual {v7, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v7

    .line 1123
    .local v7, "pchannel":Lcom/mediatek/internal/telephony/cat/Channel;
    if-eqz v7, :cond_11e

    .line 1124
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 1126
    :cond_11e
    iget-object v12, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    invoke-virtual {v12, v11}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 1127
    iput-object v15, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 1128
    iput v13, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1130
    iget-object v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->acquireChannelId(I)I

    move-result v11

    iput v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    .line 1132
    if-nez v11, :cond_146

    .line 1133
    invoke-static {v4, v14}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 1135
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1136
    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1137
    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1138
    return-void

    .line 1140
    :cond_146
    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    iput-object v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 1141
    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 1142
    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 1143
    .end local v7    # "pchannel":Lcom/mediatek/internal/telephony/cat/Channel;
    goto :goto_1c6

    .line 1148
    :cond_153
    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1149
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->releaseRequest()V

    .line 1150
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->resetLocked()V

    .line 1151
    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v4

    .line 1152
    .local v4, "pchannel":Lcom/mediatek/internal/telephony/cat/Channel;
    if-eqz v4, :cond_168

    .line 1153
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 1155
    :cond_168
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v8, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 1157
    invoke-direct {v0, v10}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    .line 1158
    iput-object v15, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 1159
    iput v13, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1160
    iput-object v15, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 1161
    iput-object v15, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 1162
    iput-object v15, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 1164
    iget v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPreviousKeepChannelId:I

    if-eqz v7, :cond_186

    .line 1168
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/cat/BipService;->sendBipDisconnectTimeOutMsg(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V

    .line 1170
    :cond_186
    return-void

    .line 1173
    .end local v4    # "pchannel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_187
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v11}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->acquireChannelId(I)I

    move-result v7

    iput v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    .line 1175
    if-nez v7, :cond_1ba

    .line 1176
    invoke-static {v4, v14}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 1178
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1179
    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1180
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: channel id = 0. mCurrentCmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    return-void

    .line 1185
    :cond_1ba
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 1186
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 1187
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 1191
    :cond_1c6
    :goto_1c6
    new-instance v7, Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-direct {v7, v11, v9, v9}, Lcom/mediatek/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 1195
    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-openChannel: mCurrentCmd = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 1199
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    if-eqz v7, :cond_208

    .line 1200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-openChannel: bearer type "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20d

    .line 1202
    :cond_208
    const-string v7, "BM-openChannel: bearer type is null"

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :goto_20d
    iget v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    iput v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    .line 1206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-openChannel: buffer size "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 1209
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    if-eqz v7, :cond_24c

    .line 1210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-openChannel: local address "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 1211
    invoke-virtual {v11}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1210
    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_251

    .line 1213
    :cond_24c
    const-string v7, "BM-openChannel: local address is null"

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :goto_251
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v7, :cond_27d

    .line 1217
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 1218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_27d
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 1224
    iget-object v7, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    if-eqz v7, :cond_2a2

    .line 1225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-openChannel: dest address "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 1226
    invoke-virtual {v11}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1225
    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a7

    .line 1228
    :cond_2a2
    const-string v7, "BM-openChannel: dest address is null"

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_2a7
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v7

    const/4 v11, 0x1

    and-int/2addr v7, v11

    if-ne v7, v11, :cond_2b1

    .line 1232
    move v7, v9

    goto :goto_2b2

    .line 1233
    :cond_2b1
    const/4 v7, 0x1

    :goto_2b2
    iput v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    .line 1235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BM-openChannel: mLinkMode "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v7

    and-int/2addr v7, v13

    if-ne v7, v13, :cond_2d3

    const/4 v7, 0x1

    goto :goto_2d4

    :cond_2d3
    move v7, v9

    :goto_2d4
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 1239
    iget v7, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 1240
    .local v7, "subId":[I
    iget v11, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    .line 1241
    .local v11, "phoneId":I
    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 1242
    .local v12, "myPhone":Lcom/android/internal/telephony/Phone;
    iget-object v13, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    const-string v15, "dataNetworkType: "

    const-string v8, "myPhone is null"

    const-string v14, "00101"

    const-string v9, "numeric: "

    move/from16 v18, v3

    .end local v3    # "result":I
    .local v18, "result":I
    const/4 v3, 0x3

    if-eqz v13, :cond_413

    .line 1243
    iget v13, v13, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const-string v16, "vendor.ril.radio.ia-apn"

    move/from16 v19, v5

    .end local v5    # "ret":I
    .local v19, "ret":I
    const-string v5, "2"

    if-ne v13, v3, :cond_368

    .line 1245
    invoke-direct {v0, v5}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    .line 1246
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_30f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30f

    .line 1247
    invoke-direct {v0, v10}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    move-object/from16 v20, v6

    goto/16 :goto_43f

    .line 1249
    :cond_30f
    const/4 v5, 0x0

    .line 1250
    .local v5, "numeric":Ljava/lang/String;
    if-eqz v7, :cond_325

    const/4 v10, 0x0

    aget v13, v7, v10

    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v13

    if-eqz v13, :cond_325

    .line 1251
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    aget v3, v7, v10

    invoke-virtual {v13, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 1253
    :cond_325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    if-eqz v5, :cond_35f

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35f

    .line 1255
    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1256
    .local v3, "iaApn":Ljava/lang/String;
    if-eqz v3, :cond_34b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_356

    .line 1257
    :cond_34b
    const-string v10, "no persist ia APN, get temp ia"

    invoke-static {v4, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v10, "persist.vendor.radio.ia-apn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1260
    :cond_356
    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnNameReuse(Ljava/lang/String;)V

    .line 1261
    const-string v10, "set ia APN to reuse"

    invoke-static {v4, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    .end local v3    # "iaApn":Ljava/lang/String;
    goto :goto_364

    .line 1263
    :cond_35f
    const-string v3, ""

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnNameReuse(Ljava/lang/String;)V

    .line 1265
    .end local v5    # "numeric":Ljava/lang/String;
    :goto_364
    move-object/from16 v20, v6

    goto/16 :goto_43f

    .line 1268
    :cond_368
    const-string v3, "0"

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    .line 1269
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    if-eqz v3, :cond_410

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_410

    .line 1270
    if-eqz v12, :cond_3ef

    .line 1271
    const/4 v3, 0x0

    .line 1272
    .local v3, "dataNetworkType":I
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    .line 1273
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const/16 v10, 0xd

    if-ne v10, v3, :cond_3ea

    .line 1275
    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1277
    .local v10, "iaApn":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1278
    .local v13, "numeric":Ljava/lang/String;
    if-eqz v7, :cond_3b8

    const/16 v16, 0x0

    aget v17, v7, v16

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v17

    if-eqz v17, :cond_3b8

    .line 1279
    move/from16 v17, v3

    .end local v3    # "dataNetworkType":I
    .local v17, "dataNetworkType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    move-object/from16 v20, v6

    .end local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .local v20, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    aget v6, v7, v16

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3bc

    .line 1278
    .end local v17    # "dataNetworkType":I
    .end local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v3    # "dataNetworkType":I
    .restart local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_3b8
    move/from16 v17, v3

    move-object/from16 v20, v6

    .line 1281
    .end local v3    # "dataNetworkType":I
    .end local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v17    # "dataNetworkType":I
    .restart local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :goto_3bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    if-eqz v13, :cond_3ee

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3ee

    if-eqz v10, :cond_3ee

    .line 1283
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3ee

    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ee

    .line 1286
    invoke-direct {v0, v5}, Lcom/mediatek/internal/telephony/cat/BipService;->setPdnReuse(Ljava/lang/String;)V

    goto :goto_3ee

    .line 1274
    .end local v10    # "iaApn":Ljava/lang/String;
    .end local v13    # "numeric":Ljava/lang/String;
    .end local v17    # "dataNetworkType":I
    .end local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v3    # "dataNetworkType":I
    .restart local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_3ea
    move/from16 v17, v3

    move-object/from16 v20, v6

    .line 1289
    .end local v3    # "dataNetworkType":I
    .end local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_3ee
    :goto_3ee
    goto :goto_3f4

    .line 1290
    .end local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_3ef
    move-object/from16 v20, v6

    .end local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    invoke-static {v4, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :goto_3f4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-openChannel: override apn: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/mediatek/internal/telephony/cat/BipService;->setOverrideApn(Ljava/lang/String;)V

    goto :goto_43f

    .line 1269
    .end local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_410
    move-object/from16 v20, v6

    .end local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    goto :goto_43f

    .line 1298
    .end local v19    # "ret":I
    .end local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .local v5, "ret":I
    .restart local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_413
    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v5    # "ret":I
    .end local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v19    # "ret":I
    .restart local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v3, :cond_43f

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v5, 0x3

    if-eq v5, v3, :cond_43f

    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v5, 0x4

    if-eq v5, v3, :cond_43f

    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v5, 0x5

    if-eq v5, v3, :cond_43f

    .line 1302
    const-string v3, "BM-openChannel: unsupported transport protocol type !!!"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 1304
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1305
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1306
    return-void

    .line 1310
    :cond_43f
    :goto_43f
    const-string v3, "bip"

    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 1311
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v6, "fota"

    if-eqz v5, :cond_4c2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4c2

    .line 1312
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "VZWADMIN"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4be

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "vzwadmin"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_464

    goto :goto_4be

    .line 1315
    :cond_464
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "VZWINTERNET"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b8

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "vzwinternet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_479

    goto :goto_4b8

    .line 1318
    :cond_479
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "titi"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "web99.test-nfc1.com"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48e

    goto :goto_4b4

    .line 1322
    :cond_48e
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "otasn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    const-string v8, "OTASN"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a3

    goto :goto_4b0

    .line 1325
    :cond_4a3
    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 1326
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    iget-object v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    invoke-direct {v0, v3, v5, v6}, Lcom/mediatek/internal/telephony/cat/BipService;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_57d

    .line 1323
    :cond_4b0
    :goto_4b0
    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto/16 :goto_57d

    .line 1320
    :cond_4b4
    :goto_4b4
    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto/16 :goto_57d

    .line 1316
    :cond_4b8
    :goto_4b8
    const-string v3, "internet"

    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto/16 :goto_57d

    .line 1313
    :cond_4be
    :goto_4be
    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto/16 :goto_57d

    .line 1329
    :cond_4c2
    const/4 v5, 0x0

    .line 1330
    .local v5, "numeric":Ljava/lang/String;
    if-eqz v7, :cond_4db

    const/4 v10, 0x0

    aget v13, v7, v10

    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v13

    if-eqz v13, :cond_4db

    .line 1331
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    move-object/from16 v16, v5

    .end local v5    # "numeric":Ljava/lang/String;
    .local v16, "numeric":Ljava/lang/String;
    aget v5, v7, v10

    invoke-virtual {v13, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    .end local v16    # "numeric":Ljava/lang/String;
    .restart local v5    # "numeric":Ljava/lang/String;
    goto :goto_4df

    .line 1330
    :cond_4db
    move-object/from16 v16, v5

    .line 1333
    .end local v5    # "numeric":Ljava/lang/String;
    .restart local v16    # "numeric":Ljava/lang/String;
    move-object/from16 v5, v16

    .end local v16    # "numeric":Ljava/lang/String;
    .restart local v5    # "numeric":Ljava/lang/String;
    :goto_4df
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v9, "default"

    if-eqz v5, :cond_52f

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52f

    .line 1335
    const-string v10, "persist.vendor.operator.optr"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1336
    .local v10, "optr":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Optr load: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    if-eqz v10, :cond_522

    const-string v13, "OP01"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_522

    .line 1338
    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto :goto_52e

    .line 1340
    :cond_522
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isBipApnTypeSupport()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v14, v13, :cond_52c

    .line 1341
    iput-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    goto :goto_52e

    .line 1343
    :cond_52c
    iput-object v9, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 1346
    .end local v10    # "optr":Ljava/lang/String;
    :goto_52e
    goto :goto_531

    .line 1347
    :cond_52f
    iput-object v9, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 1350
    :goto_531
    const/4 v3, 0x0

    .line 1351
    .local v3, "needSupport":Z
    if-eqz v12, :cond_57a

    .line 1352
    nop

    .line 1353
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "carrier_config"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CarrierConfigManager;

    .line 1354
    .local v8, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v9

    .line 1355
    .local v9, "b":Landroid/os/PersistableBundle;
    if-eqz v9, :cond_551

    .line 1356
    const-string v10, "mtk_use_administrative_apn_bool"

    invoke-virtual {v9, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1359
    :cond_551
    if-eqz v3, :cond_579

    .line 1360
    const-string v10, "support KDDI feature"

    invoke-static {v4, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const/4 v10, 0x0

    .line 1362
    .local v10, "dataNetworkType":I
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v10

    .line 1363
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const/16 v13, 0xd

    if-ne v13, v10, :cond_579

    .line 1365
    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    .line 1368
    .end local v8    # "configMgr":Landroid/telephony/CarrierConfigManager;
    .end local v9    # "b":Landroid/os/PersistableBundle;
    .end local v10    # "dataNetworkType":I
    :cond_579
    goto :goto_57d

    .line 1369
    :cond_57a
    invoke-static {v4, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    .end local v3    # "needSupport":Z
    .end local v5    # "numeric":Ljava/lang/String;
    :goto_57d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mApnType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v3, "MAXCHANNELID: 7"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v3, :cond_5da

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v5, 0x3

    if-ne v5, v3, :cond_5da

    .line 1379
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->establishLink()I

    move-result v3

    .line 1381
    .end local v19    # "ret":I
    .local v3, "ret":I
    if-eqz v3, :cond_5b7

    if-ne v3, v5, :cond_5aa

    goto :goto_5b7

    .line 1388
    :cond_5aa
    const-string v5, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v5, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/4 v6, 0x0

    iput v6, v5, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    move-object/from16 v6, v20

    goto :goto_5cd

    .line 1383
    :cond_5b7
    :goto_5b7
    const-string v5, "BM-openChannel: channel is activated"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v6, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v5

    .line 1385
    .end local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .local v5, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v6, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget-object v8, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    move-object v6, v5

    .line 1392
    .end local v5    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :goto_5cd
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1393
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1394
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v3

    goto :goto_600

    .line 1400
    .end local v3    # "ret":I
    .end local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v19    # "ret":I
    .restart local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_5da
    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsApnInserting:Z

    const/4 v5, 0x1

    if-ne v5, v3, :cond_5f9

    .line 1401
    const-string v3, "BM-openChannel: startUsingNetworkFeature delay trigger."

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v3, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1403
    .local v3, "timerMsg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1404
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1405
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 1406
    .end local v3    # "timerMsg":Landroid/os/Message;
    goto :goto_5fc

    .line 1410
    :cond_5f9
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipService;->acquireNetwork()V

    .line 1413
    :goto_5fc
    move/from16 v5, v19

    move-object/from16 v6, v20

    .end local v19    # "ret":I
    .end local v20    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    .local v5, "ret":I
    .restart local v6    # "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    :goto_600
    const-string v3, "BM-openChannel: exit"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method public openChannelCompleted(ILcom/mediatek/internal/telephony/cat/Channel;)V
    .registers 7
    .param p1, "ret"    # I
    .param p2, "lChannel"    # Lcom/mediatek/internal/telephony/cat/Channel;

    .line 2473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BM-openChannelCompleted: ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    .line 2476
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    iput v2, v1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 2478
    :cond_1f
    if-eqz p1, :cond_30

    if-ne p1, v0, :cond_24

    goto :goto_30

    .line 2482
    :cond_24
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 2483
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    goto :goto_3a

    .line 2479
    :cond_30
    :goto_30
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 2480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    .line 2485
    :goto_3a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iget-object v1, p2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 2487
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    if-ne v0, v1, :cond_63

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    if-nez v0, :cond_63

    .line 2488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 2489
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 2490
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2492
    .local v0, "response":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2493
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2494
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2496
    .end local v0    # "response":Landroid/os/Message;
    :cond_63
    return-void
.end method

.method public openChannelOverWifi(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 11
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .line 1417
    const/4 v0, 0x2

    .line 1418
    .local v0, "result":I
    const-string v1, "[BIP]"

    const-string v2, "BM-openChannelOverWifi: enter"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const/4 v2, 0x0

    .line 1420
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1422
    .local v3, "channel":Lcom/mediatek/internal/telephony/cat/Channel;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 1424
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    const-string v6, "BM-openChannel: transport protocol is null"

    if-nez v5, :cond_17

    .line 1425
    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    return-void

    .line 1429
    :cond_17
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v7, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v5, v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->acquireChannelId(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelId:I

    .line 1430
    if-nez v5, :cond_37

    .line 1431
    const-string v4, "BM-openChannel: acquire channel id = 0"

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const/4 v1, 0x5

    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 1433
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1434
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1435
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1436
    return-void

    .line 1438
    :cond_37
    new-instance v7, Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    invoke-direct {v7, v5, v4, v4}, Lcom/mediatek/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v7, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 1441
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 1443
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 1444
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    if-eqz v5, :cond_61

    .line 1445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-openChannel: bearer type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1447
    :cond_61
    const-string v5, "BM-openChannel: bearer type is null"

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :goto_66
    iget v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBufferSize:I

    .line 1451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-openChannel: buffer size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 1454
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    if-eqz v5, :cond_a5

    .line 1455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-openChannel: local address "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 1456
    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1455
    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    .line 1458
    :cond_a5
    const-string v5, "BM-openChannel: local address is null"

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :goto_aa
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 1462
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    if-eqz v5, :cond_d7

    .line 1463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_da

    .line 1467
    :cond_d7
    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :goto_da
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 1471
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    if-eqz v5, :cond_ff

    .line 1472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-openChannel: dest address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 1473
    invoke-virtual {v6}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1472
    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_104

    .line 1475
    :cond_ff
    const-string v5, "BM-openChannel: dest address is null"

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :goto_104
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 1479
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_123

    .line 1480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-openChannel: apn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_128

    .line 1482
    :cond_123
    const-string v5, "BM-openChannel: apn is null."

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    :goto_128
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 1487
    iget-object v5, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 1490
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_13a

    .line 1491
    move v5, v4

    goto :goto_13b

    .line 1492
    :cond_13a
    move v5, v6

    :goto_13b
    iput v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mLinkMode:I

    .line 1494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-openChannel: mLinkMode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_15e

    goto :goto_15f

    :cond_15e
    move v4, v6

    :goto_15f
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 1499
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isSprintSupport()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 1500
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 1506
    :cond_16f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v4, "MAXCHANNELID :7"

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/BipService;->acquireNetwork()V

    .line 1510
    const-string v4, "BM-openChannelOverWifi: exit"

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method public receiveData(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 14
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .line 1622
    iget v0, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 1623
    .local v0, "requestCount":I
    new-instance v4, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1624
    .local v4, "result":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    const/4 v1, 0x0

    .line 1625
    .local v1, "lChannel":Lcom/mediatek/internal/telephony/cat/Channel;
    iget v7, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 1627
    .local v7, "cId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v2, v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v8

    .line 1628
    .end local v1    # "lChannel":Lcom/mediatek/internal/telephony/cat/Channel;
    .local v8, "lChannel":Lcom/mediatek/internal/telephony/cat/Channel;
    const-string v1, "[BIP]"

    const-string v2, "BM-receiveData: receiveData enter"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const/4 v2, 0x5

    if-nez v8, :cond_38

    .line 1631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lChannel is null cid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 1633
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1634
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1635
    return-void

    .line 1637
    :cond_38
    iget v3, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_63

    iget v3, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_43

    goto :goto_63

    .line 1648
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mChannelStatus:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 1650
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1651
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_82

    .line 1639
    :cond_63
    :goto_63
    const/16 v2, 0xed

    if-le v0, v2, :cond_6e

    .line 1640
    const-string v2, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const/16 v0, 0xed

    .line 1643
    :cond_6e
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;

    move-object v1, v10

    move-object v2, p0

    move v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/BipService$RecvDataRunnable;-><init>(Lcom/mediatek/internal/telephony/cat/BipService;ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v9

    .line 1645
    .local v1, "recvThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1646
    .end local v1    # "recvThread":Ljava/lang/Thread;
    nop

    .line 1653
    :goto_82
    return-void
.end method

.method public sendData(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .registers 6
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .line 1657
    const-string v0, "[BIP]"

    const-string v1, "sendData: Enter"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/internal/telephony/cat/BipService$SendDataThread;-><init>(Lcom/mediatek/internal/telephony/cat/BipService;Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1659
    .local v1, "rt":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1660
    const-string v2, "sendData: Leave"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 2680
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 2681
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 2683
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 2684
    return-void
.end method

.method setSetupEventList(Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)V
    .registers 2
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    .line 655
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    .line 656
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipService;->checkPSEvent(Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)V

    .line 657
    return-void
.end method
