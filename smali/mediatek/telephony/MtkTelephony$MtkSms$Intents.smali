.class public final Lmediatek/telephony/MtkTelephony$MtkSms$Intents;
.super Ljava/lang/Object;
.source "MtkTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony$MtkSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Lmediatek/telephony/MtkSmsMessage;
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;

    .line 646
    const-string v0, "MtkTelephony"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "pdus"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_56

    .line 651
    .local v2, "messages":[Ljava/lang/Object;
    nop

    .line 653
    if-nez v2, :cond_14

    .line 654
    const-string v3, "pdus does not exist in the intent"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-object v1

    .line 658
    :cond_14
    const-string v1, "format"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "format":Ljava/lang/String;
    nop

    .line 660
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    .line 659
    const-string v4, "subscription"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 662
    .local v3, "subId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getMessagesFromIntent sub_id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    array-length v0, v2

    .line 665
    .local v0, "pduCount":I
    new-array v4, v0, [Lmediatek/telephony/MtkSmsMessage;

    .line 667
    .local v4, "msgs":[Lmediatek/telephony/MtkSmsMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3d
    if-ge v5, v0, :cond_55

    .line 668
    aget-object v6, v2, v5

    check-cast v6, [B

    .line 669
    .local v6, "pdu":[B
    invoke-static {v6, v1}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v7

    aput-object v7, v4, v5

    .line 670
    aget-object v7, v4, v5

    if-eqz v7, :cond_52

    aget-object v7, v4, v5

    invoke-virtual {v7, v3}, Lmediatek/telephony/MtkSmsMessage;->setSubId(I)V

    .line 667
    .end local v6    # "pdu":[B
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 672
    .end local v5    # "i":I
    :cond_55
    return-object v4

    .line 648
    .end local v0    # "pduCount":I
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "messages":[Ljava/lang/Object;
    .end local v3    # "subId":I
    .end local v4    # "msgs":[Lmediatek/telephony/MtkSmsMessage;
    :catch_56
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessagesFromIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-object v1
.end method
