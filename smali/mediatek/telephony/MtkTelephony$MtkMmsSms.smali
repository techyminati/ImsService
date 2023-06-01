.class public final Lmediatek/telephony/MtkTelephony$MtkMmsSms;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MtkMmsSms"
.end annotation


# static fields
.field public static final CONTENT_URI_QUICKTEXT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 955
    const-string v0, "content://mms-sms/quicktext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$MtkMmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    return-void
.end method
