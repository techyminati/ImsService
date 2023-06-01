.class public final Lmediatek/telephony/MtkTelephony;
.super Ljava/lang/Object;
.source "MtkTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telephony/MtkTelephony$Carriers;,
        Lmediatek/telephony/MtkTelephony$MtkMms;,
        Lmediatek/telephony/MtkTelephony$MtkMmsSms;,
        Lmediatek/telephony/MtkTelephony$MtkThreadSettings;,
        Lmediatek/telephony/MtkTelephony$MtkMwi;,
        Lmediatek/telephony/MtkTelephony$MtkThreads;,
        Lmediatek/telephony/MtkTelephony$MtkSms;,
        Lmediatek/telephony/MtkTelephony$MtkCellBroadcasts;,
        Lmediatek/telephony/MtkTelephony$SmsCb;,
        Lmediatek/telephony/MtkTelephony$TextBasedSmsCbColumns;,
        Lmediatek/telephony/MtkTelephony$WapPush;
    }
.end annotation


# static fields
.field public static final COLUMN_ENHANCED_VONR_MODE_ENABLED:Ljava/lang/String; = "vonr_enabled"

.field public static final COLUMN_ENHANCED_VONR_SHOW_UI_ENABLED:Ljava/lang/String; = "vonr_ui_enabled"

.field public static final SMS_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "MtkTelephony"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method
