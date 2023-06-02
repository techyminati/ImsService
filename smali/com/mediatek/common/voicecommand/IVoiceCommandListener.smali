.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
.super Ljava/lang/Object;
.source "IVoiceCommandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;,
        Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voicecommand.IVoiceCommandListener"


# virtual methods
.method public abstract onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
