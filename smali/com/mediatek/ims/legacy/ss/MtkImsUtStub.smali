.class public Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
.super Lcom/mediatek/ims/feature/MtkImsUtImplBase;
.source "MtkImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x4b0

.field static final IMS_UT_EVENT_GET_CF_WITH_CLASS:I = 0x4b4

.field static final IMS_UT_EVENT_SETUP_XCAP_USER_AGENT_STRING:I = 0x4b3

.field static final IMS_UT_EVENT_SET_CB_WITH_PWD:I = 0x4b2

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x4b1

.field private static final TAG:Ljava/lang/String; = "MtkImsUtService"

.field private static final mLock:Ljava/lang/Object;

.field private static sMtkImsUtStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

.field private mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

.field private mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 119
    invoke-direct {p0}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

    .line 102
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 103
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    .line 120
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 122
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->getInstance()Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 123
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->registerUtService(Landroid/content/Context;)V

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtkImsUtStubResult"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 128
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;-><init>(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;

    .line 130
    iput-object p3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 131
    iput p2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/feature/MtkImsUtListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 90
    iget v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    return v0
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .registers 3
    .param p1, "cbType"    # I

    .line 460
    packed-switch p1, :pswitch_data_24

    .line 484
    const/4 v0, 0x0

    return-object v0

    .line 482
    :pswitch_5
    const-string v0, "BS_MT"

    return-object v0

    .line 479
    :pswitch_8
    const-string v0, "AC"

    return-object v0

    .line 477
    :pswitch_b
    const-string v0, "AG"

    return-object v0

    .line 475
    :pswitch_e
    const-string v0, "AB"

    return-object v0

    .line 473
    :pswitch_11
    const-string v0, "ACR"

    return-object v0

    .line 470
    :pswitch_14
    const-string v0, "IR"

    return-object v0

    .line 468
    :pswitch_17
    const-string v0, "OX"

    return-object v0

    .line 466
    :pswitch_1a
    const-string v0, "OI"

    return-object v0

    .line 464
    :pswitch_1d
    const-string v0, "AO"

    return-object v0

    .line 462
    :pswitch_20
    const-string v0, "AI"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getInstance(I)Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
    .registers 4
    .param p0, "phoneId"    # I

    .line 147
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    monitor-enter v0

    .line 148
    :try_start_3
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 149
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 150
    .local v1, "m":Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
    monitor-exit v0

    return-object v1

    .line 153
    .end local v1    # "m":Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
    :cond_1d
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 154
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 135
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    monitor-enter v0

    .line 136
    :try_start_3
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 137
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 138
    .local v1, "m":Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
    monitor-exit v0

    return-object v1

    .line 140
    .end local v1    # "m":Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
    :cond_1d
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->sMtkImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method


# virtual methods
.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUtIMPUFromNetwork(): phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsUtService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getXui(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXcapConflictErrorMessage()Ljava/lang/String;
    .registers 2

    .line 293
    const-string v0, ""

    return-object v0
.end method

.method public isSupportCFT()Z
    .registers 2

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .registers 16
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 271
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getAndIncreaseRequestId()I

    move-result v1

    .line 273
    .local v1, "requestId":I
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_44

    .line 275
    const-string v0, "MtkImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCFForServiceClass(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 279
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 281
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;

    const/16 v3, 0x4b4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 282
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    invoke-virtual {v3, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v7

    iget v11, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    move v8, p3

    move-object v9, p2

    move-object v10, v2

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V

    .line 285
    return v1

    .line 273
    .end local v0    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v1    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public queryCallForwardInTimeSlot(I)I
    .registers 9
    .param p1, "condition"    # I

    .line 182
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getAndIncreaseRequestId()I

    move-result v1

    .line 184
    .local v1, "requestId":I
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_42

    .line 187
    const-string v0, "MtkImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;

    const/16 v2, 0x4b0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v2

    .line 194
    .local v2, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 196
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 197
    invoke-virtual {v4, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v4

    const/4 v5, 0x1

    iget v6, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    .line 196
    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V

    .line 201
    return v1

    .line 184
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    .end local v2    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setListener(Lcom/mediatek/ims/feature/MtkImsUtListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/mediatek/ims/feature/MtkImsUtListener;

    .line 161
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

    .line 162
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;)V
    .registers 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 173
    const-string v0, "MtkImsUtService"

    const-string v1, "Not support this API setupXcapUserAgentString() in current platform"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I
    .registers 20
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "enable"    # I
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I

    .line 241
    move-object v1, p0

    sget-object v2, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_4
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getAndIncreaseRequestId()I

    move-result v0

    .line 243
    .local v0, "requestId":I
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4e

    .line 245
    const-string v2, "MtkImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringForServiceClass(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_27

    move v7, v3

    goto :goto_28

    :cond_27
    move v7, v2

    .line 250
    .local v7, "bEnable":Z
    :goto_28
    move/from16 v3, p2

    invoke-direct {p0, v3}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, "facility":Ljava/lang/String;
    iget-object v5, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;

    const/16 v6, 0x4b2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v2, v8}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 253
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v13

    .line 254
    .local v13, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v5, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    invoke-virtual {v13, v5}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 256
    iget-object v5, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v11, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    move-object v6, v12

    move/from16 v9, p5

    move-object v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    .line 258
    return v0

    .line 243
    .end local v0    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v7    # "bEnable":Z
    .end local v12    # "facility":Ljava/lang/String;
    .end local v13    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_4e
    move-exception v0

    move/from16 v3, p2

    move/from16 v4, p3

    :goto_53
    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_55

    throw v0

    :catchall_55
    move-exception v0

    goto :goto_53
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I
    .registers 22
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J

    .line 211
    move-object/from16 v1, p0

    sget-object v2, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_5
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getAndIncreaseRequestId()I

    move-result v0

    .line 213
    .local v0, "requestId":I
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_55

    .line 216
    const-string v2, "MtkImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;

    const/16 v3, 0x4b1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 221
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v3

    .line 222
    .local v3, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 224
    iget-object v6, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v4, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getCFActionFromAction(I)I

    move-result v7

    iget-object v4, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 225
    move/from16 v15, p2

    invoke-virtual {v4, v15}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v8

    const/4 v9, 0x1

    iget v14, v1, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I

    .line 224
    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v2

    invoke-virtual/range {v6 .. v14}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V

    .line 229
    return v0

    .line 213
    .end local v0    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_55
    move-exception v0

    move/from16 v5, p1

    move/from16 v15, p2

    :goto_5a
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5c

    throw v0

    :catchall_5c
    move-exception v0

    goto :goto_5a
.end method
