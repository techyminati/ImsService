.class public Lcom/mediatek/internal/telephony/MtkPhoneConstants;
.super Ljava/lang/Object;
.source "MtkPhoneConstants.java"


# static fields
.field public static final APN_AUTH_TYPE_MAX_NUM:I = 0x7

.field public static final APN_INACTIVE_TIMER_KEY:I = 0x3

.field public static final APN_MAX_INACTIVE_TIMER:I = 0x1fffffff

.field public static final APN_TYPE_BIP:Ljava/lang/String; = "bip"

.field public static final APN_TYPE_RCS:Ljava/lang/String; = "rcs"

.field public static final APN_TYPE_VSIM:Ljava/lang/String; = "vsim"

.field public static final APN_TYPE_XCAP:Ljava/lang/String; = "xcap"

.field public static final IMS_STATE_DISABLED:I = 0x0

.field public static final IMS_STATE_DISABLING:I = 0x3

.field public static final IMS_STATE_ENABLE:I = 0x1

.field public static final IMS_STATE_ENABLING:I = 0x2

.field public static final MTK_APN_TYPES:[Ljava/lang/String;

.field public static final MVNO_TYPE_GID:Ljava/lang/String; = "gid"

.field public static final MVNO_TYPE_IMSI:Ljava/lang/String; = "imsi"

.field public static final MVNO_TYPE_NONE:Ljava/lang/String; = ""

.field public static final MVNO_TYPE_PNN:Ljava/lang/String; = "pnn"

.field public static final MVNO_TYPE_SPN:Ljava/lang/String; = "spn"

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phoneType"

.field public static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field public static final UT_CSFB_ONCE:I = 0x1

.field public static final UT_CSFB_PS_PREFERRED:I = 0x0

.field public static final UT_CSFB_UNTIL_NEXT_BOOT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 56
    const-string v0, "default"

    const-string v1, "mms"

    const-string v2, "supl"

    const-string v3, "dun"

    const-string v4, "hipri"

    const-string v5, "fota"

    const-string v6, "ims"

    const-string v7, "cbs"

    const-string v8, "ia"

    const-string v9, "emergency"

    const-string v10, "mcx"

    const-string v11, "xcap"

    const-string v12, "rcs"

    const-string v13, "bip"

    const-string v14, "vsim"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneConstants;->MTK_APN_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
