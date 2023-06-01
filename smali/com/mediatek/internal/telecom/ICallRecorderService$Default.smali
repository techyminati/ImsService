.class public Lcom/mediatek/internal/telecom/ICallRecorderService$Default;
.super Ljava/lang/Object;
.source "ICallRecorderService.java"

# interfaces
.implements Lcom/mediatek/internal/telecom/ICallRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telecom/ICallRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Lcom/mediatek/internal/telecom/ICallRecorderCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/mediatek/internal/telecom/ICallRecorderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public startVoiceRecord(Ljava/lang/String;)V
    .registers 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public stopVoiceRecord()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
