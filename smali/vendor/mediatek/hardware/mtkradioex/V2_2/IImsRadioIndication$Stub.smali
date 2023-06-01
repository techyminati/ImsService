.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1397
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1400
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

    .line 1415
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1454
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1455
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1456
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1457
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1458
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

    .line 1427
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_30

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_44

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_58

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6c

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_30
    .array-data 1
        0x15t
        -0x4ct
        0x7ft
        0x3et
        -0x7at
        -0x77t
        -0x17t
        -0x6at
        -0x35t
        -0xdt
        -0x37t
        -0x3dt
        -0x7at
        0x6dt
        -0x4ct
        0x2ft
        0x12t
        0x76t
        -0x2bt
        -0x6dt
        -0x7bt
        0x42t
        0x57t
        0x3t
        0x2dt
        0x21t
        -0x74t
        -0x63t
        0x1ft
        0x30t
        -0x16t
        -0x71t
    .end array-data

    :array_44
    .array-data 1
        0x41t
        0x3bt
        0x31t
        0x49t
        0x5bt
        -0x25t
        0x15t
        -0x22t
        0x71t
        0x76t
        0x5dt
        0xbt
        0x54t
        -0x2ct
        0x3dt
        -0x6t
        -0x46t
        0x2bt
        -0x48t
        0x1dt
        -0x44t
        -0x67t
        0x34t
        0x63t
        0x6ct
        0x1t
        0x70t
        -0x4ft
        0x3t
        -0x7et
        0x28t
        0x4dt
    .end array-data

    :array_58
    .array-data 1
        -0x72t
        0x30t
        0x63t
        0x20t
        -0x7t
        -0x5et
        -0x5bt
        0x44t
        0x30t
        0x20t
        0x73t
        -0x12t
        0x63t
        -0x39t
        -0x6et
        0x1ft
        -0x3dt
        0x5at
        0x31t
        0x5et
        -0x46t
        -0x40t
        0x73t
        0x9t
        -0x41t
        0x51t
        -0x9t
        -0x62t
        -0x50t
        0x72t
        0x22t
        -0x55t
    .end array-data

    :array_6c
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1405
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioIndication"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.1::IImsRadioIndication"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IImsRadioIndication"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1421
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1442
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1464
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1466
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 25
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1494
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_55e

    goto/16 :goto_55d

    .line 2203
    :sswitch_10
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2206
    goto/16 :goto_55d

    .line 2192
    :sswitch_18
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 2195
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2196
    invoke-virtual {v1, v11}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2198
    goto/16 :goto_55d

    .line 2182
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2184
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->ping()V

    .line 2185
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2187
    goto/16 :goto_55d

    .line 2177
    :sswitch_38
    goto/16 :goto_55d

    .line 2169
    :sswitch_3a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2171
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 2172
    goto/16 :goto_55d

    .line 2135
    :sswitch_42
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2137
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2138
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2140
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2142
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2143
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2144
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2145
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2146
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v3, :cond_8a

    .line 2148
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2149
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2151
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v12, 0x20

    if-ne v8, v12, :cond_82

    .line 2155
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2156
    nop

    .line 2146
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 2152
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2159
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2161
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2163
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2164
    goto/16 :goto_55d

    .line 2124
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2126
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 2127
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2128
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2130
    goto/16 :goto_55d

    .line 2112
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 2115
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2116
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2117
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2119
    goto/16 :goto_55d

    .line 2101
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2103
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2104
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2105
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2107
    goto/16 :goto_55d

    .line 2091
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2093
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2094
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2095
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->videoRingtoneEventInd(ILjava/util/ArrayList;)V

    .line 2096
    goto/16 :goto_55d

    .line 2081
    .end local v0    # "type":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_e3
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.1::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2083
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2084
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2085
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->onMDInternetUsageInd(ILjava/util/ArrayList;)V

    .line 2086
    goto/16 :goto_55d

    .line 2071
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_f5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2074
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2075
    .local v1, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->onSsacStatus(ILjava/util/ArrayList;)V

    .line 2076
    goto/16 :goto_55d

    .line 2061
    .end local v0    # "type":I
    .end local v1    # "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_105
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2064
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2065
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsRegInfoInd(ILjava/util/ArrayList;)V

    .line 2066
    goto/16 :goto_55d

    .line 2050
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_115
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2053
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;-><init>()V

    .line 2054
    .local v1, "report":Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2055
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;)V

    .line 2056
    goto/16 :goto_55d

    .line 2038
    .end local v0    # "type":I
    .end local v1    # "report":Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;
    :sswitch_129
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2041
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2042
    .local v1, "account_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2043
    .local v2, "response_code":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2044
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->sipRegInfoInd(IIILjava/util/ArrayList;)V

    .line 2045
    goto/16 :goto_55d

    .line 2027
    .end local v0    # "type":I
    .end local v1    # "account_id":I
    .end local v2    # "response_code":I
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_141
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2030
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2031
    .local v1, "domain":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2032
    .local v2, "rat":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->callRatIndication(III)V

    .line 2033
    goto/16 :goto_55d

    .line 2017
    .end local v0    # "type":I
    .end local v1    # "domain":I
    .end local v2    # "rat":I
    :sswitch_155
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2020
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2021
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->sipHeaderReport(ILjava/util/ArrayList;)V

    .line 2022
    goto/16 :goto_55d

    .line 2006
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_165
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2009
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2010
    .local v1, "ciType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2011
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2012
    goto/16 :goto_55d

    .line 1996
    .end local v0    # "type":I
    .end local v1    # "ciType":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_179
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1999
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2000
    .local v1, "vops":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->sendVopsIndication(II)V

    .line 2001
    goto/16 :goto_55d

    .line 1985
    .end local v0    # "type":I
    .end local v1    # "vops":I
    :sswitch_189
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1988
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1989
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1990
    .local v2, "audio":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->audioIndication(III)V

    .line 1991
    goto/16 :goto_55d

    .line 1974
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_19d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1977
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1978
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1979
    .local v2, "rttType":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->rttModifyRequestReceive(III)V

    .line 1980
    goto/16 :goto_55d

    .line 1962
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "rttType":I
    :sswitch_1b1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1965
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1966
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1967
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1968
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->rttTextReceive(IIILjava/lang/String;)V

    .line 1969
    goto/16 :goto_55d

    .line 1951
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_1c9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1954
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1955
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1956
    .local v2, "result":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->rttModifyResponse(III)V

    .line 1957
    goto/16 :goto_55d

    .line 1937
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_1dd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1940
    .local v7, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1941
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1942
    .local v12, "localCap":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1943
    .local v13, "remoteCap":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1944
    .local v14, "localStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1945
    .local v15, "remoteStatus":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->rttCapabilityIndication(IIIIII)V

    .line 1946
    goto/16 :goto_55d

    .line 1921
    .end local v7    # "type":I
    .end local v8    # "callId":I
    .end local v12    # "localCap":I
    .end local v13    # "remoteCap":I
    .end local v14    # "localStatus":I
    .end local v15    # "remoteStatus":I
    :sswitch_205
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1924
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1925
    .local v13, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1926
    .local v14, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1927
    .local v15, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1928
    .local v16, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1929
    .local v17, "recvPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1930
    .local v18, "jitter":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1931
    .local v19, "delay":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    goto/16 :goto_55d

    .line 1911
    .end local v12    # "type":I
    .end local v13    # "pdnId":Ljava/lang/String;
    .end local v14    # "networkId":Ljava/lang/String;
    .end local v15    # "timer":Ljava/lang/String;
    .end local v16    # "sendPktLost":Ljava/lang/String;
    .end local v17    # "recvPktLost":Ljava/lang/String;
    .end local v18    # "jitter":Ljava/lang/String;
    .end local v19    # "delay":Ljava/lang/String;
    :sswitch_23b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1914
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1915
    .local v1, "callId":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsRedialEmergencyIndication(ILjava/lang/String;)V

    .line 1916
    goto/16 :goto_55d

    .line 1902
    .end local v0    # "type":I
    .end local v1    # "callId":Ljava/lang/String;
    :sswitch_24b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1905
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 1906
    goto/16 :goto_55d

    .line 1891
    .end local v0    # "type":I
    :sswitch_257
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1894
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1895
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1896
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1897
    goto/16 :goto_55d

    .line 1881
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_26b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1884
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1885
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 1886
    goto/16 :goto_55d

    .line 1871
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_27b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1874
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1875
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 1876
    goto/16 :goto_55d

    .line 1859
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_28b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1862
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1863
    .local v1, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1864
    .local v2, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1865
    .local v3, "extra":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    goto/16 :goto_55d

    .line 1850
    .end local v0    # "type":I
    .end local v1    # "capability":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extra":Ljava/lang/String;
    :sswitch_2a3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1853
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 1854
    goto/16 :goto_55d

    .line 1838
    .end local v0    # "type":I
    :sswitch_2af
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1841
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1842
    .local v1, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1843
    .local v2, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1844
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 1845
    goto/16 :goto_55d

    .line 1826
    .end local v0    # "type":I
    .end local v1    # "phoneId":I
    .end local v2    # "configId":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_2c7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1829
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1830
    .restart local v1    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1831
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1832
    .local v3, "value":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 1833
    goto/16 :goto_55d

    .line 1817
    .end local v0    # "type":I
    .end local v1    # "phoneId":I
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :sswitch_2df
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1820
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 1821
    goto/16 :goto_55d

    .line 1807
    .end local v0    # "type":I
    :sswitch_2eb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1810
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1811
    .local v1, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 1812
    goto/16 :goto_55d

    .line 1793
    .end local v0    # "type":I
    .end local v1    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;>;"
    :sswitch_2fb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1796
    .restart local v7    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1797
    .local v8, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1798
    .local v12, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1799
    .local v13, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1800
    .local v14, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1801
    .local v15, "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    goto/16 :goto_55d

    .line 1783
    .end local v7    # "type":I
    .end local v8    # "callId":Ljava/lang/String;
    .end local v12    # "ptype":Ljava/lang/String;
    .end local v13    # "urcIdx":Ljava/lang/String;
    .end local v14    # "totalUrcCount":Ljava/lang/String;
    .end local v15    # "rawData":Ljava/lang/String;
    :sswitch_323
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1786
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1787
    .local v1, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 1788
    goto/16 :goto_55d

    .line 1773
    .end local v0    # "type":I
    .end local v1    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsConfParticipant;>;"
    :sswitch_333
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1776
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1777
    .local v1, "info":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 1778
    goto/16 :goto_55d

    .line 1762
    .end local v0    # "type":I
    .end local v1    # "info":I
    :sswitch_343
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1765
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1766
    .local v1, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 1768
    goto/16 :goto_55d

    .line 1752
    .end local v0    # "type":I
    .end local v1    # "iid":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    :sswitch_357
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1755
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1756
    .local v1, "supportLteEcc":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 1757
    goto/16 :goto_55d

    .line 1742
    .end local v0    # "type":I
    .end local v1    # "supportLteEcc":I
    :sswitch_367
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1745
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1746
    .local v1, "count":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 1747
    goto/16 :goto_55d

    .line 1733
    .end local v0    # "type":I
    .end local v1    # "count":I
    :sswitch_377
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1736
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 1737
    goto/16 :goto_55d

    .line 1724
    .end local v0    # "type":I
    :sswitch_383
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1727
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 1728
    goto/16 :goto_55d

    .line 1712
    .end local v0    # "type":I
    :sswitch_38f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1715
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1716
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1717
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsBearerStateNotify(IIILjava/lang/String;)V

    .line 1719
    goto/16 :goto_55d

    .line 1702
    .end local v0    # "type":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "capability":Ljava/lang/String;
    :sswitch_3a7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1705
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1706
    .local v1, "isEnable":Z
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 1707
    goto/16 :goto_55d

    .line 1690
    .end local v0    # "type":I
    .end local v1    # "isEnable":Z
    :sswitch_3b7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1693
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1694
    .local v1, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1695
    .local v2, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1696
    .local v3, "cause":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 1697
    goto/16 :goto_55d

    .line 1681
    .end local v0    # "type":I
    .end local v1    # "call_id":I
    .end local v2    # "ectResult":I
    .end local v3    # "cause":I
    :sswitch_3cf
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1684
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 1685
    goto/16 :goto_55d

    .line 1672
    .end local v0    # "type":I
    :sswitch_3db
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1675
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 1676
    goto/16 :goto_55d

    .line 1663
    .end local v0    # "type":I
    :sswitch_3e7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1666
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 1667
    goto/16 :goto_55d

    .line 1654
    .end local v0    # "type":I
    :sswitch_3f3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1657
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 1658
    goto/16 :goto_55d

    .line 1643
    .end local v0    # "type":I
    :sswitch_3ff
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1646
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1647
    .local v1, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1648
    .local v2, "capability":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 1649
    goto/16 :goto_55d

    .line 1629
    .end local v0    # "type":I
    .end local v1    # "registerState":I
    .end local v2    # "capability":I
    :sswitch_413
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1632
    .restart local v7    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1633
    .restart local v8    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1634
    .restart local v12    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1635
    .restart local v13    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1636
    .restart local v14    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1637
    .restart local v15    # "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    goto/16 :goto_55d

    .line 1618
    .end local v7    # "type":I
    .end local v8    # "callId":Ljava/lang/String;
    .end local v12    # "ptype":Ljava/lang/String;
    .end local v13    # "urcIdx":Ljava/lang/String;
    .end local v14    # "totalUrcCount":Ljava/lang/String;
    .end local v15    # "rawData":Ljava/lang/String;
    :sswitch_43b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1621
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1622
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1623
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1624
    goto/16 :goto_55d

    .line 1608
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_44f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1611
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1612
    .local v1, "status":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 1613
    goto/16 :goto_55d

    .line 1596
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_45f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1599
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1600
    .local v1, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1601
    .local v2, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1602
    .local v3, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    goto/16 :goto_55d

    .line 1585
    .end local v0    # "type":I
    .end local v1    # "accountId":Ljava/lang/String;
    .end local v2    # "broadcastFlag":Ljava/lang/String;
    .end local v3    # "xuiInfo":Ljava/lang/String;
    :sswitch_477
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1588
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1589
    .local v1, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1590
    .local v2, "result2":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 1591
    goto/16 :goto_55d

    .line 1574
    .end local v0    # "type":I
    .end local v1    # "result1":Ljava/lang/String;
    .end local v2    # "result2":Ljava/lang/String;
    :sswitch_48b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1577
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1578
    .local v1, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1579
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->onUssi(IILjava/lang/String;)V

    .line 1580
    goto/16 :goto_55d

    .line 1562
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "msg":Ljava/lang/String;
    :sswitch_49f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1565
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1566
    .local v1, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1567
    .local v2, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1568
    .local v3, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    goto/16 :goto_55d

    .line 1548
    .end local v0    # "type":I
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "localVideoCap":Ljava/lang/String;
    .end local v3    # "remoteVideoCap":Ljava/lang/String;
    :sswitch_4b7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1551
    .restart local v7    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1552
    .restart local v8    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1553
    .local v12, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1554
    .local v13, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1555
    .local v14, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1556
    .local v15, "pau":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    goto/16 :goto_55d

    .line 1533
    .end local v7    # "type":I
    .end local v8    # "callId":Ljava/lang/String;
    .end local v12    # "callMode":Ljava/lang/String;
    .end local v13    # "videoState":Ljava/lang/String;
    .end local v14    # "audioDirection":Ljava/lang/String;
    .end local v15    # "pau":Ljava/lang/String;
    :sswitch_4df
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1536
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1537
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1538
    .local v13, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1539
    .local v14, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1540
    .local v15, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1541
    .local v16, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1542
    .local v17, "reasonText":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    goto :goto_55d

    .line 1518
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "dir":Ljava/lang/String;
    .end local v14    # "sipMsgType":Ljava/lang/String;
    .end local v15    # "method":Ljava/lang/String;
    .end local v16    # "responseCode":Ljava/lang/String;
    .end local v17    # "reasonText":Ljava/lang/String;
    :sswitch_50d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1521
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1522
    .local v12, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1523
    .local v13, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1524
    .local v14, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1525
    .local v15, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1526
    .local v16, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1527
    .local v17, "joinedCallId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    goto :goto_55d

    .line 1508
    .end local v8    # "type":I
    .end local v12    # "confCallId":Ljava/lang/String;
    .end local v13    # "op":Ljava/lang/String;
    .end local v14    # "num":Ljava/lang/String;
    .end local v15    # "result":Ljava/lang/String;
    .end local v16    # "cause":Ljava/lang/String;
    .end local v17    # "joinedCallId":Ljava/lang/String;
    :sswitch_53b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1511
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1512
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 1513
    goto :goto_55d

    .line 1497
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_54a
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1500
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;-><init>()V

    .line 1501
    .local v1, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1502
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;)V

    .line 1503
    nop

    .line 2215
    .end local v0    # "type":I
    .end local v1    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    :goto_55d
    return-void

    :sswitch_data_55e
    .sparse-switch
        0x1 -> :sswitch_54a
        0x2 -> :sswitch_53b
        0x3 -> :sswitch_50d
        0x4 -> :sswitch_4df
        0x5 -> :sswitch_4b7
        0x6 -> :sswitch_49f
        0x7 -> :sswitch_48b
        0x8 -> :sswitch_477
        0x9 -> :sswitch_45f
        0xa -> :sswitch_44f
        0xb -> :sswitch_43b
        0xc -> :sswitch_413
        0xd -> :sswitch_3ff
        0xe -> :sswitch_3f3
        0xf -> :sswitch_3e7
        0x10 -> :sswitch_3db
        0x11 -> :sswitch_3cf
        0x12 -> :sswitch_3b7
        0x13 -> :sswitch_3a7
        0x14 -> :sswitch_38f
        0x15 -> :sswitch_383
        0x16 -> :sswitch_377
        0x17 -> :sswitch_367
        0x18 -> :sswitch_357
        0x19 -> :sswitch_343
        0x1a -> :sswitch_333
        0x1b -> :sswitch_323
        0x1c -> :sswitch_2fb
        0x1d -> :sswitch_2eb
        0x1e -> :sswitch_2df
        0x1f -> :sswitch_2c7
        0x20 -> :sswitch_2af
        0x21 -> :sswitch_2a3
        0x22 -> :sswitch_28b
        0x23 -> :sswitch_27b
        0x24 -> :sswitch_26b
        0x25 -> :sswitch_257
        0x26 -> :sswitch_24b
        0x27 -> :sswitch_23b
        0x28 -> :sswitch_205
        0x29 -> :sswitch_1dd
        0x2a -> :sswitch_1c9
        0x2b -> :sswitch_1b1
        0x2c -> :sswitch_19d
        0x2d -> :sswitch_189
        0x2e -> :sswitch_179
        0x2f -> :sswitch_165
        0x30 -> :sswitch_155
        0x31 -> :sswitch_141
        0x32 -> :sswitch_129
        0x33 -> :sswitch_115
        0x34 -> :sswitch_105
        0x35 -> :sswitch_f5
        0x36 -> :sswitch_e3
        0x37 -> :sswitch_d1
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

    .line 1448
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1476
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1477
    return-object p0

    .line 1479
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

    .line 1483
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1438
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1470
    const/4 v0, 0x1

    return v0
.end method
