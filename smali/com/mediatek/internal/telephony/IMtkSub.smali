.class public interface abstract Lcom/mediatek/internal/telephony/IMtkSub;
.super Ljava/lang/Object;
.source "IMtkSub.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkSub$Stub;,
        Lcom/mediatek/internal/telephony/IMtkSub$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.IMtkSub"


# virtual methods
.method public abstract getSubIdUsingPhoneId(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDefaultFallbackSubId(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
