.class public Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
.super Ljava/lang/Object;
.source "CpaDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpaConnection"
.end annotation


# instance fields
.field mCpaApn:Landroid/telephony/data/ApnSetting;

.field mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

.field mDnsAddresses:[Ljava/net/InetAddress;

.field mLocalAddress:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 165
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    .line 167
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NONE:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    .line 168
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mLocalAddress:Ljava/net/InetAddress;

    .line 169
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mDnsAddresses:[Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public getCpaApn()Landroid/telephony/data/ApnSetting;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public getCpaConnectionType()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    return-object v0
.end method

.method public getDnsAddresses()[Ljava/net/InetAddress;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mDnsAddresses:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method
