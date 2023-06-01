.class public interface abstract Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
.super Ljava/lang/Object;
.source "IOmadm.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/omadm/V1_0/IOmadm$Stub;,
        Lvendor/mediatek/hardware/omadm/V1_0/IOmadm$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.mediatek.hardware.omadm@1.0::IOmadm"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 22
    return-object v0

    .line 25
    :cond_4
    nop

    .line 26
    const-string v1, "vendor.mediatek.hardware.omadm@1.0::IOmadm"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 28
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_15

    instance-of v3, v2, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    if-eqz v3, :cond_15

    .line 29
    move-object v0, v2

    check-cast v0, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    return-object v0

    .line 32
    :cond_15
    new-instance v3, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm$Proxy;

    invoke-direct {v3, p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 35
    .local v3, "proxy":Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    :try_start_1a
    invoke-interface {v3}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 36
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    .line 37
    return-object v3

    .line 39
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_35
    goto :goto_22

    .line 41
    :cond_36
    goto :goto_38

    .line 40
    :catch_37
    move-exception v1

    .line 43
    :goto_38
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 50
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    const-string v0, "default"

    invoke-static {v0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    const-string v0, "vendor.mediatek.hardware.omadm@1.0::IOmadm"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "vendor.mediatek.hardware.omadm@1.0::IOmadm"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract SmsCancelSysUpdate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WapPushSysUpdate(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract omadmControllerDispachAdminNetStatus(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract omadmNetManagerReply(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setResponseFunctions(Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeBytes(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeEvent(IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeInt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
