.class Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
.super Lcom/android/internal/telephony/StateMachine;
.source "BipRilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;,
        Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field private static mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

.field private static mSimCount:I


# instance fields
.field private mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

.field private mCaller:Landroid/os/Handler;

.field private mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

.field private mSlotId:I

.field private mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 156
    const-string v0, "BipRilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 74
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 75
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 157
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)V
    .registers 7
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "slotId"    # I

    .line 143
    const-string v0, "BipRilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 74
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 75
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->addState(Lcom/android/internal/telephony/State;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->addState(Lcom/android/internal/telephony/State;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 149
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 150
    iput p4, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p0, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->getInstance(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 153
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->decodeMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendCmdForExecution(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    return-object v0
.end method

.method private decodeMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z
    .registers 6
    .param p1, "rilMsg"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 194
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 195
    iget v0, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mId:I

    packed-switch v0, :pswitch_data_6a

    .line 225
    const/4 v1, 0x0

    .local v1, "decodingStarted":Z
    goto :goto_68

    .line 198
    .end local v1    # "decodingStarted":Z
    :pswitch_9
    const/4 v0, 0x0

    .line 199
    .local v0, "rawData":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeMessageParams raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    :try_start_22
    iget-object v1, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_60

    move-object v0, v1

    .line 207
    nop

    .line 210
    :try_start_2c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_35
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2c .. :try_end_35} :catch_37

    .line 211
    const/4 v1, 0x1

    .line 222
    .restart local v1    # "decodingStarted":Z
    goto :goto_68

    .line 212
    .end local v1    # "decodingStarted":Z
    :catch_37
    move-exception v1

    .line 214
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    const/4 v3, 0x1

    iput v3, v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mId:I

    .line 219
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 220
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendCmdForExecution(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, "decodingStarted":Z
    goto :goto_68

    .line 202
    .end local v1    # "decodingStarted":Z
    :catch_60
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "decodingStarted":Z
    move v1, v2

    .line 228
    .end local v0    # "rawData":[B
    .end local v2    # "decodingStarted":Z
    .local v1, "decodingStarted":Z
    :goto_68
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0x12
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .registers 9
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slotId"    # I

    const-class v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    .line 88
    new-array v1, v1, [Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    sput-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    sget v3, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge v1, v3, :cond_22

    .line 90
    sget-object v3, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aput-object v2, v3, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 94
    .end local v1    # "i":I
    :cond_22
    const/4 v1, -0x1

    if-eq p3, v1, :cond_3c

    sget v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge p3, v1, :cond_3c

    .line 95
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v2, v1, p3

    if-nez v2, :cond_36

    .line 96
    new-instance v2, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)V

    aput-object v2, v1, p3

    .line 103
    :cond_36
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v1, v1, p3
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_54

    monitor-exit v0

    return-object v1

    .line 99
    :cond_3c
    :try_start_3c
    const-string v1, "BipRilMessageDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invaild slot id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_54

    .line 100
    monitor-exit v0

    return-object v2

    .line 85
    .end local p0    # "caller":Landroid/os/Handler;
    .end local p1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "slotId":I
    :catchall_54
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendCmdForExecution(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .registers 5
    .param p1, "rilMsg"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 234
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 235
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->dispose()V

    .line 236
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 237
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 238
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 240
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    if-eqz v1, :cond_38

    .line 241
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_25

    .line 242
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->quit()V

    .line 243
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    aput-object v0, v1, v2

    .line 246
    :cond_25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    sget v2, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge v1, v2, :cond_34

    .line 247
    sget-object v3, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v3, v3, v1

    if-eqz v3, :cond_31

    .line 248
    goto :goto_34

    .line 246
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 252
    :cond_34
    :goto_34
    if-ne v1, v2, :cond_38

    .line 253
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 256
    .end local v1    # "i":I
    :cond_38
    return-void
.end method

.method public getSlotId()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    return v0
.end method

.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V
    .registers 5
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 127
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    .registers 3
    .param p1, "rilMsg"    # Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 116
    return-void
.end method
