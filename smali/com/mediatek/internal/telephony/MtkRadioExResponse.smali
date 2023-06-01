.class public Lcom/mediatek/internal/telephony/MtkRadioExResponse;
.super Lcom/mediatek/internal/telephony/MtkRadioExResponseBase;
.source "MtkRadioExResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioRespEx"

.field private static final isUserLoad:Z


# instance fields
.field mMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

.field mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 122
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->isUserLoad:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRadioExResponseBase;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 129
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 130
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkMessageBoost;->init(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/mediatek/internal/telephony/MtkMessageBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

    .line 131
    return-void
.end method

.method private static convertOpertatorInfoToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "status"    # I

    .line 430
    if-nez p0, :cond_5

    .line 431
    const-string v0, "unknown"

    return-object v0

    .line 432
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 433
    const-string v0, "available"

    return-object v0

    .line 434
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 435
    const-string v0, "current"

    return-object v0

    .line 436
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 437
    const-string v0, "forbidden"

    return-object v0

    .line 439
    :cond_17
    const-string v0, ""

    return-object v0
.end method

.method private getSubId(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .line 421
    const/4 v0, -0x1

    .line 422
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 423
    .local v1, "subIds":[I
    if-eqz v1, :cond_d

    array-length v2, v1

    if-lez v2, :cond_d

    .line 424
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 426
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 841
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 842
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_d1

    .line 843
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 844
    .local v1, "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_be

    .line 845
    const/4 v3, 0x2

    new-array v4, v3, [J

    .line 846
    .local v4, "timeSlot":[J
    new-array v5, v3, [Ljava/lang/String;

    .line 848
    .local v5, "timeSlotStr":[Ljava/lang/String;
    new-instance v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    aput-object v6, v1, v2

    .line 849
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->status:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 850
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 851
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 852
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 853
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 854
    aget-object v6, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    iput v7, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 855
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 856
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 858
    aget-object v6, v5, v7

    if-eqz v6, :cond_b5

    aget-object v6, v5, v8

    if-nez v6, :cond_88

    goto :goto_b5

    .line 862
    :cond_88
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_89
    if-ge v6, v3, :cond_b0

    .line 863
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "HH:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 864
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v8, "GMT+8"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 866
    :try_start_9b
    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 867
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    aput-wide v9, v4, v6
    :try_end_a7
    .catch Ljava/text/ParseException; {:try_start_9b .. :try_end_a7} :catch_ab

    .line 872
    .end local v8    # "date":Ljava/util/Date;
    nop

    .line 862
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 868
    .restart local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_ab
    move-exception v3

    .line 869
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 870
    const/4 v4, 0x0

    .line 874
    .end local v3    # "e":Ljava/text/ParseException;
    .end local v6    # "j":I
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_b0
    aget-object v3, v1, v2

    iput-object v4, v3, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    goto :goto_ba

    .line 859
    :cond_b5
    :goto_b5
    aget-object v3, v1, v2

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 844
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 877
    .end local v2    # "i":I
    .end local v4    # "timeSlot":[J
    .end local v5    # "timeSlotStr":[Ljava/lang/String;
    :cond_be
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_cc

    .line 878
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 880
    :cond_cc
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 882
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

    .line 1033
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1034
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v0, 0x0

    .line 1035
    .local v0, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    const/4 v4, 0x7

    .line 1037
    .local v4, "size_femto":I
    const/4 v5, 0x0

    .line 1038
    .local v5, "fPlmn":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1039
    .local v6, "fAct":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1040
    .local v7, "fCsgId":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1041
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_3e

    .line 1042
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    .line 1043
    .local v9, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1044
    .local v10, "ss":Landroid/telephony/ServiceState;
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoPlmn()Ljava/lang/String;

    move-result-object v5

    .line 1045
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoAct()Ljava/lang/String;

    move-result-object v6

    .line 1046
    move-object v11, v9

    check-cast v11, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getFemtoCsgId()Ljava/lang/String;

    move-result-object v7

    .line 1049
    .end local v9    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    .end local v10    # "ss":Landroid/telephony/ServiceState;
    :cond_3e
    if-eqz v3, :cond_277

    iget v9, v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v9, :cond_277

    .line 1050
    const/4 v9, 0x0

    .line 1052
    .local v9, "strings":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 1053
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5f

    .line 1054
    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v9, v10

    .line 1053
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    :cond_5f
    move-object/from16 v11, p2

    .line 1057
    .end local v10    # "i":I
    array-length v10, v9

    rem-int/2addr v10, v4

    if-nez v10, :cond_253

    .line 1062
    new-instance v10, Ljava/util/ArrayList;

    array-length v12, v9

    div-int/2addr v12, v4

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1065
    .end local v0    # "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    .local v10, "femtoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_6e
    array-length v0, v9

    if-ge v12, v0, :cond_241

    .line 1069
    const/4 v13, 0x0

    .line 1070
    .local v13, "sig":I
    const/4 v14, 0x0

    .line 1073
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

    .line 1075
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v8, "responseFemtoCellInfos handling UCS2 format name"

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1078
    add-int/lit8 v0, v12, 0x0

    :try_start_91
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v17, v12, 0x1

    aget-object v15, v9, v17

    .line 1079
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

    .line 1082
    goto :goto_b3

    .line 1080
    :catch_a8
    move-exception v0

    .line 1081
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v11, "responseFemtoCellInfos UnsupportedEncodingException"

    invoke-virtual {v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_b3

    .line 1073
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v8    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_b1
    move-object/from16 v16, v8

    .line 1085
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_b3
    :goto_b3
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    if-eqz v0, :cond_112

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v9, v0

    .line 1086
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

    .line 1087
    :cond_d9
    :goto_d9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

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

    .line 1089
    add-int/lit8 v0, v12, 0x1

    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v11, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

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

    .line 1085
    .end local v17    # "sig":I
    .end local v19    # "con":Z
    .restart local v13    # "sig":I
    .restart local v14    # "con":Z
    :cond_112
    move/from16 v17, v13

    move/from16 v19, v14

    .line 1093
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

    .line 1095
    .end local v17    # "sig":I
    .local v0, "sig":I
    add-int/lit8 v8, v12, 0x2

    aget-object v8, v9, v8

    const-string v11, "7"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_133

    .line 1096
    const-string v8, "4G"

    .line 1097
    .local v8, "actStr":Ljava/lang/String;
    const/16 v11, 0xe

    .local v11, "rat":I
    goto :goto_146

    .line 1098
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    :cond_133
    add-int/lit8 v8, v12, 0x2

    aget-object v8, v9, v8

    const-string v11, "2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_143

    .line 1099
    const-string v8, "3G"

    .line 1100
    .restart local v8    # "actStr":Ljava/lang/String;
    const/4 v11, 0x3

    .restart local v11    # "rat":I
    goto :goto_146

    .line 1102
    .end local v8    # "actStr":Ljava/lang/String;
    .end local v11    # "rat":I
    :cond_143
    const-string v8, "2G"

    .line 1103
    .restart local v8    # "actStr":Ljava/lang/String;
    const/4 v11, 0x1

    .line 1105
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

    .line 1107
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v13, v12, 0x5

    aget-object v13, v9, v13

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/String;-><init>([B)V

    .line 1109
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

    .line 1110
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a2

    add-int/lit8 v13, v12, 0x3

    aget-object v13, v9, v13

    if-eqz v13, :cond_1a2

    add-int/lit8 v13, v12, 0x3

    aget-object v13, v9, v13

    .line 1111
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a2

    .line 1112
    const/4 v14, 0x1

    .end local v19    # "con":Z
    .restart local v14    # "con":Z
    goto :goto_1a4

    .line 1114
    .end local v14    # "con":Z
    .restart local v19    # "con":Z
    :cond_1a2
    move/from16 v14, v19

    .end local v19    # "con":Z
    .restart local v14    # "con":Z
    :goto_1a4
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

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

    .line 1118
    new-instance v5, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    add-int/lit8 v6, v12, 0x3

    aget-object v6, v9, v6

    .line 1120
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v6, v12, 0x4

    aget-object v6, v9, v6

    .line 1121
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

    .line 1118
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
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

    .line 1129
    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v12    # "i":I
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v0, v10

    goto :goto_27d

    .line 1058
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

    .line 1049
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v17    # "fPlmn":Ljava/lang/String;
    .end local v19    # "fAct":Ljava/lang/String;
    .restart local v5    # "fPlmn":Ljava/lang/String;
    .restart local v6    # "fAct":Ljava/lang/String;
    :cond_277
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v16, v8

    .line 1131
    .end local v5    # "fPlmn":Ljava/lang/String;
    .end local v6    # "fAct":Ljava/lang/String;
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v16    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v17    # "fPlmn":Ljava/lang/String;
    .restart local v19    # "fAct":Ljava/lang/String;
    :goto_27d
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    move-object/from16 v5, p1

    invoke-virtual {v2, v3, v5, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1132
    return-void
.end method

.method private responseGetPhbMemStorage(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;

    .line 814
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 816
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2f

    .line 817
    new-instance v1, Lcom/mediatek/internal/telephony/phb/PBMemStorage;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;-><init>()V

    .line 818
    .local v1, "ret":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_2a

    .line 819
    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;->storage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setStorage(Ljava/lang/String;)V

    .line 820
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;->used:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setUsed(I)V

    .line 821
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;->total:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->setTotal(I)V

    .line 822
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 824
    :cond_2a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 826
    .end local v1    # "ret":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    :cond_2f
    return-void
.end method

.method private responseGetSignalStrengthWithWcdmaEcio(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;

    .line 488
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 490
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_26

    .line 492
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    .line 493
    .local v1, "ret":Landroid/telephony/SignalStrength;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_21

    .line 494
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 496
    :cond_21
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 498
    .end local v1    # "ret":Landroid/telephony/SignalStrength;
    :cond_26
    return-void
.end method

.method private responseLteData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;)V
    .registers 9
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;

    .line 1540
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1542
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_35

    .line 1543
    const/4 v1, 0x0

    .line 1544
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_30

    .line 1546
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;->state:I

    .line 1547
    .local v2, "regState":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseLteData: from HIDL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1549
    move-object v1, p2

    .line 1550
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1552
    .end local v2    # "regState":I
    :cond_30
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1554
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_35
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 448
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_167

    .line 449
    const/4 v1, 0x0

    .line 450
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_15c

    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 452
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_152

    .line 453
    const/4 v3, -0x1

    .line 454
    .local v3, "nLac":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3d

    .line 455
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->lac:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 457
    :cond_3d
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 458
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

    move-result v6

    .line 459
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 457
    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 460
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 461
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

    move-result v6

    .line 462
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    const/4 v8, 0x0

    .line 460
    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 464
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 466
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->act:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 469
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12e

    .line 470
    new-instance v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v5, v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 471
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 472
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 473
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    .line 475
    :cond_12e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;

    iget-object v6, v6, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 475
    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 452
    .end local v3    # "nLac":I
    :goto_14e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a

    .line 479
    .end local v2    # "i":I
    :cond_152
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 481
    :cond_15c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 483
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 755
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 757
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_6f

    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, "ret":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_6a

    .line 760
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 761
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 762
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PhbEntry;-><init>()V

    aput-object v3, v1, v2

    .line 763
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->type:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->type:I

    .line 764
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->index:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 765
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 766
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->ton:I

    iput v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    .line 767
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->alphaId:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/phb/PhbEntry;->alphaId:Ljava/lang/String;

    .line 761
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 769
    .end local v2    # "i":I
    :cond_60
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 771
    :cond_6a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 773
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 886
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 888
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_b6

    .line 889
    const/4 v1, 0x0

    .line 890
    .local v1, "ret":[Lcom/mediatek/internal/telephony/phb/PBEntry;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_b1

    .line 891
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/internal/telephony/phb/PBEntry;

    .line 892
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a7

    .line 893
    new-instance v3, Lcom/mediatek/internal/telephony/phb/PBEntry;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/phb/PBEntry;-><init>()V

    aput-object v3, v1, v2

    .line 894
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->type:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setIndex1(I)V

    .line 895
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setNumber(Ljava/lang/String;)V

    .line 896
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->type:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setType(I)V

    .line 897
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setText(Ljava/lang/String;)V

    .line 898
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->hidden:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setHidden(I)V

    .line 899
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->group:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setGroup(Ljava/lang/String;)V

    .line 900
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->adnumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setAdnumber(Ljava/lang/String;)V

    .line 901
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->adtype:I

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setAdtype(I)V

    .line 902
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->secondtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setSecondtext(Ljava/lang/String;)V

    .line 903
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/PBEntry;->setEmail(Ljava/lang/String;)V

    .line 892
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    .line 905
    .end local v2    # "i":I
    :cond_a7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 907
    :cond_b1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 909
    .end local v1    # "ret":[Lcom/mediatek/internal/telephony/phb/PBEntry;
    :cond_b6
    return-void
.end method

.method private responseSmsMemStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V
    .registers 9
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;

    .line 552
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 554
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_3c

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_37

    .line 557
    new-instance v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;->used:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;->total:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>(II)V

    .line 559
    .local v2, "status":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseSmsMemStatus: from HIDL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 560
    move-object v1, v2

    .line 561
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 563
    .end local v2    # "status":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_37
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 565
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_3c
    return-void
.end method

.method private responseSmsParams(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;)V
    .registers 10
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;

    .line 516
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 518
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_40

    .line 519
    const/4 v1, 0x0

    .line 520
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3b

    .line 521
    new-instance v2, Lmediatek/telephony/MtkSmsParameters;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;->format:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;->vp:I

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;->pid:I

    iget v6, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;->dcs:I

    invoke-direct {v2, v3, v4, v5, v6}, Lmediatek/telephony/MtkSmsParameters;-><init>(IIII)V

    .line 523
    .local v2, "smsp":Lmediatek/telephony/MtkSmsParameters;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseSmsParams: from HIDL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 524
    move-object v1, v2

    .line 525
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 527
    .end local v2    # "smsp":Lmediatek/telephony/MtkSmsParameters;
    :cond_3b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 529
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_40
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 139
    if-eqz p0, :cond_9

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 141
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    :cond_9
    return-void
.end method


# virtual methods
.method public abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 973
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 974
    return-void
.end method

.method public acknowledgeRequest(I)V
    .registers 3
    .param p1, "serial"    # I

    .line 153
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processRequestAck(I)V

    .line 154
    return-void
.end method

.method public activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 290
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 291
    return-void
.end method

.method public cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 344
    return-void
.end method

.method public cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 350
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 351
    return-void
.end method

.method public cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 357
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 358
    return-void
.end method

.method public clearLteAvailableFileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1611
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1612
    return-void
.end method

.method public dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1413
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1414
    return-void
.end method

.method public dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1417
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1418
    return-void
.end method

.method public deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 371
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 372
    return-void
.end method

.method public deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "simPowerOnOffResponse"    # I

    .line 298
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 299
    return-void
.end method

.method public deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 785
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 786
    return-void
.end method

.method public disableAllCALinksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1525
    return-void
.end method

.method public eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 647
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 648
    return-void
.end method

.method public editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 781
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 782
    return-void
.end method

.method public enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 364
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 365
    return-void
.end method

.method public get4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enabled_bitmask"    # I

    .line 1582
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1583
    return-void
.end method

.method public getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public getAllBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;

    .line 1671
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllBandModeResponse, gsm =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;->gsm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", umts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;->umts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sa = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;->sa:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nsa = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;->nsa:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1676
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_5d

    .line 1677
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_57

    .line 1678
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1679
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1681
    :cond_57
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_64

    .line 1683
    :cond_5d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "getAllBandModeResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1685
    :goto_64
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

    .line 669
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 671
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_37

    .line 672
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 673
    .local v1, "response":[I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_32

    .line 674
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 675
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 674
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 677
    .end local v2    # "i":I
    :cond_28
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 679
    :cond_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 681
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .line 327
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseOperatorInfosWithAct(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 328
    return-void
.end method

.method public getBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 1627
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1628
    return-void
.end method

.method public getBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 1569
    .local p2, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1570
    return-void
.end method

.method public getCALinkCapabilityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 1536
    .local p2, "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1537
    return-void
.end method

.method public getCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # Z

    .line 1528
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1529
    return-void
.end method

.method public getCaBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 1642
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1643
    return-void
.end method

.method public getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enabled"    # I

    .line 657
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 658
    return-void
.end method

.method public getCampedFemtoCellInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 1647
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1648
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 180
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 189
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

    .line 1168
    .local p2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1169
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    .line 1170
    .local v1, "NetworkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;>;"
    if-eqz v0, :cond_df

    .line 1171
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_da

    .line 1172
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_36

    .line 1173
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_REQUEST_GET_POL_LIST: invalid response. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " strings, expected multible of 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1173
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_da

    .line 1176
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 1177
    const/4 v2, 0x0

    .line 1178
    .local v2, "strOperName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1179
    .local v3, "strOperNumeric":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1180
    .local v4, "nAct":I
    const/4 v5, 0x0

    .line 1181
    .local v5, "nIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d0

    .line 1182
    const/4 v2, 0x0

    .line 1183
    const/4 v3, 0x0

    .line 1184
    const/4 v4, 0x0

    .line 1185
    const/4 v5, 0x0

    .line 1186
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_61

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1187
    :cond_61
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 1188
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1189
    .local v7, "format":I
    packed-switch v7, :pswitch_data_e0

    goto :goto_a6

    .line 1195
    :pswitch_79
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a6

    .line 1196
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Ljava/lang/String;

    .line 1197
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1198
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->getSubId(I)I

    move-result v9

    const/4 v10, -0x1

    .line 1197
    const/4 v11, 0x1

    invoke-virtual {v8, v9, v3, v11, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_a6

    .line 1192
    :pswitch_9d
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Ljava/lang/String;

    .line 1206
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

    .line 1207
    :cond_ba
    if-eqz v3, :cond_cc

    const-string v7, "?????"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cc

    .line 1208
    new-instance v7, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_cc
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_47

    .line 1216
    .end local v6    # "i":I
    :cond_d0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v6, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1219
    .end local v2    # "strOperName":Ljava/lang/String;
    .end local v3    # "strOperNumeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    .end local v5    # "nIndex":I
    :cond_da
    :goto_da
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1221
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

    .line 307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 308
    return-void
.end method

.method public getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "deactivate"    # I
    .param p3, "allowSCGAdd"    # I

    .line 382
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 383
    return-void
.end method

.method public getDisable2GResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 1655
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1656
    return-void
.end method

.method public getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 629
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 630
    return-void
.end method

.method public getEngineeringModeInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 1661
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1662
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

    .line 965
    .local p2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseFemtoCellInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 966
    return-void
.end method

.method public getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activation"    # I

    .line 579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 580
    return-void
.end method

.method public getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "langs"    # Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public getIWlanRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "state"    # I

    .line 1666
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1667
    return-void
.end method

.method public getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public getLte1xRttCellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/Lte1xRttCellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1596
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Lte1xRttCellInfo;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLte1xRttCellListResponse, list.size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1599
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_37

    .line 1600
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_31

    .line 1601
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1602
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1604
    :cond_31
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3e

    .line 1606
    :cond_37
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "sendRsuRequestResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1608
    :goto_3e
    return-void
.end method

.method public getLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "timer"    # I

    .line 1586
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteBsrTimerResponse, timer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1588
    return-void
.end method

.method public getLteDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;

    .line 1557
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseLteData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;)V

    .line 1558
    return-void
.end method

.method public getLteRRCStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "state"    # I

    .line 1561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1562
    return-void
.end method

.method public getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 1266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1267
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

    .line 1159
    .local p2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1160
    return-void
.end method

.method public getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;

    .line 809
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseGetPhbMemStorage(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;)V

    .line 810
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

    .line 804
    .local p2, "stringLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 805
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

    .line 1250
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1251
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

    .line 1150
    .local p2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1151
    return-void
.end method

.method public getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseGetSignalStrengthWithWcdmaEcio(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 337
    return-void
.end method

.method public getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseSmsMemStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V

    .line 549
    return-void
.end method

.method public getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "params"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseSmsParams(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;)V

    .line 513
    return-void
.end method

.method public getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V
    .registers 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "memStatus"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;

    .line 697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 699
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_26

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "ret":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_21

    .line 702
    new-instance v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;->used:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;->total:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>(II)V

    move-object v1, v2

    .line 703
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 705
    :cond_21
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 707
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

    .line 1476
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1477
    return-void
.end method

.method public getTOEInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;

    .line 1520
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    .line 1521
    return-void
.end method

.method public handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 735
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 736
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

    .line 601
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 602
    return-void
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1458
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1459
    return-void
.end method

.method public modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "applyType"    # I

    .line 730
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 731
    return-void
.end method

.method public notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1362
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1364
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1365
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1367
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1368
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseCallForwardInfoEx(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 225
    return-void
.end method

.method public queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 991
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 992
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

    .line 1001
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

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

    .line 1003
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

    .line 741
    .local p2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 742
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

    .line 917
    .local p2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 918
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

    .line 777
    .local p2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 778
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 750
    .local p2, "phbEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 751
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .line 834
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responseReadPhbEntryExt(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 835
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

    .line 941
    .local p2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 943
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .line 937
    .local p2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->responsePhbEntries(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 938
    return-void
.end method

.method public readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "email"    # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 922
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 923
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 924
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 926
    :cond_16
    const-string v1, "xxx@email.com"

    .line 927
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 929
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

    .line 789
    .local p2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 791
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

    .line 795
    .local p2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 796
    return-void
.end method

.method public readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sne"    # Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1466
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1468
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1469
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1471
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1472
    return-void
.end method

.method public removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 543
    return-void
.end method

.method public resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1421
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1422
    return-void
.end method

.method public resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1237
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1238
    return-void
.end method

.method public restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 954
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 955
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

    .line 243
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 245
    return-void
.end method

.method public selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 981
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 982
    return-void
.end method

.method public sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 197
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 198
    return-void
.end method

.method public sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 592
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

    .line 249
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

    .line 1379
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1381
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_20

    .line 1382
    const/4 v1, 0x0

    .line 1383
    .local v1, "ret":[B
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1b

    .line 1384
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 1385
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1387
    :cond_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1389
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

    .line 1409
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1410
    return-void
.end method

.method public sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;

    .line 1493
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1494
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 1495
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_17

    .line 1496
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1497
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1499
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_24

    .line 1501
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "sendRsuRequestResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1503
    :goto_24
    return-void
.end method

.method public sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1481
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 1482
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 1483
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1485
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_24

    .line 1487
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "sendSarIndicatorResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1489
    :goto_24
    return-void
.end method

.method public sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1511
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1512
    return-void
.end method

.method public sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1507
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1508
    return-void
.end method

.method public sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1515
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1516
    return-void
.end method

.method public set4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1577
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1578
    return-void
.end method

.method public setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 664
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 665
    return-void
.end method

.method public setBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1574
    return-void
.end method

.method public setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 417
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 418
    return-void
.end method

.method public setCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1532
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1533
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 233
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 234
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 608
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 609
    return-void
.end method

.method public setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 653
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 654
    return-void
.end method

.method public setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1438
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1439
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 170
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 171
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 205
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 206
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 213
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 214
    return-void
.end method

.method public setDisable2GResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1651
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1652
    return-void
.end method

.method public setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 638
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 639
    return-void
.end method

.method public setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 622
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 623
    return-void
.end method

.method public setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1334
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1336
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1337
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1339
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1340
    return-void
.end method

.method public setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 537
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 538
    return-void
.end method

.method public setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 711
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 712
    return-void
.end method

.method public setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1027
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1028
    return-void
.end method

.method public setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 569
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 570
    return-void
.end method

.method public setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1434
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1435
    return-void
.end method

.method public setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1444
    return-void
.end method

.method public setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1453
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1454
    return-void
.end method

.method public setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1448
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1449
    return-void
.end method

.method public setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1325
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1327
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1328
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1330
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1331
    return-void
.end method

.method public setLteBandEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1565
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1566
    return-void
.end method

.method public setLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1592
    return-void
.end method

.method public setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1258
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1259
    return-void
.end method

.method public setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 506
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 507
    return-void
.end method

.method public setNROptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 390
    return-void
.end method

.method public setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1345
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1346
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1348
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1349
    return-void
.end method

.method public setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1009
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1010
    return-void
.end method

.method public setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 316
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 317
    return-void
.end method

.method public setNrBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1688
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1689
    return-void
.end method

.method public setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1227
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1228
    return-void
.end method

.method public setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 829
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 830
    return-void
.end method

.method public setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 946
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 947
    return-void
.end method

.method public setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1242
    return-void
.end method

.method public setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 718
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 719
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 720
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 722
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 723
    return-void
.end method

.method public setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1246
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1247
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

    .line 1141
    .local p2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1142
    return-void
.end method

.method public setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 410
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 411
    return-void
.end method

.method public setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 403
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 404
    return-void
.end method

.method public setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1371
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1372
    return-void
.end method

.method public setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 283
    return-void
.end method

.method public setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 533
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 534
    return-void
.end method

.method public setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1425
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1426
    return-void
.end method

.method public setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 253
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1c

    .line 254
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 255
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 257
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 259
    :cond_1c
    return-void
.end method

.method public setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 396
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 397
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

    .line 1393
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1394
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1d

    .line 1395
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 1396
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1398
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_24

    .line 1400
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v2, "setTxPowerStatusResponse, rr is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1402
    :goto_24
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1430
    return-void
.end method

.method public setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 615
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 616
    return-void
.end method

.method public setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1298
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1300
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1301
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1303
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1304
    return-void
.end method

.method public setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1289
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1291
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1292
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1294
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1295
    return-void
.end method

.method public setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1316
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1318
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1319
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1321
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1322
    return-void
.end method

.method public setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1352
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1354
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1355
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1357
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1358
    return-void
.end method

.method public setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1309
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1310
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1312
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1313
    return-void
.end method

.method public supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 163
    return-void
.end method

.method public supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 1018
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1019
    return-void
.end method

.method public syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1232
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1233
    return-void
.end method

.method public triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 685
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 686
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1c

    .line 687
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 688
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 690
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 692
    :cond_1c
    return-void
.end method

.method public vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;

    .line 1271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1273
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_22

    .line 1274
    const/4 v1, 0x0

    .line 1275
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1d

    .line 1276
    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;->transactionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1277
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1279
    :cond_1d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1281
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_22
    return-void
.end method

.method public vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1284
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1285
    return-void
.end method

.method public writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 745
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 746
    return-void
.end method

.method public writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 912
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 913
    return-void
.end method

.method public writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 799
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExResponse;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getMtkRadioResponse()Lcom/mediatek/internal/telephony/MtkRadioResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 800
    return-void
.end method
