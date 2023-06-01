.class public final Lmediatek/telephony/MtkTelephony$SmsCb$Conversations;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lmediatek/telephony/MtkTelephony$TextBasedSmsCbColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conversations"
.end annotation


# static fields
.field public static final ADDRESS_ID:Ljava/lang/String; = "address_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "msg_count"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 347
    nop

    .line 348
    const-string v0, "content://cb/threads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$SmsCb$Conversations;->CONTENT_URI:Landroid/net/Uri;

    .line 347
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
