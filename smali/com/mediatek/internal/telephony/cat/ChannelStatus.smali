.class public Lcom/mediatek/internal/telephony/cat/ChannelStatus;
.super Ljava/lang/Object;
.source "ChannelStatus.java"


# static fields
.field public static final CHANNEL_STATUS_INFO_LINK_DROPED:I = 0x5

.field public static final CHANNEL_STATUS_INFO_NO_FURTHER_INFO:I = 0x0

.field public static final CHANNEL_STATUS_LINK:I = 0x80

.field public static final CHANNEL_STATUS_NO_LINK:I


# instance fields
.field public isActivated:Z

.field public mChannelId:I

.field public mChannelStatus:I

.field public mChannelStatusInfo:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "cid"    # I
    .param p2, "status"    # I
    .param p3, "info"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 50
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    .line 51
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 52
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    .line 53
    return-void
.end method
