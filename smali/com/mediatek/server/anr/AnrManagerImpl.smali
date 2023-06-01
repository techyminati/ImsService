.class public Lcom/mediatek/server/anr/AnrManagerImpl;
.super Lcom/mediatek/server/anr/AnrManager;
.source "AnrManagerImpl.java"


# instance fields
.field private mService:Lcom/mediatek/server/anr/AnrManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/mediatek/server/anr/AnrManager;-><init>()V

    .line 55
    invoke-static {}, Lcom/mediatek/server/anr/AnrManagerService;->getInstance()Lcom/mediatek/server/anr/AnrManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    .line 56
    return-void
.end method


# virtual methods
.method public AddAnrManagerService()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    const-string v1, "anrmanager"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 61
    return-void
.end method

.method public delayMessage(Landroid/os/Handler;Landroid/os/Message;II)Z
    .registers 8
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "msgId"    # I
    .param p4, "time"    # I

    .line 75
    invoke-virtual {p0}, Lcom/mediatek/server/anr/AnrManagerImpl;->isAnrDeferrable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 76
    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "nmsg":Landroid/os/Message;
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    int-to-long v1, p4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 79
    const/4 v1, 0x1

    return v1

    .line 81
    .end local v0    # "nmsg":Landroid/os/Message;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isAnrDeferrable()Z
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0}, Lcom/mediatek/server/anr/AnrManagerService;->isAnrDeferrable()Z

    move-result v0

    return v0
.end method

.method public removeBroadcastMonitorMessage()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0}, Lcom/mediatek/server/anr/AnrManagerService;->removeBroadcastMonitorMessage()V

    .line 98
    return-void
.end method

.method public removeServiceMonitorMessage()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0}, Lcom/mediatek/server/anr/AnrManagerService;->removeServiceMonitorMessage()V

    .line 108
    return-void
.end method

.method public sendBroadcastMonitorMessage(JJ)V
    .registers 6
    .param p1, "timeoutTime"    # J
    .param p3, "timeoutPeriod"    # J

    .line 92
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/server/anr/AnrManagerService;->sendBroadcastMonitorMessage(JJ)V

    .line 93
    return-void
.end method

.method public sendServiceMonitorMessage()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0}, Lcom/mediatek/server/anr/AnrManagerService;->sendServiceMonitorMessage()V

    .line 103
    return-void
.end method

.method public startAnrDump(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessErrorStateRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;ZJZLjava/util/UUID;)Z
    .registers 30
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processESR"    # Lcom/android/server/am/ProcessErrorStateRecord;
    .param p3, "activityShortComponentName"    # Ljava/lang/String;
    .param p4, "apInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "parentShortComponentName"    # Ljava/lang/String;
    .param p6, "parentProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p7, "aboveSystem"    # Z
    .param p8, "annotation"    # Ljava/lang/String;
    .param p9, "showBackground"    # Z
    .param p10, "anrTime"    # J
    .param p12, "onlyDumpSelf"    # Z
    .param p13, "uuid"    # Ljava/util/UUID;

    .line 116
    move-object/from16 v1, p0

    :try_start_2
    iget-object v2, v1, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-virtual/range {v2 .. v15}, Lcom/mediatek/server/anr/AnrManagerService;->startAnrDump(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessErrorStateRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;ZJZLjava/util/UUID;)Z

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return v0

    .line 119
    :catch_21
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const/4 v2, 0x0

    return v2
.end method

.method public startAnrManagerService(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 65
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/anr/AnrManagerService;->startAnrManagerService(I)V

    .line 66
    return-void
.end method

.method public writeEvent(I)V
    .registers 3
    .param p1, "event"    # I

    .line 86
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerImpl;->mService:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/anr/AnrManagerService;->writeEvent(I)V

    .line 87
    return-void
.end method
