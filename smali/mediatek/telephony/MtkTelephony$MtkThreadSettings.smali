.class public final Lmediatek/telephony/MtkTelephony$MtkThreadSettings;
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
    name = "MtkThreadSettings"
.end annotation


# static fields
.field public static final MUTE:Ljava/lang/String; = "mute"

.field public static final MUTE_START:Ljava/lang/String; = "mute_start"

.field public static final NOTIFICATION_ENABLE:Ljava/lang/String; = "notification_enable"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SPAM:Ljava/lang/String; = "spam"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final WALLPAPER:Ljava/lang/String; = "_data"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
