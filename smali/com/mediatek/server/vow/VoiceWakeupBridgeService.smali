.class public Lcom/mediatek/server/vow/VoiceWakeupBridgeService;
.super Lcom/android/server/SystemService;
.source "VoiceWakeupBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;
    }
.end annotation


# static fields
.field private static final BINDER_TAG:Ljava/lang/String; = "vow_bridge"

.field private static final TAG:Ljava/lang/String; = "VoiceWakeupBridgeService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mServiceStub:Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;

.field private mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object p1, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;

    invoke-direct {v0, p0}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;-><init>(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)V

    iput-object v0, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mServiceStub:Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    .line 78
    iget-object v0, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBootPhase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceWakeupBridgeService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_bb

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootPhase: mServiceStub:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mServiceStub:Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_30
    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    .line 107
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    .line 109
    .local v0, "mSoundTriggerInternal":Lcom/android/server/soundtrigger/SoundTriggerInternal;
    const-string v2, "vow_bridge"

    invoke-virtual {p0, v2}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mBinder:Landroid/os/IBinder;

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootPhase: mBinder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v2, Landroid/media/permission/Identity;

    invoke-direct {v2}, Landroid/media/permission/Identity;-><init>()V

    .line 113
    .local v2, "identity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 115
    invoke-static {v2}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v3

    .line 116
    .local v3, "ignored":Landroid/media/permission/SafeCloseable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBootPhase: SafeCloseable ignored:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v4, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->attach(Landroid/os/IBinder;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBootPhase: mSoundTriggerInternalSession:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_30 .. :try_end_97} :catchall_99

    .line 127
    nop

    .end local v0    # "mSoundTriggerInternal":Lcom/android/server/soundtrigger/SoundTriggerInternal;
    .end local v2    # "identity":Landroid/media/permission/Identity;
    .end local v3    # "ignored":Landroid/media/permission/SafeCloseable;
    goto :goto_c4

    .line 123
    :catchall_99
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootPhase: Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v2, "onBootPhaseError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_c4

    .line 128
    :cond_bb
    const/16 v0, 0x258

    if-ne v0, p1, :cond_c4

    .line 129
    const-string v0, "onBootPhase: PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_c4
    :goto_c4
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 96
    const-string v0, "VoiceWakeupBridgeService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mServiceStub:Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;

    const-string v1, "vow_bridge"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 98
    return-void
.end method
