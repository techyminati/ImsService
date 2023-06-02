.class public Lcom/mediatek/ims/rcse/MtkSipDelegate;
.super Ljava/lang/Object;
.source "MtkSipDelegate.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;,
        Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;
    }
.end annotation


# instance fields
.field public final delegateRequest:Landroid/telephony/ims/DelegateRequest;

.field private logger:Lcom/mediatek/ims/utils/logger/Logger;

.field private mClient:Lcom/mediatek/ims/rcsua/Client;

.field private final mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private mRcsUaService:Lcom/mediatek/ims/rcsua/RcsUaService;

.field private mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

.field private final mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

.field public mtkSipDelegateMc:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

.field public final subId:I


# direct methods
.method public constructor <init>(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 3
    .param p1, "sub"    # I
    .param p2, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "cb"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mRcsUaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mClient:Lcom/mediatek/ims/rcsua/Client;

    .line 69
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    .line 70
    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    .line 197
    new-instance v0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;-><init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mtkSipDelegateMc:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    .line 74
    const-string v0, "MtkSipDelegate"

    invoke-static {v0}, Lcom/mediatek/ims/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager.getService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 76
    iput p1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->subId:I

    .line 77
    iput-object p2, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    .line 78
    iput-object p3, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    .line 79
    iput-object p4, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 80
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;-><init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mClient:Lcom/mediatek/ims/rcsua/Client;

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager mClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mClient:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MtkSipDelegate subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,delegateRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mStateCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mMessageCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 60
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    return-object v0
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .line 117
    return-void
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 127
    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 122
    return-void
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 3
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 91
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sendMessage message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,configVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage message.getContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getContent()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage message.toString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage message.toEncodedMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager.getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager.imsRegistered(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->imsRegistered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager.getService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager.getSipChannel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;-><init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcsua/Client;->openSipChannel(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;I)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager mSipChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UaServiceManager mSipChannel.isConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->mtkSipDelegateMc:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcsua/SipChannel;->sendMessageAosp([BLandroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate;->logger:Lcom/mediatek/ims/utils/logger/Logger;

    const-string v2, "OpenSipChannel fail"

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
