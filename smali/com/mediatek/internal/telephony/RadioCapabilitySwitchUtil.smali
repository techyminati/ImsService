.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final ENHANCEMENT_T_PLUS_C:I = 0x2

.field public static final ENHANCEMENT_T_PLUS_T:I = 0x0

.field public static final ENHANCEMENT_T_PLUS_W:I = 0x1

.field public static final ENHANCEMENT_W_PLUS_C:I = 0x3

.field public static final ENHANCEMENT_W_PLUS_NA:I = 0x5

.field public static final ENHANCEMENT_W_PLUS_W:I = 0x4

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final IMSI_READY:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "RadioCapabilitySwitchUtil"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09_3G:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP18:[Ljava/lang/String;

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OP18:I = 0x4

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCHING:I = 0x4

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1

.field public static final SUBSIDY_LOCK_SUPPORT:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 101
    const-string v0, "46000"

    const-string v1, "46002"

    const-string v2, "46007"

    const-string v3, "46008"

    const-string v4, "45412"

    const-string v5, "45413"

    const-string v6, "00101"

    const-string v7, "00211"

    const-string v8, "00321"

    const-string v9, "00431"

    const-string v10, "00541"

    const-string v11, "00651"

    const-string v12, "00761"

    const-string v13, "00871"

    const-string v14, "00902"

    const-string v15, "01012"

    const-string v16, "01122"

    const-string v17, "01232"

    const-string v18, "46004"

    const-string v19, "46602"

    const-string v20, "50270"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 110
    const-string v0, "46001"

    const-string v1, "46006"

    const-string v2, "46009"

    const-string v3, "45407"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 115
    const-string v0, "46005"

    const-string v1, "45502"

    const-string v2, "46003"

    const-string v3, "46011"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 120
    const-string v0, "20404"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09_3G:[Ljava/lang/String;

    .line 125
    const-string v1, "405840"

    const-string v2, "405854"

    const-string v3, "405855"

    const-string v4, "405856"

    const-string v5, "405857"

    const-string v6, "405858"

    const-string v7, "405859"

    const-string v8, "405860"

    const-string v9, "405861"

    const-string v10, "405862"

    const-string v11, "405863"

    const-string v12, "405864"

    const-string v13, "405865"

    const-string v14, "405866"

    const-string v15, "405867"

    const-string v16, "405868"

    const-string v17, "405869"

    const-string v18, "405870"

    const-string v19, "405871"

    const-string v20, "405872"

    const-string v21, "405873"

    const-string v22, "405874"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    .line 148
    const-string v0, "vendor.ril.imsi.status.sim1"

    const-string v1, "vendor.ril.imsi.status.sim2"

    const-string v2, "vendor.ril.imsi.status.sim3"

    const-string v3, "vendor.ril.imsi.status.sim4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    .line 155
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 162
    const-string v0, "vendor.gsm.ril.ct3g"

    const-string v1, "vendor.gsm.ril.ct3g.2"

    const-string v2, "vendor.gsm.ril.ct3g.3"

    const-string v3, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllSimImsiStatus()V
    .registers 2

    .line 869
    const-string v0, "clearAllSimImsiStatus"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 870
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 871
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 873
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method public static getDeviceNrType()I
    .registers 4

    .line 665
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "uuid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 668
    .local v1, "nrType":I
    const-string v2, "nr1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 670
    const/4 v1, 0x1

    goto :goto_26

    .line 671
    :cond_13
    const-string v2, "nr2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 673
    const/4 v1, 0x2

    goto :goto_26

    .line 674
    :cond_1d
    const-string v2, "nr3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 676
    const/4 v1, 0x3

    .line 678
    :cond_26
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceNrType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nrType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 680
    return v1
.end method

.method public static getHashCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "iccid"    # Ljava/lang/String;

    .line 905
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 906
    .local v0, "alga":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 907
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 908
    .local v1, "hashCode":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_17

    .line 909
    .local v2, "strIccid":Ljava/lang/String;
    return-object v2

    .line 910
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v1    # "hashCode":[B
    .end local v2    # "strIccid":Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 911
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RadioCapabilitySwitchUtil SHA-256 must exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .registers 11
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .line 576
    const/4 v0, -0x1

    .line 577
    .local v0, "targetSim":I
    array-length v1, p1

    .line 579
    .local v1, "phoneNum":I
    aget-boolean v2, p1, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 580
    return p0

    .line 582
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_13

    .line 583
    aget-boolean v4, p1, v2

    if-ne v4, v3, :cond_10

    .line 584
    move v0, v2

    .line 582
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 587
    .end local v2    # "i":I
    :cond_13
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4d

    aget-boolean v4, p2, p0

    if-ne v4, v3, :cond_1b

    goto :goto_4d

    .line 590
    :cond_1b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v1, :cond_26

    .line 591
    aget-boolean v5, p2, v4

    if-ne v5, v3, :cond_23

    .line 592
    move v0, v4

    .line 590
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 595
    .end local v4    # "i":I
    :cond_26
    if-ne v0, v2, :cond_4c

    aget-boolean v4, p3, p0

    if-ne v4, v3, :cond_2d

    goto :goto_4c

    .line 598
    :cond_2d
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2e
    if-ge v4, v1, :cond_38

    .line 599
    aget-boolean v5, p3, v4

    if-ne v5, v3, :cond_35

    .line 600
    move v0, v4

    .line 598
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 603
    .end local v4    # "i":I
    :cond_38
    if-ne v0, v2, :cond_4b

    aget-boolean v2, p4, p0

    if-ne v2, v3, :cond_3f

    goto :goto_4b

    .line 606
    :cond_3f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_40
    if-ge v2, v1, :cond_4a

    .line 607
    aget-boolean v4, p4, v2

    if-ne v4, v3, :cond_47

    .line 608
    move v0, v2

    .line 606
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 611
    .end local v2    # "i":I
    :cond_4a
    return v0

    .line 604
    :cond_4b
    :goto_4b
    return v0

    .line 596
    :cond_4c
    :goto_4c
    return v0

    .line 588
    :cond_4d
    :goto_4d
    return v0
.end method

.method public static getHighestPriorityPhone(I[I)I
    .registers 10
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "targetPhone":I
    array-length v1, p1

    .line 624
    .local v1, "phoneNum":I
    const/4 v2, 0x0

    .line 625
    .local v2, "highestPriorityCount":I
    const/4 v3, 0x0

    .line 627
    .local v3, "highestPriorityBitMap":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    const/4 v5, 0x1

    if-ge v4, v1, :cond_20

    .line 628
    aget v6, p1, v4

    aget v7, p1, v0

    if-ge v6, v7, :cond_13

    .line 629
    move v0, v4

    .line 630
    const/4 v2, 0x1

    .line 631
    shl-int v3, v5, v4

    goto :goto_1d

    .line 632
    :cond_13
    aget v6, p1, v4

    aget v7, p1, v0

    if-ne v6, v7, :cond_1d

    .line 633
    add-int/lit8 v2, v2, 0x1

    .line 634
    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 627
    :cond_1d
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 638
    .end local v4    # "i":I
    :cond_20
    if-ne v2, v5, :cond_23

    .line 639
    return v0

    .line 640
    :cond_23
    const/4 v4, -0x1

    if-ne p0, v4, :cond_27

    .line 643
    return v4

    .line 644
    :cond_27
    shl-int/2addr v5, p0

    and-int/2addr v5, v3

    if-eqz v5, :cond_2c

    .line 645
    return p0

    .line 647
    :cond_2c
    return v4
.end method

.method public static getMainCapabilityPhoneId()I
    .registers 3

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 660
    .end local v0    # "phoneId":I
    .local v1, "phoneId":I
    return v1
.end method

.method public static getProtocolStackId(I)I
    .registers 3
    .param p0, "slot"    # I

    .line 889
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 890
    .local v0, "majorSlot":I
    if-ne p0, v0, :cond_8

    .line 891
    const/4 v1, 0x1

    return v1

    .line 893
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isDssNoResetSupport()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 894
    if-ge p0, v0, :cond_18

    .line 895
    add-int/lit8 v1, p0, 0x2

    return v1

    .line 897
    :cond_13
    if-nez p0, :cond_18

    .line 898
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 900
    :cond_18
    add-int/lit8 v1, p0, 0x1

    return v1
.end method

.method private static getSimImsiStatus(I)Ljava/lang/String;
    .registers 3
    .param p0, "slot"    # I

    .line 864
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 865
    .local v0, "propStr":Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfo([I[II)Z
    .registers 19
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .line 187
    move-object/from16 v0, p0

    move/from16 v1, p2

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 188
    .local v2, "strMnc":[Ljava/lang/String;
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    .line 191
    .local v3, "strSimType":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    array-length v5, v0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_28a

    .line 192
    if-nez v4, :cond_14

    .line 193
    const-string v5, "vendor.gsm.ril.uicctype"

    .local v5, "propStr":Ljava/lang/String;
    goto :goto_27

    .line 195
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vendor.gsm.ril.uicctype."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    .restart local v5    # "propStr":Ljava/lang/String;
    :goto_27
    const-string v7, ""

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    .line 198
    aget-object v8, v3, v4

    const-string v9, "SIM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v8, :cond_3e

    .line 199
    aput v10, p1, v4

    goto :goto_4d

    .line 200
    :cond_3e
    aget-object v8, v3, v4

    const-string v11, "USIM"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 201
    aput v6, p1, v4

    goto :goto_4d

    .line 203
    :cond_4b
    aput v9, p1, v4

    .line 206
    :goto_4d
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v8

    .line 207
    .local v8, "subId":I
    const-string v11, "strMnc["

    if-gez v8, :cond_5c

    .line 208
    const-string v12, "subId is invalid"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_d5

    .line 210
    :cond_5c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v4

    .line 211
    aget-object v12, v2, v4

    if-nez v12, :cond_9a

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] is null, get mnc by ril.uim.subscriberid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vendor.ril.uim.subscriberid."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v4

    .line 216
    :cond_9a
    aget-object v12, v2, v4

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] is null, get mnc by vendor.gsm.ril.uicc.mccmnc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 218
    if-nez v4, :cond_be

    .line 219
    const-string v5, "vendor.gsm.ril.uicc.mccmnc"

    goto :goto_cf

    .line 221
    :cond_be
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vendor.gsm.ril.uicc.mccmnc."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    :goto_cf
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v4

    .line 227
    :cond_d5
    :goto_d5
    aget-object v12, v2, v4

    if-nez v12, :cond_f2

    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 229
    aput-object v7, v2, v4

    .line 232
    :cond_f2
    aget-object v12, v2, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x6

    if-lt v12, v13, :cond_104

    .line 233
    aget-object v12, v2, v4

    invoke-virtual {v12, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v4

    goto :goto_115

    .line 234
    :cond_104
    aget-object v12, v2, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_115

    .line 235
    aget-object v12, v2, v4

    invoke-virtual {v12, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v4

    .line 237
    :cond_115
    :goto_115
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SimType["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v4

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "insertedStatus:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 239
    const-string v12, "N/A"

    if-ltz v1, :cond_196

    shl-int v14, v6, v4

    and-int/2addr v14, v1

    if-lez v14, :cond_196

    .line 240
    aget-object v14, v2, v4

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_190

    aget-object v14, v2, v4

    const-string v15, "error"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_157

    goto :goto_190

    .line 244
    :cond_157
    aget-object v14, v2, v4

    const-string v15, "sim_lock"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_167

    .line 245
    const-string v6, "SIM is lock, wait pin unlock"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 246
    return v10

    .line 248
    :cond_167
    aget-object v14, v2, v4

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18a

    aget-object v14, v2, v4

    const-string v15, "sim_absent"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17a

    goto :goto_18a

    .line 252
    :cond_17a
    aget-object v14, v2, v4

    const-string v15, "[0-9]+"

    invoke-virtual {v14, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_196

    .line 253
    const-string v6, "strMnc have non-numeric value, return false"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 254
    return v10

    .line 249
    :cond_18a
    :goto_18a
    const-string v6, "strMnc have invalid value, return false"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 250
    return v10

    .line 241
    :cond_190
    :goto_190
    const-string v6, "SIM is inserted but no imsi"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 242
    return v10

    .line 257
    :cond_196
    sget-object v14, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    array-length v15, v14

    :goto_199
    if-ge v10, v15, :cond_1ae

    aget-object v6, v14, v10

    .line 258
    .local v6, "mccmnc":Ljava/lang/String;
    aget-object v9, v2, v4

    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a9

    .line 259
    const/4 v9, 0x2

    aput v9, v0, v4

    .line 260
    goto :goto_1ae

    .line 258
    :cond_1a9
    const/4 v9, 0x2

    .line 257
    .end local v6    # "mccmnc":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto :goto_199

    .line 263
    :cond_1ae
    :goto_1ae
    aget v6, v0, v4

    if-nez v6, :cond_1c9

    .line 264
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    array-length v9, v6

    const/4 v10, 0x0

    :goto_1b6
    if-ge v10, v9, :cond_1c9

    aget-object v14, v6, v10

    .line 265
    .local v14, "mccmnc":Ljava/lang/String;
    aget-object v15, v2, v4

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c6

    .line 266
    const/4 v6, 0x3

    aput v6, v0, v4

    .line 267
    goto :goto_1c9

    .line 264
    .end local v14    # "mccmnc":Ljava/lang/String;
    :cond_1c6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b6

    .line 271
    :cond_1c9
    :goto_1c9
    aget v6, v0, v4

    if-nez v6, :cond_1e4

    .line 272
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    array-length v10, v6

    const/4 v14, 0x0

    :goto_1d1
    if-ge v14, v10, :cond_1e4

    aget-object v15, v6, v14

    .line 273
    .local v15, "mccmnc":Ljava/lang/String;
    aget-object v9, v2, v4

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e1

    .line 274
    const/4 v6, 0x4

    aput v6, v0, v4

    .line 275
    goto :goto_1e4

    .line 272
    .end local v15    # "mccmnc":Ljava/lang/String;
    :cond_1e1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d1

    .line 279
    :cond_1e4
    :goto_1e4
    aget v6, v0, v4

    if-nez v6, :cond_211

    .line 280
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09_3G:[Ljava/lang/String;

    array-length v9, v6

    const/4 v10, 0x0

    :goto_1ec
    if-ge v10, v9, :cond_211

    aget-object v14, v6, v10

    .line 281
    .restart local v14    # "mccmnc":Ljava/lang/String;
    aget-object v15, v2, v4

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20c

    .line 282
    sget-object v15, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 283
    .local v15, "uimDualMode":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20c

    .line 284
    const/4 v1, 0x4

    aput v1, v0, v4

    .line 285
    goto :goto_211

    .line 280
    .end local v14    # "mccmnc":Ljava/lang/String;
    .end local v15    # "uimDualMode":Ljava/lang/String;
    :cond_20c
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p2

    goto :goto_1ec

    .line 291
    :cond_211
    :goto_211
    const-string v1, "persist.vendor.operator.optr"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "OP18"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_225

    .line 292
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v1

    if-eqz v1, :cond_241

    .line 293
    :cond_225
    aget v1, v0, v4

    if-nez v1, :cond_241

    .line 294
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    array-length v6, v1

    const/4 v10, 0x0

    :goto_22d
    if-ge v10, v6, :cond_241

    aget-object v9, v1, v10

    .line 295
    .local v9, "mccmnc":Ljava/lang/String;
    aget-object v14, v2, v4

    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23d

    .line 296
    const/4 v14, 0x4

    aput v14, v0, v4

    .line 297
    goto :goto_241

    .line 295
    :cond_23d
    const/4 v14, 0x4

    .line 294
    .end local v9    # "mccmnc":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_22d

    .line 302
    :cond_241
    :goto_241
    aget v1, v0, v4

    if-nez v1, :cond_258

    .line 303
    aget-object v1, v2, v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_258

    aget-object v1, v2, v4

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_258

    .line 304
    const/4 v1, 0x1

    aput v1, v0, v4

    .line 307
    :cond_258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", simOpInfo["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 191
    .end local v8    # "subId":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p2

    goto/16 :goto_b

    .line 311
    .end local v4    # "i":I
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_28a
    const/4 v1, 0x1

    return v1
.end method

.method public static isAnySimLocked(I)Z
    .registers 10
    .param p0, "phoneNum"    # I

    .line 802
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 803
    const-string v0, "isAnySimLocked always returns false in C2K"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 804
    return v1

    .line 807
    :cond_d
    new-array v0, p0, [Ljava/lang/String;

    .line 808
    .local v0, "mnc":[Ljava/lang/String;
    new-array v2, p0, [Ljava/lang/String;

    .line 810
    .local v2, "iccid":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, p0, :cond_a9

    .line 811
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 812
    .local v4, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v4, :cond_22

    .line 813
    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 817
    :cond_22
    aget-object v5, v2, v3

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, ""

    if-nez v5, :cond_89

    .line 818
    const-string v5, "vendor.gsm.sim.operator.numeric"

    invoke-static {v3, v5, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 820
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x6

    if-lt v5, v8, :cond_48

    .line 821
    aget-object v5, v0, v3

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    goto :goto_59

    .line 822
    :cond_48
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x5

    if-lt v5, v8, :cond_59

    .line 823
    aget-object v5, v0, v3

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 825
    :cond_59
    :goto_59
    aget-object v5, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_89

    .line 826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from gsm.sim.operator.numeric:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ,iccid = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 831
    :cond_89
    aget-object v5, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a5

    aget-object v5, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    aget-object v5, v0, v3

    .line 832
    const-string v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 833
    :cond_a3
    const/4 v1, 0x1

    return v1

    .line 810
    .end local v4    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 836
    .end local v3    # "i":I
    :cond_a9
    return v1
.end method

.method public static isCapabilitySwitching()Z
    .registers 3

    .line 945
    const/4 v0, 0x0

    .line 947
    .local v0, "result":Z
    :try_start_1
    const-string v1, "phoneEx"

    .line 948
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 949
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_14

    .line 950
    const-string v2, "iTelEx is null!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 951
    const/4 v2, 0x0

    return v2

    .line 953
    :cond_14
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isCapabilitySwitching()Z

    move-result v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a

    move v0, v2

    .line 956
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_1e

    .line 954
    :catch_1a
    move-exception v1

    .line 955
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 957
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return v0
.end method

.method public static isCdmaCard(IILandroid/content/Context;)Z
    .registers 8
    .param p0, "phoneId"    # I
    .param p1, "opInfo"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "isCdmaSim":Z
    if-ltz p0, :cond_60

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_e

    goto :goto_60

    .line 359
    :cond_e
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "cardType":Ljava/lang/String;
    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2a

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v3

    :goto_2b
    move v0, v2

    .line 362
    if-nez v0, :cond_47

    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 363
    sget-object v2, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "uimDualMode":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 365
    const/4 v0, 0x1

    .line 369
    .end local v2    # "uimDualMode":Ljava/lang/String;
    :cond_47
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4b

    .line 370
    const/4 v0, 0x1

    .line 373
    :cond_4b
    if-ne v0, v3, :cond_5f

    invoke-static {p0, p2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isVolteEnabled(ILandroid/content/Context;)Z

    move-result v2

    if-ne v2, v3, :cond_5f

    .line 374
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isHVolteEnabled()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 376
    const/4 v0, 0x0

    .line 377
    const-string v2, "isCdmaCard, volte is enabled, SRLTE is unused for CT card"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 380
    :cond_5f
    return v0

    .line 355
    .end local v1    # "cardType":Ljava/lang/String;
    :cond_60
    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaCard invalid phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 356
    return v0
.end method

.method public static isDssNoResetSupport()Z
    .registers 2

    .line 876
    const-string v0, "vendor.ril.simswitch.no_reset_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 878
    const/4 v0, 0x1

    return v0

    .line 881
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static isHVolteEnabled()Z
    .registers 3

    .line 345
    const-string v0, "persist.vendor.mtk_ct_volte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 346
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    .line 349
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 347
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method public static isNeedShowSimDialog()I
    .registers 17

    .line 699
    const-string v0, "ro.vendor.mtk_disable_cap_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 700
    const-string v0, "mtk_disable_cap_switch is true"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 701
    return v1

    .line 704
    :cond_10
    const-string v0, "isNeedShowSimDialog start"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 706
    .local v0, "phoneCount":I
    new-array v3, v0, [I

    .line 707
    .local v3, "simOpInfo":[I
    new-array v4, v0, [I

    .line 708
    .local v4, "simType":[I
    new-array v5, v0, [Ljava/lang/String;

    .line 709
    .local v5, "currIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 710
    .local v6, "insertedSimCount":I
    const/4 v7, 0x0

    .line 711
    .local v7, "insertedStatus":I
    const/4 v8, 0x0

    .line 712
    .local v8, "op02CardCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v9, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v10, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v11, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v12, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3b
    const-string v15, "RadioCapabilitySwitchUtil"

    if-ge v13, v0, :cond_b9

    .line 718
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 719
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v1, :cond_4f

    .line 720
    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v13

    .line 722
    :cond_4f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currIccid["

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v5, v13

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 723
    aget-object v2, v5, v13

    if-eqz v2, :cond_b2

    aget-object v2, v5, v13

    const-string v14, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    goto :goto_b2

    .line 727
    :cond_7c
    aget-object v2, v5, v13

    const-string v14, "N/A"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 729
    invoke-static {v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_94

    .line 730
    add-int/lit8 v6, v6, 0x1

    .line 731
    shl-int v2, v14, v13

    or-int/2addr v2, v7

    move v7, v2

    .end local v7    # "insertedStatus":I
    .local v2, "insertedStatus":I
    goto :goto_ad

    .line 733
    .end local v2    # "insertedStatus":I
    .restart local v7    # "insertedStatus":I
    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isNeedShowSimDialog, slot"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is power off."

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 717
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_ad
    :goto_ad
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_3b

    .line 724
    .restart local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_b2
    :goto_b2
    const-string v2, "iccid not found, wait for next sim state change"

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v2, 0x3

    return v2

    .line 738
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .end local v13    # "i":I
    :cond_b9
    const/4 v1, 0x2

    if-ge v6, v1, :cond_c3

    .line 739
    const-string v1, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 740
    const/4 v1, 0x1

    return v1

    .line 742
    :cond_c3
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCapabilitySwitching()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 743
    const-string v1, "SIM switch executing"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 744
    const/4 v1, 0x4

    return v1

    .line 746
    :cond_d0
    invoke-static {v3, v4, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 747
    const-string v2, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return v1

    .line 750
    :cond_dc
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_dd
    if-ge v2, v0, :cond_10e

    .line 752
    aget v13, v4, v2

    const/4 v14, 0x1

    if-ne v14, v13, :cond_ec

    .line 753
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    .line 754
    :cond_ec
    aget v13, v4, v2

    if-nez v13, :cond_f7

    .line 755
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_f7
    :goto_f7
    aget v13, v3, v2

    const/4 v14, 0x3

    if-ne v14, v13, :cond_104

    .line 760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 762
    :cond_104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :goto_10b
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 765
    .end local v2    # "i":I
    :cond_10e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "usimIndexList size = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "op02IndexList size = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_163

    .line 770
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_145
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15a

    .line 771
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 772
    add-int/lit8 v8, v8, 0x1

    .line 770
    :cond_157
    add-int/lit8 v1, v1, 0x1

    goto :goto_145

    .line 776
    .end local v1    # "i":I
    :cond_15a
    const/4 v1, 0x1

    if-ne v8, v1, :cond_18f

    .line 777
    const-string v2, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 778
    return v1

    .line 780
    :cond_163
    const/4 v1, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_170

    .line 781
    const-string v2, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 782
    return v1

    .line 786
    :cond_170
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_171
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_186

    .line 787
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 788
    add-int/lit8 v8, v8, 0x1

    .line 786
    :cond_183
    add-int/lit8 v1, v1, 0x1

    goto :goto_171

    .line 792
    .end local v1    # "i":I
    :cond_186
    const/4 v1, 0x1

    if-ne v8, v1, :cond_18f

    .line 793
    const-string v2, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 794
    return v1

    .line 797
    :cond_18f
    const-string v1, "isNeedShowSimDialog: Show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 798
    const/4 v1, 0x0

    return v1
.end method

.method public static isPS2SupportLTE()Z
    .registers 2

    .line 841
    const-string v0, "persist.vendor.radio.mtk_ps2_rat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 843
    const/4 v0, 0x1

    return v0

    .line 846
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static isRadioOffBySimManagement(I)Z
    .registers 5
    .param p0, "phoneId"    # I

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, "result":Z
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 932
    .local v1, "subId":I
    :try_start_5
    const-string v2, "phoneEx"

    .line 933
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 934
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_18

    .line 935
    const-string v3, "iTelEx is null!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 936
    const/4 v3, 0x0

    return v3

    .line 938
    :cond_18
    invoke-interface {v2, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isRadioOffBySimManagement(I)Z

    move-result v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1c} :catch_1e

    move v0, v3

    .line 941
    .end local v2    # "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_22

    .line 939
    :catch_1e
    move-exception v2

    .line 940
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 942
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_22
    return v0
.end method

.method public static isSimOn(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .line 916
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->isSimOnOffEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 917
    return v1

    .line 920
    :cond_c
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOnOffState(I)I

    move-result v0

    .line 921
    .local v0, "state":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1a

    .line 922
    const/4 v1, 0x0

    return v1

    .line 924
    :cond_1a
    return v1
.end method

.method public static isSkipCapabilitySwitch(IILandroid/content/Context;)Z
    .registers 21
    .param p0, "majorPhoneId"    # I
    .param p1, "phoneNum"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 436
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-array v3, v1, [I

    .line 437
    .local v3, "simOpInfo":[I
    new-array v4, v1, [I

    .line 438
    .local v4, "simType":[I
    const/4 v5, 0x0

    .line 439
    .local v5, "insertedState":I
    const/4 v6, 0x0

    .line 440
    .local v6, "insertedSimCount":I
    const/4 v7, 0x0

    .line 441
    .local v7, "tSimCount":I
    const/4 v8, 0x0

    .line 442
    .local v8, "wSimCount":I
    const/4 v9, 0x0

    .line 443
    .local v9, "cSimCount":I
    new-array v10, v1, [Ljava/lang/String;

    .line 444
    .local v10, "currIccId":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 445
    .local v11, "hasOp09Sim":Z
    const/4 v12, -0x1

    .line 446
    .local v12, "op09VolteOffPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isPS2SupportLTE()Z

    move-result v13

    if-eqz v13, :cond_1a8

    .line 447
    const/4 v13, 0x2

    const/4 v15, 0x1

    if-le v1, v13, :cond_34

    .line 448
    if-ge v0, v13, :cond_32

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v14

    if-ge v14, v13, :cond_32

    .line 449
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v13

    if-nez v13, :cond_32

    .line 450
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isTdscdmaSupported()Z

    move-result v13

    if-nez v13, :cond_32

    .line 451
    return v15

    .line 453
    :cond_32
    const/4 v13, 0x0

    return v13

    .line 456
    :cond_34
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_35
    if-ge v14, v1, :cond_9e

    .line 457
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 458
    .local v13, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v13, :cond_47

    .line 459
    invoke-virtual {v13, v14}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v14

    .line 463
    :cond_47
    aget-object v16, v10, v14

    if-eqz v16, :cond_95

    aget-object v15, v10, v14

    move/from16 v17, v7

    .end local v7    # "tSimCount":I
    .local v17, "tSimCount":I
    const-string v7, ""

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    goto :goto_97

    .line 467
    :cond_58
    aget-object v7, v10, v14

    const-string v15, "N/A"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 469
    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimOn(I)Z

    move-result v7

    const/4 v15, 0x1

    if-ne v7, v15, :cond_75

    .line 470
    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isRadioOffBySimManagement(I)Z

    move-result v7

    if-nez v7, :cond_75

    .line 471
    add-int/lit8 v6, v6, 0x1

    .line 472
    shl-int v7, v15, v14

    or-int/2addr v5, v7

    goto :goto_8e

    .line 474
    :cond_75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSkipCapabilitySwitch, slot"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " is power off."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 456
    .end local v13    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_8e
    :goto_8e
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v17

    const/4 v13, 0x2

    const/4 v15, 0x1

    goto :goto_35

    .line 463
    .end local v17    # "tSimCount":I
    .restart local v7    # "tSimCount":I
    .restart local v13    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    :cond_95
    move/from16 v17, v7

    .line 464
    .end local v7    # "tSimCount":I
    .restart local v17    # "tSimCount":I
    :goto_97
    const-string v7, "iccid is not ready, do capability switch"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 465
    const/4 v7, 0x0

    return v7

    .line 456
    .end local v13    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .end local v17    # "tSimCount":I
    .restart local v7    # "tSimCount":I
    :cond_9e
    move/from16 v17, v7

    .line 480
    .end local v7    # "tSimCount":I
    .end local v14    # "i":I
    .restart local v17    # "tSimCount":I
    if-nez v6, :cond_a9

    .line 481
    const-string v7, "no sim card, skip capability switch"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 482
    const/4 v7, 0x1

    return v7

    .line 486
    :cond_a9
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v7

    if-nez v7, :cond_b6

    .line 487
    const-string v7, "cannot get sim operator info, do capability switch"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 488
    const/4 v7, 0x0

    return v7

    .line 491
    :cond_b6
    const/4 v7, 0x0

    move v13, v12

    move v12, v11

    move v11, v9

    move v9, v8

    move/from16 v8, v17

    .end local v17    # "tSimCount":I
    .local v7, "i":I
    .local v8, "tSimCount":I
    .local v9, "wSimCount":I
    .local v11, "cSimCount":I
    .local v12, "hasOp09Sim":Z
    .local v13, "op09VolteOffPhoneId":I
    :goto_bd
    if-ge v7, v1, :cond_e9

    .line 492
    const/4 v15, 0x1

    shl-int v17, v15, v7

    and-int v15, v17, v5

    if-lez v15, :cond_e6

    .line 493
    aget v15, v3, v7

    const/4 v14, 0x2

    if-ne v14, v15, :cond_ce

    .line 494
    add-int/lit8 v8, v8, 0x1

    goto :goto_e0

    .line 495
    :cond_ce
    aget v14, v3, v7

    invoke-static {v7, v14, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_da

    .line 496
    add-int/lit8 v11, v11, 0x1

    .line 497
    move v13, v7

    goto :goto_e0

    .line 498
    :cond_da
    aget v14, v3, v7

    if-eqz v14, :cond_e0

    .line 499
    add-int/lit8 v9, v9, 0x1

    .line 501
    :cond_e0
    :goto_e0
    aget v14, v3, v7

    const/4 v15, 0x4

    if-ne v14, v15, :cond_e6

    .line 502
    const/4 v12, 0x1

    .line 491
    :cond_e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_bd

    .line 507
    .end local v7    # "i":I
    :cond_e9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isSkipCapabilitySwitch : Inserted SIM count: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", insertedStatus: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", tSimCount: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", wSimCount: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", cSimCount: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 511
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_12b

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12b

    if-ne v8, v7, :cond_12b

    .line 513
    const/4 v7, 0x1

    return v7

    .line 511
    :cond_12b
    const/4 v7, 0x1

    .line 517
    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_146

    const/4 v14, 0x2

    if-ne v6, v14, :cond_146

    if-ne v8, v7, :cond_146

    if-ne v9, v7, :cond_146

    .line 519
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isTPlusWSupport()Z

    move-result v15

    if-eqz v15, :cond_146

    aget v15, v3, v0

    if-eq v15, v14, :cond_146

    if-nez v12, :cond_146

    .line 521
    return v7

    .line 526
    :cond_146
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_15d

    if-ne v6, v7, :cond_15d

    const/4 v7, 0x1

    if-ne v8, v7, :cond_15d

    if-ne v11, v7, :cond_15d

    .line 528
    aget v14, v3, v0

    invoke-static {v0, v14, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_15d

    .line 529
    return v7

    .line 534
    :cond_15d
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v7

    if-eqz v7, :cond_175

    const/4 v7, 0x2

    if-ne v6, v7, :cond_175

    const/4 v7, 0x1

    if-ne v9, v7, :cond_175

    if-ne v11, v7, :cond_175

    .line 536
    aget v14, v3, v0

    invoke-static {v0, v14, v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(IILandroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_175

    .line 537
    return v7

    .line 542
    :cond_175
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v14

    if-eqz v14, :cond_183

    const/4 v7, 0x2

    if-ne v6, v7, :cond_183

    if-ne v9, v7, :cond_183

    .line 544
    const/4 v7, 0x1

    return v7

    .line 548
    :cond_183
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v7

    if-eqz v7, :cond_190

    const/4 v7, 0x1

    if-ne v6, v7, :cond_191

    if-ne v9, v7, :cond_191

    .line 550
    return v7

    .line 548
    :cond_190
    const/4 v7, 0x1

    .line 554
    :cond_191
    const/4 v14, 0x0

    aget v15, v3, v14

    const/4 v14, 0x4

    if-ne v14, v15, :cond_1a2

    aget v15, v3, v7

    if-ne v14, v15, :cond_1a2

    if-ne v11, v7, :cond_1a2

    if-ne v9, v7, :cond_1a2

    if-eq v13, v0, :cond_1a2

    .line 557
    return v7

    .line 561
    :cond_1a2
    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v12

    move v12, v13

    goto :goto_1aa

    .line 446
    .end local v13    # "op09VolteOffPhoneId":I
    .local v7, "tSimCount":I
    .local v8, "wSimCount":I
    .local v9, "cSimCount":I
    .local v11, "hasOp09Sim":Z
    .local v12, "op09VolteOffPhoneId":I
    :cond_1a8
    move/from16 v17, v7

    .line 561
    :goto_1aa
    const/4 v13, 0x0

    return v13
.end method

.method public static isSubsidyLockFeatureOn()Z
    .registers 3

    .line 961
    nop

    .line 962
    const-string v0, "ro.vendor.mtk_subsidy_lock_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 963
    .local v0, "supportSubsidYLock":Z
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v1

    .line 965
    .local v1, "lockPolicy":I
    const/16 v2, 0xa

    if-ne v2, v1, :cond_1d

    .line 966
    const/4 v2, 0x1

    return v2

    .line 968
    :cond_1d
    return v0
.end method

.method public static isSubsidyLockForOmSupported()Z
    .registers 3

    .line 977
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockFeatureOn()Z

    move-result v0

    .line 980
    .local v0, "isSubsidyLockSupported":Z
    nop

    .line 981
    const-string v1, "persist.vendor.subsidylock"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 986
    .local v1, "subsidylockStatus":Z
    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    return v2
.end method

.method public static isSupportSimSwitchEnhancement(I)Z
    .registers 2
    .param p0, "simType"    # I

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "ret":Z
    packed-switch p0, :pswitch_data_12

    goto :goto_11

    .line 419
    :pswitch_5
    const/4 v0, 0x1

    .line 420
    goto :goto_11

    .line 414
    :pswitch_7
    const/4 v0, 0x1

    .line 415
    goto :goto_11

    .line 409
    :pswitch_9
    const/4 v0, 0x0

    .line 410
    goto :goto_11

    .line 404
    :pswitch_b
    const/4 v0, 0x0

    .line 405
    goto :goto_11

    .line 399
    :pswitch_d
    const/4 v0, 0x1

    .line 400
    goto :goto_11

    .line 394
    :pswitch_f
    const/4 v0, 0x1

    .line 395
    nop

    .line 425
    :goto_11
    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static isTPlusWSupport()Z
    .registers 2

    .line 850
    const-string v0, "vendor.ril.simswitch.tpluswsupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 852
    const/4 v0, 0x1

    return v0

    .line 854
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static isVolteEnabled(ILandroid/content/Context;)Z
    .registers 10
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 315
    invoke-static {p1, p0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 316
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 317
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 319
    .local v1, "imsUseEnabled":Z
    :goto_15
    if-ne v1, v2, :cond_79

    .line 321
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 322
    .local v2, "subId":[I
    if-eqz v2, :cond_74

    .line 323
    nop

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/mediatek/internal/telephony/MtkRILConstants;->PREFERRED_NETWORK_MODE:I

    .line 323
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 327
    .local v3, "nwMode":I
    invoke-static {v3}, Landroid/telephony/MtkRadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    .line 328
    .local v4, "rafFromNwMode":I
    const v5, 0x41000

    .line 329
    .local v5, "rafLteGroup":I
    and-int v6, v4, v5

    if-nez v6, :cond_47

    .line 330
    const/4 v1, 0x0

    .line 332
    :cond_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVolteEnabled, imsUseEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", nwMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rafFromNwMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rafLteGroup = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 336
    .end local v3    # "nwMode":I
    .end local v4    # "rafFromNwMode":I
    .end local v5    # "rafLteGroup":I
    goto :goto_79

    .line 337
    :cond_74
    const-string v3, "isVolteEnabled, subId[] is null"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 340
    .end local v2    # "subId":[I
    :cond_79
    :goto_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVolteEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 341
    return v1
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RadioCapSwitchUtil] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioCapabilitySwitchUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method public static updateSimImsiStatus(ILjava/lang/String;)V
    .registers 4
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimImsiStatus slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 859
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 860
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method
