.class public Lcom/mediatek/anr/MessageLogger;
.super Ljava/lang/Object;
.source "MessageLogger.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;,
        Lcom/mediatek/anr/MessageLogger$MessageInfo;
    }
.end annotation


# static fields
.field static final LONGER_TIME:I = 0xc8

.field static final LONGER_TIME_MESSAGE_COUNT:I = 0x14

.field static final MESSAGE_COUNT:I = 0x14

.field private static final MESSAGE_DUMP_SIZE_MAX:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MessageLogger"

.field public static mEnableLooperLog:Z

.field private static sGetCurrentTimeMicro:Ljava/lang/reflect/Method;


# instance fields
.field private MSL_Warn:Ljava/lang/String;

.field private mGetMessageQueue:Ljava/lang/reflect/Method;

.field private mLastRecord:Ljava/lang/String;

.field private mLastRecordDateTime:J

.field private mLastRecordKernelTime:J

.field private mLongTimeMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

.field private mMessageField:Ljava/lang/reflect/Field;

.field private mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

.field private mMessageQueueField:Ljava/lang/reflect/Field;

.field private mMsgCnt:J

.field private mName:Ljava/lang/String;

.field private mNonSleepLastRecordKernelTime:J

.field private mProcessId:J

.field private mState:I

.field private messageInfo:Ljava/lang/StringBuilder;

.field public nonSleepWallStart:J

.field public nonSleepWallTime:J

.field private sInstNotCreated:Ljava/lang/String;

.field public wallStart:J

.field public wallTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/anr/MessageLogger;->mEnableLooperLog:Z

    .line 83
    const-string v0, "currentTimeMicro"

    invoke-static {v0}, Lcom/mediatek/anr/MessageLogger;->getSystemClockMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/anr/MessageLogger;->sGetCurrentTimeMicro:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    .line 71
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/anr/MessageLogger;->mMsgCnt:J

    .line 72
    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mName:Ljava/lang/String;

    .line 74
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    .line 84
    const-string v0, "getQueue"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getLooperMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mGetMessageQueue:Ljava/lang/reflect/Method;

    .line 86
    const-string v0, "mMessages"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getMessageQueueField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageQueueField:Ljava/lang/reflect/Field;

    .line 87
    const-string v0, "next"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getMessageField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageField:Ljava/lang/reflect/Field;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/anr/MessageLogger;->init()V

    .line 131
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "mValue"    # Z

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    .line 71
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/anr/MessageLogger;->mMsgCnt:J

    .line 72
    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mName:Ljava/lang/String;

    .line 74
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    .line 84
    const-string v0, "getQueue"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getLooperMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mGetMessageQueue:Ljava/lang/reflect/Method;

    .line 86
    const-string v0, "mMessages"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getMessageQueueField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageQueueField:Ljava/lang/reflect/Field;

    .line 87
    const-string v0, "next"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getMessageField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageField:Ljava/lang/reflect/Field;

    .line 134
    sput-boolean p1, Lcom/mediatek/anr/MessageLogger;->mEnableLooperLog:Z

    .line 135
    invoke-direct {p0}, Lcom/mediatek/anr/MessageLogger;->init()V

    .line 136
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6
    .param p1, "mValue"    # Z
    .param p2, "Name"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    .line 71
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/anr/MessageLogger;->mMsgCnt:J

    .line 72
    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mName:Ljava/lang/String;

    .line 74
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    .line 84
    const-string v0, "getQueue"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getLooperMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mGetMessageQueue:Ljava/lang/reflect/Method;

    .line 86
    const-string v0, "mMessages"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getMessageQueueField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageQueueField:Ljava/lang/reflect/Field;

    .line 87
    const-string v0, "next"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->getMessageField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageField:Ljava/lang/reflect/Field;

    .line 139
    iput-object p2, p0, Lcom/mediatek/anr/MessageLogger;->mName:Ljava/lang/String;

    .line 140
    sput-boolean p1, Lcom/mediatek/anr/MessageLogger;->mEnableLooperLog:Z

    .line 141
    invoke-direct {p0}, Lcom/mediatek/anr/MessageLogger;->init()V

    .line 142
    return-void
.end method

