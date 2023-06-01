.class public Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;
.super Lcom/mediatek/internal/telephony/MtkRadioExResponseBaseV2;
.source "MtkRadioExResponseV2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioRespEx"

.field private static final isUserLoad:Z


# instance fields
.field mMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

.field mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 119
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->isUserLoad:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 125
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRadioExResponseBaseV2;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 127
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkMessageBoost;->init(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/mediatek/internal/telephony/MtkMessageBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

    .line 128
    return-void
.end method

.method private static convertOpertatorInfoToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "status"    # I

    .line 427
    if-nez p0, :cond_5

    .line 428
    const-string v0, "unknown"

    return-object v0

    .line 429
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 430
    const-string v0, "available"

    return-object v0

    .line 431
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 432
    const-string v0, "current"

    return-object v0

    .line 433
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 434
    const-string v0, "forbidden"

    return-object v0

    .line 436
    :cond_17
    const-string v0, ""

    return-object v0
.end method

.method private getSubId(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .line 418
    const/4 v0, -0x1

    .line 419
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 420
    .local v1, "subIds":[I
    if-eqz v1, :cond_d

    array-length v2, v1

    if-lez v2, :cond_d

    .line 421
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 423
    :cond_d
    return v0
.end method

.method private responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 14
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 838
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 839
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_d1

    .line 840
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 841
    .local v1, "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_be

    .line 842
    const/4 v3, 0x2

    new-array v4, v3, [J

    .line 843
    .local v4, "timeSlot":[J
    new-array v5, v3, [Ljava/lang/String;

    .line 845
    .local v5, "timeSlotStr":[Ljava/lang/String;
    new-instance v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    aput-object v6, v1, v2

    .line 846
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->status:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 847
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 848
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 849
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 850
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 851
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 852
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 853
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 855
    aget-object v6, v5, v7

    if-eqz v6, :cond_b5

    aget-object v6, v5, v8

    if-nez v6, :cond_88

    goto :goto_b5

    .line 859
    :cond_88
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_89
    if-ge v6, v3, :cond_b0

    .line 860
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "HH:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 861
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v8, "GMT+8"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 863
    :try_start_9b
    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 864
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    aput-wide v9, v4, v6
    :try_end_a7
    .catch Ljava/text/ParseException; {:try_start_9b .. :try_end_a7} :catch_ab

    .line 869
    .end local v8    # "date":Ljava/util/Date;
    nop

    .line 859
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 865
    .restart local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_ab
    move-exception v3

    .line 866
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 867
    const/4 v4, 0x0

    .line 871
    .end local v3    # "e":Ljava/text/ParseException;
    .end local v6    # "j":I
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_b0
    aget-object v3, v1, v2

    iput-object v4, v3, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    goto :goto_ba

    .line 856
    :cond_b5
    :goto_b5
    aget-object v3, v1, v2

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 841
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 874
    .end local v2    # "i":I
    .end local v4    # "timeSlot":[J
    .end local v5    # "timeSlotStr":[Ljava/lang/String;
    :cond_be
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_cc

    .line 875
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 877
    :cond_cc
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 879
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_d1
    return-void
.end method

.method private responseFemtoCellInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 32
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1030
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1031
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v0, 0x0

    .line 1032
    .local v0, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    const/4 v4, 0x7

    .line 1034
    .local v4, "size_femto":I
    const/4 v5, 0x0

    .line 1035
    .local v5, "fPlmn":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1036
    .local v6, "fAct":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1037
    .local v7, "fCsgId":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1038
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_3e

    .line 1039
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    .line 1040
    .local v9, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1041
    .local v10, "ss":Landroid/telephony/ServiceState;
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoPlmn()Ljava/lang/String;

    move-result-object v5

    .line 1042
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoAct()Ljava/lang/String;

    move-result-object v6

    .line 1043
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoCsgId()Ljava/lang/String;

    move-result-object v7

    .line 1046
    .end local v9    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    .end local v10    # "ss":Landroid/telephony/ServiceState;
    :cond_3e
    if-eqz v3, :cond_277

    iget v9, v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v9, :cond_277

    .line 1047
    const/4 v9, 0x0

    .line 1049
    .local v9, "strings":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 1050
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5f

    .line 1051
    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v9, v10

    .line 1050
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    :cond_5f
    move-object/from16 v11, p2

    .line 1054
    .end local v10    # "i":I
    array-length v10, v9

    rem-int/2addr v10, v4

    if-nez v10, :cond_253

    .line 1059
    new-instance v10, Ljava/util/ArrayList;

    array-length v12, v9

    div-int/2addr v12, v4

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1062
    .end local v0    # "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    .local v10, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_6e
    array-length v0, v9

    if-ge v12, v0, :cond_241

    .line 1066
    const/4 v13, 0x0

    .line 1067
    .local v13, "sig":I
    const/4 v14, 0x0

    .line 1070
    .local v14, "con":Z
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    const/4 v15, 0x1

    if-eqz v0, :cond_b1

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    move-object/from16 v16, v8

    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .local v16, "phone":Lcom/android/internal/telephony/Phone;
    const-string v8, "uCs2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v15, :cond_b3

    .line 1072
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v8, "responseFemtoCellInfos handling UCS2 format name"

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1075
    add-int/lit8 v0, v12, 0x0

    :try_start_91
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v17, v12, 0x1

    aget-object v15, v9, v17

    .line 1076
    const/4 v11, 0x4

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string v15, "UTF-16"

    invoke-direct {v8, v11, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v8, v9, v0
    :try_end_a7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_91 .. :try_end_a7} :catch_a8

    .line 1079
    goto :goto_b3

    .line 1077
    :catch_a8
    move-exception v0

    .line 1078
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v11, "responseFemtoCellInfos UnsupportedEncodingException"

    invoke-virtual {v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_b3

    .line 1070
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v8    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_b1
    move-object/from16 v16, v8

    .line 1082
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_b3
    :goto_b3
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    if-eqz v0, :cond_112

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    .line 1083
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    add-int/lit8 v8, v12, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    goto :goto_d9

    :cond_d4
    move/from16 v17, v13

    move/from16 v19, v14

    goto :goto_116

    .line 1084
    :cond_d9
    :goto_d9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lookup RIL responseFemtoCellInfos() for plmn id= "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v12, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1086
    add-int/lit8 v0, v12, 0x1

    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v11, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->getSubId(I)I

    move-result v11

    add-int/lit8 v15, v12, 0x0

    aget-object v15, v9, v15

    move/from16 v17, v13

    .end local v13    # "sig":I
    .local v17, "sig":I
    const/4 v13, -0x1

    move/from16 v19, v14

    const/4 v14, 0x1

    .end local v14    # "con":Z
    .local v19, "con":Z
    invoke-virtual {v8, v11, v15, v14, v13}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v0

    goto :goto_116

    .line 1082
    .end local v17    # "sig":I
    .end local v19    # "con":Z
    .restart local v13    # "sig":I
    .restart local v14    # "con":Z
    :cond_112
    move/from16 v17, v13

    move/from16 v19, v14

    .line 1090
    .end local v13    # "sig":I
    .end local v14    # "con":Z
    .restart local v17    # "sig":I
    .restart local v19    # "con":Z
    :goto_116
    add-int/lit8 v0, v12, 0x6

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1092
    .end local v17    # "sig":I
    .local v0, "sig":I
    add-int/lit8 v8, v12, 0x2

    aget-object v8, v9, v8

    const-string v11, "7"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_133

    .line 1093
    const-string v8, "4G"

    .line 1094
    .local v8, "actStr":Ljava/lang/String;
    const/16 v11, 0xe

    .local v11, "rat":I
    goto :goto_146

    .line 1095
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    :cond_133
    add-int/lit8 v8, v12, 0x2

    aget-object v8, v9, v8

    const-string v11, "2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_143

    .line 1096
    const-string v8, "3G"

    .line 1097
    .restart local v8    # "actStr":Ljava/lang/String;
    const/4 v11, 0x3

    .restart local v11    # "rat":I
    goto :goto_146

    .line 1099
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    :cond_143
    const-string v8, "2G"

    .line 1100
    .restart local v8    # "actStr":Ljava/lang/String;
    const/4 v11, 0x1

    .line 1102
    .restart local v11    # "rat":I
    :goto_146
    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v14, v12, 0x1

    aget-object v14, v9, v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v13

    .line 1104
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v13, v12, 0x5

    aget-object v13, v9, v13

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/String;-><init>([B)V

    .line 1106
    .local v2, "hnbName":Ljava/lang/String;
    add-int/lit8 v13, v12, 0x0

    aget-object v13, v9, v13

    if-eqz v13, :cond_1a2

    add-int/lit8 v13, v12, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a2

    add-int/lit8 v13, v12, 0x2

    aget-object v13, v9, v13

    if-eqz v13, :cond_1a2

    add-int/lit8 v13, v12, 0x2

    aget-object v13, v9, v13

    .line 1107
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a2

    add-int/lit8 v13, v12, 0x3

    aget-object v13, v9, v13

    if-eqz v13, :cond_1a2

    add-int/lit8 v13, v12, 0x3

    aget-object v13, v9, v13

    .line 1108
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a2

    .line 1109
    const/4 v14, 0x1

    .end local v19    # "con":Z
    .restart local v14    # "con":Z
    goto :goto_1a4

    .line 1111
    .end local v14    # "con":Z
    .restart local v19    # "con":Z
    :cond_1a2
    move/from16 v14, v19

    .end local v19    # "con":Z
    .restart local v14    # "con":Z
    :goto_1a4
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "fPlmn":Ljava/lang/String;
    .local v17, "fPlmn":Ljava/lang/String;
    const-string v5, "FemtoCellInfo("

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v12, 0x3

    aget-object v5, v9, v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v18, v12, 0x4

    move-object/from16 v19, v6

    .end local v6    # "fAct":Ljava/lang/String;
    .local v19, "fAct":Ljava/lang/String;
    aget-object v6, v9, v18

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v12, 0x5

    aget-object v6, v9, v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v12, 0x0

    aget-object v6, v9, v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v12, 0x1

    aget-object v6, v9, v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") hnbName="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",sig="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",con="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1115
    new-instance v5, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    add-int/lit8 v6, v12, 0x3

    aget-object v6, v9, v6

    .line 1117
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v6, v12, 0x4

    aget-object v6, v9, v6

    .line 1118
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v6, v12, 0x0

    aget-object v24, v9, v6

    add-int/lit8 v6, v12, 0x1

    aget-object v25, v9, v6

    move-object/from16 v20, v5

    move-object/from16 v23, v2

    move/from16 v26, v11

    move/from16 v27, v14

    move/from16 v28, v0

    invoke-direct/range {v20 .. v28}, Lcom/mediatek/internal/telephony/FemtoCellInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1115
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    .end local v0    # "sig":I
    .end local v2    # "hnbName":Ljava/lang/String;
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    .end local v14    # "con":Z
    add-int/2addr v12, v4

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    goto/16 :goto_6e

    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v17    # "fPlmn":Ljava/lang/String;
    .end local v19    # "fAct":Ljava/lang/String;
    .restart local v5    # "fPlmn":Ljava/lang/String;
    .restart local v6    # "fAct":Ljava/lang/String;
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    :cond_241
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v16, v8

    .line 1126
    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v12    # "i":I
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v0, v10

    goto :goto_27d

    .line 1055
    .end local v10    # "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v17    # "fPlmn":Ljava/lang/String;
    .end local v19    # "fAct":Ljava/lang/String;
    .local v0, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    .restart local v5    # "fPlmn":Ljava/lang/String;
    .restart local v6    # "fAct":Ljava/lang/String;
    .restart local v8    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_253
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseFemtoCellInfos: invalid response. Got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " strings, expected multible of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1046
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v17    # "fPlmn":Ljava/lang/String;
    .end local v19    # "fAct":Ljava/lang/String;
    .restart local v5    # "fPlmn":Ljava/lang/String;
    .restart local v6    # "fAct":Ljava/lang/String;
    :cond_277
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v16, v8

    .line 1128
    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    :goto_27d
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    move-object/from16 v5, p1

    invoke-virtual {v2, v3, v5, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1129
    return-void
.end method

.method private responseGetPhbMemStorage(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;

    .line 811
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 813
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2f

    .line 814
    new-instance v1, Lcom/mediatek/internal/telephony/phb/PBMemStorage;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;-><init>()V

    .line 815
    .local v1, "ret":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_2a

    .line 816
    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->storage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setStorage(Ljava/lang/String;)V

    .line 817
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->used:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setUsed(I)V

    .line 818
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->total:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setTotal(I)V

    .line 819
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 821
    :cond_2a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 823
    .end local v1    # "ret":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    :cond_2f
    return-void
.end method

.method private responseGetSignalStrengthWithWcdmaEcio(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 485
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 487
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_26

    .line 489
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    .line 490
    .local v1, "ret":Landroid/telephony/SignalStrength;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_21

    .line 491
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 493
    :cond_21
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 495
    .end local v1    # "ret":Landroid/telephony/SignalStrength;
    :cond_26
    return-void
.end method

.method private responseOperatorInfosWithAct(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 445
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_167

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_15c

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_152

    .line 450
    const/4 v3, -0x1

    .line 451
    .local v3, "nLac":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3d

    .line 452
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 454
    :cond_3d
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 455
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->getSubId(I)I

    move-result v6

    .line 456
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 454
    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 457
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 458
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->getSubId(I)I

    move-result v6

    .line 459
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    const/4 v8, 0x0

    .line 457
    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 461
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 466
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12e

    .line 467
    new-instance v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 468
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 469
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 470
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    .line 472
    :cond_12e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 449
    .end local v3    # "nLac":I
    :goto_14e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a

    .line 476
    .end local v2    # "i":I
    :cond_152
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 478
    :cond_15c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 480
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_167
    return-void
.end method

.method private responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 752
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 754
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_6f

    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, "ret":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_6a

    .line 757
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 758
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 759
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PhbEntry;-><init>()V

    aput-object v3, v1, v2

    .line 760
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->type:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    .line 761
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->index:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 762
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 763
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->ton:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    .line 764
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->alphaId:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 766
    .end local v2    # "i":I
    :cond_60
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 768
    :cond_6a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 770
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    :cond_6f
    return-void
.end method

.method private responseReadPhbEntryExt(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 883
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 885
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_b6

    .line 886
    const/4 v1, 0x0

    .line 887
    .local v1, "ret":[Lcom/mediatek/internal/telephony/phb/PBEntry;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_b1

    .line 888
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/internal/telephony/phb/PBEntry;

    .line 889
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a7

    .line 890
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PBEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PBEntry;-><init>()V

    aput-object v3, v1, v2

    .line 891
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->type:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setIndex1(I)V

    .line 892
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setNumber(Ljava/lang/String;)V

    .line 893
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->type:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setType(I)V

    .line 894
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setText(Ljava/lang/String;)V

    .line 895
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->hidden:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setHidden(I)V

    .line 896
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->group:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setGroup(Ljava/lang/String;)V

    .line 897
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->adnumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setAdnumber(Ljava/lang/String;)V

    .line 898
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->adtype:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setAdtype(I)V

    .line 899
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->secondtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setSecondtext(Ljava/lang/String;)V

    .line 900
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setEmail(Ljava/lang/String;)V

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    .line 902
    .end local v2    # "i":I
    :cond_a7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 904
    :cond_b1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 906
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/phb/PBEntry;
    :cond_b6
    return-void
.end method

.method private responseSmsMemStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .registers 9
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 549
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 551
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_3c

    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_37

    .line 554
    new-instance v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->used:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->total:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>(II)V

    .line 556
    .local v2, "status":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseSmsMemStatus: from HIDL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 557
    move-object v1, v2

    .line 558
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 560
    .end local v2    # "status":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_37
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 562
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_3c
    return-void
.end method

.method private responseSmsParams(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V
    .registers 10
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    .line 513
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 515
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_40

    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3b

    .line 518
    new-instance v2, Lmediatek/telephony/MtkSmsParameters;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->format:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->vp:I

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->pid:I

    iget v6, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->dcs:I

    invoke-direct {v2, v3, v4, v5, v6}, Lmediatek/telephony/MtkSmsParameters;-><init>(IIII)V

    .line 520
    .local v2, "smsp":Lmediatek/telephony/MtkSmsParameters;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseSmsParams: from HIDL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 521
    move-object v1, v2

    .line 522
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 524
    .end local v2    # "smsp":Lmediatek/telephony/MtkSmsParameters;
    :cond_3b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 526
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_40
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 136
    if-eqz p0, :cond_9

    .line 137
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 138
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_9
    return-void
.end method


# virtual methods
.method public abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 970
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 971
    return-void
.end method

.method public acknowledgeRequest(I)V
    .registers 3
    .param p1, "serial"    # I

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processRequestAck(I)V

    .line 151
    return-void
.end method

.method public activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 288
    return-void
.end method

.method public cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 341
    return-void
.end method

.method public cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 348
    return-void
.end method

.method public cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 354
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 355
    return-void
.end method

.method public dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1410
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1411
    return-void
.end method

.method public dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1415
    return-void
.end method

.method public deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 369
    return-void
.end method

.method public deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 296
    return-void
.end method

.method public deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 782
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 783
    return-void
.end method

.method public disableNRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 386
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 387
    return-void
.end method

.method public eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 644
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 645
    return-void
.end method

.method public editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 778
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 779
    return-void
.end method

.method public enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 361
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 362
    return-void
.end method

.method public getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 668
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_37

    .line 669
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 670
    .local v1, "response":[I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_32

    .line 671
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 672
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 674
    .end local v2    # "i":I
    :cond_28
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 676
    :cond_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 678
    .end local v1    # "response":[I
    :cond_37
    return-void
.end method

.method public getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseOperatorInfosWithAct(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 325
    return-void
.end method

.method public getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enabled"    # I

    .line 654
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 655
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 177
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 186
    return-void
.end method

.method public getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 15
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1165
    .local p2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1166
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    .line 1167
    .local v1, "NetworkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;>;"
    if-eqz v0, :cond_df

    .line 1168
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_da

    .line 1169
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_36

    .line 1170
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_REQUEST_GET_POL_LIST: invalid response. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " strings, expected multible of 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1170
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_da

    .line 1173
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 1174
    const/4 v2, 0x0

    .line 1175
    .local v2, "strOperName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1176
    .local v3, "strOperNumeric":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1177
    .local v4, "nAct":I
    const/4 v5, 0x0

    .line 1178
    .local v5, "nIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d0

    .line 1179
    const/4 v2, 0x0

    .line 1180
    const/4 v3, 0x0

    .line 1181
    const/4 v4, 0x0

    .line 1182
    const/4 v5, 0x0

    .line 1183
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_61

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1184
    :cond_61
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 1185
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1186
    .local v7, "format":I
    packed-switch v7, :pswitch_data_e0

    goto :goto_a6

    .line 1192
    :pswitch_79
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a6

    .line 1193
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Ljava/lang/String;

    .line 1194
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1195
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->getSubId(I)I

    move-result v9

    const/4 v10, -0x1

    .line 1194
    const/4 v11, 0x1

    invoke-virtual {v8, v9, v3, v11, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_a6

    .line 1189
    :pswitch_9d
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Ljava/lang/String;

    .line 1203
    .end local v7    # "format":I
    :cond_a6
    :goto_a6
    add-int/lit8 v7, v6, 0x3

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_ba

    add-int/lit8 v7, v6, 0x3

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1204
    :cond_ba
    if-eqz v3, :cond_cc

    const-string v7, "?????"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cc

    .line 1205
    new-instance v7, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_cc
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_47

    .line 1213
    .end local v6    # "i":I
    :cond_d0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v6, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1216
    .end local v2    # "strOperName":Ljava/lang/String;
    .end local v3    # "strOperNumeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    .end local v5    # "nIndex":I
    :cond_da
    :goto_da
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1218
    :cond_df
    return-void

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9d
        :pswitch_79
    .end packed-switch
.end method

.method public getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffStatus"    # I

    .line 304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 305
    return-void
.end method

.method public getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "deactivate"    # I
    .param p3, "allowSCGAdd"    # I

    .line 379
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 380
    return-void
.end method

.method public getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 626
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 627
    return-void
.end method

.method public getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 962
    .local p2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseFemtoCellInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 963
    return-void
.end method

.method public getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activation"    # I

    .line 576
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 577
    return-void
.end method

.method public getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "langs"    # Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 1263
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1264
    return-void
.end method

.method public getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1157
    return-void
.end method

.method public getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;

    .line 806
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseGetPhbMemStorage(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V

    .line 807
    return-void
.end method

.method public getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 801
    .local p2, "stringLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 802
    return-void
.end method

.method public getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1247
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1248
    return-void
.end method

.method public getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1147
    .local p2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1148
    return-void
.end method

.method public getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseGetSignalStrengthWithWcdmaEcio(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V

    .line 334
    return-void
.end method

.method public getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseSmsMemStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V

    .line 546
    return-void
.end method

.method public getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseSmsParams(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 510
    return-void
.end method

.method public getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V
    .registers 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "memStatus"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    .line 694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 696
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_26

    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, "ret":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_21

    .line 699
    new-instance v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->used:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->total:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>(II)V

    move-object v1, v2

    .line 700
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 702
    :cond_21
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 704
    .end local v1    # "ret":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_26
    return-void
.end method

.method public getSuggestedPlmnListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1473
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1474
    return-void
.end method

.method public handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 732
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 733
    return-void
.end method

.method public hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 599
    return-void
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1456
    return-void
.end method

.method public modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "applyType"    # I

    .line 727
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 728
    return-void
.end method

.method public notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1359
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1361
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1362
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1364
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1365
    return-void
.end method

.method public queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 222
    return-void
.end method

.method public queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 988
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 989
    return-void
.end method

.method public queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V
    .registers 12
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "catagory"    # I
    .param p3, "state"    # I
    .param p4, "retry_cnt"    # I
    .param p5, "autolock_cnt"    # I
    .param p6, "num_set"    # I
    .param p7, "total_set"    # I
    .param p8, "key_state"    # I

    .line 998
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    const/4 v2, 0x4

    aput p6, v1, v2

    const/4 v2, 0x5

    aput p7, v1, v2

    const/4 v2, 0x6

    aput p8, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1000
    return-void
.end method

.method public queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 738
    .local p2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 739
    return-void
.end method

.method public queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 914
    .local p2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 915
    return-void
.end method

.method public queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 774
    .local p2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 775
    return-void
.end method

.method public readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 747
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 748
    return-void
.end method

.method public readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 831
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responseReadPhbEntryExt(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 832
    return-void
.end method

.method public readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 938
    .local p2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 940
    return-void
.end method

.method public readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 934
    .local p2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 935
    return-void
.end method

.method public readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "email"    # Ljava/lang/String;

    .line 918
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 919
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 920
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 921
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 923
    :cond_16
    const-string v1, "xxx@email.com"

    .line 924
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 926
    .end local v1    # "str":Ljava/lang/String;
    :cond_1d
    return-void
.end method

.method public readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 788
    return-void
.end method

.method public readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 792
    .local p2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 793
    return-void
.end method

.method public readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sne"    # Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1465
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1466
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1468
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1469
    return-void
.end method

.method public removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 539
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 540
    return-void
.end method

.method public resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1419
    return-void
.end method

.method public resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1234
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1235
    return-void
.end method

.method public restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 951
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 952
    return-void
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 242
    return-void
.end method

.method public selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 978
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 979
    return-void
.end method

.method public sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 195
    return-void
.end method

.method public sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method public sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1376
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1378
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_20

    .line 1379
    const/4 v1, 0x0

    .line 1380
    .local v1, "ret":[B
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1b

    .line 1381
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 1382
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1384
    :cond_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1386
    .end local v1    # "ret":[B
    :cond_20
    return-void
.end method

.method public sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1406
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1407
    return-void
.end method

.method public sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;

    .line 1490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1491
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 1492
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_17

    .line 1493
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1494
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1496
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_24

    .line 1498
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "sendRsuRequestResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1500
    :goto_24
    return-void
.end method

.method public sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1478
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 1479
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 1480
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1482
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_24

    .line 1484
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "sendSarIndicatorResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1486
    :goto_24
    return-void
.end method

.method public sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1509
    return-void
.end method

.method public sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1504
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1505
    return-void
.end method

.method public sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1512
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1513
    return-void
.end method

.method public setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 662
    return-void
.end method

.method public setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 415
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 230
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 231
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 605
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 606
    return-void
.end method

.method public setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 650
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 651
    return-void
.end method

.method public setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1435
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1436
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 167
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 168
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 203
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 211
    return-void
.end method

.method public setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 635
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 636
    return-void
.end method

.method public setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 619
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 620
    return-void
.end method

.method public setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1331
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1333
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1334
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1336
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1337
    return-void
.end method

.method public setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 534
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 535
    return-void
.end method

.method public setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 708
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 709
    return-void
.end method

.method public setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1024
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1025
    return-void
.end method

.method public setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 566
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 567
    return-void
.end method

.method public setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1431
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1432
    return-void
.end method

.method public setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1440
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1441
    return-void
.end method

.method public setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1451
    return-void
.end method

.method public setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1445
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1446
    return-void
.end method

.method public setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1324
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1325
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1327
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1328
    return-void
.end method

.method public setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1255
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1256
    return-void
.end method

.method public setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 503
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 504
    return-void
.end method

.method public setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1342
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1343
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1345
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1346
    return-void
.end method

.method public setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1006
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1007
    return-void
.end method

.method public setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 314
    return-void
.end method

.method public setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1225
    return-void
.end method

.method public setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 826
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 827
    return-void
.end method

.method public setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 943
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 944
    return-void
.end method

.method public setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1238
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1239
    return-void
.end method

.method public setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 715
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 716
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 717
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 719
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 720
    return-void
.end method

.method public setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1243
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1244
    return-void
.end method

.method public setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1138
    .local p2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1139
    return-void
.end method

.method public setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 408
    return-void
.end method

.method public setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 400
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 401
    return-void
.end method

.method public setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1369
    return-void
.end method

.method public setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 280
    return-void
.end method

.method public setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 530
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 531
    return-void
.end method

.method public setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1423
    return-void
.end method

.method public setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 250
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1c

    .line 251
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 252
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 254
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 256
    :cond_1c
    return-void
.end method

.method public setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 393
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 394
    return-void
.end method

.method public setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1390
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1391
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 1392
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 1393
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1395
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_24

    .line 1397
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "setTxPowerStatusResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1399
    :goto_24
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1426
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1427
    return-void
.end method

.method public setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 612
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 613
    return-void
.end method

.method public setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1297
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1298
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1300
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1301
    return-void
.end method

.method public setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1288
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1289
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1291
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1292
    return-void
.end method

.method public setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1315
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1316
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1318
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1319
    return-void
.end method

.method public setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1351
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1352
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1354
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1355
    return-void
.end method

.method public setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1306
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1307
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1309
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1310
    return-void
.end method

.method public supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 160
    return-void
.end method

.method public supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 1015
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1016
    return-void
.end method

.method public syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1230
    return-void
.end method

.method public triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 682
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 683
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1c

    .line 684
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 685
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 687
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 689
    :cond_1c
    return-void
.end method

.method public vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;

    .line 1268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1270
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_22

    .line 1271
    const/4 v1, 0x0

    .line 1272
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1d

    .line 1273
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;->transactionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1274
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1276
    :cond_1d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1278
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_22
    return-void
.end method

.method public vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1281
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1282
    return-void
.end method

.method public writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 742
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 743
    return-void
.end method

.method public writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 909
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 910
    return-void
.end method

.method public writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 796
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponseV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 797
    return-void
.end method
