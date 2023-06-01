.class public Lcom/mediatek/imsplugin/ImsSSExtPluginImpl;
.super Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;
.source "ImsSSExtPluginImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSSExtPluginImpl"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/mediatek/imsplugin/ImsSSExtPluginImpl;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;
    .registers 6
    .param p1, "info"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz p1, :cond_68

    .line 63
    array-length v1, p1

    new-array v0, v1, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_68

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsCallForwardInfo: info["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsSSExtPluginImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v2, v0, v1

    .line 67
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v3

    iput v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 68
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 69
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 70
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 71
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 72
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 75
    .end local v1    # "i":I
    :cond_68
    return-object v0
.end method
