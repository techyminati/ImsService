.class Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
.super Ljava/lang/Object;
.source "MtkSmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsReferenceKey"
.end annotation


# instance fields
.field final mAddress:Ljava/lang/String;

.field final mFormat:Ljava/lang/String;

.field final mIs3gpp2:Z

.field final mMessageCount:I

.field final mQuery:Ljava/lang/String;

.field final mReferenceNumber:I

.field final mSubId:J


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;)V
    .registers 4
    .param p1, "tracker"    # Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getReferenceNumber()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    .line 286
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 287
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mQuery:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->is3gpp2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mIs3gpp2:Z

    .line 289
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getSubId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    .line 293
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 312
    instance-of v0, p1, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 313
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;

    .line 315
    .local v0, "other":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    if-ne v2, v3, :cond_27

    iget v2, v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    if-ne v2, v3, :cond_27

    iget-wide v2, v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    iget-wide v4, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1

    .line 321
    .end local v0    # "other":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    :cond_28
    return v1
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .registers 4

    .line 297
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 297
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 305
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3f

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    return v0
.end method
