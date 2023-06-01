.class public Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
.super Lcom/android/internal/telephony/gsm/SuppServiceNotification;
.source "MtkSuppServiceNotification.java"


# static fields
.field public static final MO_CODE_CALL_FORWARDED_TO:I = 0x9

.field public static final MO_CODE_CALL_IS_EMERGENCY:I = 0xa

.field public static final MO_CODE_CALL_NOTIFICATION_RINGTONE:I = 0xb

.field public static final MT_CODE_FORWARDED_CF:I = 0xb

.field public static final MT_CODE_FORWARDED_CF_BUSY:I = 0xe

.field public static final MT_CODE_FORWARDED_CF_COND:I = 0xd

.field public static final MT_CODE_FORWARDED_CF_NOT_REACHABLE:I = 0x10

.field public static final MT_CODE_FORWARDED_CF_NO_REPLY:I = 0xf

.field public static final MT_CODE_FORWARDED_CF_UNCOND:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    return-void
.end method
