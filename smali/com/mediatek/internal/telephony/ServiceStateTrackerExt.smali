.class public Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;
.super Ljava/lang/Object;
.source "ServiceStateTrackerExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;


# static fields
.field private static final CARD_TYPE_CSIM:I = 0x2

.field private static final CARD_TYPE_NONE:I = 0x0

.field private static final CARD_TYPE_RUIM:I = 0x4

.field private static final CARD_TYPE_USIM:I = 0x1

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "SSTExt"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 54
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private getSupportCardType(I)[Ljava/lang/String;
    .registers 7
    .param p1, "slotId"    # I

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "property":Ljava/lang/String;
    const/4 v1, 0x0

    .line 177
    .local v1, "prop":Ljava/lang/String;
    const/4 v2, 0x0

    .line 179
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_4f

    sget-object v3, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v4, v3

    if-lt p1, v4, :cond_b

    goto :goto_4f

    .line 183
    :cond_b
    aget-object v3, v3, p1

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_25

    .line 185
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 187
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportCardType slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prop value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    if-eqz v2, :cond_43

    array-length v4, v2

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :goto_44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 189
    return-object v2

    .line 180
    :cond_4f
    :goto_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportCardType: invalid slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 181
    const/4 v3, 0x0

    return-object v3
.end method

.method private isCdma4GCard(I)Z
    .registers 8
    .param p1, "slotId"    # I

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 197
    .local v1, "cardType":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->getSupportCardType(I)[Ljava/lang/String;

    move-result-object v0

    .line 198
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 199
    const-string v3, "isCdma4GCard, get non support card type"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 200
    return v2

    .line 204
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_3c

    .line 205
    aget-object v4, v0, v3

    const-string v5, "USIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 206
    or-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 207
    :cond_20
    aget-object v4, v0, v3

    const-string v5, "RUIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 208
    or-int/lit8 v1, v1, 0x4

    goto :goto_39

    .line 209
    :cond_2d
    aget-object v4, v0, v3

    const-string v5, "CSIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 210
    or-int/lit8 v1, v1, 0x2

    .line 204
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 213
    .end local v3    # "i":I
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdma4GCard, cardType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;->log(Ljava/lang/String;)V

    .line 214
    and-int/lit8 v3, v1, 0x4

    if-gtz v3, :cond_58

    and-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_5e

    :cond_58
    and-int/lit8 v3, v1, 0x1

    if-lez v3, :cond_5e

    .line 217
    const/4 v2, 0x1

    return v2

    .line 219
    :cond_5e
    return v2
.end method

.method private isCdmaLteDcSupport()Z
    .registers 4

    .line 166
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 167
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    .line 170
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public allowSpnDisplayed()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public getMtkLteRsrpThreshold()[I
    .registers 2

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMtkLteRssnrThreshold()[I
    .registers 2

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMtkRsrpOnly()Z
    .registers 2

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public isImeiLocked()Z
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedDisableIVSR()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportRatBalancing()Z
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 145
    const-string v0, "SSTExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public modifyRsrpThresholdsForRsrpBoost(Landroid/os/PersistableBundle;II)Z
    .registers 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "cellIdentityType"    # I
    .param p3, "rsrpBoost"    # I

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public needBrodcastAcmt(II)Z
    .registers 4
    .param p1, "errorType"    # I
    .param p2, "errorCause"    # I

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public needIgnoreFemtocellUpdate(II)Z
    .registers 4
    .param p1, "state"    # I
    .param p2, "cause"    # I

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public needIgnoredState(III)Z
    .registers 7
    .param p1, "state"    # I
    .param p2, "newState"    # I
    .param p3, "cause"    # I

    .line 110
    const/4 v0, 0x1

    const-string v1, "SSTExt"

    if-nez p1, :cond_e

    const/4 v2, 0x2

    if-ne p2, v2, :cond_e

    .line 113
    const-string v2, "set dontUpdateNetworkStateFlag for searching state"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v0

    .line 118
    :cond_e
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2a

    .line 120
    if-nez p1, :cond_1e

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1e

    if-eqz p3, :cond_1e

    .line 123
    const-string v2, "set dontUpdateNetworkStateFlag for REG_DENIED with cause"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v0

    .line 126
    :cond_1e
    if-nez p1, :cond_2a

    if-nez p2, :cond_2a

    if-eqz p3, :cond_2a

    .line 129
    const-string v2, "set dontUpdateNetworkStateFlag for NOT_REG_AND_NOT_SEARCH with cause"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0

    .line 135
    :cond_2a
    const-string v0, "clear dontUpdateNetworkStateFlag"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public needRatchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .registers 4
    .param p1, "oldSS"    # Landroid/telephony/ServiceState;
    .param p2, "newSS"    # Landroid/telephony/ServiceState;

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public needRejectCauseNotification(I)Z
    .registers 3
    .param p1, "cause"    # I

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public needSpnRuleShowPlmnOnly()Z
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public needToShowCsgId()Z
    .registers 2

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateSpnDisplay(Ljava/lang/String;Lmediatek/telephony/MtkServiceState;I)Ljava/lang/String;
    .registers 4
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "ss"    # Lmediatek/telephony/MtkServiceState;
    .param p3, "phoneId"    # I

    .line 73
    return-object p1
.end method

.method public operatorDefinedInternationalRoaming(Ljava/lang/String;)Z
    .registers 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public showEccForIms()Z
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method
