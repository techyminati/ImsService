.class public interface abstract Lcom/mediatek/internal/telecom/ICallRecorderCallback;
.super Ljava/lang/Object;
.source "ICallRecorderCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;,
        Lcom/mediatek/internal/telecom/ICallRecorderCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telecom.ICallRecorderCallback"


# virtual methods
.method public abstract onRecordEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRecordStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
