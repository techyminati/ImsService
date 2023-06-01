.class public Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
.super Ljava/lang/Object;
.source "RttEmcGuardTimerUtil.java"


# static fields
.field private static final INTENT_RTT_EMC_GUARD_TIMER_180:Ljava/lang/String; = "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

.field private static final TAG:Ljava/lang/String; = "RttEmcGuardTimerUtil"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDuringRttGuardDuration:Z

.field private mIsRegisteredReceiver:Z

.field private mIsRttEmcGuardTimerSupported:Z

.field private mRttEmcIntent:Landroid/app/PendingIntent;

.field private mRttReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 65
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 66
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 86
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;-><init>(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 56
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    return-void
.end method

.method private getReceiver()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    return v0
.end method

.method private isDuringGuardTimer()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    return v0
.end method

.method private isRttEmcCarrierSupport()Z
    .registers 6

    .line 204
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    .line 205
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 207
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    const-string v2, "RttEmcGuardTimerUtil"

    if-nez v0, :cond_15

    .line 208
    const-string v3, "cacheCarrierConfiguration: No carrier config service found."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v1

    .line 213
    :cond_15
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 214
    .local v3, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v3, :cond_21

    .line 215
    const-string v4, "cacheCarrierConfiguration: Empty carrier config."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v1

    .line 219
    :cond_21
    nop

    .line 220
    const-string v1, "mtk_emc_rtt_guard_timer_bool"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 222
    return v1
.end method

.method private registerRttReceiver()V
    .registers 4

    .line 107
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "registerRttReceiver"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method private setDuringGuardTimer(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 237
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 238
    return-void
.end method

.method private setReceiver(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    .line 230
    return-void
.end method

.method private unregisterRttReceiver()V
    .registers 3

    .line 115
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v0

    const-string v1, "RttEmcGuardTimerUtil"

    if-eqz v0, :cond_19

    .line 116
    const-string v0, "unregisterRttReceiver"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setReceiver(Z)V

    goto :goto_1e

    .line 121
    :cond_19
    const-string v0, "UnregisterRttReciever: No active reciever"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_1e
    return-void
.end method


# virtual methods
.method public checkIncomingCallInRttEmcGuardTime(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIncomingCallInRttEmcGuardTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mDuringRttGuardDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->isDuringGuardTimer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p1, :cond_2a

    .line 145
    const-string v0, "conn == null, checkIncomingCallInRttEmcGuardTime return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 149
    :cond_2a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->isDuringGuardTimer()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->setIncomingCallDuringRttEmcGuard(Z)V

    goto :goto_3f

    .line 152
    :cond_38
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->setIncomingCallDuringRttEmcGuard(Z)V

    .line 154
    :goto_3f
    return-void
.end method

.method public disposeRttEmcGuardTimer()V
    .registers 3

    .line 102
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "disposeRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->unregisterRttReceiver()V

    .line 104
    return-void
.end method

.method public initRttEmcGuardTimer()V
    .registers 3

    .line 73
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "initRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    .line 75
    const-string v1, "initRttEmcGuardTimer mContext == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_10
    return-void
.end method

.method public setRttEmcGuardTimerSupported(Z)V
    .registers 2
    .param p1, "isSupported"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 199
    return-void
.end method

.method public startRttEmcGuardTimer()V
    .registers 10

    .line 157
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "startRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->isRttEmcCarrierSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 159
    if-nez v1, :cond_15

    .line 160
    const-string v1, "startRttEmcGuardTimer: Current carrier doesn\'t support RTT EMC guard timer, just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 165
    :cond_15
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1f

    .line 166
    const-string v1, "startRttEmcGuardTimer: mContext == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_1f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRttEmcGuardTimer , mIsRegisteredReceiver :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsRttEmcGuardTimerSupported : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    if-eqz v1, :cond_d2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v1

    if-nez v1, :cond_d2

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    .line 177
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->registerRttReceiver()V

    .line 178
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setReceiver(Z)V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Registered reciver"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 190
    const v3, 0x2bf20

    .line 191
    .local v3, "delay":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    .line 192
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v3

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 192
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRttEmcGuardTimer: delay = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " started"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 182
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "delay":I
    :cond_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRttEmcGuardTimer , mIsRttEmcGuardTimerSupported :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public stopRttEmcGuardTimer()V
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRttEmcGuardTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_32

    .line 130
    const-string v0, "stopRttEmcGuardTimer, cancel timer"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->disposeRttEmcGuardTimer()V

    .line 138
    :cond_32
    return-void
.end method
