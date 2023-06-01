.class public interface abstract Lcom/mediatek/internal/telecom/ICallRecorderService;
.super Ljava/lang/Object;
.source "ICallRecorderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;,
        Lcom/mediatek/internal/telecom/ICallRecorderService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telecom.ICallRecorderService"


# virtual methods
.method public abstract setCallback(Lcom/mediatek/internal/telecom/ICallRecorderCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startVoiceRecord(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopVoiceRecord()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
