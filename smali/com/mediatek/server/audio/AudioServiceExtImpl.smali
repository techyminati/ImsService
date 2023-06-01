.class public Lcom/mediatek/server/audio/AudioServiceExtImpl;
.super Lcom/mediatek/server/audio/AudioServiceExt;
.source "AudioServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/audio/AudioServiceExtImpl$ConnectionState;,
        Lcom/mediatek/server/audio/AudioServiceExtImpl$BtProfileConnectionState;
    }
.end annotation


# static fields
.field static final CONNECTION_STATE_CONNECTED:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z

.field protected static final LOGD:Z

.field private static final TAG:Ljava/lang/String; = "AS.AudioServiceExt"

.field private static sAudioHandlerField:Ljava/lang/reflect/Field;

.field private static sAudioService:Lcom/android/server/audio/AudioService;

.field private static sSendMsgMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAudioHandler:Landroid/os/Handler;

.field private mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

.field mBleCgVolume:I

.field private mBtLeCgOnByApp:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

.field private mIsBleCgFeatureSupported:Z

.field private mIsSystemReadyStatus:Z

.field private volatile mLeVcSupportsAbsoluteVolume:Z

.field private mMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPlaybackMonitorField:Ljava/lang/reflect/Field;

.field private mPlaybackMonitorObj:Ljava/lang/Object;

.field private mStreamStatesField:Ljava/lang/reflect/Field;

.field private mStreamStatesObj:Ljava/lang/Object;

.field private mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

.field private mVoiceActivityMonitorField:Ljava/lang/reflect/Field;

.field private mVoiceActivityMonitorObj:Ljava/lang/Object;

.field private mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mleCallVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

.field private mleVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

.field private registerPlaybackCallbackMethod:Ljava/lang/reflect/Method;

.field private unregisterPlaybackCallbackMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 98
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 99
    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    sput-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    .line 102
    sput-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_MODE:Z

    .line 105
    sput-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_AP:Z

    .line 108
    sput-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_VOL:Z

    .line 111
    sput-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sAudioService:Lcom/android/server/audio/AudioService;

    .line 119
    sput-object v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sSendMsgMethod:Ljava/lang/reflect/Method;

    .line 120
    sput-object v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sAudioHandlerField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 170
    invoke-direct {p0}, Lcom/mediatek/server/audio/AudioServiceExt;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsBleCgFeatureSupported:Z

    .line 116
    iput-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mLeVcSupportsAbsoluteVolume:Z

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 121
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mAudioHandler:Landroid/os/Handler;

    .line 122
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mStreamStatesField:Ljava/lang/reflect/Field;

    .line 123
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mPlaybackMonitorField:Ljava/lang/reflect/Field;

    .line 124
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mVoiceActivityMonitorField:Ljava/lang/reflect/Field;

    .line 130
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mStreamStatesObj:Ljava/lang/Object;

    .line 131
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->registerPlaybackCallbackMethod:Ljava/lang/reflect/Method;

    .line 132
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->unregisterPlaybackCallbackMethod:Ljava/lang/reflect/Method;

    .line 135
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

    .line 136
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mleCallVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

    .line 140
    iput-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mleVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

    .line 498
    iput v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mBleCgVolume:I

    .line 615
    iput-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsSystemReadyStatus:Z

    .line 171
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    const-string v1, "AS.AudioServiceExt"

    if-eqz v0, :cond_30

    .line 172
    const-string v2, "AudioServiceExtImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_30
    const-string v2, "persist.vendor.bluetooth.leaudio_mode"

    .line 175
    .local v2, "LEAUDIO_MODE_PROPERTY":Ljava/lang/String;
    const-string v3, "ums-cg"

    .line 176
    .local v3, "SUPPORT_LEAUDIO_CG_MODE":Ljava/lang/String;
    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 178
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsBleCgFeatureSupported:Z

    .line 180
    :cond_43
    if-eqz v0, :cond_5b

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBleCgFeatureSupported() status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsBleCgFeatureSupported:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_5b
    return-void
.end method