.method private getLooperMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 100
    :try_start_0
    const-string v0, "android.os.Looper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "looper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 102
    .end local v0    # "looper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_e
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMessageField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "var"    # Ljava/lang/String;

    .line 120
    :try_start_0
    const-string v0, "android.os.Message"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "message":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 122
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 123
    return-object v1

    .line 124
    .end local v0    # "message":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_f
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMessageQueueField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "var"    # Ljava/lang/String;

    .line 109
    :try_start_0
    const-string v0, "android.os.MessageQueue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    .local v0, "messageQueue":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 111
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 112
    return-object v1

    .line 113
    .end local v0    # "messageQueue":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_f
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSystemClockMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .param p0, "func"    # Ljava/lang/String;

    .line 91
    :try_start_0
    const-string v0, "android.os.SystemClock"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "systemClock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 93
    .end local v0    # "systemClock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_e
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private init()V
    .registers 3

    .line 145
    new-instance v0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;-><init>(Lcom/mediatek/anr/MessageLogger;I)V

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    .line 146
    new-instance v0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;-><init>(Lcom/mediatek/anr/MessageLogger;I)V

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mLongTimeMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger;->messageInfo:Ljava/lang/StringBuilder;

    .line 149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mediatek/anr/MessageLogger;->mProcessId:J

    .line 150
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger;->messageInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    return-void
.end method


# virtual methods
.method public dumpMessageHistory()V
    .registers 15

    .line 275
    monitor-enter p0

    .line 276
    :try_start_1
    const-string v0, ">>> Entering MessageLogger.dump. to Dump MSG HISTORY <<<"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    if-eqz v0, :cond_1f0

    invoke-virtual {v0}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1f0

    .line 289
    :cond_12
    const-string v0, "MSG HISTORY IN MAIN THREAD:"

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current kernel time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/anr/MessageLogger;->mProcessId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v1}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 295
    .local v1, "msgIdx":I
    iget v3, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    const-wide/16 v4, 0x3e8

    if-ne v3, v2, :cond_c5

    .line 296
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecordDateTime:J

    div-long/2addr v6, v4

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 297
    .local v3, "date":Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecordKernelTime:J

    sub-long/2addr v6, v8

    .line 298
    .local v6, "spent":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/mediatek/anr/MessageLogger;->mNonSleepLastRecordKernelTime:J

    sub-long/2addr v8, v10

    .line 299
    .local v8, "nonSleepSpent":J
    iget-object v10, p0, Lcom/mediatek/anr/MessageLogger;->mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v10}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->getLast()Lcom/mediatek/anr/MessageLogger$MessageInfo;

    move-result-object v10

    .line 301
    .local v10, "msgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Last record : Msg#:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v10, Lcom/mediatek/anr/MessageLogger$MessageInfo;->msgIdStart:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 302
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Last record dispatching elapsedTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms/upTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 304
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Last record dispatching time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 306
    add-int/lit8 v1, v1, -0x1

    .line 309
    .end local v3    # "date":Ljava/util/Date;
    .end local v6    # "spent":J
    .end local v8    # "nonSleepSpent":J
    .end local v10    # "msgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    :cond_c5
    :goto_c5
    if-ltz v1, :cond_141

    .line 310
    iget-object v3, p0, Lcom/mediatek/anr/MessageLogger;->mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v3, v1}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->get(I)Lcom/mediatek/anr/MessageLogger$MessageInfo;

    move-result-object v3

    .line 311
    .local v3, "info":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    if-nez v3, :cond_d0

    goto :goto_13e

    .line 312
    :cond_d0
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startTimeElapsed:J

    div-long/2addr v7, v4

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 313
    .local v6, "date":Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Msg#:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;->msgIdFinish:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;->finishDispatch:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " elapsedTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationElapsed:J

    div-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms/upTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationUp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Msg#:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;->msgIdStart:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-direct {p0, v7}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 309
    .end local v3    # "info":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    .end local v6    # "date":Ljava/util/Date;
    :goto_13e
    add-int/lit8 v1, v1, -0x1

    goto :goto_c5

    .line 319
    :cond_141
    const-string v3, "=== Finish Dumping MSG HISTORY==="

    invoke-direct {p0, v3}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 321
    const-string v3, "=== LONGER MSG HISTORY IN MAIN THREAD ==="

    invoke-direct {p0, v3}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/mediatek/anr/MessageLogger;->mLongTimeMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v3}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 323
    .end local v1    # "msgIdx":I
    .local v3, "msgIdx":I
    :goto_152
    if-ltz v3, :cond_1ae

    .line 324
    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->mLongTimeMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v1, v3}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->get(I)Lcom/mediatek/anr/MessageLogger$MessageInfo;

    move-result-object v1

    .line 325
    .local v1, "info":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    if-nez v1, :cond_15d

    goto :goto_1ab

    .line 326
    :cond_15d
    new-instance v2, Ljava/util/Date;

    iget-wide v6, v1, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startTimeElapsed:J

    div-long/2addr v6, v4

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 327
    .local v2, "date":Ljava/util/Date;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msg#:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/mediatek/anr/MessageLogger$MessageInfo;->msgIdStart:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " elapsedTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationElapsed:J

    div-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms/upTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationUp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-direct {p0, v6}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 323
    .end local v1    # "info":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    .end local v2    # "date":Ljava/util/Date;
    :goto_1ab
    add-int/lit8 v3, v3, -0x1

    goto :goto_152

    .line 331
    :cond_1ae
    const-string v1, "=== Finish Dumping LONGER MSG HISTORY==="

    invoke-direct {p0, v1}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V
    :try_end_1b3
    .catchall {:try_start_1 .. :try_end_1b3} :catchall_223

    .line 334
    :try_start_1b3
    invoke-virtual {p0}, Lcom/mediatek/anr/MessageLogger;->dumpMessageQueue()V

    .line 335
    invoke-static {}, Lcom/mediatek/anr/AnrManagerNative;->getDefault()Lcom/mediatek/anr/IAnrManager;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/anr/MessageLogger;->messageInfo:Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 335
    invoke-interface {v1, v2, v4}, Lcom/mediatek/anr/IAnrManager;->informMessageDump(Ljava/lang/String;I)V

    .line 337
    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->messageInfo:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_1d6} :catch_1d7
    .catchall {:try_start_1b3 .. :try_end_1d6} :catchall_223

    .line 340
    goto :goto_1ee

    .line 338
    :catch_1d7
    move-exception v1

    .line 339
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1d8
    const-string v2, "MessageLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "informMessageDump exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v3    # "msgIdx":I
    :goto_1ee
    monitor-exit p0

    .line 342
    return-void

    .line 278
    :cond_1f0
    :goto_1f0
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger;->sInstNotCreated:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/mediatek/anr/MessageLogger;->dumpMessageQueue()V
    :try_end_1f8
    .catchall {:try_start_1d8 .. :try_end_1f8} :catchall_223

    .line 281
    :try_start_1f8
    invoke-static {}, Lcom/mediatek/anr/AnrManagerNative;->getDefault()Lcom/mediatek/anr/IAnrManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->messageInfo:Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 281
    invoke-interface {v0, v1, v2}, Lcom/mediatek/anr/IAnrManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_209
    .catch Landroid/os/RemoteException; {:try_start_1f8 .. :try_end_209} :catch_20a
    .catchall {:try_start_1f8 .. :try_end_209} :catchall_223

    .line 285
    goto :goto_221

    .line 283
    :catch_20a
    move-exception v0

    .line 284
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_20b
    const-string v1, "MessageLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_221
    monitor-exit p0

    return-void

    .line 341
    :catchall_223
    move-exception v0

    monitor-exit p0
    :try_end_225
    .catchall {:try_start_20b .. :try_end_225} :catchall_223

    throw v0
