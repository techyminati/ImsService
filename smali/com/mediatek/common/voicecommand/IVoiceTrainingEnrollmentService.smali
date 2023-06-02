.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
.super Ljava/lang/Object;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;,
        Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"


# virtual methods
.method public abstract enrollSoundModel(IILjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unEnrollSoundModel()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
