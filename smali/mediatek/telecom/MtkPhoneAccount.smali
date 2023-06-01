.class public final Lmediatek/telecom/MtkPhoneAccount;
.super Ljava/lang/Object;
.source "MtkPhoneAccount.java"


# static fields
.field public static final CARRIER_CAPABILITY_ALLOW_ONE_VIDEO_CALL_ONLY:I = 0x20

.field private static final CARRIER_CAPABILITY_BASE:I = 0x1

.field public static final CARRIER_CAPABILITY_DISABLE_MO_CALL_DURING_CONFERENCE:I = 0x80

.field public static final CARRIER_CAPABILITY_DISABLE_VT_OVER_WIFI:I = 0x4

.field public static final CARRIER_CAPABILITY_DISALLOW_OUTGOING_CALLS_DURING_VIDEO_OR_VOICE_CALL:I = 0x40

.field public static final CARRIER_CAPABILITY_RESUME_HOLD_CALL_AFTER_ACTIVE_CALL_END_BY_REMOTE:I = 0x1

.field public static final CARRIER_CAPABILITY_ROAMING_BAR_GUARD:I = 0x8

.field public static final CARRIER_CAPABILITY_SUPPORT_MTK_ENHANCED_CALL_BLOCKING:I = 0x100

.field public static final EXTRA_PARENT_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "mediatek.telecom.extra.PARENT_PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_PHONE_ACCOUNT_CARRIER_CAPABILITIES:Ljava/lang/String; = "mediatek.telecom.extra.PHONE_ACCOUNT_CARRIER_CAPABILITIES"

.field public static final EXTRA_PHONE_ACCOUNT_SORT_KEY:Ljava/lang/String; = "android.telecom.extra.EXTRA_PHONE_ACCOUNT_SORT_KEY"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCarrierCapabilities(II)Z
    .registers 3
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 162
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
