.class public Lcom/mediatek/aee/ExceptionLogImpl;
.super Lcom/mediatek/aee/ExceptionLog;
.source "ExceptionLogImpl.java"


# static fields
.field public static final AEE_EXCEPTION_JNI:B = 0x1t

.field public static final AEE_WARNING_JNI:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "AES"

.field private static mZygotePids:[I


# instance fields
.field private final FILE_OBSERVER_NULL_PATH:Ljava/lang/String;

.field private final FalseAlarmCases:[Ljava/lang/String;

.field private final SEND_NON_PROTECTED_BROADCAST:Ljava/lang/String;

.field private final protectedBroadcastFilter:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/aee/ExceptionLogImpl;->mZygotePids:[I

    .line 65
    const-string v0, "AES"

    const-string v1, "load Exception Log jni"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "mediatek_exceptionlog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .registers 13

    .line 58
    invoke-direct {p0}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .line 313
    const-string v0, "Sending non-protected broadcast"

    iput-object v0, p0, Lcom/mediatek/aee/ExceptionLogImpl;->SEND_NON_PROTECTED_BROADCAST:Ljava/lang/String;

    .line 314
    const-string v1, "android.intent.action.CALL_EMERGENCY"

    const-string v2, "com.debug.loggerui.ADB_CMD"

    const-string v3, "com.mediatek.log2server.EXCEPTION_HAPPEND"

    const-string v4, "com.mediatek.omacp.capability.result"

    const-string v5, "com.mediatek.autounlock"

    const-string v6, "com.mtk.autotest.heartset.stop"

    const-string v7, "com.mtk.fts.ACTION"

    const-string v8, "com.android.systemui.demo"

    const-string v9, "ATG_MQTT_MqttService.pingSender"

    const-string v10, "AUTO_SUBMIT_STATUS"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/aee/ExceptionLogImpl;->protectedBroadcastFilter:[Ljava/lang/String;

    .line 361
    const-string v1, "Process: system_server"

    const-string v2, "Subject: LazyAlarmStore"

    const-string v3, "TerribleFailure: Removed TIME_TICK alarm"

    const-string v4, "android.util.Log.wtf"

    const-string v5, "android.util.Slog.wtf"

    const-string v6, "com.android.server.alarm.LazyAlarmStore.remove"

    const-string v7, "=====case end====="

    const-string v8, "Process: system_server"

    const-string v9, "Subject: ActivityManager"

    const-string v10, "TerribleFailure: Background started FGS"

    const-string v11, "=====case end====="

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/aee/ExceptionLogImpl;->FalseAlarmCases:[Ljava/lang/String;

    .line 394
    const-string v0, "Unhandled exception in FileObserver com.android.server.BootReceiver"

    iput-object v0, p0, Lcom/mediatek/aee/ExceptionLogImpl;->FILE_OBSERVER_NULL_PATH:Ljava/lang/String;

    return-void
.end method

.method private static native SFMatter(JJ)J
.end method

.method private static native WDTMatter(J)V
.end method

.method private static getAllThreadStackTraces()Ljava/lang/String;
    .registers 13

    .line 264
    const-string v0, "\n"

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    .line 265
    .local v1, "st":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 266
    .local v2, "traces":Ljava/io/Writer;
    const-string v3, ""

    .line 269
    .local v3, "ret_traces":Ljava/lang/String;
    :try_start_d
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 270
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    .line 271
    .local v6, "el":[Ljava/lang/StackTraceElement;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 273
    .local v7, "th":Ljava/lang/Thread;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v7}, Ljava/lang/Thread;->isDaemon()Z

    move-result v9

    if-eqz v9, :cond_4c

    const-string v9, "daemon"

    goto :goto_4e

    :cond_4c
    const-string v9, ""

    :goto_4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " prio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v7}, Ljava/lang/Thread;->getPriority()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Thread id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    array-length v8, v6

    const/4 v9, 0x0

    :goto_81
    if-ge v9, v8, :cond_9f

    aget-object v10, v6, v9

    .line 279
    .local v10, "line":Ljava/lang/StackTraceElement;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    .end local v10    # "line":Ljava/lang/StackTraceElement;
    add-int/lit8 v9, v9, 0x1

    goto :goto_81

    .line 281
    :cond_9f
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 282
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v6    # "el":[Ljava/lang/StackTraceElement;
    .end local v7    # "th":Ljava/lang/Thread;
    goto/16 :goto_15

    .line 283
    :cond_a4
    nop

    .line 284
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_a9} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_a9} :catch_ab

    .line 290
    .end local v3    # "ret_traces":Ljava/lang/String;
    .local v0, "ret_traces":Ljava/lang/String;
    nop

    .line 292
    return-object v0

    .line 288
    .end local v0    # "ret_traces":Ljava/lang/String;
    .restart local v3    # "ret_traces":Ljava/lang/String;
    :catch_ab
    move-exception v0

    .line 289
    .local v0, "err":Ljava/lang/OutOfMemoryError;
    const-string v4, "java.lang.OutOfMemoryError"

    return-object v4

    .line 286
    .end local v0    # "err":Ljava/lang/OutOfMemoryError;
    :catch_af
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "IOException"

    return-object v4
.end method

.method private static native getNativeExceptionPidListImpl([I)Z
.end method

.method private static getThreadStackTrace()Ljava/lang/String;
    .registers 10

    .line 232
    const-string v0, "\n"

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 233
    .local v1, "traces":Ljava/io/Writer;
    const-string v2, ""

    .line 236
    .local v2, "ret_trace":Ljava/lang/String;
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 237
    .local v3, "th":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 239
    .local v4, "st":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v3}, Ljava/lang/Thread;->isDaemon()Z

    move-result v6

    if-eqz v6, :cond_30

    const-string v6, "daemon"

    goto :goto_32

    :cond_30
    const-string v6, ""

    :goto_32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " prio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Thread id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    array-length v5, v4

    const/4 v6, 0x0

    :goto_65
    if-ge v6, v5, :cond_83

    aget-object v7, v4, v6

    .line 244
    .local v7, "line":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    .end local v7    # "line":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 246
    :cond_83
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 247
    nop

    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_8b} :catch_91
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_8b} :catch_8d

    .line 254
    .end local v2    # "ret_trace":Ljava/lang/String;
    .end local v3    # "th":Ljava/lang/Thread;
    .end local v4    # "st":[Ljava/lang/StackTraceElement;
    .local v0, "ret_trace":Ljava/lang/String;
    nop

    .line 256
    return-object v0

    .line 252
    .end local v0    # "ret_trace":Ljava/lang/String;
    .restart local v2    # "ret_trace":Ljava/lang/String;
    :catch_8d
    move-exception v0

    .line 253
    .local v0, "err":Ljava/lang/OutOfMemoryError;
    const-string v3, "java.lang.OutOfMemoryError"

    return-object v3

    .line 250
    .end local v0    # "err":Ljava/lang/OutOfMemoryError;
    :catch_91
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "IOException"

    return-object v3
.end method

.method private isSkipFalseAlarmCases(Ljava/lang/String;)Z
    .registers 6
    .param p1, "info"    # Ljava/lang/String;

    .line 376
    const/4 v0, 0x1

    .line 378
    .local v0, "case_match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/aee/ExceptionLogImpl;->FalseAlarmCases:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_25

    .line 379
    aget-object v2, v2, v1

    const-string v3, "=====case end====="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 380
    iget-object v2, p0, Lcom/mediatek/aee/ExceptionLogImpl;->FalseAlarmCases:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 381
    const/4 v0, 0x0

    goto :goto_22

    .line 383
    :cond_1d
    if-eqz v0, :cond_21

    .line 384
    const/4 v2, 0x1

    return v2

    .line 385
    :cond_21
    const/4 v0, 0x1

    .line 378
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 388
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private isSkipReportFromNullFilePath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 397
    const-string v0, "Unhandled exception in FileObserver com.android.server.BootReceiver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 398
    const/4 v0, 0x1

    return v0

    .line 400
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private isSkipReportFromProtectedBroadcast(Ljava/lang/String;)Z
    .registers 5
    .param p1, "info"    # Ljava/lang/String;

    .line 350
    const-string v0, "Sending non-protected broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/mediatek/aee/ExceptionLogImpl;->protectedBroadcastFilter:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 352
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 353
    const/4 v1, 0x1

    return v1

    .line 351
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 357
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private isSkipSystemWtfReport(Ljava/lang/String;)Z
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 330
    invoke-direct {p0, p1}, Lcom/mediatek/aee/ExceptionLogImpl;->isSkipReportFromProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 331
    return v1

    .line 335
    :cond_8
    invoke-direct {p0, p1}, Lcom/mediatek/aee/ExceptionLogImpl;->isSkipReportFromNullFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 336
    return v1

    .line 341
    :cond_f
    invoke-direct {p0, p1}, Lcom/mediatek/aee/ExceptionLogImpl;->isSkipFalseAlarmCases(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 342
    return v1

    .line 346
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static native report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method private static native switchFtraceImpl(I)V
.end method

.method private static native systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public SFMatterJava(JJ)J
    .registers 7
    .param p1, "setorget"    # J
    .param p3, "lParam"    # J

    .line 298
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/aee/ExceptionLogImpl;->SFMatter(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public WDTMatterJava(J)V
    .registers 3
    .param p1, "lParam"    # J

    .line 295
    invoke-static {p1, p2}, Lcom/mediatek/aee/ExceptionLogImpl;->WDTMatter(J)V

    .line 296
    return-void
.end method

.method public getNativeExceptionPidList([I)Z
    .registers 3
    .param p1, "pidList"    # [I

    .line 119
    invoke-static {p1}, Lcom/mediatek/aee/ExceptionLogImpl;->getNativeExceptionPidListImpl([I)Z

    move-result v0

    return v0
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "pid"    # Ljava/lang/String;

    .line 70
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "AES"

    const-string v1, "Exception Log handling..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "data_app"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    const-string v1, "com.android.development"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 72
    const-string v1, "persist.vendor.mtk.aee.filter"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2a

    .line 73
    const-string v1, "Skipped - do not care third party apk"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 77
    :cond_2a
    const-string v0, ""

    .line 78
    .local v0, "proc":Ljava/lang/String;
    const-string v1, ""

    .line 79
    .local v1, "pkgs":Ljava/lang/String;
    const-string v9, ""

    .line 80
    .local v9, "traceback":Ljava/lang/String;
    const-string v10, ""

    .line 81
    .local v10, "cause":Ljava/lang/String;
    const-string v3, ""

    .line 82
    .local v3, "detail":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 84
    .local v4, "lpid":J
    const-string v6, "\n+"

    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "splitInfo":[Ljava/lang/String;
    const-string v12, "^Process:\\s+(.*)"

    .line 86
    .local v12, "PROC_REGEX":Ljava/lang/String;
    const-string v13, "^Package:\\s+(.*)"

    .line 87
    .local v13, "PKG_REGEX":Ljava/lang/String;
    const-string v6, "^Process:\\s+(.*)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 88
    .local v14, "procMatcher":Ljava/util/regex/Pattern;
    const-string v6, "^Package:\\s+(.*)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 91
    .local v15, "pkgMatcher":Ljava/util/regex/Pattern;
    array-length v6, v11

    const/16 v16, 0x0

    move/from16 v21, v16

    move-object/from16 v16, v0

    move/from16 v0, v21

    .end local v0    # "proc":Ljava/lang/String;
    .local v16, "proc":Ljava/lang/String;
    :goto_55
    if-ge v0, v6, :cond_a2

    aget-object v2, v11, v0

    .line 92
    .local v2, "s":Ljava/lang/String;
    move-object/from16 v18, v3

    .end local v3    # "detail":Ljava/lang/String;
    .local v18, "detail":Ljava/lang/String;
    invoke-virtual {v14, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 93
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_6f

    move-wide/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "lpid":J
    .local v19, "lpid":J
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    .end local v16    # "proc":Ljava/lang/String;
    .local v5, "proc":Ljava/lang/String;
    goto :goto_71

    .end local v5    # "proc":Ljava/lang/String;
    .end local v19    # "lpid":J
    .restart local v4    # "lpid":J
    .restart local v16    # "proc":Ljava/lang/String;
    :cond_6f
    move-wide/from16 v19, v4

    .line 94
    .end local v4    # "lpid":J
    .restart local v19    # "lpid":J
    :goto_71
    invoke-virtual {v15, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_97

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v1

    const/4 v5, 0x1

    .end local v1    # "pkgs":Ljava/lang/String;
    .local v17, "pkgs":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v17    # "pkgs":Ljava/lang/String;
    .restart local v1    # "pkgs":Ljava/lang/String;
    goto :goto_9a

    :cond_97
    move-object/from16 v17, v1

    const/4 v5, 0x1

    .line 91
    .end local v2    # "s":Ljava/lang/String;
    :goto_9a
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    goto :goto_55

    .line 98
    .end local v18    # "detail":Ljava/lang/String;
    .end local v19    # "lpid":J
    .local v3, "detail":Ljava/lang/String;
    .restart local v4    # "lpid":J
    :cond_a2
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    .end local v1    # "pkgs":Ljava/lang/String;
    .end local v3    # "detail":Ljava/lang/String;
    .end local v4    # "lpid":J
    .restart local v17    # "pkgs":Ljava/lang/String;
    .restart local v18    # "detail":Ljava/lang/String;
    .restart local v19    # "lpid":J
    const-string v18, "Backtrace of all threads:\n\n"

    .line 99
    const-string v0, ""

    move-object/from16 v5, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 100
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v19, v0

    .line 104
    :cond_ba
    const-string v0, "system_server_wtf"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    move-object/from16 v6, p0

    invoke-direct {v6, v8}, Lcom/mediatek/aee/ExceptionLogImpl;->isSkipSystemWtfReport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 105
    return-void

    .line 104
    :cond_cb
    move-object/from16 v6, p0

    .line 109
    :cond_cd
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move-wide/from16 v5, v19

    invoke-static/range {v0 .. v6}, Lcom/mediatek/aee/ExceptionLogImpl;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 110
    return-void
.end method

.method public isJavaProcess(I)Z
    .registers 8
    .param p1, "pid"    # I

    .line 134
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 135
    return v0

    .line 138
    :cond_4
    sget-object v1, Lcom/mediatek/aee/ExceptionLogImpl;->mZygotePids:[I

    if-nez v1, :cond_16

    .line 139
    const-string v1, "zygote64"

    const-string v2, "zygote"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "commands":[Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    sput-object v2, Lcom/mediatek/aee/ExceptionLogImpl;->mZygotePids:[I

    .line 146
    .end local v1    # "commands":[Ljava/lang/String;
    :cond_16
    sget-object v1, Lcom/mediatek/aee/ExceptionLogImpl;->mZygotePids:[I

    if-eqz v1, :cond_2d

    .line 147
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v1

    .line 148
    .local v1, "parentPid":I
    sget-object v2, Lcom/mediatek/aee/ExceptionLogImpl;->mZygotePids:[I

    array-length v3, v2

    move v4, v0

    :goto_22
    if-ge v4, v3, :cond_2d

    aget v5, v2, v4

    .line 149
    .local v5, "zygotePid":I
    if-ne v1, v5, :cond_2a

    .line 150
    const/4 v0, 0x1

    return v0

    .line 148
    .end local v5    # "zygotePid":I
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 154
    .end local v1    # "parentPid":I
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a Java process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AES"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0
.end method

.method public readTransactionInfoFromFile(ILjava/util/ArrayList;)V
    .registers 19
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p2, "binderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "IOException when close buffer reader:"

    const-string v2, "AES"

    const-string v3, "outgoing transaction.+from.+to (\\d+):.+code.+"

    .line 160
    .local v3, "patternStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 161
    .local v4, "pattern":Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 163
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 165
    .local v6, "filepath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 166
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_50

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filepath isn\'t exist: /d/binder/proc/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_37} :catch_122
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_37} :catch_111
    .catchall {:try_start_b .. :try_end_37} :catchall_10a

    move/from16 v8, p1

    :try_start_39
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_43} :catch_108
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_43} :catch_106
    .catchall {:try_start_39 .. :try_end_43} :catchall_104

    .line 216
    if-eqz v5, :cond_4f

    .line 218
    :try_start_45
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 221
    goto :goto_4f

    .line 219
    :catch_49
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 220
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_4f
    :goto_4f
    return-void

    .line 171
    :cond_50
    move/from16 v8, p1

    :try_start_52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 172
    .local v0, "rcvPidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v9

    .line 175
    const/4 v9, 0x0

    .line 176
    .local v9, "contextBinder":Z
    :cond_63
    :goto_63
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .local v11, "line":Ljava/lang/String;
    if-eqz v10, :cond_c1

    .line 177
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .line 178
    if-nez v9, :cond_7b

    .line 179
    const-string v10, "context binder"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 180
    const/4 v9, 0x1

    goto :goto_63

    .line 183
    :cond_7b
    const-string v10, "outgoing transaction"

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 184
    invoke-virtual {v4, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 185
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_63

    .line 186
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 188
    .local v13, "rcv_pid":Ljava/lang/Integer;
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v14

    .line 189
    .local v14, "index":I
    if-ltz v14, :cond_b1

    .line 190
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 191
    .local v12, "value":I
    add-int/lit8 v15, v12, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .end local v12    # "value":I
    goto :goto_b8

    .line 193
    :cond_b1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v13    # "rcv_pid":Ljava/lang/Integer;
    .end local v14    # "index":I
    :goto_b8
    goto :goto_63

    .line 198
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_b9
    const-string v10, "node"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 204
    :cond_c1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 205
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_c9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f6

    .line 206
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 207
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xa

    if-le v13, v14, :cond_f3

    .line 208
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;
    :try_end_e9
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_e9} :catch_108
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_e9} :catch_106
    .catchall {:try_start_52 .. :try_end_e9} :catchall_104

    move-object/from16 v14, p2

    :try_start_eb
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_eb .. :try_end_ee} :catch_f1
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef
    .catchall {:try_start_eb .. :try_end_ee} :catchall_134

    goto :goto_f5

    .line 213
    .end local v0    # "rcvPidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "contextBinder":Z
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_ef
    move-exception v0

    goto :goto_116

    .line 211
    :catch_f1
    move-exception v0

    goto :goto_127

    .line 207
    .restart local v0    # "rcvPidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v6    # "filepath":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "contextBinder":Z
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_f3
    move-object/from16 v14, p2

    .line 210
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_f5
    goto :goto_c9

    .line 205
    :cond_f6
    move-object/from16 v14, p2

    .line 216
    .end local v0    # "rcvPidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "contextBinder":Z
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v11    # "line":Ljava/lang/String;
    nop

    .line 218
    :try_start_f9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    .line 221
    :goto_fc
    goto :goto_133

    .line 219
    :catch_fd
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 220
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_fc

    .line 216
    :catchall_104
    move-exception v0

    goto :goto_10d

    .line 213
    :catch_106
    move-exception v0

    goto :goto_114

    .line 211
    :catch_108
    move-exception v0

    goto :goto_125

    .line 216
    :catchall_10a
    move-exception v0

    move/from16 v8, p1

    :goto_10d
    move-object/from16 v14, p2

    :goto_10f
    move-object v6, v0

    goto :goto_136

    .line 213
    :catch_111
    move-exception v0

    move/from16 v8, p1

    :goto_114
    move-object/from16 v14, p2

    .line 214
    .local v0, "e":Ljava/io/IOException;
    :goto_116
    :try_start_116
    const-string v6, "IOException when gettting Binder. "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11b
    .catchall {:try_start_116 .. :try_end_11b} :catchall_134

    .line 216
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_133

    .line 218
    :try_start_11e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_fd

    goto :goto_fc

    .line 211
    :catch_122
    move-exception v0

    move/from16 v8, p1

    :goto_125
    move-object/from16 v14, p2

    .line 212
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_127
    :try_start_127
    const-string v6, "FileNotFoundException"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_134

    .line 216
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_133

    .line 218
    :try_start_12f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_fd

    goto :goto_fc

    .line 224
    :cond_133
    :goto_133
    return-void

    .line 216
    :catchall_134
    move-exception v0

    goto :goto_10f

    :goto_136
    if-eqz v5, :cond_142

    .line 218
    :try_start_138
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13c

    .line 221
    goto :goto_142

    .line 219
    :catch_13c
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 220
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_142
    :goto_142
    throw v6
.end method

.method public switchFtrace(I)V
    .registers 3
    .param p1, "config"    # I

    .line 124
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 125
    invoke-static {}, Lcom/mediatek/dx/DexOptExtFactory;->getInstance()Lcom/mediatek/dx/DexOptExtFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dx/DexOptExtFactory;->makeDexOpExt()Lcom/mediatek/dx/DexOptExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dx/DexOptExt;->notifySpeedUp()V

    .line 128
    :cond_e
    invoke-static {p1}, Lcom/mediatek/aee/ExceptionLogImpl;->switchFtraceImpl(I)V

    .line 129
    return-void
.end method

.method public systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "Type"    # B
    .param p2, "Module"    # Ljava/lang/String;
    .param p3, "Msg"    # Ljava/lang/String;
    .param p4, "Path"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/mediatek/aee/ExceptionLogImpl;->getThreadStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "Backtrace":Ljava/lang/String;
    invoke-static {p1, p2, v0, p3, p4}, Lcom/mediatek/aee/ExceptionLogImpl;->systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method
