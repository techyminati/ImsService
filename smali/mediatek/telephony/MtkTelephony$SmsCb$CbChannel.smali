.class public final Lmediatek/telephony/MtkTelephony$SmsCb$CbChannel;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CbChannel"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 392
    nop

    .line 393
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$SmsCb$CbChannel;->CONTENT_URI:Landroid/net/Uri;

    .line 392
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
