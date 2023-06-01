.class public Lmediatek/telephony/MtkTelephony$MtkSms;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtkSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telephony/MtkTelephony$MtkSms$Intents;,
        Lmediatek/telephony/MtkTelephony$MtkSms$Sent;,
        Lmediatek/telephony/MtkTelephony$MtkSms$Inbox;
    }
.end annotation


# static fields
.field public static final IPMSG_ID:Ljava/lang/String; = "ipmsg_id"

.field public static final RECEIVED_LENGTH:Ljava/lang/String; = "rec_len"

.field public static final RECEIVED_TIME:Ljava/lang/String; = "recv_time"

.field public static final REFERENCE_ID:Ljava/lang/String; = "ref_id"

.field public static final STATUS_REPLACED_BY_SC:I = 0x2

.field public static final TOTAL_LENGTH:Ljava/lang/String; = "total_len"

.field public static final UPLOAD_FLAG:Ljava/lang/String; = "upload_flag"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .registers 15
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "sc"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J

    .line 534
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 535
    .local v0, "values":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony addMessageToUri sub id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephony"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    if-eqz p7, :cond_32

    .line 540
    const-string v1, "date"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    :cond_32
    if-eqz p6, :cond_39

    .line 543
    const-string v1, "service_center"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_39
    nop

    .line 546
    if-eqz p8, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 545
    const-string v2, "read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    const-string v1, "subject"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v1, "body"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p9, :cond_5f

    .line 550
    const/16 v1, 0x20

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 550
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    :cond_5f
    const-wide/16 v1, -0x1

    cmp-long v1, p10, v1

    if-eqz v1, :cond_6e

    .line 554
    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    :cond_6e
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
