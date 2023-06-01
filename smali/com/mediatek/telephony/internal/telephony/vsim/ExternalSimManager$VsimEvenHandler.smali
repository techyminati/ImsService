.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimEvenHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;
    }
.end annotation


# instance fields
.field private mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

.field private mHasNotifyEnableEvnetToModem:Z

.field private mIsAkaOccupyRf:Z

.field private mIsMdWaitingResponse:[Z

.field private mIsSwitchRfSuccessful:Z

.field private mIsWaitingAuthRsp:[Z

.field private mLastDisableEventTime:J

.field private mNoResponseTimeOut:[I

.field private mNoResponseTimer:[Ljava/util/Timer;

.field private mTryResetModemRunnable:Ljava/lang/Runnable;

.field private mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

.field private mVsimRilIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

.field private mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

.field final synthetic this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .registers 8
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 1198
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1186
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mHasNotifyEnableEvnetToModem:Z

    .line 1188
    iput-boolean v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 1189
    iput-boolean v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    .line 1190
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    .line 1191
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1192
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    .line 1193
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    .line 1194
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    .line 1195
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    .line 1196
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    .line 1305
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$1;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$1;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V

    iput-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    .line 1199
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v2

    .line 1200
    .local v2, "simCount":I
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    .line 1201
    new-array v3, v2, [Ljava/util/Timer;

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    .line 1202
    new-array v3, v2, [Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1203
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    .line 1204
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    .line 1205
    new-array v3, v2, [Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    .line 1207
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_49
    if-ge v3, v2, :cond_68

    .line 1208
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aput-boolean v1, v4, v3

    .line 1209
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aput-object v0, v4, v3

    .line 1210
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aput-object v0, v4, v3

    .line 1211
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aput-boolean v1, v4, v3

    .line 1212
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    const/16 v5, 0x32c8

    aput v5, v4, v3

    .line 1213
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    aput-object v0, v4, v3

    .line 1207
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 1215
    .end local v3    # "i":I
    :cond_68
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1184
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfRadioUnavailable(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    .param p2, "x2"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1184
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1184
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 1184
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 1184
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1184
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # I

    .line 1184
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # I

    .line 1184
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->switchModemCapability(I)Z

    move-result v0

    return v0
.end method

.method private changeRadioSetting(Z)V
    .registers 13
    .param p1, "turnOn"    # Z

    .line 1765
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 1766
    .local v0, "simCount":I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-eqz v1, :cond_a2

    const/4 v1, 0x2

    if-le v0, v1, :cond_a2

    .line 1767
    const-string v1, "vendor.gsm.prefered.rsim.slot"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1768
    .local v1, "rsim":I
    const-string v3, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1769
    .local v3, "akaSim":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v0, :cond_a2

    .line 1770
    if-eq v2, v1, :cond_9e

    if-eq v4, v1, :cond_9e

    if-eq v2, v3, :cond_9e

    if-eq v4, v3, :cond_9e

    .line 1771
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1773
    .local v5, "subId":I
    nop

    .line 1774
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1773
    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1777
    .local v6, "telephony":Lcom/android/internal/telephony/ITelephony;
    const-string v7, "ExternalSimMgr"

    if-eqz v6, :cond_94

    .line 1778
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_6d

    :try_start_40
    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 1779
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1778
    invoke-interface {v6, v5, v10}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 1780
    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z
    invoke-static {v10, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Z)Z

    .line 1781
    invoke-interface {v6, v5, v8}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z

    .line 1782
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeRadioSetting trun off radio subId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 1783
    :cond_6d
    if-ne v9, p1, :cond_99

    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z
    invoke-static {v10}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Z

    move-result v10

    if-ne v10, v9, :cond_99

    .line 1784
    iget-object v10, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z
    invoke-static {v10, v8}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Z)Z

    .line 1785
    invoke-interface {v6, v5, v9}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z

    .line 1786
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeRadioSetting trun on radio subId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 1789
    :cond_94
    const-string v8, "telephony is null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_99} :catch_9a

    .line 1793
    :cond_99
    :goto_99
    goto :goto_9e

    .line 1791
    :catch_9a
    move-exception v7

    .line 1792
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1769
    .end local v5    # "subId":I
    .end local v6    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_9e
    :goto_9e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1f

    .line 1797
    .end local v1    # "rsim":I
    .end local v3    # "akaSim":I
    .end local v4    # "i":I
    :cond_a2
    return-void
.end method

.method private dispatchCallback(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 13
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2354
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getLock(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2357
    :try_start_9
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 2358
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->setWaiting(Z)V

    .line 2362
    :cond_1f
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    .line 2364
    .local v1, "msgId":I
    const-string v3, "ExternalSimMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VsimEvenHandler handleMessage["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: msgId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    const/16 v3, 0xca

    const/16 v4, 0x3ed

    const/16 v5, 0xc9

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_2e8

    .line 2592
    const-string v2, "ExternalSimMgr"

    goto/16 :goto_2b6

    .line 2585
    :sswitch_58
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aget-object v2, v2, v3

    move-object v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 2586
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v5

    .line 2587
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v6

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v7

    .line 2588
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v8

    const/4 v9, 0x0

    .line 2585
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    .line 2589
    goto/16 :goto_2bb

    .line 2580
    :sswitch_81
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2581
    goto/16 :goto_2bb

    .line 2515
    :sswitch_8c
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    invoke-direct {p0, v6, p1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 2516
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aput-boolean v6, v2, v3

    .line 2517
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 2521
    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mMessageId:I
    invoke-static {p1, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$2302(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I

    .line 2525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2526
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2525
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2530
    .local v2, "inserted":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    if-ne v3, v6, :cond_cb

    .line 2531
    if-eqz v2, :cond_2bb

    .line 2532
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2bb

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2bb

    .line 2533
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_2bb

    .line 2536
    :cond_cb
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2539
    goto/16 :goto_2bb

    .line 2562
    .end local v2    # "inserted":Ljava/lang/String;
    :sswitch_d0
    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2565
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v7

    shl-int v7, v6, v7

    invoke-direct {v3, v2, v4, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    move-object v2, v3

    .line 2566
    .local v2, "abortEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2570
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2571
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v3

    shl-int v3, v6, v3

    const-string v4, "vendor.gsm.external.sim.inserted"

    const-string v5, "0"

    .line 2570
    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2574
    .local v3, "inserted":Ljava/lang/String;
    if-eqz v3, :cond_2bb

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2bb

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2bb

    .line 2575
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v4, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_2bb

    .line 2551
    .end local v2    # "abortEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .end local v3    # "inserted":Ljava/lang/String;
    :sswitch_108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2552
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2551
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2555
    .local v2, "inserted":Ljava/lang/String;
    if-eqz v2, :cond_2bb

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2bb

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2bb

    .line 2556
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_2bb

    .line 2494
    .end local v2    # "inserted":Ljava/lang/String;
    :sswitch_12e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2495
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2494
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2498
    .restart local v2    # "inserted":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v3, :cond_2bb

    if-eqz v2, :cond_2bb

    .line 2499
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2bb

    const-string v3, "0"

    .line 2500
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2bb

    .line 2501
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_2bb

    .line 2403
    .end local v2    # "inserted":Ljava/lang/String;
    :sswitch_158
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    invoke-direct {p0, v6, p1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 2407
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2408
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2407
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2411
    .restart local v2    # "inserted":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v3, :cond_189

    if-eqz v2, :cond_189

    .line 2412
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_189

    const-string v3, "0"

    .line 2413
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_189

    .line 2414
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_2bb

    .line 2416
    :cond_189
    const-string v3, "ExternalSimMgr"

    const-string v4, "ignore UICC_APDU_REQUEST since vsim plug out."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2419
    goto/16 :goto_2bb

    .line 2460
    .end local v2    # "inserted":Ljava/lang/String;
    :sswitch_195
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    invoke-direct {p0, v6, p1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 2463
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2464
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2463
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2467
    .restart local v2    # "inserted":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v3, :cond_2bb

    if-eqz v2, :cond_2bb

    .line 2468
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2bb

    const-string v3, "0"

    .line 2469
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2bb

    .line 2470
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_2bb

    .line 2389
    .end local v2    # "inserted":Ljava/lang/String;
    :sswitch_1c6
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v4

    .line 2390
    .local v4, "type":I
    if-eq v4, v5, :cond_1dd

    if-ne v4, v3, :cond_1cf

    goto :goto_1dd

    .line 2396
    :cond_1cf
    const/4 v2, 0x6

    if-ne v4, v2, :cond_2bb

    .line 2398
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2bb

    .line 2393
    :cond_1dd
    :goto_1dd
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v3

    if-gez v3, :cond_1e4

    goto :goto_1e5

    :cond_1e4
    move v2, v6

    :goto_1e5
    iput-boolean v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 2395
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2bb

    .line 2376
    .end local v4    # "type":I
    :sswitch_1f2
    goto/16 :goto_2bb

    .line 2510
    :sswitch_1f4
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->handleServiceStateRequest(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2511
    goto/16 :goto_2bb

    .line 2507
    :sswitch_1f9
    goto/16 :goto_2bb

    .line 2429
    :sswitch_1fb
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    aget-boolean v4, v4, v5

    if-ne v4, v6, :cond_210

    .line 2430
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    aput-boolean v2, v4, v5

    .line 2431
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 2435
    :cond_210
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag(I)Z

    move-result v3

    if-eqz v3, :cond_2bb

    .line 2438
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 2442
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2443
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "vendor.gsm.external.sim.inserted"

    const-string v4, "0"

    .line 2442
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2446
    .restart local v2    # "inserted":Ljava/lang/String;
    if-eqz v2, :cond_268

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_268

    const-string v3, "0"

    .line 2447
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_268

    .line 2449
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    aget-object v3, v3, v4

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 2450
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v5

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v6

    .line 2451
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v7

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v8

    .line 2452
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v9

    const/4 v10, 0x0

    .line 2449
    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    goto :goto_26f

    .line 2454
    :cond_268
    const-string v3, "ExternalSimMgr"

    const-string v4, "ignore UICC_APDU_RESPONSE since vsim plug out."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    .end local v2    # "inserted":Ljava/lang/String;
    :goto_26f
    goto :goto_2bb

    .line 2475
    :sswitch_270
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag(I)Z

    move-result v3

    if-eqz v3, :cond_2bb

    .line 2482
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 2485
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aget-object v2, v2, v3

    move-object v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 2486
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v5

    .line 2487
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v6

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v7

    .line 2488
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v8

    const/4 v9, 0x0

    .line 2485
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    goto :goto_2bb

    .line 2383
    :sswitch_2a9
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->handleEventRequest(ILcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2384
    goto :goto_2bb

    .line 2379
    :sswitch_2b1
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->handleGetPlatformCapability(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 2380
    goto :goto_2bb

    .line 2371
    :sswitch_2b5
    goto :goto_2bb

    .line 2592
    :goto_2b6
    const-string v3, "VsimEvenHandler handleMessage: default"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :cond_2bb
    :goto_2bb
    const-string v2, "ExternalSimMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VsimEvenHandler handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: msgId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    nop

    .end local v1    # "msgId":I
    monitor-exit v0

    .line 2598
    return-void

    .line 2597
    :catchall_2e5
    move-exception v1

    monitor-exit v0
    :try_end_2e7
    .catchall {:try_start_9 .. :try_end_2e7} :catchall_2e5

    throw v1

    :sswitch_data_2e8
    .sparse-switch
        0x1 -> :sswitch_2b5
        0x2 -> :sswitch_2b1
        0x3 -> :sswitch_2a9
        0x4 -> :sswitch_270
        0x5 -> :sswitch_1fb
        0x6 -> :sswitch_1f9
        0x7 -> :sswitch_1f4
        0x8 -> :sswitch_1f2
        0x3eb -> :sswitch_1c6
        0x3ec -> :sswitch_195
        0x3ed -> :sswitch_158
        0x3ee -> :sswitch_12e
        0x3f1 -> :sswitch_108
        0x3f2 -> :sswitch_d0
        0x7d1 -> :sswitch_8c
        0x7d2 -> :sswitch_81
        0x1389 -> :sswitch_58
    .end sparse-switch
.end method

.method private getLock(I)Ljava/lang/Object;
    .registers 3
    .param p1, "msgId"    # I

    .line 2339
    sparse-switch p1, :sswitch_data_12

    .line 2348
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2346
    :sswitch_a
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x3 -> :sswitch_a
        0x3eb -> :sswitch_a
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_a
        0x7d1 -> :sswitch_a
        0x7d2 -> :sswitch_a
    .end sparse-switch
.end method

.method private getMdWaitingFlag(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMdWaitingFlag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private getRspMessageId(I)I
    .registers 4
    .param p1, "requestMsgId"    # I

    .line 1257
    sparse-switch p1, :sswitch_data_36

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRspMessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "no support."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/4 v0, -0x1

    return v0

    .line 1270
    :sswitch_20
    const/4 v0, 0x6

    return v0

    .line 1268
    :sswitch_22
    const/4 v0, 0x5

    return v0

    .line 1265
    :sswitch_24
    const/4 v0, 0x4

    return v0

    .line 1274
    :sswitch_26
    const/16 v0, 0x3f0

    return v0

    .line 1272
    :sswitch_29
    const/16 v0, 0x3ef

    return v0

    .line 1261
    :sswitch_2c
    const/16 v0, 0x3eb

    return v0

    .line 1263
    :sswitch_2f
    const/16 v0, 0x3ea

    return v0

    .line 1259
    :sswitch_32
    const/16 v0, 0x3e9

    return v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_2c
        0x7 -> :sswitch_29
        0x8 -> :sswitch_26
        0x3ec -> :sswitch_24
        0x3ed -> :sswitch_22
        0x3ee -> :sswitch_20
        0x7d1 -> :sswitch_22
    .end sparse-switch
.end method

.method private getVsimSlotId(I)I
    .registers 7
    .param p1, "simType"    # I

    .line 1475
    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_64

    .line 1487
    const/4 v1, 0x0

    .local v1, "i":I
    goto :goto_20

    .line 1477
    .end local v1    # "i":I
    :pswitch_6
    const-string v1, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1478
    .local v1, "akaSim":I
    if-ne v1, v0, :cond_12

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1900()I

    move-result v1

    .line 1479
    :cond_12
    return v1

    .line 1482
    .end local v1    # "akaSim":I
    :pswitch_13
    const-string v1, "vendor.gsm.prefered.rsim.slot"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1483
    .local v1, "rSim":I
    if-ne v1, v0, :cond_1f

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v1

    .line 1484
    :cond_1f
    return v1

    .line 1487
    .local v1, "i":I
    :goto_20
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 1488
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "vendor.gsm.external.sim.enabled"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    .local v2, "enable":Ljava/lang/String;
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5f

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 1491
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "vendor.gsm.external.sim.inserted"

    invoke-static {v1, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1493
    .local v3, "inserted":Ljava/lang/String;
    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5f

    .line 1494
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1495
    return v1

    .line 1487
    .end local v2    # "enable":Ljava/lang/String;
    .end local v3    # "inserted":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1502
    .end local v1    # "i":I
    :cond_62
    return v0

    nop

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_13
        :pswitch_6
    .end packed-switch
.end method

.method private handleEventRequest(ILcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 24
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1800
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ExternalSimMgr"

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v12

    .line 1805
    .local v12, "slotId":I
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v13

    .line 1807
    .local v13, "simType":I
    const/4 v0, 0x0

    .line 1809
    .local v0, "result":I
    const/4 v14, -0x1

    .line 1811
    .local v14, "newSlotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VsimEvenHandler First slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-string v15, "] end"

    if-nez v0, :cond_456

    if-ltz v12, :cond_456

    .line 1814
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v12, v1, :cond_453

    .line 1815
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->ignoreGetSimStatus()Z

    move-result v1

    if-nez v1, :cond_450

    .line 1816
    const-string v2, "Reset PREFERED_AKA_SIM_SLOT"

    const-string v3, "vendor.gsm.prefered.aka.sim.slot"

    const-string v4, "1"

    const-string v5, "vendor.gsm.disable.sim.dialog"

    const-string v1, "0"

    const/4 v6, 0x0

    sparse-switch v8, :sswitch_data_496

    .line 2112
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .local v19, "newSlotId":I
    const/4 v0, -0x1

    .line 2113
    const-string v1, "VsimEvenHandler invalid event id."

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    goto/16 :goto_460

    .line 2107
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_7b
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    return-void

    .line 1997
    :sswitch_9f
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1998
    goto/16 :goto_45e

    .line 2095
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_b2
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    goto/16 :goto_45e

    .line 2101
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_ba
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    goto/16 :goto_45e

    .line 2090
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_c2
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    mul-int/lit16 v2, v13, 0x3e8

    aput v2, v1, v12

    .line 2091
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2092
    goto/16 :goto_45e

    .line 2071
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_db
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    const/4 v1, 0x3

    if-ne v13, v1, :cond_ee

    .line 2072
    invoke-static {v3, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2073
    .local v1, "akaSim":I
    if-eq v1, v14, :cond_ea

    .line 2074
    invoke-direct {v7, v1, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendActiveAkaSimEvent(IZ)V

    .line 2078
    :cond_ea
    invoke-static {v11, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "akaSim":I
    goto :goto_111

    .line 2079
    :cond_ee
    const/4 v1, 0x2

    if-ne v13, v1, :cond_111

    .line 2080
    const-string v1, "vendor.gsm.prefered.rsim.slot"

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2081
    .local v6, "rSim":I
    if-eq v6, v14, :cond_10d

    .line 2082
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    move/from16 v17, v6

    .end local v6    # "rSim":I
    .local v17, "rSim":I
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    goto :goto_10f

    .line 2081
    .end local v17    # "rSim":I
    .restart local v6    # "rSim":I
    :cond_10d
    move/from16 v17, v6

    .line 2085
    .end local v6    # "rSim":I
    :goto_10f
    goto/16 :goto_45e

    .line 2079
    :cond_111
    :goto_111
    goto/16 :goto_45e

    .line 2001
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_113
    move/from16 v19, v14

    const/4 v14, -0x1

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    const/4 v1, 0x2

    if-ne v13, v1, :cond_1f9

    .line 2002
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v1

    .line 2004
    .end local v0    # "result":I
    .local v1, "result":I
    if-gez v1, :cond_124

    move v0, v1

    move/from16 v14, v19

    goto/16 :goto_460

    .line 2007
    :cond_124
    :try_start_124
    const-string v0, "VsimEvenHandler isCapabilitySwitching: false."

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 2009
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    invoke-direct {v7, v12, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendSetRsimMappingInfoSync(II)I

    move-result v0
    :try_end_134
    .catch Ljava/lang/InterruptedException; {:try_start_124 .. :try_end_134} :catch_1ea

    move v5, v0

    .line 2011
    .end local v1    # "result":I
    .local v5, "result":I
    :try_start_135
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 2012
    .local v0, "mainPhoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VsimEvenHandler sendSetRsimMappingInfoSync result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mainPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    if-ltz v5, :cond_1db

    if-ne v0, v12, :cond_15d

    move/from16 v18, v5

    goto/16 :goto_1dd

    .line 2016
    :cond_15d
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v4, 0x1

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v1, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I

    .line 2017
    invoke-direct {v7, v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->switchModemCapability(I)Z

    move-result v1

    if-nez v1, :cond_18b

    .line 2018
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v1, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I

    .line 2019
    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 2020
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3
    :try_end_175
    .catch Ljava/lang/InterruptedException; {:try_start_135 .. :try_end_175} :catch_1e3

    const/4 v6, 0x7

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move v14, v4

    move v4, v6

    move/from16 v18, v5

    .end local v5    # "result":I
    .local v18, "result":I
    move v5, v13

    move-object/from16 v6, v16

    :try_start_182
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 2023
    const/4 v1, -0x2

    .line 2026
    .end local v18    # "result":I
    .restart local v1    # "result":I
    move v0, v1

    move/from16 v14, v19

    goto/16 :goto_460

    .line 2029
    .end local v1    # "result":I
    .restart local v5    # "result":I
    :cond_18b
    move v14, v4

    move/from16 v18, v5

    .end local v5    # "result":I
    .restart local v18    # "result":I
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I

    move-result v1

    if-ne v1, v14, :cond_1a4

    .line 2030
    const-string v1, "VsimEvenHandler before mLock.wait"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 2034
    :cond_1a4
    const-string v1, "VsimEvenHandler after mLock.wait"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c9

    .line 2037
    const/4 v1, -0x1

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 2038
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v4, 0x7

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move v5, v13

    move v14, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V
    :try_end_1c7
    .catch Ljava/lang/InterruptedException; {:try_start_182 .. :try_end_1c7} :catch_1d6

    .line 2041
    const/4 v1, -0x2

    .end local v18    # "result":I
    .restart local v1    # "result":I
    goto :goto_1cc

    .line 2036
    .end local v1    # "result":I
    .restart local v18    # "result":I
    :cond_1c9
    move v14, v6

    move/from16 v1, v18

    .line 2045
    .end local v18    # "result":I
    .restart local v1    # "result":I
    :goto_1cc
    :try_start_1cc
    iget-object v2, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v2, v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I
    :try_end_1d1
    .catch Ljava/lang/InterruptedException; {:try_start_1cc .. :try_end_1d1} :catch_1ea

    .line 2048
    move v0, v1

    move/from16 v14, v19

    .end local v0    # "mainPhoneId":I
    goto/16 :goto_460

    .line 2046
    .end local v1    # "result":I
    .restart local v18    # "result":I
    :catch_1d6
    move-exception v0

    move-object v1, v0

    move/from16 v0, v18

    goto :goto_1f0

    .line 2014
    .end local v18    # "result":I
    .restart local v0    # "mainPhoneId":I
    .restart local v5    # "result":I
    :cond_1db
    move/from16 v18, v5

    .end local v5    # "result":I
    .restart local v18    # "result":I
    :goto_1dd
    move/from16 v0, v18

    move/from16 v14, v19

    goto/16 :goto_460

    .line 2046
    .end local v0    # "mainPhoneId":I
    .end local v18    # "result":I
    .restart local v5    # "result":I
    :catch_1e3
    move-exception v0

    move/from16 v18, v5

    move-object v1, v0

    move/from16 v0, v18

    .end local v5    # "result":I
    .restart local v18    # "result":I
    goto :goto_1f0

    .end local v18    # "result":I
    .restart local v1    # "result":I
    :catch_1ea
    move-exception v0

    move/from16 v20, v1

    move-object v1, v0

    move/from16 v0, v20

    .line 2047
    .local v0, "result":I
    .local v1, "e":Ljava/lang/InterruptedException;
    :goto_1f0
    const-string v2, "VsimEvenHandler InterruptedException."

    invoke-static {v11, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    .end local v1    # "e":Ljava/lang/InterruptedException;
    move/from16 v14, v19

    goto/16 :goto_460

    .line 2049
    :cond_1f9
    move v14, v6

    const/4 v1, 0x3

    if-ne v13, v1, :cond_223

    .line 2050
    if-ltz v12, :cond_20f

    .line 2051
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v12, v1, :cond_20f

    .line 2053
    const/4 v1, 0x1

    invoke-direct {v7, v12, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendActiveAkaSimEvent(IZ)V

    goto/16 :goto_45e

    .line 2056
    :cond_20f
    const/4 v1, -0x1

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2057
    .local v3, "akaSim":I
    if-eq v3, v1, :cond_21c

    .line 2058
    move v1, v3

    .line 2059
    .end local v19    # "newSlotId":I
    .local v1, "newSlotId":I
    invoke-direct {v7, v3, v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendActiveAkaSimEvent(IZ)V

    move v14, v1

    goto :goto_21e

    .line 2057
    .end local v1    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    :cond_21c
    move/from16 v14, v19

    .line 2062
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :goto_21e
    invoke-static {v11, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    .end local v3    # "akaSim":I
    goto/16 :goto_460

    .line 2065
    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    :cond_223
    const/4 v0, -0x1

    .line 2067
    move/from16 v14, v19

    goto/16 :goto_460

    .line 1993
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_228
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1994
    goto/16 :goto_45e

    .line 1922
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_23a
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v14

    .line 1924
    .end local v0    # "result":I
    .local v14, "result":I
    if-gez v14, :cond_246

    move/from16 v16, v14

    goto/16 :goto_2de

    .line 1932
    :cond_246
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v0

    if-nez v0, :cond_252

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v0

    if-eqz v0, :cond_296

    .line 1933
    :cond_252
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 1934
    .local v1, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1935
    .local v0, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v0

    .line 1938
    .end local v0    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .local v3, "timeOut":I
    :cond_25b
    const-wide/16 v5, 0xc8

    :try_start_25d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_260
    .catch Ljava/lang/InterruptedException; {:try_start_25d .. :try_end_260} :catch_263

    .line 1939
    add-int/lit16 v3, v3, 0xc8

    .line 1942
    goto :goto_269

    .line 1940
    :catch_263
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1941
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1943
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_269
    nop

    .line 1944
    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 1943
    invoke-static {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 1945
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v0, :cond_282

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v0, :cond_282

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v0, :cond_282

    const/16 v5, 0x4e20

    if-lt v3, v5, :cond_25b

    .line 1949
    :cond_282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VsimEvenHandler REQUEST_TYPE_PLUG_IN state: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    .end local v1    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v3    # "timeOut":I
    :cond_296
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1956
    .local v0, "mCPhoneId":I
    if-eq v12, v0, :cond_2a3

    const/4 v1, 0x1

    if-ne v13, v1, :cond_2a0

    goto :goto_2a3

    :cond_2a0
    move/from16 v16, v14

    goto :goto_2de

    .line 1959
    :cond_2a3
    :goto_2a3
    const-string v1, "VsimEvenHandler no need to do capablity switch"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    nop

    .line 1964
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    .line 1963
    move-object/from16 v1, p0

    move v2, v12

    move-object v5, v4

    move/from16 v4, p1

    move/from16 v16, v14

    move-object v14, v5

    .end local v14    # "result":I
    .local v16, "result":I
    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1966
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_2d9

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_2c8

    goto :goto_2d9

    .line 1970
    :cond_2c8
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1973
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1974
    .local v1, "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->resetRadioForVsim()V

    .line 1975
    .end local v1    # "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    goto :goto_2de

    .line 1968
    :cond_2d9
    :goto_2d9
    const-string v1, "VSIM allow to enable without reset modem"

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    .end local v0    # "mCPhoneId":I
    .end local v16    # "result":I
    .restart local v14    # "result":I
    :goto_2de
    move/from16 v0, v16

    move/from16 v14, v19

    .end local v14    # "result":I
    .restart local v16    # "result":I
    goto/16 :goto_460

    .line 1982
    .end local v16    # "result":I
    .end local v19    # "newSlotId":I
    .local v0, "result":I
    .local v14, "newSlotId":I
    :sswitch_2e4
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aget-object v2, v1, v12

    if-eqz v2, :cond_2f1

    .line 1983
    aget-object v1, v1, v12

    invoke-direct {v7, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1989
    :cond_2f1
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1990
    goto/16 :goto_45e

    .line 1855
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_301
    move/from16 v19, v14

    move-object v14, v4

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "vendor.gsm.external.sim.enabled"

    invoke-static {v12, v2, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1858
    .local v6, "enabled":Ljava/lang/String;
    if-eqz v6, :cond_3db

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3db

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31f

    move-object/from16 v18, v6

    goto/16 :goto_3dd

    .line 1864
    :cond_31f
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    .line 1866
    if-gez v0, :cond_327

    goto/16 :goto_45e

    .line 1870
    :cond_327
    iget-object v2, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aget-object v3, v2, v12

    if-eqz v3, :cond_332

    .line 1871
    aget-object v2, v2, v12

    invoke-direct {v7, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1875
    :cond_332
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendPlugOutEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1878
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v2

    if-nez v2, :cond_341

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v2

    if-eqz v2, :cond_346

    .line 1879
    :cond_341
    const/16 v2, 0x4e20

    invoke-direct {v7, v12, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->waitSimPlugOut(II)V

    .line 1881
    :cond_346
    const/4 v2, 0x2

    invoke-direct {v7, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v2

    if-ne v2, v12, :cond_357

    .line 1882
    const/4 v2, -0x1

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 1883
    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1902(I)I

    .line 1884
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :cond_357
    nop

    .line 1890
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/16 v16, 0x0

    .line 1889
    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move v5, v13

    move-object/from16 v18, v6

    .end local v6    # "enabled":Ljava/lang/String;
    .local v18, "enabled":Ljava/lang/String;
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    .line 1893
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_394

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_37e

    goto :goto_394

    .line 1907
    :cond_37e
    iget-object v1, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->waitRildSetDisabledProperty(I)V
    invoke-static {v1, v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$2200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V

    .line 1908
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1910
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1911
    .restart local v1    # "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->resetRadioForVsim()V

    goto :goto_3c9

    .line 1897
    .end local v1    # "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_394
    :goto_394
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 1899
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 1900
    .local v2, "defaultDataSub":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 1901
    .local v3, "defaultPhoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultDataSub="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " when disabling VSIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    if-eq v3, v12, :cond_3c8

    .line 1904
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubId(I)V

    .line 1906
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local v2    # "defaultDataSub":I
    .end local v3    # "defaultPhoneId":I
    :cond_3c8
    nop

    .line 1915
    :goto_3c9
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_45e

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_45e

    .line 1916
    const/4 v1, 0x1

    invoke-direct {v7, v9, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendHotPlugEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)V

    goto/16 :goto_45e

    .line 1858
    .end local v18    # "enabled":Ljava/lang/String;
    .restart local v6    # "enabled":Ljava/lang/String;
    :cond_3db
    move-object/from16 v18, v6

    .line 1859
    .end local v6    # "enabled":Ljava/lang/String;
    .restart local v18    # "enabled":Ljava/lang/String;
    :goto_3dd
    const-string v1, "VsimEvenHandler didn\'t not enabled before."

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    goto/16 :goto_45e

    .line 1820
    .end local v18    # "enabled":Ljava/lang/String;
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :sswitch_3e4
    move/from16 v19, v14

    move v14, v6

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfRadioUnavailable(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    .line 1821
    if-gez v0, :cond_3f1

    move/from16 v14, v19

    goto/16 :goto_460

    .line 1823
    :cond_3f1
    invoke-direct {v7, v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v0

    .line 1825
    if-gez v0, :cond_3f9

    goto/16 :goto_45e

    .line 1829
    :cond_3f9
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 1830
    .local v6, "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1832
    .local v5, "subId":I
    const/4 v1, 0x2

    if-ne v13, v1, :cond_427

    .line 1833
    invoke-virtual {v6, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1835
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-eqz v1, :cond_413

    .line 1836
    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {v12}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$802(I)I

    .line 1839
    :cond_413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VsimEvenHandler set default data to subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_427
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isSupportVsimHotPlugOut()Z

    move-result v1

    if-eqz v1, :cond_43b

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-nez v1, :cond_43b

    .line 1844
    invoke-direct {v7, v9, v14}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendHotPlugEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)V

    .line 1845
    const/16 v1, 0x7d0

    invoke-direct {v7, v12, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->waitSimPlugOut(II)V

    .line 1849
    :cond_43b
    nop

    .line 1850
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v3

    const/4 v14, 0x0

    .line 1849
    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p1

    move/from16 v16, v5

    .end local v5    # "subId":I
    .local v16, "subId":I
    move v5, v13

    move-object/from16 v18, v6

    .end local v6    # "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .local v18, "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1851
    goto :goto_45e

    .line 1815
    .end local v16    # "subId":I
    .end local v18    # "ctrl":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :cond_450
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    goto :goto_458

    .line 1814
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :cond_453
    move/from16 v19, v14

    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    goto :goto_458

    .line 1813
    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :cond_456
    move/from16 v19, v14

    .line 2118
    .end local v14    # "newSlotId":I
    .restart local v19    # "newSlotId":I
    :goto_458
    if-nez v0, :cond_45e

    .line 2119
    const/4 v0, -0x1

    move/from16 v14, v19

    goto :goto_460

    .line 2123
    :cond_45e
    :goto_45e
    move/from16 v14, v19

    .end local v19    # "newSlotId":I
    .restart local v14    # "newSlotId":I
    :goto_460
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2124
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    const/16 v3, 0x3eb

    .line 2126
    const/4 v4, -0x1

    if-ne v14, v4, :cond_470

    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    goto :goto_472

    :cond_470
    const/4 v4, 0x1

    shl-int/2addr v4, v14

    :goto_472
    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 2127
    .local v1, "eventResponse":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2129
    iget-object v2, v7, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    if-eqz v2, :cond_47f

    .line 2130
    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 2133
    :cond_47f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    return-void

    nop

    :sswitch_data_496
    .sparse-switch
        0x1 -> :sswitch_3e4
        0x2 -> :sswitch_301
        0x3 -> :sswitch_2e4
        0x4 -> :sswitch_23a
        0x5 -> :sswitch_228
        0x6 -> :sswitch_113
        0x7 -> :sswitch_db
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_ba
        0xa -> :sswitch_b2
        0xb -> :sswitch_9f
        0xcc -> :sswitch_7b
    .end sparse-switch
.end method

.method private handleGetPlatformCapability(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 15
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2170
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v0

    .line 2171
    .local v0, "eventId":I
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v1

    .line 2173
    .local v1, "simType":I
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2174
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v3

    .line 2176
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    const/16 v5, 0x3ea

    invoke-direct {v2, v3, v5, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 2178
    .local v2, "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2181
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v4

    .line 2182
    .local v4, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2d

    .line 2183
    invoke-virtual {v2, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_41

    .line 2184
    :cond_2d
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v5, :cond_35

    .line 2185
    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_41

    .line 2186
    :cond_35
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v5, :cond_3e

    .line 2187
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_41

    .line 2189
    :cond_3e
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2193
    :goto_41
    const-string v5, "ro.vendor.mtk_external_sim_support"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_56

    .line 2194
    const/4 v5, 0x3

    .line 2198
    .local v5, "mDefaultSupportVersion":I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 2199
    or-int/lit8 v5, v5, 0x4

    .line 2202
    :cond_52
    invoke-virtual {v2, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2203
    .end local v5    # "mDefaultSupportVersion":I
    goto :goto_59

    .line 2204
    :cond_56
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2211
    :goto_59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 2213
    .local v5, "simCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleGetPlatformCapability simType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", simCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExternalSimMgr"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    if-ne v1, v7, :cond_a2

    .line 2218
    const-string v3, "vendor.gsm.prefered.rsim.slot"

    const/4 v8, -0x1

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2219
    .local v3, "rsimSlot":I
    if-ne v3, v8, :cond_91

    .line 2221
    shl-int v6, v7, v5

    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_a0

    .line 2228
    :cond_91
    if-eq v3, v7, :cond_9d

    const/4 v8, 0x4

    if-ne v3, v8, :cond_97

    goto :goto_9d

    .line 2230
    :cond_97
    if-ne v3, v6, :cond_a0

    .line 2231
    invoke-virtual {v2, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_a0

    .line 2229
    :cond_9d
    :goto_9d
    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2234
    .end local v3    # "rsimSlot":I
    :cond_a0
    :goto_a0
    goto/16 :goto_137

    .line 2236
    :cond_a2
    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v6, :cond_10c

    .line 2238
    const/4 v6, 0x0

    .line 2239
    .local v6, "isCdmaCard":I
    const/4 v8, 0x0

    .line 2241
    .local v8, "isHasCard":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a9
    if-ge v10, v5, :cond_dc

    .line 2242
    sget-object v11, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v11, v11, v10

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2243
    .local v11, "cardType":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_be

    .line 2244
    shl-int v12, v7, v10

    or-int/2addr v8, v12

    .line 2247
    :cond_be
    const-string v12, "CSIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d6

    .line 2248
    const-string v12, "RUIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d6

    const-string v12, "UIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d9

    .line 2249
    :cond_d6
    shl-int v12, v7, v10

    or-int/2addr v6, v12

    .line 2241
    .end local v11    # "cardType":Ljava/lang/String;
    :cond_d9
    add-int/lit8 v10, v10, 0x1

    goto :goto_a9

    .line 2253
    .end local v10    # "i":I
    :cond_dc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability isCdmaCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", isHasCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    if-nez v8, :cond_fe

    .line 2258
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_10b

    .line 2259
    :cond_fe
    if-nez v6, :cond_104

    .line 2261
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_10b

    .line 2264
    :cond_104
    shl-int v3, v7, v5

    sub-int/2addr v3, v7

    xor-int/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2267
    .end local v6    # "isCdmaCard":I
    .end local v8    # "isHasCard":I
    :goto_10b
    goto :goto_137

    :cond_10c
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v6

    if-eqz v6, :cond_134

    .line 2271
    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v6, :cond_11d

    .line 2273
    shl-int v3, v7, v5

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_137

    .line 2274
    :cond_11d
    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v6, :cond_137

    .line 2277
    const-string v6, "ro.vendor.mtk_external_sim_only_slots"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2279
    .local v3, "vsimOnly":I
    if-eqz v3, :cond_12d

    .line 2280
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_133

    .line 2282
    :cond_12d
    shl-int v6, v7, v5

    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2284
    .end local v3    # "vsimOnly":I
    :goto_133
    goto :goto_137

    .line 2288
    :cond_134
    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2293
    :cond_137
    :goto_137
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v3, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 2294
    return-void
.end method

.method private handleServiceStateRequest(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 12
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2297
    const/4 v0, 0x0

    .line 2298
    .local v0, "result":I
    const/4 v1, -0x1

    .line 2299
    .local v1, "voiceRejectCause":I
    const/4 v2, -0x1

    .line 2301
    .local v2, "dataRejectCause":I
    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 2302
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    .line 2304
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v5

    const/16 v6, 0x3ef

    invoke-direct {v3, v4, v6, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 2305
    .local v3, "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    nop

    .line 2306
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    .line 2305
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 2308
    .local v4, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 2310
    .local v5, "ss":Landroid/telephony/ServiceState;
    if-eqz v5, :cond_64

    instance-of v6, v5, Lmediatek/telephony/MtkServiceState;

    if-eqz v6, :cond_64

    .line 2311
    move-object v6, v5

    check-cast v6, Lmediatek/telephony/MtkServiceState;

    .line 2312
    .local v6, "mtkSs":Lmediatek/telephony/MtkServiceState;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleServiceStateRequest subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    invoke-virtual {v6}, Lmediatek/telephony/MtkServiceState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2312
    const-string v8, "ExternalSimMgr"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v7}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v8

    .line 2317
    .local v8, "csInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v8, :cond_59

    .line 2318
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v1

    .line 2320
    :cond_59
    const/4 v9, 0x2

    invoke-virtual {v6, v9, v7}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    .line 2323
    .local v7, "psInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v7, :cond_64

    .line 2324
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v2

    .line 2329
    .end local v6    # "mtkSs":Lmediatek/telephony/MtkServiceState;
    .end local v7    # "psInfo":Landroid/telephony/NetworkRegistrationInfo;
    .end local v8    # "csInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_64
    invoke-virtual {v3, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2331
    invoke-virtual {v3, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2333
    invoke-virtual {v3, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 2335
    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    invoke-virtual {v6, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 2336
    return-void
.end method

.method private isPlatformReady(I)Z
    .registers 5
    .param p1, "category"    # I

    .line 1672
    const/4 v0, 0x1

    .line 1674
    .local v0, "isReady":Z
    packed-switch p1, :pswitch_data_36

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlatformReady invalid category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalSimMgr"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1682
    :pswitch_1b
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1683
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->isAllRadioAvailable()Z

    move-result v0

    .line 1684
    goto :goto_34

    .line 1677
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :pswitch_26
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 1678
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/MtkProxyController;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 1679
    nop

    .line 1690
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/MtkProxyController;
    :goto_34
    return v0

    nop

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_26
        :pswitch_1b
    .end packed-switch
.end method

.method private isRsimDataConnected()Z
    .registers 5

    .line 1664
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 1666
    :cond_8
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 1667
    .local v0, "dataState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rsim data state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v2, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    return v1
.end method

.method private retryIfCapabilitySwitching(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .registers 3
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1759
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfPlatformNotReady(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I

    move-result v0

    return v0
.end method

.method private retryIfPlatformNotReady(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I
    .registers 9
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p2, "category"    # I

    .line 1694
    const/4 v0, 0x0

    .line 1696
    .local v0, "result":I
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->isPlatformReady(I)Z

    move-result v1

    .line 1698
    .local v1, "isReady":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryIfPlatformNotReady category= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isReady= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    if-nez v1, :cond_3d

    .line 1701
    const/4 v2, 0x0

    .line 1704
    .local v2, "timeOut":I
    :cond_26
    const-wide/16 v4, 0x7d0

    :try_start_28
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2e

    .line 1705
    add-int/lit16 v2, v2, 0x7d0

    .line 1708
    goto :goto_32

    .line 1706
    :catch_2e
    move-exception v4

    .line 1707
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1709
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_32
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->isPlatformReady(I)Z

    move-result v1

    .line 1710
    if-nez v1, :cond_3d

    const v4, 0x9c40

    if-lt v2, v4, :cond_26

    .line 1713
    .end local v2    # "timeOut":I
    :cond_3d
    if-nez v1, :cond_45

    .line 1714
    const/4 v0, -0x2

    .line 1715
    const-string v2, "retryIfPlatformNotReady return not ready"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_45
    return v0
.end method

.method private retryIfRadioUnavailable(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .registers 3
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1755
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfPlatformNotReady(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I

    move-result v0

    return v0
.end method

.method private sendActiveAkaSimEvent(IZ)V
    .registers 15
    .param p1, "slotId"    # I
    .param p2, "turnOn"    # Z

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendActiveAkaSimEvent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v0

    .line 1567
    .local v0, "rsimSlot":I
    const/4 v1, 0x1

    if-ltz v0, :cond_33

    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v1, :cond_33

    .line 1568
    if-nez p2, :cond_33

    .line 1569
    const/16 v2, 0xca

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 1574
    :cond_33
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v3, 0x0

    shl-int v4, v1, p1

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1578
    .local v2, "akaEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v3, 0x0

    .line 1581
    .local v3, "eventId":I
    if-eqz p2, :cond_4c

    .line 1582
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v4

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I
    invoke-static {v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1902(I)I

    .line 1583
    const/4 v3, 0x6

    .line 1584
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_57

    .line 1586
    :cond_4c
    const/4 v4, -0x1

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I
    invoke-static {v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1902(I)I

    .line 1587
    const/16 v3, 0xcb

    .line 1588
    const/16 v4, 0xcb

    invoke-virtual {v2, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1591
    :goto_57
    invoke-virtual {v2, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1594
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v7

    .line 1595
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 1594
    move-object v6, p0

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1599
    if-ltz v0, :cond_78

    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aget-boolean v4, v4, v0

    if-ne v4, v1, :cond_78

    .line 1600
    if-ne p2, v1, :cond_78

    .line 1601
    const/16 v1, 0xc9

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 1606
    :cond_78
    return-void
.end method

.method private sendHotPlugEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)V
    .registers 10
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p2, "plugIn"    # Z

    .line 1461
    const/4 v0, 0x4

    .line 1462
    .local v0, "eventId":I
    if-nez p2, :cond_4

    .line 1463
    const/4 v0, 0x3

    .line 1467
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1468
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1467
    move-object v1, p0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1472
    return-void
.end method

.method private sendNoResponseError(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 11
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1340
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v1

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_19

    .line 1341
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    aput-boolean v2, v0, v3

    .line 1342
    const/16 v0, 0xca

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendRsimAuthProgressEvent(I)V

    .line 1347
    :cond_19
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag(I)Z

    move-result v0

    if-ne v0, v1, :cond_74

    .line 1348
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 1350
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1351
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v1

    .line 1352
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getRspMessageId(I)I

    move-result v3

    .line 1353
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1356
    .local v0, "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1359
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1360
    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 1361
    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 1363
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    aget-object v1, v1, v2

    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1364
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v3

    .line 1365
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v4

    .line 1366
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v5

    .line 1367
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getInt()I

    move-result v6

    .line 1368
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataByReadOffest()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 1363
    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimOperation(IIII[BLandroid/os/Message;)Z

    .line 1370
    .end local v0    # "response":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    :cond_74
    return-void
.end method

.method private sendPlugOutEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 12
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1428
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1429
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    .line 1428
    const-string v1, "vendor.gsm.external.sim.inserted"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "isInserted":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPlugOutEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalSimMgr"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1435
    :cond_2c
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1436
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    .line 1438
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1441
    .local v1, "plugOutEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1443
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1445
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZI)V

    .line 1452
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    .line 1453
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1452
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1458
    .end local v1    # "plugOutEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    :goto_58
    return-void
.end method

.method private sendRsimAuthProgressEvent(I)V
    .registers 13
    .param p1, "eventId"    # I

    .line 1507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 1509
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v1

    .line 1510
    .local v1, "akaSim":I
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I

    move-result v2

    .line 1512
    .local v2, "rSim":I
    const/4 v3, 0x1

    const-string v4, "ExternalSimMgr"

    if-ltz v1, :cond_b5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-gt v1, v5, :cond_b5

    if-ltz v2, :cond_b5

    .line 1513
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-le v2, v5, :cond_2a

    goto/16 :goto_b5

    .line 1520
    :cond_2a
    const/16 v5, 0xc9

    if-ne p1, v5, :cond_31

    .line 1521
    iput-boolean v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    goto :goto_41

    .line 1522
    :cond_31
    const/16 v5, 0xca

    if-ne p1, v5, :cond_41

    .line 1523
    iget-boolean v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    if-nez v5, :cond_3f

    .line 1524
    const-string v0, "sendRsimAuthProgressEvent, aka didn\'t occupy rf"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1527
    :cond_3f
    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsAkaOccupyRf:Z

    .line 1529
    :cond_41
    :goto_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRsimAuthProgressEvent mIsWaitingAuthRsp["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsWaitingAuthRsp:[Z

    aget-boolean v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v5, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/16 v6, 0x3eb

    shl-int v7, v3, v1

    invoke-direct {v5, v0, v6, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    move-object v0, v5

    .line 1538
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1540
    invoke-virtual {v0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1542
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1543
    .local v3, "msg":Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1544
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    invoke-static {v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1547
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v6

    .line 1548
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    move-result v7

    const/4 v9, 0x1

    .line 1547
    move-object v5, p0

    move v8, p1

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendVsimNotification(IIIILandroid/os/Message;)V

    .line 1552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRsimAuthProgressEvent eventId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :try_start_a4
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_ad} :catch_ae

    .line 1559
    goto :goto_b4

    .line 1557
    :catch_ae
    move-exception v5

    .line 1558
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "sendRsimAuthProgressEvent InterruptedException."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_b4
    return-void

    .line 1514
    .end local v0    # "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_b5
    :goto_b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRsimAuthProgressEvent aka sim: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rsim: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iput-boolean v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsSwitchRfSuccessful:Z

    .line 1516
    return-void
.end method

.method private sendSetRsimMappingInfoSync(II)I
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1402
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x1

    shl-int v2, v1, p1

    const/4 v3, 0x0

    const/16 v4, 0x3eb

    invoke-direct {v0, v3, v4, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1407
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1409
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1411
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1412
    .local v5, "msg":Landroid/os/Message;
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1413
    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    invoke-static {v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1414
    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    aget-object v6, v6, p1

    check-cast v6, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, p2, v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimNotification(IIILandroid/os/Message;)Z

    move-result v2

    .line 1417
    .local v2, "result":Z
    const-string v4, "ExternalSimMgr"

    if-ne v2, v1, :cond_44

    .line 1418
    const-string v1, "sendSetRsimMappingInfoSync before mLock.wait"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1420
    return v3

    .line 1422
    :cond_44
    const-string v1, "sendSetRsimMappingInfoSync fail."

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v1, -0x2

    return v1
.end method

.method private sendVsimNotification(IIIILandroid/os/Message;)V
    .registers 11
    .param p1, "slotId"    # I
    .param p2, "transactionId"    # I
    .param p3, "eventId"    # I
    .param p4, "simType"    # I
    .param p5, "message"    # Landroid/os/Message;

    .line 1375
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimNotification(IIILandroid/os/Message;)Z

    move-result v0

    .line 1378
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendVsimNotification result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalSimMgr"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    if-nez p5, :cond_49

    .line 1381
    const/4 v1, 0x0

    .line 1382
    .local v1, "timeOut":I
    :goto_27
    if-nez v0, :cond_49

    const v3, 0x9c40

    if-ge v1, v3, :cond_49

    .line 1384
    const-wide/16 v3, 0x7d0

    :try_start_30
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_36

    .line 1385
    add-int/lit16 v1, v1, 0x7d0

    .line 1388
    goto :goto_3a

    .line 1386
    :catch_36
    move-exception v3

    .line 1387
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1390
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_3a
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    aget-object v3, v3, p1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/MtkRIL;->sendVsimNotification(IIILandroid/os/Message;)Z

    move-result v0

    goto :goto_27

    .line 1395
    .end local v1    # "timeOut":I
    :cond_49
    if-nez v0, :cond_50

    .line 1396
    const-string v1, "sendVsimNotification fail until 40000"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_50
    return-void
.end method

.method private setDataStream(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V
    .registers 5
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1251
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1252
    iput-object p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    .line 1253
    const-string v0, "ExternalSimMgr"

    const-string v1, "VsimEvenHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    return-void
.end method

.method private setMdWaitingFlag(ZI)V
    .registers 4
    .param p1, "isWaiting"    # Z
    .param p2, "slotId"    # I

    .line 1609
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V

    .line 1610
    return-void
.end method

.method private setMdWaitingFlag(ZLcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)V
    .registers 12
    .param p1, "isWaiting"    # Z
    .param p2, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p3, "slotId"    # I

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMdWaitingFlag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mIsMdWaitingResponse:[Z

    aput-boolean p1, v0, p3

    .line 1616
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a3

    .line 1617
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aput-object p2, v2, p3

    .line 1619
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v3, v2, p3

    if-nez v3, :cond_36

    .line 1620
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3, v0}, Ljava/util/Timer;-><init>(Z)V

    aput-object v3, v2, p3

    .line 1624
    :cond_36
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1625
    if-eqz p2, :cond_40

    invoke-virtual {p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v0

    goto :goto_41

    :cond_40
    const/4 v0, -0x1

    .line 1624
    :goto_41
    const-string v2, "vendor.gsm.external.sim.enabled"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    .local v0, "isVsimEnabled":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_6a

    .line 1644
    :cond_58
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v1, v1, p3

    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;

    invoke-direct {v2, p0, p3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)V

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimeOut:[I

    aget v3, v3, p3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_a2

    .line 1631
    :cond_6a
    :goto_6a
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v2, v2, p3

    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;

    invoke-direct {v3, p0, p3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_8c

    .line 1638
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1641
    :cond_8c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recevice modem event under vsim disabled state. lastDisableTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mLastDisableEventTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    .end local v0    # "isVsimEnabled":Ljava/lang/String;
    :goto_a2
    goto :goto_be

    .line 1649
    :cond_a3
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v1, v0, p3

    const/4 v2, 0x0

    if-eqz v1, :cond_ba

    .line 1650
    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1651
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1652
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:[Ljava/util/Timer;

    aput-object v2, v0, p3

    .line 1654
    :cond_ba
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    aput-object v2, v0, p3

    .line 1656
    :goto_be
    return-void
.end method

.method private switchModemCapability(I)Z
    .registers 11
    .param p1, "rsimSlot"    # I

    .line 1723
    const-string v0, "ExternalSimMgr"

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 1725
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/MtkProxyController;
    if-eqz v1, :cond_70

    .line 1726
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 1727
    .local v2, "len":I
    new-array v3, v2, [Landroid/telephony/RadioAccessFamily;

    .line 1728
    .local v3, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v4, 0x0

    .line 1729
    .local v4, "atLeastOneMatch":Z
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_16
    if-ge v5, v2, :cond_4a

    .line 1731
    if-ne v5, p1, :cond_20

    .line 1732
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->getMaxRafSupported()I

    move-result v6

    .line 1733
    .local v6, "raf":I
    const/4 v4, 0x1

    goto :goto_24

    .line 1735
    .end local v6    # "raf":I
    :cond_20
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->getMinRafSupported()I

    move-result v6

    .line 1737
    .restart local v6    # "raf":I
    :goto_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[switchModemCapability] raf["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v7, v5, v6}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v3, v5

    .line 1729
    .end local v6    # "raf":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1740
    .end local v5    # "phoneId":I
    :cond_4a
    if-eqz v4, :cond_51

    .line 1741
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    .line 1742
    const/4 v0, 0x1

    return v0

    .line 1744
    :cond_51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[switchModemCapability] rsim error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_65} :catch_66

    goto :goto_70

    .line 1747
    .end local v2    # "len":I
    .end local v3    # "rafs":[Landroid/telephony/RadioAccessFamily;
    .end local v4    # "atLeastOneMatch":Z
    :catch_66
    move-exception v2

    .line 1748
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "[switchModemCapability] setRadioCapability: Runtime Exception"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_71

    .line 1750
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_70
    :goto_70
    nop

    .line 1751
    :goto_71
    const/4 v0, 0x0

    return v0
.end method

.method private waitSimPlugOut(II)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "duration"    # I

    .line 2144
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 2145
    .local v0, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2146
    .local v1, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x0

    .line 2147
    .local v2, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    .line 2150
    .local v3, "timeOut":I
    :cond_8
    const-wide/16 v4, 0xc8

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_10

    .line 2151
    add-int/lit16 v3, v3, 0xc8

    .line 2154
    goto :goto_14

    .line 2152
    :catch_10
    move-exception v4

    .line 2153
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2155
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_14
    nop

    .line 2156
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v4

    .line 2155
    invoke-static {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 2160
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v2

    .line 2161
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_2d

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_2d

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v4, :cond_2f

    :cond_2d
    if-eqz v2, :cond_31

    :cond_2f
    if-lt v3, p2, :cond_8

    .line 2166
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waitSimPlugOut, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", timeOut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExternalSimMgr"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1219
    const/4 v0, 0x0

    .line 1220
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_11

    .line 1221
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1222
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1223
    .end local v1    # "ar":Landroid/os/AsyncResult;
    goto :goto_16

    .line 1224
    :cond_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1227
    :goto_16
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v1

    .line 1229
    .local v1, "slotId":I
    if-ltz v1, :cond_6b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 1230
    :goto_26
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    aget-object v3, v2, v1

    if-eqz v3, :cond_5a

    aget-object v2, v2, v1

    .line 1231
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->isWaiting()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] thread running, delay 100 ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-wide/16 v2, 0x64

    :try_start_51
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_55

    .line 1239
    :goto_54
    goto :goto_26

    .line 1237
    :catch_55
    move-exception v2

    .line 1238
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_54

    .line 1242
    :cond_5a
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    new-instance v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    aput-object v3, v2, v1

    .line 1243
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mEventHandlingThread:[Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->start()V

    goto :goto_77

    .line 1246
    :cond_6b
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->start()V

    .line 1248
    :goto_77
    return-void
.end method
