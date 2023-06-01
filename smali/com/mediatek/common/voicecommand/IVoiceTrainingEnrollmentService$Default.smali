.class public Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Default;
.super Ljava/lang/Object;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public enrollSoundModel(IILjava/lang/String;I)Z
    .registers 6
    .param p1, "traningMode"    # I
    .param p2, "commandId"    # I
    .param p3, "patternPath"    # Ljava/lang/String;
    .param p4, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public unEnrollSoundModel()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method
