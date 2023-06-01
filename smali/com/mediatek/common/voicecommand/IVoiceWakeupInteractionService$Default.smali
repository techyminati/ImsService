.class public Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Default;
.super Ljava/lang/Object;
.source "IVoiceWakeupInteractionService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;
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

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCallback(Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public setCurrentUserOnSwitch(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public startRecognition()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public stopRecognition()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method
