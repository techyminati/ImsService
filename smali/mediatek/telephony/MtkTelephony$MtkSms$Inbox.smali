.class public final Lmediatek/telephony/MtkTelephony$MtkSms$Inbox;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony$MtkSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Inbox"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    return-void
.end method

.method public static addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .registers 20
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "sc"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z

    .line 589
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v11}, Lmediatek/telephony/MtkTelephony$MtkSms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
