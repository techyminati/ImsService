.class public Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;
.super Ljava/lang/Object;
.source "DataSubSelectorOpExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;


# static fields
.field private static DBG:Z = false

.field private static final DSS_RET_CANNOT_GET_SIM_INFO:I = -0x2

.field private static final DSS_RET_INVALID_PHONE_INDEX:I = -0x1

.field private static final DSS_RET_SIM_NOT_ALL_LOADED:I = -0x3

.field private static LOG_TAG:Ljava/lang/String;

.field private static mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

.field private static mContext:Landroid/content/Context;

.field private static mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

.field private static mSimSwitchForDSS:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->DBG:Z

    .line 25
    const-string v0, "DSSExt"

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    .line 27
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 28
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mSimSwitchForDSS:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    .line 29
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private getHighCapabilityPhoneIdBySimType()I
    .registers 21

    .line 90
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 91
    .local v1, "phoneId":I
    sget-object v2, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v2

    .line 92
    .local v2, "phoneCount":I
    new-array v3, v2, [I

    .line 93
    .local v3, "simOpInfo":[I
    new-array v4, v2, [I

    .line 94
    .local v4, "simType":[I
    const/4 v5, 0x0

    .line 95
    .local v5, "insertedState":I
    const/4 v6, 0x0

    .line 96
    .local v6, "insertedSimCount":I
    const/4 v7, 0x0

    .line 97
    .local v7, "tSimCount":I
    const/4 v8, 0x0

    .line 98
    .local v8, "wSimCount":I
    const/4 v9, 0x0

    .line 99
    .local v9, "cSimCount":I
    const/4 v10, -0x1

    .line 101
    .local v10, "op09VolteOffPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isPS2SupportLTE()Z

    move-result v11

    if-eqz v11, :cond_178

    const/4 v11, 0x2

    if-ne v2, v11, :cond_178

    .line 103
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    .line 104
    const-string v13, "telephony_subscription_service"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionManager;

    .line 105
    .local v12, "subManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v13

    .line 106
    .local v13, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v13, :cond_38

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_33

    goto :goto_38

    :cond_33
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v15, 0x0

    :goto_39
    move v6, v15

    .line 107
    sget-object v15, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    invoke-static {v15, v6}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->isAnySimNotReady(Landroid/content/Context;I)Z

    move-result v15

    if-eqz v15, :cond_49

    .line 108
    const-string v11, "error: sim not ready, wait for next sub ready"

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 109
    const/4 v11, -0x3

    return v11

    .line 111
    :cond_49
    const/4 v15, 0x1

    if-lez v6, :cond_65

    .line 112
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_50
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_65

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/SubscriptionInfo;

    .line 113
    .local v17, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v18

    .line 114
    .local v18, "slotId":I
    shl-int v19, v15, v18

    or-int v5, v5, v19

    .line 115
    .end local v17    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v18    # "slotId":I
    goto :goto_50

    .line 119
    :cond_65
    const/4 v14, -0x1

    if-nez v6, :cond_6e

    .line 120
    const-string v11, "no sim card, don\'t switch"

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 121
    return v14

    .line 125
    :cond_6e
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v17

    if-nez v17, :cond_7b

    .line 126
    const-string v11, "cannot get sim operator info, don\'t switch"

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 127
    const/4 v11, -0x2

    return v11

    .line 130
    :cond_7b
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "i":I
    :goto_7f
    if-ge v14, v2, :cond_ac

    .line 131
    aget v15, v3, v14

    if-ne v11, v15, :cond_88

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_a7

    .line 133
    :cond_88
    aget v15, v3, v14

    sget-object v11, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    invoke-static {v14, v15, v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 134
    add-int/lit8 v9, v9, 0x1

    .line 135
    const/4 v11, 0x4

    aput v11, v3, v14

    .line 136
    move v10, v14

    goto :goto_a7

    .line 137
    :cond_99
    aget v11, v3, v14

    if-eqz v11, :cond_a7

    .line 138
    add-int/lit8 v8, v8, 0x1

    .line 139
    aget v11, v3, v14

    const/4 v15, 0x4

    if-eq v11, v15, :cond_a7

    .line 140
    const/4 v11, 0x3

    aput v11, v3, v14

    .line 130
    :cond_a7
    :goto_a7
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x2

    const/4 v15, 0x1

    goto :goto_7f

    .line 144
    .end local v14    # "i":I
    :cond_ac
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getHighCapabilityPhoneIdBySimType : Inserted SIM count: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", insertedStatus: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", tSimCount: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", wSimCount: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", cSimCount: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 144
    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 150
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_10e

    .line 152
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isTPlusWSupport()Z

    move-result v14

    if-eqz v14, :cond_10e

    .line 153
    const/4 v14, 0x0

    aget v15, v3, v14

    const/4 v14, 0x2

    if-ne v15, v14, :cond_101

    aget v14, v3, v11

    const/4 v11, 0x3

    if-ne v14, v11, :cond_102

    .line 155
    const/4 v1, 0x0

    goto :goto_10e

    .line 153
    :cond_101
    const/4 v11, 0x3

    .line 156
    :cond_102
    const/4 v14, 0x0

    aget v15, v3, v14

    if-ne v15, v11, :cond_10e

    const/4 v11, 0x1

    aget v14, v3, v11

    const/4 v11, 0x2

    if-ne v14, v11, :cond_10e

    .line 158
    const/4 v1, 0x1

    .line 163
    :cond_10e
    :goto_10e
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_139

    .line 165
    const/4 v14, 0x0

    aget v15, v3, v14

    if-ne v15, v11, :cond_127

    const/4 v11, 0x1

    aget v14, v3, v11

    sget-object v15, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {v11, v14, v15}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_127

    .line 167
    const/4 v1, 0x1

    goto :goto_139

    .line 168
    :cond_127
    const/4 v11, 0x0

    aget v14, v3, v11

    sget-object v15, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    invoke-static {v11, v14, v15}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_139

    const/4 v11, 0x1

    aget v14, v3, v11

    const/4 v11, 0x2

    if-ne v14, v11, :cond_139

    .line 170
    const/4 v1, 0x0

    .line 175
    :cond_139
    :goto_139
    const/4 v11, 0x3

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_165

    .line 177
    const/4 v14, 0x0

    aget v15, v3, v14

    sget-object v11, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    invoke-static {v14, v15, v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_153

    const/4 v11, 0x1

    aget v14, v3, v11

    const/4 v11, 0x3

    if-ne v14, v11, :cond_154

    .line 179
    const/4 v1, 0x0

    goto :goto_165

    .line 177
    :cond_153
    const/4 v11, 0x3

    .line 180
    :cond_154
    const/4 v14, 0x0

    aget v15, v3, v14

    if-ne v15, v11, :cond_165

    const/4 v11, 0x1

    aget v14, v3, v11

    sget-object v15, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    .line 181
    invoke-static {v11, v14, v15}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_165

    .line 182
    const/4 v1, 0x1

    .line 187
    :cond_165
    :goto_165
    const/4 v11, 0x0

    aget v11, v3, v11

    const/4 v14, 0x4

    if-ne v11, v14, :cond_178

    const/4 v11, 0x1

    aget v15, v3, v11

    if-ne v15, v14, :cond_178

    if-ne v8, v11, :cond_178

    if-ne v9, v11, :cond_178

    const/4 v11, -0x1

    if-eq v10, v11, :cond_178

    .line 190
    move v1, v10

    .line 193
    .end local v12    # "subManager":Landroid/telephony/SubscriptionManager;
    .end local v13    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_178
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHighCapabilityPhoneIdBySimType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 194
    return v1
.end method

.method private handleNeedWaitImsi(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isNeedWaitImsi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitImsi(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->subSelector(Landroid/content/Intent;)V

    .line 74
    :cond_11
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isNeedWaitImsiRoaming()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitImsiRoaming(Ljava/lang/String;)V

    .line 77
    :cond_1f
    return-void
.end method

.method private handleNeedWaitUnlock(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 80
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isNeedWaitUnlock()Z

    move-result v0

    const-string v1, "false"

    if-eqz v0, :cond_e

    .line 81
    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitUnlock(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->subSelector(Landroid/content/Intent;)V

    .line 84
    :cond_e
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isNeedWaitUnlockRoaming()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 85
    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitUnlockRoaming(Ljava/lang/String;)V

    .line 87
    :cond_17
    return-void
.end method

.method private hasConnectivity()Z
    .registers 6

    .line 249
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    .line 250
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 252
    .local v1, "info":Landroid/net/NetworkInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSubselector, networkinfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 253
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 254
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 255
    .local v2, "state":Landroid/net/NetworkInfo$DetailedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataSubselector, DetailedState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 256
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_48

    .line 257
    const/4 v3, 0x1

    return v3

    .line 260
    .end local v2    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_48
    const/4 v2, 0x0

    return v2
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "txt"    # Ljava/lang/String;

    .line 285
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->DBG:Z

    if-eqz v0, :cond_9

    .line 286
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_9
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "txt"    # Ljava/lang/String;

    .line 291
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->DBG:Z

    if-eqz v0, :cond_9

    .line 292
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_9
    return-void
.end method


# virtual methods
.method public handleAirPlaneModeOff(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->subSelector(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public handleBootCompleteAction()V
    .registers 7

    .line 237
    const-string v0, "handleBootCompleteAction"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 239
    .local v0, "simState1":I
    sget-object v2, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 240
    .local v2, "simState2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subsidylock: simState1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", simState2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 241
    if-ne v0, v3, :cond_45

    if-ne v2, v3, :cond_45

    .line 243
    const-string v3, "subsidylock: both SIM ABSENT, Set capability and data to phoneId 0"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 244
    sget-object v3, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 246
    :cond_45
    return-void
.end method

.method public handleConnectivityAction()V
    .registers 3

    .line 264
    const-string v0, "handleConnectivityAction"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->hasConnectivity()Z

    move-result v0

    const-string v1, "persist.vendor.subsidylock.connectivity_status"

    if-eqz v0, :cond_1b

    .line 266
    const-string v0, "SET CONNECTIVITY_STATUS TO 1"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    .line 268
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 270
    :cond_1b
    const-string v0, "SET CONNECTIVITY_STATUS TO 0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    .line 272
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_28
    return-void
.end method

.method public handleDefaultDataChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 282
    return-void
.end method

.method public handleSimStateChanged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 47
    const-string v0, "android.telephony.extra.SIM_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "simStatus":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subsidylock: handleSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 50
    const/16 v1, 0xa

    if-ne v0, v1, :cond_30

    .line 51
    const-string v1, "handleSimStateChanged: INTENT_VALUE_ICC_IMSI"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->handleSimImsiStatus(Landroid/content/Intent;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->handleNeedWaitImsi(Landroid/content/Intent;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->handleNeedWaitUnlock(Landroid/content/Intent;)V

    goto :goto_38

    .line 56
    :cond_30
    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    .line 57
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->handleSimImsiStatus(Landroid/content/Intent;)V

    .line 59
    :cond_38
    :goto_38
    return-void
.end method

.method public handleSubinfoRecordUpdated(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const-string v0, "simDetectStatus"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "detectedType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubinfoRecordUpdated: detectedType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->subSelector(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public init(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;)V
    .registers 4
    .param p1, "dataSubSelector"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p2, "simSwitchForDSS"    # Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    .line 40
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 41
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->getInstance(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 42
    sput-object p2, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mSimSwitchForDSS:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    .line 43
    return-void
.end method

.method public subSelector(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 200
    const/4 v0, -0x1

    .line 202
    .local v0, "phoneId":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->getHighCapabilityPhoneIdBySimType()I

    move-result v0

    .line 204
    const/4 v1, -0x3

    if-ne v0, v1, :cond_9

    .line 205
    return-void

    .line 206
    :cond_9
    const/4 v1, -0x2

    if-ne v0, v1, :cond_15

    .line 207
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitImsi(Ljava/lang/String;)V

    goto :goto_24

    .line 208
    :cond_15
    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 211
    .local v1, "defDataSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 215
    .end local v1    # "defDataSubId":I
    :cond_24
    :goto_24
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isSimUnLocked()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 216
    const-string v1, "DataSubSelector for OM: do not switch because of sim locking"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 217
    const-string v1, "true"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitUnlock(Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setSimStatus(Landroid/content/Intent;)V

    .line 219
    return-void

    .line 221
    :cond_3a
    const-string v1, "DataSubSelector for OM: no pin lock"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 222
    const-string v1, "false"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitUnlock(Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default data phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->log(Ljava/lang/String;)V

    .line 226
    if-ltz v0, :cond_67

    sget-object v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v1

    if-ge v0, v1, :cond_67

    .line 228
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapabilityIfNeeded(I)Z

    .line 232
    :cond_67
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->resetSimStatus()V

    .line 233
    return-void
.end method
