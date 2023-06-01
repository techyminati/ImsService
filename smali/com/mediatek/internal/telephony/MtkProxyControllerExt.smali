.class public Lcom/mediatek/internal/telephony/MtkProxyControllerExt;
.super Ljava/lang/Object;
.source "MtkProxyControllerExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;


# static fields
.field static final TAG:Ljava/lang/String; = "MtkProxyControllerExt"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyControllerExt;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public isNeedSimSwitch(II)Z
    .registers 5
    .param p1, "majorPhoneId"    # I
    .param p2, "phoneNum"    # I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMisNeedSimSwitch, majorPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyControllerExt;->log(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyControllerExt;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSkipCapabilitySwitch(IILandroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 59
    const-string v0, "MtkProxyControllerExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
