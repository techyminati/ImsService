.class public final Lcom/mediatek/anr/AnrAppManagerImpl;
.super Lcom/mediatek/anr/AnrAppManager;
.source "AnrAppManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnrAppManager"

.field private static lock:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/anr/AnrAppManagerImpl;

.field protected static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/anr/MessageLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingletonLogger:Lcom/mediatek/anr/MessageLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sMap:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sInstance:Lcom/mediatek/anr/AnrAppManagerImpl;

    .line 57
    sput-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sSingletonLogger:Lcom/mediatek/anr/MessageLogger;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/mediatek/anr/AnrAppManager;-><init>()V

    return-void
.end method

.method public static dumpAllMessageHistory()V
    .registers 8

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "logger":Lcom/mediatek/anr/MessageLogger;
    const/4 v1, 0x0

    .line 118
    .local v1, "tmp_str":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/anr/AnrAppManagerImpl;->sSingletonLogger:Lcom/mediatek/anr/MessageLogger;

    const-string v3, "informMessageDump exception "

    const-string v4, "AnrAppManager"

    if-eqz v2, :cond_31

    .line 119
    const-string v2, "!!! It is under multiple instance mode, but you are in singleton usage style. !!!\n"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_f
    invoke-static {}, Lcom/mediatek/anr/AnrManagerNative;->getDefault()Lcom/mediatek/anr/IAnrManager;

    move-result-object v2

    const-string v5, "!!! It is under multiple instance mode,but you are in singleton usage style. !!!\n"

    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 122
    invoke-interface {v2, v5, v6}, Lcom/mediatek/anr/IAnrManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 128
    goto :goto_30

    .line 126
    :catch_1d
    move-exception v2

    .line 127
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_30
    return-void

    .line 131
    :cond_31
    sget-object v2, Lcom/mediatek/anr/AnrAppManagerImpl;->sMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    if-nez v2, :cond_61

    .line 132
    new-array v2, v5, [Ljava/lang/Object;

    const-string v5, "!!! DumpAll, sMap is null\n"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_41
    invoke-static {}, Lcom/mediatek/anr/AnrManagerNative;->getDefault()Lcom/mediatek/anr/IAnrManager;

    move-result-object v2

    .line 135
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 134
    invoke-interface {v2, v5, v6}, Lcom/mediatek/anr/IAnrManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4c} :catch_4d

    .line 138
    goto :goto_60

    .line 136
    :catch_4d
    move-exception v2

    .line 137
    .restart local v2    # "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_60
    return-void

    .line 141
    :cond_61
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 142
    .local v2, "name_iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 144
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const-string v7, ">>> DumpByName, Thread name: %s dump is starting <<<\n"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v6, Lcom/mediatek/anr/AnrAppManagerImpl;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/anr/MessageLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mediatek/anr/MessageLogger;->setInitStr(Ljava/lang/String;)V

    .line 148
    sget-object v3, Lcom/mediatek/anr/AnrAppManagerImpl;->sMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/anr/MessageLogger;

    invoke-virtual {v3}, Lcom/mediatek/anr/MessageLogger;->dumpMessageHistory()V

    goto :goto_69

    .line 150
    :cond_a3
    return-void
.end method

.method public static dumpMessageHistory()V
    .registers 4

    .line 102
    sget-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sSingletonLogger:Lcom/mediatek/anr/MessageLogger;

    if-nez v0, :cond_2d

    .line 103
    const-string v0, "AnrAppManager"

    const-string v1, "!!! It is not under singleton mode, U can\'t use it. !!!\n"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_b
    invoke-static {}, Lcom/mediatek/anr/AnrManagerNative;->getDefault()Lcom/mediatek/anr/IAnrManager;

    move-result-object v2

    .line 106
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 105
    invoke-interface {v2, v1, v3}, Lcom/mediatek/anr/IAnrManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_2c

    .line 107
    :catch_17
    move-exception v1

    .line 108
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2c
    goto :goto_30

    .line 111
    :cond_2d
    invoke-virtual {v0}, Lcom/mediatek/anr/MessageLogger;->dumpMessageHistory()V

    .line 113
    :goto_30
    return-void
.end method

.method public static getInstance()Lcom/mediatek/anr/AnrAppManagerImpl;
    .registers 2

    .line 61
    sget-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sInstance:Lcom/mediatek/anr/AnrAppManagerImpl;

    if-nez v0, :cond_17

    .line 62
    sget-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_7
    sget-object v1, Lcom/mediatek/anr/AnrAppManagerImpl;->sInstance:Lcom/mediatek/anr/AnrAppManagerImpl;

    if-nez v1, :cond_12

    .line 64
    new-instance v1, Lcom/mediatek/anr/AnrAppManagerImpl;

    invoke-direct {v1}, Lcom/mediatek/anr/AnrAppManagerImpl;-><init>()V

    sput-object v1, Lcom/mediatek/anr/AnrAppManagerImpl;->sInstance:Lcom/mediatek/anr/AnrAppManagerImpl;

    .line 66
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 68
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sInstance:Lcom/mediatek/anr/AnrAppManagerImpl;

    return-object v0
.end method

.method public static newMessageLogger(Z)Landroid/util/Printer;
    .registers 2
    .param p0, "mValue"    # Z

    .line 88
    new-instance v0, Lcom/mediatek/anr/MessageLogger;

    invoke-direct {v0, p0}, Lcom/mediatek/anr/MessageLogger;-><init>(Z)V

    sput-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sSingletonLogger:Lcom/mediatek/anr/MessageLogger;

    .line 89
    return-object v0
.end method

.method public static newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;
    .registers 4
    .param p0, "mValue"    # Z
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    sget-object v0, Lcom/mediatek/anr/AnrAppManagerImpl;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_d
    new-instance v0, Lcom/mediatek/anr/MessageLogger;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/anr/MessageLogger;-><init>(ZLjava/lang/String;)V

    .line 97
    .local v0, "logger":Lcom/mediatek/anr/MessageLogger;
    sget-object v1, Lcom/mediatek/anr/AnrAppManagerImpl;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v0
.end method


# virtual methods
.method public dumpMessage(Z)V
    .registers 2
    .param p1, "dumpAll"    # Z

    .line 80
    if-eqz p1, :cond_6

    .line 81
    invoke-static {}, Lcom/mediatek/anr/AnrAppManagerImpl;->dumpAllMessageHistory()V

    goto :goto_9

    .line 83
    :cond_6
    invoke-static {}, Lcom/mediatek/anr/AnrAppManagerImpl;->dumpMessageHistory()V

    .line 85
    :goto_9
    return-void
.end method

.method public setMessageLogger(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 73
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 74
    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/anr/AnrAppManagerImpl;->newMessageLogger(Z)Landroid/util/Printer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 76
    :cond_1c
    return-void
.end method
