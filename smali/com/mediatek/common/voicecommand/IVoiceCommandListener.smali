.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
.super Ljava/lang/Object;
.source "IVoiceCommandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation build Landroid/annotation/ProductApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;,
        Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
