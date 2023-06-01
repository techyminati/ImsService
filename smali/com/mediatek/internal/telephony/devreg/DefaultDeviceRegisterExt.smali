.class public Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;
.super Ljava/lang/Object;
.source "DefaultDeviceRegisterExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDeviceRegisterExt"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;->mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 59
    return-void
.end method


# virtual methods
.method public handleAutoRegMessage(ILjava/lang/String;[B)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAutoRegMessage sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDeviceRegisterExt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public handleAutoRegMessage([B)V
    .registers 4
    .param p1, "pdu"    # [B

    .line 68
    const-string v0, "DefaultDeviceRegisterExt"

    const-string v1, "handleAutoRegMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public setCdmaCardEsnOrMeid(Ljava/lang/String;)V
    .registers 4
    .param p1, "rawValue"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCdmaCardEsnOrMeid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDeviceRegisterExt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
