.class public Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;
.super Ljava/lang/Object;
.source "MtkLocalPhoneNumberUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkLocalPhoneNumberUtils"

.field private static sIsEmergencyNumber:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->sIsEmergencyNumber:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsEmergencyNumber()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->sIsEmergencyNumber:Z

    return v0
.end method

.method public static setIsEmergencyNumber(Z)V
    .registers 1
    .param p0, "isEmergencyNumber"    # Z

    .line 48
    sput-boolean p0, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->sIsEmergencyNumber:Z

    .line 49
    return-void
.end method
