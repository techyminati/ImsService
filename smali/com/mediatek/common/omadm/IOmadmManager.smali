.class public interface abstract Lcom/mediatek/common/omadm/IOmadmManager;
.super Ljava/lang/Object;
.source "IOmadmManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/omadm/IOmadmManager$Stub;,
        Lcom/mediatek/common/omadm/IOmadmManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.omadm.IOmadmManager"


# virtual methods
.method public abstract inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
