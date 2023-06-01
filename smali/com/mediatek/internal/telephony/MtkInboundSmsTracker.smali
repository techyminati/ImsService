.class public Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
.super Lcom/android/internal/telephony/InboundSmsTracker;
.source "MtkInboundSmsTracker.java"


# static fields
.field public static final SUB_ID_COLUMN:I = 0xa


# instance fields
.field private mRecvTime:J

.field private mSubId:I

.field private mUploadFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isCurrentFormat3gpp2"    # Z

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 128
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    .line 129
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    :cond_1a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddress"    # Ljava/lang/String;
    .param p9, "referenceNumber"    # I
    .param p10, "sequenceNumber"    # I
    .param p11, "messageCount"    # I
    .param p12, "is3gpp2WapPdu"    # Z
    .param p13, "messageBody"    # Ljava/lang/String;
    .param p14, "isClass0"    # Z
    .param p15, "subId"    # I
    .param p16, "smsSource"    # I

    .line 116
    invoke-direct/range {p0 .. p16}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "is3gpp2WapPdu"    # Z
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "displayAddress"    # Ljava/lang/String;
    .param p10, "messageBody"    # Ljava/lang/String;
    .param p11, "isClass0"    # Z
    .param p12, "subId"    # I
    .param p13, "smsSource"    # I

    .line 89
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 91
    return-void
.end method

.method private appendSubIdInQuery(Landroid/util/Pair;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    .local p1, "base":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_4
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private appendSubIdInQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_23

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND sub_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, " AND (destination_port & 262144=262144)"

    goto :goto_1c

    .line 198
    :cond_1a
    const-string v1, " AND (destination_port & 131072=131072)"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    nop

    .line 199
    .local v0, "newWhere":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v1, "baseWhereArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 202
    .local v2, "newWhereArgs":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 203
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .registers 4

    .line 136
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 138
    .local v0, "values":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    return-object v0
.end method

.method public getDestPort()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mDestPort:I

    return v0
.end method

.method public getExactMatchDupDetectQuery()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getExactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getInexactMatchDupDetectQuery()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getInexactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getQueryForSegments()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND sub_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, " AND (destination_port & 262144=262144)"

    goto :goto_1c

    .line 163
    :cond_1a
    const-string v1, " AND (destination_port & 131072=131072)"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method public getSubId()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    return v0
.end method

.method public is3gpp2WapPdu()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mIs3gpp2WapPdu:Z

    return v0
.end method

.method public setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getMessageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_17

    .line 171
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->appendSubIdInQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 172
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-super {p0, p1, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    :goto_17
    return-void
.end method

.method public setSubId(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 152
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->mSubId:I

    .line 153
    return-void
.end method
