.class Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;
.super Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;
.source "VoiceWakeupBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/vow/VoiceWakeupBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceWakeupBridgeStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;


# direct methods
.method constructor <init>(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    .line 154
    iput-object p1, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;->this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    invoke-direct {p0}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 12
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 160
    const-string v0, "VoiceWakeupBridgeService"

    const-string v1, "startRecognition"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;->this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    # getter for: Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    invoke-static {v1}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->access$000(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 162
    const-string v1, "startRecognition mSoundTriggerInternalSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;->this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    # getter for: Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    invoke-static {v0}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->access$000(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object v1

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0

    return v0

    .line 166
    :cond_24
    const-string v1, "startRecognition mSoundTriggerInternalSession null obj"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 5
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 174
    const-string v0, "VoiceWakeupBridgeService"

    const-string v1, "stopRecognition"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;->this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    # getter for: Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    invoke-static {v1}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->access$000(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 176
    const-string v1, "stopRecognition mSoundTriggerInternalSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;->this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    # getter for: Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    invoke-static {v0}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->access$000(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v0

    return v0

    .line 179
    :cond_1f
    const-string v1, "stopRecognition mSoundTriggerInternalSession null obj"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public unloadKeyphraseModel(I)I
    .registers 4
    .param p1, "keyphaseId"    # I

    .line 186
    const-string v0, "VoiceWakeupBridgeService"

    const-string v1, "unloadKeyphraseModel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;->this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    # getter for: Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    invoke-static {v1}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->access$000(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 188
    const-string v1, "unloadKeyphraseModel mSoundTriggerInternalSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/mediatek/server/vow/VoiceWakeupBridgeService$VoiceWakeupBridgeStub;->this$0:Lcom/mediatek/server/vow/VoiceWakeupBridgeService;

    # getter for: Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->mSoundTriggerInternalSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    invoke-static {v0}, Lcom/mediatek/server/vow/VoiceWakeupBridgeService;->access$000(Lcom/mediatek/server/vow/VoiceWakeupBridgeService;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->unloadKeyphraseModel(I)I

    move-result v0

    return v0

    .line 191
    :cond_1f
    const-string v1, "unloadKeyphraseModel mSoundTriggerInternalSession null obj"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    return v0
.end method
