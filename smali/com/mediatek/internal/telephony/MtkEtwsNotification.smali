.class public Lcom/mediatek/internal/telephony/MtkEtwsNotification;
.super Ljava/lang/Object;
.source "MtkEtwsNotification.java"


# instance fields
.field public messageId:I

.field public plmnId:Ljava/lang/String;

.field public securityInfo:Ljava/lang/String;

.field public serialNumber:I

.field public warningType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtwsPdu()[B
    .registers 9

    .line 65
    const/16 v0, 0x38

    new-array v0, v0, [B

    .line 66
    .local v0, "etwsPdu":[B
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->serialNumber:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkEtwsUtils;->intToBytes(I)[B

    move-result-object v1

    .line 67
    .local v1, "serialNumberBytes":[B
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v4, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->messageId:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkEtwsUtils;->intToBytes(I)[B

    move-result-object v4

    .line 69
    .local v4, "messageIdBytes":[B
    invoke-static {v4, v2, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v5, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->warningType:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkEtwsUtils;->intToBytes(I)[B

    move-result-object v5

    .line 71
    .local v5, "warningTypeBytes":[B
    const/4 v6, 0x4

    invoke-static {v5, v2, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->securityInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 73
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->securityInfo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x6

    const/16 v7, 0x32

    invoke-static {v2, v3, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :cond_36
    return-object v0
.end method

.method public isDuplicatedEtws(Lcom/mediatek/internal/telephony/MtkEtwsNotification;)Z
    .registers 4
    .param p1, "other"    # Lcom/mediatek/internal/telephony/MtkEtwsNotification;

    .line 54
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->warningType:I

    iget v1, p1, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->warningType:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->messageId:I

    iget v1, p1, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->messageId:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->serialNumber:I

    iget v1, p1, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->serialNumber:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->plmnId:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->plmnId:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 58
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkEtwsNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->warningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->messageId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->serialNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->plmnId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->securityInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