.end method

.method public dumpMessageQueue()V
    .registers 13

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "looper":Landroid/os/Looper;
    const/4 v1, 0x0

    .line 219
    .local v1, "messageQueue":Landroid/os/MessageQueue;
    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, v3

    if-nez v3, :cond_21

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!!! Current MainLooper is Null !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 221
    goto :goto_4a

    .line 222
    :cond_21
    iget-object v3, p0, Lcom/mediatek/anr/MessageLogger;->mGetMessageQueue:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/MessageQueue;

    move-object v1, v3

    if-nez v3, :cond_45

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!!! Current MainLooper\'s MsgQueue is Null !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 225
    goto :goto_4a

    .line 227
    :cond_45
    invoke-virtual {p0, v1}, Lcom/mediatek/anr/MessageLogger;->dumpMessageQueueImpl(Landroid/os/MessageQueue;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_48} :catch_49

    goto :goto_4a

    .line 229
    :catch_49
    move-exception v3

    :goto_4a
    nop

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!!! Calling thread from PID:%d\'s TID:%d(%s),Thread\'s type is %s!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    .line 233
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    .line 231
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 239
    .local v3, "stkTrace":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!!! get StackTrace: !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 240
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_c0
    array-length v6, v3

    if-ge v5, v6, :cond_106

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mediatek/anr/MessageLogger;->MSL_Warn:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "File:%s\'s Linenumber:%d, Class:%s, Method:%s"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v10, v4, [Ljava/lang/Object;

    aget-object v11, v3, v5

    .line 242
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    aget-object v11, v3, v5

    .line 243
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    aget-object v11, v3, v5

    .line 244
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    aget-object v11, v3, v5

    .line 245
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    .line 241
    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 247
    .end local v5    # "index":I
    :cond_106
    return-void
.end method

.method public dumpMessageQueueImpl(Landroid/os/MessageQueue;)V
    .registers 7
    .param p1, "messageQueue"    # Landroid/os/MessageQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    monitor-enter p1

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "mMessages":Landroid/os/Message;
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger;->mMessageQueueField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_d

    .line 253
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    move-object v0, v1

    .line 255
    :cond_d
    if-eqz v0, :cond_59

    .line 256
    const-string v1, "Dump first 20 messages in Queue: "

    invoke-direct {p0, v1}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 257
    move-object v1, v0

    .line 258
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x0

    .line 259
    .local v2, "count":I
    :goto_16
    if-eqz v1, :cond_44

    .line 260
    add-int/lit8 v2, v2, 0x1

    .line 261
    const/16 v3, 0x14

    if-gt v2, v3, :cond_3a

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Message in Queue ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 264
    :cond_3a
    iget-object v3, p0, Lcom/mediatek/anr/MessageLogger;->mMessageField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    move-object v1, v3

    goto :goto_16

    .line 267
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total Message Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 268
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "count":I
    goto :goto_5e

    .line 269
    :cond_59
    const-string v1, "mMessages is null"

    invoke-direct {p0, v1}, Lcom/mediatek/anr/MessageLogger;->log(Ljava/lang/String;)V

    .line 271
    .end local v0    # "mMessages":Landroid/os/Message;
    :goto_5e
    monitor-exit p1

    .line 272
    return-void

    .line 271
    :catchall_60
    move-exception v0

    monitor-exit p1
    :try_end_62
    .catchall {:try_start_2 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public println(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .line 158
    monitor-enter p0

    .line 159
    :try_start_1
    iget v0, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    .line 160
    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mMsgCnt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mMsgCnt:J

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecordKernelTime:J

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mNonSleepLastRecordKernelTime:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_cd

    .line 166
    const/4 v0, 0x0

    :try_start_1b
    sget-object v2, Lcom/mediatek/anr/MessageLogger;->sGetCurrentTimeMicro:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_30

    .line 167
    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecordDateTime:J
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2e} :catch_2f
    .catchall {:try_start_1b .. :try_end_2e} :catchall_cd

    goto :goto_30

    .line 169
    :catch_2f
    move-exception v2

    :cond_30
    :goto_30
    nop

    .line 171
    :try_start_31
    iget v2, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    if-ne v2, v1, :cond_4d

    .line 172
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v0}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->add()Lcom/mediatek/anr/MessageLogger$MessageInfo;

    move-result-object v0

    .line 173
    .local v0, "msgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    invoke-virtual {v0}, Lcom/mediatek/anr/MessageLogger$MessageInfo;->init()V

    .line 174
    iput-object p1, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    .line 175
    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mMsgCnt:J

    iput-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->msgIdStart:J

    .line 176
    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecordDateTime:J

    iput-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startTimeElapsed:J

    .line 177
    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mNonSleepLastRecordKernelTime:J

    iput-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startTimeUp:J

    .line 178
    .end local v0    # "msgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    goto :goto_7f

    .line 179
    :cond_4d
    iput v0, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    .line 181
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger;->mMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v0}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->getLast()Lcom/mediatek/anr/MessageLogger$MessageInfo;

    move-result-object v0

    .line 182
    .restart local v0    # "msgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    iput-object p1, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->finishDispatch:Ljava/lang/String;

    .line 183
    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mMsgCnt:J

    iput-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->msgIdFinish:J

    .line 184
    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mLastRecordDateTime:J

    iget-wide v4, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startTimeElapsed:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationElapsed:J

    .line 185
    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->mNonSleepLastRecordKernelTime:J

    iget-wide v4, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->startTimeUp:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationUp:J

    .line 186
    iget-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationElapsed:J

    iput-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->wallTime:J

    .line 187
    iget-wide v2, v0, Lcom/mediatek/anr/MessageLogger$MessageInfo;->durationElapsed:J

    const-wide/32 v4, 0x30d40

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7f

    .line 188
    iget-object v2, p0, Lcom/mediatek/anr/MessageLogger;->mLongTimeMessageHistory:Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;

    invoke-virtual {v2}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->add()Lcom/mediatek/anr/MessageLogger$MessageInfo;

    move-result-object v2

    .line 189
    .local v2, "longMsgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    invoke-virtual {v2, v0}, Lcom/mediatek/anr/MessageLogger$MessageInfo;->copy(Lcom/mediatek/anr/MessageLogger$MessageInfo;)V

    .line 193
    .end local v0    # "msgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    .end local v2    # "longMsgInfo":Lcom/mediatek/anr/MessageLogger$MessageInfo;
    :cond_7f
    :goto_7f
    sget-boolean v0, Lcom/mediatek/anr/MessageLogger;->mEnableLooperLog:Z

    if-eqz v0, :cond_cb

    .line 194
    iget v0, p0, Lcom/mediatek/anr/MessageLogger;->mState:I

    if-ne v0, v1, :cond_a3

    .line 195
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 197
    :cond_a3
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mediatek/anr/MessageLogger;->wallTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_cb
    :goto_cb
    monitor-exit p0

    .line 202
    return-void

    .line 201
    :catchall_cd
    move-exception v0

    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_31 .. :try_end_cf} :catchall_cd

    throw v0
.end method

.method public setInitStr(Ljava/lang/String;)V
    .registers 5
    .param p1, "str_tmp"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger;->messageInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 206
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger;->messageInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    return-void
.end method
