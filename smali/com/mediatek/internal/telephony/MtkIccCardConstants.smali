.class public Lcom/mediatek/internal/telephony/MtkIccCardConstants;
.super Lcom/android/internal/telephony/IccCardConstants;
.source "MtkIccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;,
        Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_SML_SLOT_DETECTED_TYPE:Ljava/lang/String; = "DETECTED_TYPE"

.field public static final INTENT_KEY_SML_SLOT_DEVICE_LOCK_POLICY:Ljava/lang/String; = "DEVICE_LOCK_POLICY"

.field public static final INTENT_KEY_SML_SLOT_DEVICE_LOCK_STATE:Ljava/lang/String; = "DEVICE_LOCK_STATE"

.field public static final INTENT_KEY_SML_SLOT_SIM1_VALID:Ljava/lang/String; = "SML_SIM1_VALID"

.field public static final INTENT_KEY_SML_SLOT_SIM2_VALID:Ljava/lang/String; = "SML_SIM2_VALID"

.field public static final INTENT_KEY_SML_SLOT_SIM3_VALID:Ljava/lang/String; = "SML_SIM3_VALID"

.field public static final INTENT_KEY_SML_SLOT_SIM4_VALID:Ljava/lang/String; = "SML_SIM4_VALID"

.field public static final INTENT_KEY_SML_SLOT_SIM_COUNT:Ljava/lang/String; = "SML_SIM_COUNT"

.field public static final INTENT_KEY_SML_SLOT_SIM_SERVICE_CAPABILITY:Ljava/lang/String; = "SIM_SERVICE_CAPABILITY"

.field public static final INTENT_KEY_SML_SLOT_SIM_VALID:Ljava/lang/String; = "SIM_VALID"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "CORPORATE"

.field public static final INTENT_VALUE_LOCKED_CORPORATE_PUK:Ljava/lang/String; = "CORPORATE_PUK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_PUK:Ljava/lang/String; = "NETWORK_PUK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "NETWORK_SUBSET"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET_PUK:Ljava/lang/String; = "NETWORK_SUBSET_PUK"

.field public static final INTENT_VALUE_LOCKED_NS_SP:Ljava/lang/String; = "NS_SP"

.field public static final INTENT_VALUE_LOCKED_NS_SP_PUK:Ljava/lang/String; = "NS_SP_PUK"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SERVICE_PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER_PUK:Ljava/lang/String; = "SERVICE_PROVIDER_PUK"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM"

.field public static final INTENT_VALUE_LOCKED_SIM_C:Ljava/lang/String; = "SIM_C"

.field public static final INTENT_VALUE_LOCKED_SIM_C_PUK:Ljava/lang/String; = "SIM_C_PUK"

.field public static final INTENT_VALUE_LOCKED_SIM_PUK:Ljava/lang/String; = "SIM_PUK"

.field public static final SML_SLOT_LOCK_POLICY_ALL_SLOTS_INDIVIDUAL:I = 0x3

.field public static final SML_SLOT_LOCK_POLICY_ALL_SLOTS_INDIVIDUAL_AND_RSU_VZW:I = 0xb

.field public static final SML_SLOT_LOCK_POLICY_LEGACY:I = 0xff

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOT1:I = 0x4

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOT2:I = 0x5

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOTA:I = 0x6

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_INVALID_CS:I = 0x7

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_INVALID_ECC_FOR_VALID_NO_SERVICE:I = 0x9

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_INVALID_VOICE:I = 0xa

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_REVERSE:I = 0x8

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOTA_RSU_KDDI:I = 0xd

.field public static final SML_SLOT_LOCK_POLICY_LK_SLOTA_RSU_TMO:I = 0xf

.field public static final SML_SLOT_LOCK_POLICY_LOCK_STATE_NO:I = 0x1

.field public static final SML_SLOT_LOCK_POLICY_LOCK_STATE_UNKNOWN:I = -0x1

.field public static final SML_SLOT_LOCK_POLICY_LOCK_STATE_YES:I = 0x0

.field public static final SML_SLOT_LOCK_POLICY_NONE:I = 0x0

.field public static final SML_SLOT_LOCK_POLICY_ONLY_SLOT1:I = 0x1

.field public static final SML_SLOT_LOCK_POLICY_ONLY_SLOT2:I = 0x2

.field public static final SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_CS_ONLY:I = 0x1

.field public static final SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_ECC_ONLY:I = 0x3

.field public static final SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_FULL:I = 0x0

.field public static final SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_NO_SERVICE:I = 0x4

.field public static final SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_PS_ONLY:I = 0x2

.field public static final SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_UNKNOWN:I = -0x1

.field public static final SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_VOICE_ONLY:I = 0x5

.field public static final SML_SLOT_LOCK_POLICY_UNKNOWN:I = -0x1

.field public static final SML_SLOT_LOCK_POLICY_UNLOCK_GENERAL_FAIL:I = 0x2

.field public static final SML_SLOT_LOCK_POLICY_UNLOCK_INCORRECT_PASSWORD:I = 0x1

.field public static final SML_SLOT_LOCK_POLICY_UNLOCK_NO_LOCK_POLICY:I = 0x0

.field public static final SML_SLOT_LOCK_POLICY_UNLOCK_SUCCESS:I = 0x3

.field public static final SML_SLOT_LOCK_POLICY_UNLOCK_UNKNOWN:I = -0x1

.field public static final SML_SLOT_LOCK_POLICY_VALID_CARD_ABSENT:I = 0x2

.field public static final SML_SLOT_LOCK_POLICY_VALID_CARD_NO:I = 0x1

.field public static final SML_SLOT_LOCK_POLICY_VALID_CARD_UNKNOWN:I = -0x1

.field public static final SML_SLOT_LOCK_POLICY_VALID_CARD_YES:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardConstants;-><init>()V

    return-void
.end method