.method private getLeAudioStreamType(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 404
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_10

    .line 413
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 414
    return v0

    .line 407
    :pswitch_d
    return v0

    .line 416
    :cond_e
    const/4 v0, 0x3

    return v0

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 12
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 475
    sget-object v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sSendMsgMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sAudioService:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sAudioHandlerField:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 478
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 479
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 480
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 481
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const/4 v3, 0x5

    aput-object p5, v2, v3

    .line 483
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 475
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    return-void
.end method


# virtual methods
.method public getBleCgVolume()I
    .registers 3

    .line 504
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_1c

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBleCgVolume index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mBleCgVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1c
    iget v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mBleCgVolume:I

    return v0
.end method

.method public getBleIntentFilters(Landroid/content/IntentFilter;)V
    .registers 5
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .line 293
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 294
    return-void

    .line 296
    :cond_7
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 297
    .local v0, "filtersCountBefore":I
    const-string v1, "android.bluetooth.action.LEAUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v1, "android.bluetooth.tbs.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    sget-boolean v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v1, :cond_3b

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBleIntentFilters() Before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    const-string v2, "AS.AudioServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_3b
    return-void
.end method

.method getLeAudioStreamType()I
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->getLeAudioStreamType(I)I

    move-result v0

    return v0
.end method

.method public handleMessageExt(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 544
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_5

    .line 545
    return-void

    .line 547
    :cond_5
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_21

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessageExt messageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_21
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postHandleMessageExt(Landroid/os/Message;)V

    .line 551
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Ljava/lang/Object;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioService"    # Lcom/android/server/audio/AudioService;
    .param p3, "audioSystem"    # Lcom/android/server/audio/AudioSystemAdapter;
    .param p4, "systemServer"    # Lcom/android/server/audio/SystemServerAdapter;
    .param p5, "deviceBroker"    # Ljava/lang/Object;

    .line 204
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    const-string v1, "AS.AudioServiceExt"

    if-eqz v0, :cond_3a

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init()--context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",audioService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", audioSystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",systemServer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",deviceBroker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_3a
    sput-object p2, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sAudioService:Lcom/android/server/audio/AudioService;

    .line 212
    iput-object p1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mContext:Landroid/content/Context;

    .line 213
    new-instance v2, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    move-object v7, p3

    move-object v8, p5

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/mediatek/server/audio/AudioServiceExtImpl;Lcom/android/server/audio/AudioSystemAdapter;Ljava/lang/Object;Lcom/android/server/audio/SystemServerAdapter;)V

    iput-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 216
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/Handler;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v3

    const/4 v3, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v3

    const/4 v3, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-class v6, Ljava/lang/Object;

    aput-object v6, v2, v3

    const/4 v3, 0x6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v3

    const-string v3, "sendMsg"

    invoke-static {p2, v3, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sSendMsgMethod:Ljava/lang/reflect/Method;

    .line 225
    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "mAudioHandler"

    invoke-static {p2, v3, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iput-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mAudioHandler:Landroid/os/Handler;

    .line 227
    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "mMode"

    invoke-static {p2, v3, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 229
    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "mVoicePlaybackActive"

    invoke-static {p2, v3, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 231
    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "mleCallVcSupportsAbsoluteVolume"

    invoke-static {p2, v3, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->getField(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mleCallVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

    .line 233
    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "mleVcSupportsAbsoluteVolume"

    invoke-static {p2, v3, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->getField(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mleVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

    .line 235
    iput-boolean v5, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsSystemReadyStatus:Z

    .line 236
    if-eqz v0, :cond_bb

    .line 237
    const-string v0, "init()--Done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_bb
    return-void
.end method

.method public isBleAudioFeatureSupported()Z
    .registers 4

    .line 188
    const/4 v0, 0x1

    .line 189
    .local v0, "status":Z
    sget-boolean v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v1, :cond_1d

    if-nez v0, :cond_1d

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBleAudioEnable() status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1d
    return v0
.end method

.method public isBleCgFeatureSupported()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsBleCgFeatureSupported:Z

    return v0
.end method

.method public isBluetoothLeCgActive()Z
    .registers 4

    .line 567
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2c

    .line 570
    :cond_b
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeCgActive()Z

    move-result v0

    .line 571
    .local v0, "status":Z
    sget-boolean v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v1, :cond_2b

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothLeCgActive status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2b
    return v0

    .line 568
    .end local v0    # "status":Z
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothLeCgOn()Z
    .registers 4

    .line 326
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_b

    goto :goto_2a

    .line 329
    :cond_b
    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeCgOn()Z

    move-result v0

    .line 330
    .local v0, "status":Z
    sget-boolean v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v1, :cond_29

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothLeCgOn()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_29
    return v0

    .line 327
    .end local v0    # "status":Z
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothLeOn()Z
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_6

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_6
    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothLeTbsDeviceActive()Z
    .registers 4

    .line 339
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_b

    goto :goto_2a

    .line 342
    :cond_b
    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeTbsDeviceActive()Z

    move-result v0

    .line 343
    .local v0, "status":Z
    sget-boolean v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v1, :cond_29

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothLeTbsDeviceActive()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_29
    return v0

    .line 340
    .end local v0    # "status":Z
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemReady()Z
    .registers 3

    .line 618
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsSystemReadyStatus:Z

    if-nez v0, :cond_20

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSystemReady()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsSystemReadyStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_20
    iget-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mIsSystemReadyStatus:Z

    return v0
.end method

.method public leVcSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .line 456
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    const-string v1, "AS.AudioServiceExt"

    if-eqz v0, :cond_22

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leVcSupportsAbsoluteVolume addr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " support="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_22
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2f

    iget-boolean v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mLeVcSupportsAbsoluteVolume:Z

    if-ne v2, v0, :cond_2f

    .line 461
    const-string v0, "Bail out when already mLeVcSupportsAbsoluteVolume set"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 464
    :cond_2f
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mleVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sAudioService:Lcom/android/server/audio/AudioService;

    .line 467
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 464
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callSetBoolean(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 468
    iput-boolean p2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mLeVcSupportsAbsoluteVolume:Z

    .line 469
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0, p2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setLeVcAbsoluteVolumeSupported(Z)V

    .line 470
    return-void
.end method

.method public onReceiveExt(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 256
    const-string v0, "AS.AudioServiceExt"

    if-eqz p2, :cond_6

    if-nez p1, :cond_b

    .line 257
    :cond_6
    const-string v1, "onReceiveExt returned Intent or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "onReceiveExt action="

    if-eqz v2, :cond_44

    .line 264
    sget-boolean v2, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v2, :cond_2f

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2f
    const/4 v0, -0x1

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, "state":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_3e

    const/16 v2, 0xd

    if-ne v0, v2, :cond_96

    .line 270
    :cond_3e
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->disconnectAllBluetoothProfiles()V

    goto :goto_96

    .line 272
    .end local v0    # "state":I
    :cond_44
    const-string v2, "android.bluetooth.action.LEAUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 273
    const-string v2, "android.bluetooth.tbs.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 274
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 276
    :cond_5c
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 277
    sget-boolean v2, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v2, :cond_78

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_78
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0, p2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->receiveBtEvent(Landroid/content/Intent;)V

    .line 281
    return-void

    .line 283
    :cond_7e
    sget-boolean v2, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v2, :cond_96

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveExt skipped CG intents action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_96
    :goto_96
    return-void
.end method

.method public onSystemReadyExt()V
    .registers 3

    .line 308
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_b

    .line 309
    const-string v0, "AS.AudioServiceExt"

    const-string v1, "onSystemReadyExt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_b
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->onSystemReady()V

    .line 312
    return-void
.end method

.method public postSetLeCgVcIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 531
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_5

    .line 532
    return-void

    .line 534
    :cond_5
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_1f

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postSetLeCgVcIndex index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1f
    iput p1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mBleCgVolume:I

    .line 539
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postSetLeCgVcIndex(I)V

    .line 540
    return-void
.end method

.method public postSetLeVcAbsoluteVolumeIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 491
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_1a

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postSetLeVcAbsoluteVolumeIndex index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postSetLeVcAbsoluteVolumeIndex(I)V

    .line 496
    return-void
.end method

.method public preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 4

    .line 555
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2c

    .line 558
    :cond_b
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 559
    .local v0, "device":Landroid/media/AudioDeviceAttributes;
    sget-boolean v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v1, :cond_2b

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferredCommunicationDevice device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2b
    return-object v0

    .line 556
    .end local v0    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method resetBluetoothLeCgOfApp()V
    .registers 2

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mBtLeCgOnByApp:Z

    .line 580
    return-void
.end method

.method setBleCallVcSupportsAbsoluteVolume(Z)V
    .registers 5
    .param p1, "support"    # Z

    .line 243
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_1a

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBleCallVcSupportsAbsoluteVolume() support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mleCallVcSupportsAbsoluteVolumeField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->sAudioService:Lcom/android/server/audio/AudioService;

    .line 250
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 247
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callSetBoolean(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 251
    return-void
.end method

.method public setBleCgVolume(I)V
    .registers 4
    .param p1, "index"    # I

    .line 516
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_5

    .line 517
    return-void

    .line 519
    :cond_5
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_1f

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBleCgVolume index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1f
    iput p1, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mBleCgVolume:I

    .line 524
    return-void
.end method

.method public setBluetoothLeAudioDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 426
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_5

    .line 427
    return-void

    .line 429
    :cond_5
    if-eqz p1, :cond_7c

    .line 432
    const/4 v0, 0x2

    if-eq p2, v0, :cond_24

    if-nez p2, :cond_d

    goto :goto_24

    .line 434
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_24
    :goto_24
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_70

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBluetoothLeAudioDeviceConnectionState()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, ", suppressNoisyIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, ", musicDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "eventSource":Ljava/lang/String;
    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v0    # "eventSource":Ljava/lang/String;
    :cond_70
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    const-string v7, "AudioService"

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBluetoothLeAudioDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 451
    return-void

    .line 430
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothLeCgOn(Z)V
    .registers 8
    .param p1, "on"    # Z

    .line 584
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_e

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mBtLeCgOnByApp:Z

    .line 586
    return-void

    .line 597
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_17

    .line 599
    return-void

    .line 602
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 603
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 604
    .local v1, "pid":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setBluetoothLeCgOn("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 605
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "eventSource":Ljava/lang/String;
    sget-boolean v3, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v3, :cond_68

    .line 607
    iget-object v3, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mContext:Landroid/content/Context;

    .line 608
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "callingApp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callingApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioServiceExt"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v3    # "callingApp":Ljava/lang/String;
    :cond_68
    iget-object v3, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v3, p1, v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBluetoothLeCgOn(ZLjava/lang/String;)V

    .line 612
    return-void
.end method

.method public startBluetoothLeCg(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 352
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 354
    .local v1, "pid":I
    const/16 v2, 0x12

    if-ge p2, v2, :cond_e

    .line 355
    const/4 v2, 0x0

    goto :goto_f

    :cond_e
    const/4 v2, -0x1

    .line 356
    .local v2, "leCgAudioMode":I
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startBluetoothLeCg()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    const-string v4, ") from u/pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "eventSource":Ljava/lang/String;
    const-string v4, "AS.AudioServiceExt"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->startBluetoothLeCgInt(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 361
    return-void
.end method

.method startBluetoothLeCgInt(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "LeAudioMode"    # I
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 394
    .local v0, "ident":J
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->startBluetoothLeCgForClient(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    return-void
.end method

.method public startBluetoothLeCgVirtualCall(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 384
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 385
    .local v1, "pid":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startBluetoothLeCgVirtualCall()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "eventSource":Ljava/lang/String;
    const-string v3, "AS.AudioServiceExt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->startBluetoothLeCgInt(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 390
    return-void
.end method

.method public stopBluetoothLeCg(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 365
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->isBleCgFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    if-nez v0, :cond_b

    goto :goto_42

    .line 368
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 369
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 370
    .local v1, "pid":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopBluetoothLeCg()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "eventSource":Ljava/lang/String;
    const-string v3, "AS.AudioServiceExt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, "status":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 376
    .local v4, "ident":J
    iget-object v6, p0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v6, p1, v1, v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->stopBluetoothLeCgForClient(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v3

    .line 377
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    return v3

    .line 366
    .end local v0    # "uid":I
    .end local v1    # "pid":I
    .end local v2    # "eventSource":Ljava/lang/String;
    .end local v3    # "status":Z
    .end local v4    # "ident":J
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return v0
.end method
