.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
.super Ljava/lang/Object;
.source "IVoiceWakeupInteractionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;,
        Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voicecommand.IVoiceWakeupInteractionCallback"


# virtual methods
.method public abstract onVoiceWakeupDetected(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
