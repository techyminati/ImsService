.class public final Lcom/mediatek/boostfwk/utils/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final BOOLEAN_DISABLE_BOOST_FWK:Z

.field private static final BOOLEAN_DISABLE_FRAME_IDENTIFY:Z

.field private static final BOOLEAN_DISABLE_SCROLL_IDENTIFY:Z

.field private static final BOOLEAN_ENABLE_BOOST_DISPLAY_60:Z

.field private static final BOOLEAN_ENABLE_LOG:Z

.field private static final DISABLE_BOOST_FWK:Ljava/lang/String; = "0"

.field private static final DISABLE_BOOST_FWK_PROPERTY_NAME:Ljava/lang/String; = "vendor.boostfwk.option"

.field private static final DISABLE_FRAME_IDENTIFY:Ljava/lang/String; = "0"

.field private static final DISABLE_FRAME_IDENTIFY_PROPERTY_NAME:Ljava/lang/String; = "vendor.boostfwk.frameidentify.option"

.field private static final DISABLE_SCROLL_IDENTIFY:Ljava/lang/String; = "0"

.field private static final DISABLE_SCROLL_IDENTIFY_PROPERTY_NAME:Ljava/lang/String; = "vendor.boostfwk.scrollidentify.option"

.field private static final ENABLE_BOOST_DISPLAY_60:Ljava/lang/String; = "0"

.field private static final ENABLE_BOOST_DISPLAY_60_PROPERTY_NAME:Ljava/lang/String; = "vendor.boostfwk.display60"

.field private static final ENABLE_ENHANCE_LOG:Ljava/lang/String; = "1"

.field private static final ENHANCE_LOG_PROPERTY_NAME:Ljava/lang/String; = "vendor.boostfwk.log.enable"

.field public static final FRAME_HINT_RESCUE_STRENGTH:I = 0x32

.field public static final SCROLLING_FING_HORIZONTAL_HINT_DURATION:I = 0x1f4

.field public static final sSCROLLING_HINT_DURATION:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const-string v0, "vendor.boostfwk.log.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_ENABLE_LOG:Z

    .line 56
    nop

    .line 57
    const-string v0, "vendor.boostfwk.scrollidentify.option"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_DISABLE_SCROLL_IDENTIFY:Z

    .line 58
    nop

    .line 59
    const-string v0, "vendor.boostfwk.frameidentify.option"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_DISABLE_FRAME_IDENTIFY:Z

    .line 60
    const-string v0, "vendor.boostfwk.option"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_DISABLE_BOOST_FWK:Z

    .line 61
    nop

    .line 62
    const-string v0, "vendor.boostfwk.display60"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_ENABLE_BOOST_DISPLAY_60:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFrameIdentify()Z
    .registers 1

    .line 78
    sget-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_DISABLE_FRAME_IDENTIFY:Z

    return v0
.end method

.method public static disableSBE()Z
    .registers 1

    .line 82
    sget-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_DISABLE_BOOST_FWK:Z

    return v0
.end method

.method public static isBoostFwkLogEnable()Z
    .registers 1

    .line 70
    sget-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_ENABLE_LOG:Z

    return v0
.end method

.method public static isBoostFwkScrollIdentify()Z
    .registers 1

    .line 74
    sget-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_DISABLE_SCROLL_IDENTIFY:Z

    return v0
.end method

.method public static isBoostFwkScrollIdentifyOn60hz()Z
    .registers 1

    .line 86
    sget-boolean v0, Lcom/mediatek/boostfwk/utils/Config;->BOOLEAN_ENABLE_BOOST_DISPLAY_60:Z

    return v0
.end method
