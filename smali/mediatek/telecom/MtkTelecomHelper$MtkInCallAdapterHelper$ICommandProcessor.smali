.class public interface abstract Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;
.super Ljava/lang/Object;
.source "MtkTelecomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICommandProcessor"
.end annotation


# virtual methods
.method public abstract hangupHold()V
.end method

.method public abstract setSortedIncomingCallList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startVoiceRecording()V
.end method

.method public abstract stopVoiceRecording()V
.end method
