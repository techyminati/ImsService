.class public Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;
.super Ljava/lang/Object;
.source "SimSwitchForDSSExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;


# static fields
.field public static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SimSwitchDSSExt"

.field public static final USER_BUILD:Z

.field private static mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

.field protected static mContext:Landroid/content/Context;

.field private static mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->USER_BUILD:Z

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->DBG:Z

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 32
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 34
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private checkOp18SubsidyCapSwitch()Z
    .registers 17

    .line 76
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v0

    new-array v0, v0, [I

    .line 77
    .local v0, "simOpInfo":[I
    sget-object v1, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v1

    new-array v1, v1, [I

    .line 78
    .local v1, "simType":[I
    const/4 v2, -0x1

    .line 79
    .local v2, "targetSim":I
    const/4 v3, 0x0

    .line 80
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 81
    .local v4, "insertedStatus":I
    sget-object v5, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v5

    new-array v5, v5, [Z

    .line 82
    .local v5, "op18Usim":[Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    .line 83
    .local v6, "defDataSubId":I
    const/4 v7, -0x1

    .line 84
    .local v7, "defDataPhoneId":I
    sget-object v8, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    .line 86
    .local v8, "currIccId":[Ljava/lang/String;
    const-string v9, "checkOp18CapSwitch start"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 88
    const/4 v9, -0x1

    if-eq v6, v9, :cond_38

    .line 89
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    .line 91
    :cond_38
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_39
    sget-object v11, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v10, v11, :cond_98

    .line 92
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 93
    .local v11, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v11, :cond_51

    .line 94
    invoke-virtual {v11, v10}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v10

    .line 97
    :cond_51
    aget-object v14, v8, v10

    if-eqz v14, :cond_92

    aget-object v14, v8, v10

    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_60

    goto :goto_92

    .line 101
    :cond_60
    aget-object v12, v8, v10

    const-string v14, "N/A"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8f

    .line 103
    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v12

    if-ne v12, v13, :cond_76

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    shl-int v12, v13, v10

    or-int/2addr v4, v12

    goto :goto_8f

    .line 107
    :cond_76
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkOp18SubsidyCapSwitch, slot"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " is power off."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 91
    .end local v11    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_8f
    :goto_8f
    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    .line 98
    .restart local v11    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_92
    :goto_92
    const-string v9, "error: iccid not found, wait for next sub ready"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 99
    return v12

    .line 111
    .end local v10    # "i":I
    .end local v11    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_98
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkOp18SubsidyCapSwitch : Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", insertedStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 113
    invoke-static {v0, v1, v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v10

    if-nez v10, :cond_146

    .line 115
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v9

    if-eqz v9, :cond_144

    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 116
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isCanSwitch()Z

    move-result v9

    if-eqz v9, :cond_144

    .line 117
    const/4 v9, 0x0

    .line 118
    .local v9, "sim1_state":I
    const/4 v10, 0x0

    .line 119
    .local v10, "sim2_state":I
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->getMajorSim()I

    move-result v14

    .line 120
    .local v14, "protocolSim":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM is in locked state, protocolSim: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 121
    if-ltz v14, :cond_144

    if-gt v14, v13, :cond_144

    .line 123
    rsub-int/lit8 v11, v14, 0x1

    .line 124
    .local v11, "newProtocolSim":I
    sget-object v15, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    if-nez v15, :cond_f2

    .line 125
    const-string v13, "mContext is null"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 126
    return v12

    .line 128
    :cond_f2
    invoke-static {v15}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    .line 129
    sget-object v15, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    .line 130
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sim1_state: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", sim2_state = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 131
    const/4 v12, 0x4

    if-eq v9, v12, :cond_125

    if-ne v10, v12, :cond_144

    .line 133
    :cond_125
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Both SIMs are in locked state, newProtocolSim: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 134
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v12, v11}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 135
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 137
    return v13

    .line 141
    .end local v9    # "sim1_state":I
    .end local v10    # "sim2_state":I
    .end local v11    # "newProtocolSim":I
    .end local v14    # "protocolSim":I
    :cond_144
    const/4 v9, 0x0

    return v9

    .line 145
    :cond_146
    sget-object v10, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->isSimUnLocked()Z

    move-result v10

    if-nez v10, :cond_158

    .line 146
    const-string v10, "checkOp18SubsidyCapSwitch : set need wait unlock"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 147
    const-string v10, "true"

    invoke-static {v10}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setNeedWaitUnlock(Ljava/lang/String;)V

    .line 149
    :cond_158
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v10

    .line 151
    .local v10, "capabilitySimId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op18: capabilitySimId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 152
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_171
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v12

    if-ge v11, v12, :cond_183

    .line 154
    aget v12, v0, v11

    const/4 v14, 0x4

    if-ne v12, v14, :cond_180

    .line 155
    aput-boolean v13, v5, v11

    .line 152
    :cond_180
    add-int/lit8 v11, v11, 0x1

    goto :goto_171

    .line 159
    .end local v11    # "i":I
    :cond_183
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op18Usim: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 161
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_19c
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v12

    if-ge v11, v12, :cond_214

    .line 162
    if-ne v7, v11, :cond_211

    .line 163
    aget-boolean v12, v5, v11

    if-ne v12, v13, :cond_1ac

    .line 164
    move v2, v11

    goto :goto_1bd

    .line 166
    :cond_1ac
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1ad
    sget-object v14, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v14

    if-ge v12, v14, :cond_1bd

    .line 167
    aget-boolean v14, v5, v12

    if-ne v14, v13, :cond_1ba

    .line 168
    move v2, v12

    .line 166
    :cond_1ba
    add-int/lit8 v12, v12, 0x1

    goto :goto_1ad

    .line 172
    .end local v12    # "j":I
    :cond_1bd
    :goto_1bd
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "op18: i = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "targetSim : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 174
    aget-boolean v12, v5, v11

    if-ne v12, v13, :cond_1f4

    .line 175
    const-string v9, "op18-C1: cur is old op18 USIM, no change"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 176
    if-eq v10, v11, :cond_1ee

    .line 177
    const-string v9, "op18-C1a: old op18 SIM change slot, change!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 178
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 180
    :cond_1ee
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 182
    return v13

    .line 183
    :cond_1f4
    if-eq v2, v9, :cond_206

    .line 184
    const-string v9, "op18-C2: cur is not op18 SIM but find op18 SIM, change!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 185
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 186
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 188
    return v13

    .line 190
    :cond_206
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 192
    const-string v9, "op18-C6: no higher priority SIM, no cahnge"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 193
    return v13

    .line 161
    :cond_211
    add-int/lit8 v11, v11, 0x1

    goto :goto_19c

    .line 197
    .end local v11    # "i":I
    :cond_214
    aget-boolean v11, v5, v10

    if-ne v11, v13, :cond_21a

    .line 198
    move v2, v10

    goto :goto_22b

    .line 200
    :cond_21a
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_21b
    sget-object v12, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v12

    if-ge v11, v12, :cond_22b

    .line 201
    aget-boolean v12, v5, v11

    if-ne v12, v13, :cond_228

    .line 202
    move v2, v11

    .line 200
    :cond_228
    add-int/lit8 v11, v11, 0x1

    goto :goto_21b

    .line 206
    .end local v11    # "i":I
    :cond_22b
    :goto_22b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op18: target SIM :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 207
    aget-boolean v11, v5, v10

    if-ne v11, v13, :cond_24e

    .line 208
    const-string v9, "op18-C7: cur is new op18 USIM, no change"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 209
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 211
    return v13

    .line 212
    :cond_24e
    if-eq v2, v9, :cond_260

    .line 213
    const-string v9, "op18-C8: find op18 USIM, change!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 214
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 215
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 217
    return v13

    .line 219
    :cond_260
    sget-object v9, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->setDefaultData(I)V

    .line 221
    const-string v9, "op18-C12: no higher priority SIM, no cahnge"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 223
    return v13
.end method

.method private getMajorSim()I
    .registers 5

    .line 62
    const-string v0, "persist.vendor.radio.simswitch"

    .line 63
    .local v0, "PROPERTY_MAJOR_SIM":Ljava/lang/String;
    const-string v1, "persist.vendor.radio.simswitch"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "currMajorSim":Ljava/lang/String;
    if-eqz v1, :cond_33

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMajorSim]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 68
    :cond_33
    const-string v2, "[getMajorSim]: fail to get major SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->log(Ljava/lang/String;)V

    .line 69
    const/4 v2, -0x1

    return v2
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "txt"    # Ljava/lang/String;

    .line 227
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->DBG:Z

    if-eqz v0, :cond_9

    .line 228
    const-string v0, "SimSwitchDSSExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_9
    return-void
.end method


# virtual methods
.method public checkCapSwitch(I)Z
    .registers 3
    .param p1, "policy"    # I

    .line 47
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->checkOp18SubsidyCapSwitch()Z

    move-result v0

    return v0

    .line 52
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .registers 3
    .param p1, "dataSubSelector"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 41
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 42
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->getInstance(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 43
    return-void
.end method

.method public isNeedSimSwitch()I
    .registers 2

    .line 56
    const/4 v0, 0x2

    return v0
.end method
