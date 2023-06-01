.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1423
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1426
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

    .line 1442
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1482
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1483
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1484
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1485
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1486
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

    .line 1454
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_38

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_60

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_74

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_88

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_38
    .array-data 1
        0x9t
        0x4at
        0x3et
        0x60t
        0x36t
        -0x60t
        -0x72t
        -0x4bt
        -0x6at
        -0x43t
        0x11t
        -0x1bt
        0x22t
        0x7ft
        0x3at
        -0x39t
        -0x5ft
        -0x53t
        -0x4dt
        -0x10t
        -0x3at
        0x6t
        -0x70t
        -0x62t
        -0x3ct
        0x11t
        -0x7et
        -0x33t
        0x38t
        0x1ct
        -0x7ct
        0x11t
    .end array-data

    :array_4c
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

    :array_60
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

    :array_74
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

    :array_88
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1431
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.3::IImsRadioIndication"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioIndication"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.1::IImsRadioIndication"

    const-string v4, "vendor.mediatek.hardware.mtkradioex@2.0::IImsRadioIndication"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1448
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.3::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1470
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1492
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1494
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

    .line 1522
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_570

    goto/16 :goto_56f

    .line 2241
    :sswitch_10
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2244
    goto/16 :goto_56f

    .line 2230
    :sswitch_18
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 2233
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2234
    invoke-virtual {v1, v11}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2236
    goto/16 :goto_56f

    .line 2220
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2222
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->ping()V

    .line 2223
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2225
    goto/16 :goto_56f

    .line 2215
    :sswitch_38
    goto/16 :goto_56f

    .line 2207
    :sswitch_3a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2209
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 2210
    goto/16 :goto_56f

    .line 2173
    :sswitch_42
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2175
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2176
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2178
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2180
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2181
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2182
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2183
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2184
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v3, :cond_8a

    .line 2186
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2187
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2189
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v12, 0x20

    if-ne v8, v12, :cond_82

    .line 2193
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2194
    nop

    .line 2184
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 2190
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2197
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2199
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2201
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2202
    goto/16 :goto_56f

    .line 2162
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2164
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 2165
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2166
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2168
    goto/16 :goto_56f

    .line 2150
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 2153
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2154
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2155
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2157
    goto/16 :goto_56f

    .line 2139
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2141
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2142
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2143
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2145
    goto/16 :goto_56f

    .line 2129
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.3::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2132
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2133
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->eregrtInfoInd(ILjava/util/ArrayList;)V

    .line 2134
    goto/16 :goto_56f

    .line 2119
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_e3
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2122
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2123
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->videoRingtoneEventInd(ILjava/util/ArrayList;)V

    .line 2124
    goto/16 :goto_56f

    .line 2109
    .end local v0    # "type":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_f5
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.1::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2112
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2113
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->onMDInternetUsageInd(ILjava/util/ArrayList;)V

    .line 2114
    goto/16 :goto_56f

    .line 2099
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_107
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2102
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2103
    .local v1, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->onSsacStatus(ILjava/util/ArrayList;)V

    .line 2104
    goto/16 :goto_56f

    .line 2089
    .end local v0    # "type":I
    .end local v1    # "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_117
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2092
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2093
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsRegInfoInd(ILjava/util/ArrayList;)V

    .line 2094
    goto/16 :goto_56f

    .line 2078
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_127
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2081
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;-><init>()V

    .line 2082
    .local v1, "report":Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2083
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;)V

    .line 2084
    goto/16 :goto_56f

    .line 2066
    .end local v0    # "type":I
    .end local v1    # "report":Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsRegStatusInfo;
    :sswitch_13b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2069
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2070
    .local v1, "account_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2071
    .local v2, "response_code":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2072
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->sipRegInfoInd(IIILjava/util/ArrayList;)V

    .line 2073
    goto/16 :goto_56f

    .line 2055
    .end local v0    # "type":I
    .end local v1    # "account_id":I
    .end local v2    # "response_code":I
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_153
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2058
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2059
    .local v1, "domain":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2060
    .local v2, "rat":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->callRatIndication(III)V

    .line 2061
    goto/16 :goto_56f

    .line 2045
    .end local v0    # "type":I
    .end local v1    # "domain":I
    .end local v2    # "rat":I
    :sswitch_167
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2048
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2049
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->sipHeaderReport(ILjava/util/ArrayList;)V

    .line 2050
    goto/16 :goto_56f

    .line 2034
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_177
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2037
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2038
    .local v1, "ciType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2039
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2040
    goto/16 :goto_56f

    .line 2024
    .end local v0    # "type":I
    .end local v1    # "ciType":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_18b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2027
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2028
    .local v1, "vops":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->sendVopsIndication(II)V

    .line 2029
    goto/16 :goto_56f

    .line 2013
    .end local v0    # "type":I
    .end local v1    # "vops":I
    :sswitch_19b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2016
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2017
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2018
    .local v2, "audio":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->audioIndication(III)V

    .line 2019
    goto/16 :goto_56f

    .line 2002
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_1af
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2005
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2006
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2007
    .local v2, "rttType":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->rttModifyRequestReceive(III)V

    .line 2008
    goto/16 :goto_56f

    .line 1990
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "rttType":I
    :sswitch_1c3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1993
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1994
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1995
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1996
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->rttTextReceive(IIILjava/lang/String;)V

    .line 1997
    goto/16 :goto_56f

    .line 1979
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_1db
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1982
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1983
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1984
    .local v2, "result":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->rttModifyResponse(III)V

    .line 1985
    goto/16 :goto_56f

    .line 1965
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_1ef
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1968
    .local v7, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1969
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1970
    .local v12, "localCap":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1971
    .local v13, "remoteCap":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1972
    .local v14, "localStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1973
    .local v15, "remoteStatus":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->rttCapabilityIndication(IIIIII)V

    .line 1974
    goto/16 :goto_56f

    .line 1949
    .end local v7    # "type":I
    .end local v8    # "callId":I
    .end local v12    # "localCap":I
    .end local v13    # "remoteCap":I
    .end local v14    # "localStatus":I
    .end local v15    # "remoteStatus":I
    :sswitch_217
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1952
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1953
    .local v13, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1954
    .local v14, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1955
    .local v15, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1956
    .local v16, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1957
    .local v17, "recvPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1958
    .local v18, "jitter":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1959
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    goto/16 :goto_56f

    .line 1939
    .end local v12    # "type":I
    .end local v13    # "pdnId":Ljava/lang/String;
    .end local v14    # "networkId":Ljava/lang/String;
    .end local v15    # "timer":Ljava/lang/String;
    .end local v16    # "sendPktLost":Ljava/lang/String;
    .end local v17    # "recvPktLost":Ljava/lang/String;
    .end local v18    # "jitter":Ljava/lang/String;
    .end local v19    # "delay":Ljava/lang/String;
    :sswitch_24d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1942
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1943
    .local v1, "callId":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsRedialEmergencyIndication(ILjava/lang/String;)V

    .line 1944
    goto/16 :goto_56f

    .line 1930
    .end local v0    # "type":I
    .end local v1    # "callId":Ljava/lang/String;
    :sswitch_25d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1933
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 1934
    goto/16 :goto_56f

    .line 1919
    .end local v0    # "type":I
    :sswitch_269
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1922
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1923
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1924
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1925
    goto/16 :goto_56f

    .line 1909
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_27d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1912
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1913
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 1914
    goto/16 :goto_56f

    .line 1899
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_28d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1902
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1903
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 1904
    goto/16 :goto_56f

    .line 1887
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_29d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1890
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1891
    .local v1, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1892
    .local v2, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1893
    .local v3, "extra":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    goto/16 :goto_56f

    .line 1878
    .end local v0    # "type":I
    .end local v1    # "capability":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extra":Ljava/lang/String;
    :sswitch_2b5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1881
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 1882
    goto/16 :goto_56f

    .line 1866
    .end local v0    # "type":I
    :sswitch_2c1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1869
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1870
    .local v1, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1871
    .local v2, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1872
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 1873
    goto/16 :goto_56f

    .line 1854
    .end local v0    # "type":I
    .end local v1    # "phoneId":I
    .end local v2    # "configId":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_2d9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1857
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1858
    .restart local v1    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1859
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1860
    .local v3, "value":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 1861
    goto/16 :goto_56f

    .line 1845
    .end local v0    # "type":I
    .end local v1    # "phoneId":I
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :sswitch_2f1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1848
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 1849
    goto/16 :goto_56f

    .line 1835
    .end local v0    # "type":I
    :sswitch_2fd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1838
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1839
    .local v1, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 1840
    goto/16 :goto_56f

    .line 1821
    .end local v0    # "type":I
    .end local v1    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;>;"
    :sswitch_30d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1824
    .restart local v7    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1825
    .local v8, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1826
    .local v12, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1827
    .local v13, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1828
    .local v14, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1829
    .local v15, "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    goto/16 :goto_56f

    .line 1811
    .end local v7    # "type":I
    .end local v8    # "callId":Ljava/lang/String;
    .end local v12    # "ptype":Ljava/lang/String;
    .end local v13    # "urcIdx":Ljava/lang/String;
    .end local v14    # "totalUrcCount":Ljava/lang/String;
    .end local v15    # "rawData":Ljava/lang/String;
    :sswitch_335
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1814
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1815
    .local v1, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 1816
    goto/16 :goto_56f

    .line 1801
    .end local v0    # "type":I
    .end local v1    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/ImsConfParticipant;>;"
    :sswitch_345
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1804
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1805
    .local v1, "info":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 1806
    goto/16 :goto_56f

    .line 1790
    .end local v0    # "type":I
    .end local v1    # "info":I
    :sswitch_355
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1793
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1794
    .local v1, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1795
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 1796
    goto/16 :goto_56f

    .line 1780
    .end local v0    # "type":I
    .end local v1    # "iid":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    :sswitch_369
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1783
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1784
    .local v1, "supportLteEcc":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 1785
    goto/16 :goto_56f

    .line 1770
    .end local v0    # "type":I
    .end local v1    # "supportLteEcc":I
    :sswitch_379
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1773
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1774
    .local v1, "count":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 1775
    goto/16 :goto_56f

    .line 1761
    .end local v0    # "type":I
    .end local v1    # "count":I
    :sswitch_389
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1764
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 1765
    goto/16 :goto_56f

    .line 1752
    .end local v0    # "type":I
    :sswitch_395
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1755
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 1756
    goto/16 :goto_56f

    .line 1740
    .end local v0    # "type":I
    :sswitch_3a1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1743
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1744
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1745
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1746
    .local v3, "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsBearerStateNotify(IIILjava/lang/String;)V

    .line 1747
    goto/16 :goto_56f

    .line 1730
    .end local v0    # "type":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "capability":Ljava/lang/String;
    :sswitch_3b9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1733
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1734
    .local v1, "isEnable":Z
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 1735
    goto/16 :goto_56f

    .line 1718
    .end local v0    # "type":I
    .end local v1    # "isEnable":Z
    :sswitch_3c9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1721
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1722
    .local v1, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1723
    .local v2, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1724
    .local v3, "cause":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 1725
    goto/16 :goto_56f

    .line 1709
    .end local v0    # "type":I
    .end local v1    # "call_id":I
    .end local v2    # "ectResult":I
    .end local v3    # "cause":I
    :sswitch_3e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1712
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 1713
    goto/16 :goto_56f

    .line 1700
    .end local v0    # "type":I
    :sswitch_3ed
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1703
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 1704
    goto/16 :goto_56f

    .line 1691
    .end local v0    # "type":I
    :sswitch_3f9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1694
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 1695
    goto/16 :goto_56f

    .line 1682
    .end local v0    # "type":I
    :sswitch_405
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1685
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 1686
    goto/16 :goto_56f

    .line 1671
    .end local v0    # "type":I
    :sswitch_411
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1674
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1675
    .local v1, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1676
    .local v2, "capability":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 1677
    goto/16 :goto_56f

    .line 1657
    .end local v0    # "type":I
    .end local v1    # "registerState":I
    .end local v2    # "capability":I
    :sswitch_425
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1660
    .restart local v7    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1661
    .restart local v8    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1662
    .restart local v12    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1663
    .restart local v13    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1664
    .restart local v14    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1665
    .restart local v15    # "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    goto/16 :goto_56f

    .line 1646
    .end local v7    # "type":I
    .end local v8    # "callId":Ljava/lang/String;
    .end local v12    # "ptype":Ljava/lang/String;
    .end local v13    # "urcIdx":Ljava/lang/String;
    .end local v14    # "totalUrcCount":Ljava/lang/String;
    .end local v15    # "rawData":Ljava/lang/String;
    :sswitch_44d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1649
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1650
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1651
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1652
    goto/16 :goto_56f

    .line 1636
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_461
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1639
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1640
    .local v1, "status":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 1641
    goto/16 :goto_56f

    .line 1624
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_471
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1627
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1629
    .local v2, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1630
    .local v3, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    goto/16 :goto_56f

    .line 1613
    .end local v0    # "type":I
    .end local v1    # "accountId":Ljava/lang/String;
    .end local v2    # "broadcastFlag":Ljava/lang/String;
    .end local v3    # "xuiInfo":Ljava/lang/String;
    :sswitch_489
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1616
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1618
    .local v2, "result2":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 1619
    goto/16 :goto_56f

    .line 1602
    .end local v0    # "type":I
    .end local v1    # "result1":Ljava/lang/String;
    .end local v2    # "result2":Ljava/lang/String;
    :sswitch_49d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1605
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1606
    .local v1, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1607
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->onUssi(IILjava/lang/String;)V

    .line 1608
    goto/16 :goto_56f

    .line 1590
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "msg":Ljava/lang/String;
    :sswitch_4b1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1593
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    .local v1, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1595
    .local v2, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1596
    .local v3, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    goto/16 :goto_56f

    .line 1576
    .end local v0    # "type":I
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "localVideoCap":Ljava/lang/String;
    .end local v3    # "remoteVideoCap":Ljava/lang/String;
    :sswitch_4c9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 1579
    .restart local v7    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1580
    .restart local v8    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1581
    .local v12, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1582
    .local v13, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1583
    .local v14, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1584
    .local v15, "pau":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    goto/16 :goto_56f

    .line 1561
    .end local v7    # "type":I
    .end local v8    # "callId":Ljava/lang/String;
    .end local v12    # "callMode":Ljava/lang/String;
    .end local v13    # "videoState":Ljava/lang/String;
    .end local v14    # "audioDirection":Ljava/lang/String;
    .end local v15    # "pau":Ljava/lang/String;
    :sswitch_4f1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1564
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1565
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1566
    .local v13, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1567
    .local v14, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1568
    .local v15, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1569
    .local v16, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1570
    .local v17, "reasonText":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    goto :goto_56f

    .line 1546
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "dir":Ljava/lang/String;
    .end local v14    # "sipMsgType":Ljava/lang/String;
    .end local v15    # "method":Ljava/lang/String;
    .end local v16    # "responseCode":Ljava/lang/String;
    .end local v17    # "reasonText":Ljava/lang/String;
    :sswitch_51f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1549
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1550
    .local v12, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1551
    .local v13, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1552
    .local v14, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1553
    .local v15, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1554
    .local v16, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1555
    .local v17, "joinedCallId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    goto :goto_56f

    .line 1536
    .end local v8    # "type":I
    .end local v12    # "confCallId":Ljava/lang/String;
    .end local v13    # "op":Ljava/lang/String;
    .end local v14    # "num":Ljava/lang/String;
    .end local v15    # "result":Ljava/lang/String;
    .end local v16    # "cause":Ljava/lang/String;
    .end local v17    # "joinedCallId":Ljava/lang/String;
    :sswitch_54d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1539
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1540
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 1541
    goto :goto_56f

    .line 1525
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_55c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1528
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;-><init>()V

    .line 1529
    .local v1, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1530
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;)V

    .line 1531
    nop

    .line 2253
    .end local v0    # "type":I
    .end local v1    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    :goto_56f
    return-void

    :sswitch_data_570
    .sparse-switch
        0x1 -> :sswitch_55c
        0x2 -> :sswitch_54d
        0x3 -> :sswitch_51f
        0x4 -> :sswitch_4f1
        0x5 -> :sswitch_4c9
        0x6 -> :sswitch_4b1
        0x7 -> :sswitch_49d
        0x8 -> :sswitch_489
        0x9 -> :sswitch_471
        0xa -> :sswitch_461
        0xb -> :sswitch_44d
        0xc -> :sswitch_425
        0xd -> :sswitch_411
        0xe -> :sswitch_405
        0xf -> :sswitch_3f9
        0x10 -> :sswitch_3ed
        0x11 -> :sswitch_3e1
        0x12 -> :sswitch_3c9
        0x13 -> :sswitch_3b9
        0x14 -> :sswitch_3a1
        0x15 -> :sswitch_395
        0x16 -> :sswitch_389
        0x17 -> :sswitch_379
        0x18 -> :sswitch_369
        0x19 -> :sswitch_355
        0x1a -> :sswitch_345
        0x1b -> :sswitch_335
        0x1c -> :sswitch_30d
        0x1d -> :sswitch_2fd
        0x1e -> :sswitch_2f1
        0x1f -> :sswitch_2d9
        0x20 -> :sswitch_2c1
        0x21 -> :sswitch_2b5
        0x22 -> :sswitch_29d
        0x23 -> :sswitch_28d
        0x24 -> :sswitch_27d
        0x25 -> :sswitch_269
        0x26 -> :sswitch_25d
        0x27 -> :sswitch_24d
        0x28 -> :sswitch_217
        0x29 -> :sswitch_1ef
        0x2a -> :sswitch_1db
        0x2b -> :sswitch_1c3
        0x2c -> :sswitch_1af
        0x2d -> :sswitch_19b
        0x2e -> :sswitch_18b
        0x2f -> :sswitch_177
        0x30 -> :sswitch_167
        0x31 -> :sswitch_153
        0x32 -> :sswitch_13b
        0x33 -> :sswitch_127
        0x34 -> :sswitch_117
        0x35 -> :sswitch_107
        0x36 -> :sswitch_f5
        0x37 -> :sswitch_e3
        0x38 -> :sswitch_d1
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

    .line 1476
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1504
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.3::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1505
    return-object p0

    .line 1507
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

    .line 1511
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1466
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1498
    const/4 v0, 0x1

    return v0
.end method
