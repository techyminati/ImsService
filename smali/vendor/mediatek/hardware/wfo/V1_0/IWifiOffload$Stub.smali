.class public abstract Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;
.super Landroid/os/HwBinder;
.source "IWifiOffload.java"

# interfaces
.implements Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 826
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 829
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 842
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 879
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 880
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 881
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 882
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 883
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x1ct
        -0x42t
        -0x55t
        0x70t
        -0x50t
        0xbt
        -0x7dt
        -0x52t
        0x30t
        -0x68t
        -0x6ct
        -0x6at
        -0x7bt
        0x7dt
        -0x9t
        0x74t
        -0x14t
        -0x45t
        0x44t
        -0x80t
        -0x12t
        -0x20t
        0x50t
        0x63t
        0x6ft
        -0xet
        0x63t
        -0x67t
        -0x6t
        0x42t
        0xct
        -0x7dt
    .end array-data

    :array_34
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.wfo@1.0::IWifiOffload"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 848
    const-string v0, "vendor.mediatek.hardware.wfo@1.0::IWifiOffload"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 867
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 889
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 891
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 27
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.mediatek.hardware.wfo@1.0::IWifiOffload"

    sparse-switch p1, :sswitch_data_252

    goto/16 :goto_251

    .line 1198
    :sswitch_10
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->notifySyspropsChanged()V

    .line 1201
    goto/16 :goto_251

    .line 1187
    :sswitch_18
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1190
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1191
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1193
    goto/16 :goto_251

    .line 1177
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->ping()V

    .line 1180
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1182
    goto/16 :goto_251

    .line 1172
    :sswitch_38
    goto/16 :goto_251

    .line 1164
    :sswitch_3a
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->setHALInstrumentation()V

    .line 1167
    goto/16 :goto_251

    .line 1130
    :sswitch_42
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1133
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1137
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1138
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1139
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1140
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1141
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v3, :cond_8a

    .line 1143
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1144
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1146
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_82

    .line 1150
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1151
    nop

    .line 1141
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 1147
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1154
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1156
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1158
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1159
    goto/16 :goto_251

    .line 1119
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1123
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1125
    goto/16 :goto_251

    .line 1107
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1110
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1111
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1112
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto/16 :goto_251

    .line 1096
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1099
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1100
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1102
    goto/16 :goto_251

    .line 1085
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeConnectToMal()I

    move-result v0

    .line 1088
    .local v0, "_hidl_out_result":I
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1091
    goto/16 :goto_251

    .line 1075
    .end local v0    # "_hidl_out_result":I
    :sswitch_e3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1078
    .local v0, "simId":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "countryId":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetLocationInfo(BLjava/lang/String;)V

    .line 1080
    goto/16 :goto_251

    .line 1064
    .end local v0    # "simId":B
    .end local v1    # "countryId":Ljava/lang/String;
    :sswitch_f3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1067
    .restart local v0    # "simId":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1068
    .local v1, "mdIdx":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    .line 1069
    .local v2, "radioState":B
    invoke-virtual {v10, v0, v1, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetRadioState(BBB)V

    .line 1070
    goto/16 :goto_251

    .line 1054
    .end local v0    # "simId":B
    .end local v1    # "mdIdx":B
    .end local v2    # "radioState":B
    :sswitch_107
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1057
    .restart local v0    # "simId":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1058
    .local v1, "isWfcSupported":I
    invoke-virtual {v10, v0, v1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetWfcSupported(BI)V

    .line 1059
    goto/16 :goto_251

    .line 1044
    .end local v0    # "simId":B
    .end local v1    # "isWfcSupported":I
    :sswitch_117
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1047
    .local v0, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1048
    .local v1, "snr":I
    invoke-virtual {v10, v0, v1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetWifiQuality(II)V

    .line 1049
    goto/16 :goto_251

    .line 1028
    .end local v0    # "rssi":I
    .end local v1    # "snr":I
    :sswitch_127
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v9

    .line 1031
    .local v9, "simId":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1032
    .local v13, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1033
    .local v14, "imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1034
    .local v15, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1035
    .local v16, "impi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 1036
    .local v17, "simType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 1037
    .local v18, "simReady":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v19

    .line 1038
    .local v19, "isMainSim":Z
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetSimInfo(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1039
    goto/16 :goto_251

    .line 1015
    .end local v9    # "simId":B
    .end local v13    # "imei":Ljava/lang/String;
    .end local v14    # "imsi":Ljava/lang/String;
    .end local v15    # "mccMnc":Ljava/lang/String;
    .end local v16    # "impi":Ljava/lang/String;
    .end local v17    # "simType":I
    .end local v18    # "simReady":Z
    .end local v19    # "isMainSim":Z
    :sswitch_15d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v6

    .line 1018
    .local v6, "mdIdx":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v7

    .line 1019
    .local v7, "simIdx":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 1020
    .local v8, "isVoiceRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v9

    .line 1021
    .local v9, "voiceRatType":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 1022
    .local v13, "voiceRegState":B
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetVoiceState(BBZBB)V

    .line 1023
    goto/16 :goto_251

    .line 1001
    .end local v6    # "mdIdx":B
    .end local v7    # "simIdx":B
    .end local v8    # "isVoiceRoaming":Z
    .end local v9    # "voiceRatType":B
    .end local v13    # "voiceRegState":B
    :sswitch_180
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v7

    .line 1004
    .local v7, "mdIdx":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v8

    .line 1005
    .local v8, "simIdx":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 1006
    .local v9, "isDataRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 1007
    .local v13, "ratType":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v14

    .line 1008
    .local v14, "serviceState":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1009
    .local v15, "locatedPlmn":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetServiceState(BBZBBLjava/lang/String;)V

    .line 1010
    goto/16 :goto_251

    .line 989
    .end local v7    # "mdIdx":B
    .end local v8    # "simIdx":B
    .end local v9    # "isDataRoaming":Z
    .end local v13    # "ratType":B
    .end local v14    # "serviceState":B
    .end local v15    # "locatedPlmn":Ljava/lang/String;
    :sswitch_1a8
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 992
    .local v0, "simIdx":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 993
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 994
    .local v2, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 995
    .local v3, "callState":I
    invoke-virtual {v10, v0, v1, v2, v3}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetCallState(BIII)V

    .line 996
    goto/16 :goto_251

    .line 976
    .end local v0    # "simIdx":B
    .end local v1    # "callId":I
    .end local v2    # "callType":I
    .end local v3    # "callState":I
    :sswitch_1c0
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 979
    .local v6, "wifiConnected":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 980
    .local v7, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 981
    .local v8, "ipv4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 982
    .local v9, "ipv6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 983
    .local v13, "mac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetWifiStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    goto/16 :goto_251

    .line 959
    .end local v6    # "wifiConnected":Z
    .end local v7    # "ifName":Ljava/lang/String;
    .end local v8    # "ipv4":Ljava/lang/String;
    .end local v9    # "ipv6":Ljava/lang/String;
    .end local v13    # "mac":Ljava/lang/String;
    :sswitch_1e3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 962
    .local v13, "simId":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 963
    .local v14, "volteEnabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 964
    .local v15, "wfcEnabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 965
    .local v16, "vilteEnabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 966
    .local v17, "fqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 967
    .local v18, "wifiEnabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v19

    .line 968
    .local v19, "wfcMode":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v20

    .line 969
    .local v20, "dataRoaming_enabled":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v21

    .line 970
    .local v21, "isAllowTurnOffIms":Z
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeSetWosProfile(BZZZLjava/lang/String;ZBBZ)V

    .line 971
    goto :goto_251

    .line 947
    .end local v13    # "simId":B
    .end local v14    # "volteEnabled":Z
    .end local v15    # "wfcEnabled":Z
    .end local v16    # "vilteEnabled":Z
    .end local v17    # "fqdn":Ljava/lang/String;
    .end local v18    # "wifiEnabled":Z
    .end local v19    # "wfcMode":B
    .end local v20    # "dataRoaming_enabled":B
    .end local v21    # "isAllowTurnOffIms":Z
    :sswitch_21f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 950
    .restart local v0    # "simIdx":B
    invoke-virtual {v10, v0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeGetRatType(B)I

    move-result v2

    .line 951
    .local v2, "_hidl_out_result":I
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 952
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 954
    goto :goto_251

    .line 939
    .end local v0    # "simIdx":B
    .end local v2    # "_hidl_out_result":I
    :sswitch_234
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeClose()V

    .line 942
    goto :goto_251

    .line 931
    :sswitch_23b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->nativeInit()V

    .line 934
    goto :goto_251

    .line 922
    :sswitch_242
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;

    move-result-object v0

    .line 925
    .local v0, "wifiOffloadCallback":Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;
    invoke-virtual {v10, v0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->setWifiOffloadCallback(Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;)V

    .line 926
    nop

    .line 1210
    .end local v0    # "wifiOffloadCallback":Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;
    :goto_251
    return-void

    :sswitch_data_252
    .sparse-switch
        0x1 -> :sswitch_242
        0x2 -> :sswitch_23b
        0x3 -> :sswitch_234
        0x4 -> :sswitch_21f
        0x5 -> :sswitch_1e3
        0x6 -> :sswitch_1c0
        0x7 -> :sswitch_1a8
        0x8 -> :sswitch_180
        0x9 -> :sswitch_15d
        0xa -> :sswitch_127
        0xb -> :sswitch_117
        0xc -> :sswitch_107
        0xd -> :sswitch_f3
        0xe -> :sswitch_e3
        0xf -> :sswitch_d1
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_42
        0xf494e54 -> :sswitch_3a
        0xf4c5444 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 873
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 901
    const-string v0, "vendor.mediatek.hardware.wfo@1.0::IWifiOffload"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 902
    return-object p0

    .line 904
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->registerService(Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 863
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 895
    const/4 v0, 0x1

    return v0
.end method
