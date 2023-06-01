.class public Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;
.super Lcom/android/internal/telephony/SmsStorageMonitor;
.source "MtkSmsStorageMonitor.java"


# static fields
.field private static final DELAYED_SEND_ICC_FULL_TIME:I = 0x1388

.field private static final EVENT_DELAYED_SEND_ICC_FULL:I = 0x65

.field private static final EVENT_ME_FULL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MtkSmsStorageMonitor"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mMtkResultReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingIccFullNotify:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 206
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;-><init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mMtkResultReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v2, :cond_21

    .line 92
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 93
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnMeSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_21
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const-string v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .local v1, "defaultSmsAppUri":Landroid/net/Uri;
    new-instance v3, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;

    new-instance v4, Landroid/os/Handler;

    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;-><init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 109
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    .line 69
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    return v0
.end method

.method private handleMeFull()V
    .registers 5

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 202
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 203
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 114
    const-string v0, "MtkSmsStorageMonitor"

    const-string v1, "disposed..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_18

    .line 116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 117
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetOnMeSmsFull(Landroid/os/Handler;)V

    .line 119
    .end local v0    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mMtkResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    invoke-super {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    .line 122
    return-void
.end method

.method public handleIccFull()V
    .registers 7

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 127
    .local v0, "name":Landroid/content/ComponentName;
    const/4 v2, 0x1

    const-string v3, "MtkSmsStorageMonitor"

    if-nez v0, :cond_1f

    .line 128
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 129
    const-string v1, "ComponentName is NULL"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    return-void

    .line 135
    :cond_1f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 136
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_37

    .line 137
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 138
    const-string v1, "too early, wait for boot complete to send broadcast"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_37
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    .line 143
    const-string v1, "handleIccFull"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    .line 145
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3c

    .line 186
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleMessage(Landroid/os/Message;)V

    goto :goto_3a

    .line 181
    :sswitch_9
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z

    if-eqz v0, :cond_3a

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleIccFull()V

    goto :goto_3a

    .line 177
    :sswitch_11
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleMeFull()V

    .line 178
    goto :goto_3a

    .line 168
    :sswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsStorageMonitor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mStorageAvailable:Z

    const/4 v2, 0x2

    .line 171
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 170
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 173
    nop

    .line 189
    :cond_3a
    :goto_3a
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        0x3 -> :sswitch_15
        0x64 -> :sswitch_11
        0x65 -> :sswitch_9
    .end sparse-switch
.end method
