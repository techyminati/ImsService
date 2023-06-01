.class public Lcom/mediatek/internal/telephony/rsu/RsuSml;
.super Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
.source "RsuSml.java"


# static fields
.field private static final FAIL_MD:I = -0x3

.field private static final REMOTE_SIM_UNLOCK_ERROR:I = 0x1

.field private static final REMOTE_SIM_UNLOCK_SUCCESS:I = 0x0

.field private static final RSU_MESSAGE_GET_LOCK_STATUS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "RsuSml"


# instance fields
.field private mCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private mContext:Landroid/content/Context;

.field private mUrcHandler:Landroid/os/Handler;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mWorker:Landroid/os/HandlerThread;

    .line 83
    iput-object v0, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mUrcHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize RsuSml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/rsu/RsuSml;->logi(Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mContext:Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RsuWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mWorker:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v0, Lcom/mediatek/internal/telephony/rsu/RsuSml$1;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/rsu/RsuSml$1;-><init>(Lcom/mediatek/internal/telephony/rsu/RsuSml;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mUrcHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/rsu/RsuSml;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/rsu/RsuSml;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/RsuSml;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/rsu/RsuSml;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/rsu/RsuSml;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/rsu/RsuSml;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RsuSml"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RsuSml"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RsuSml"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method public remoteSimlockGetSimlockStatusEx(Ljava/lang/Object;)I
    .registers 9
    .param p1, "cb"    # Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteSimlockGetSimlockStatusEx mCi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/rsu/RsuSml;->logd(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_3e

    .line 141
    const/16 v0, 0xc8

    .line 142
    .local v0, "RSU_OP_COMMON":I
    const/4 v1, 0x4

    .line 143
    .local v1, "RSU_COMMON_REQUEST_GET_LOCK_STATUS":I
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;-><init>()V

    .line 144
    .local v2, "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;
    const/16 v3, 0xc8

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;->opId:I

    .line 145
    const/4 v3, 0x4

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;->requestId:I

    .line 146
    const-string v3, ""

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;->data:Ljava/lang/String;

    .line 147
    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;->reserveString1:Ljava/lang/String;

    .line 148
    iget-object v3, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml;->mUrcHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    .line 149
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->sendRsuRequest(Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;Landroid/os/Message;)V

    .line 150
    return v6

    .line 153
    .end local v0    # "RSU_OP_COMMON":I
    .end local v1    # "RSU_COMMON_REQUEST_GET_LOCK_STATUS":I
    .end local v2    # "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;
    :cond_3e
    const/4 v0, 0x1

    return v0
.end method
