.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1448
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1451
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

    .line 1467
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1507
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1508
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1509
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1510
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1511
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

    .line 1479
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
        0x1ft
        -0x6at
        -0x6at
        0x4et
        -0x73t
        0x30t
        -0x65t
        -0x58t
        0x3t
        -0x48t
        0x64t
        -0x60t
        0x64t
        0x21t
        0x22t
        -0x6bt
        0x73t
        -0x38t
        -0x46t
        0x6t
        0x13t
        0x53t
        -0x69t
        -0x5et
        0x1at
        0x63t
        -0x18t
        0x66t
        0x8t
        0x2at
        -0x48t
        -0x39t
    .end array-data

    :array_4c
    .array-data 1
        -0x2t
        -0x47t
        -0x1at
        0x3ft
        -0x41t
        0x3dt
        0x42t
        0x56t
        -0x50t
        -0x68t
        -0x48t
        -0x5ct
        -0x2ct
        0x3ct
        -0x5t
        0x7dt
        -0x7t
        -0x6at
        -0x23t
        -0x29t
        -0x66t
        -0x4t
        0x5ct
        0x7dt
        -0x73t
        -0xbt
        0x3dt
        0x4ct
        -0x38t
        0x72t
        0x19t
        0x57t
    .end array-data

    :array_60
    .array-data 1
        0x37t
        -0x16t
        -0x45t
        -0x5et
        -0x1ct
        0x66t
        -0x4et
        -0x57t
        -0x6dt
        0x65t
        0x74t
        0x78t
        0x3ft
        -0x8t
        0x11t
        0xat
        0x25t
        -0x80t
        -0xet
        -0x75t
        0x41t
        0x7et
        0x63t
        -0x2at
        -0x3t
        -0x75t
        0x5t
        -0x45t
        -0x79t
        0x4t
        0x70t
        -0x10t
    .end array-data

    :array_74
    .array-data 1
        0x6t
        0x1ft
        -0x50t
        0x7dt
        -0xct
        -0x4et
        0x7dt
        -0x5bt
        -0x7t
        -0x5ft
        0x71t
        -0x28t
        0x5at
        -0x64t
        -0x5dt
        -0x4ft
        0x3bt
        -0x5et
        0x57t
        0x40t
        0x3bt
        -0x78t
        -0x50t
        -0x5dt
        -0x58t
        0x2dt
        -0x77t
        0xet
        -0x39t
        0x77t
        -0x7ft
        -0x26t
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

    .line 1456
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.3::IImsRadioResponse"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioResponse"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.1::IImsRadioResponse"

    const-string v4, "vendor.mediatek.hardware.mtkradioex@2.0::IImsRadioResponse"

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

    .line 1473
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.3::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1495
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1517
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1519
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IImsRadioResponse"

    sparse-switch p1, :sswitch_data_4fe

    goto/16 :goto_4fd

    .line 2306
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2308
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 2309
    goto/16 :goto_4fd

    .line 2295
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 2298
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2299
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2300
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2301
    goto/16 :goto_4fd

    .line 2285
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->ping()V

    .line 2288
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2289
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2290
    goto/16 :goto_4fd

    .line 2280
    :sswitch_32
    goto/16 :goto_4fd

    .line 2272
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 2275
    goto/16 :goto_4fd

    .line 2238
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2241
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2243
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2245
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2246
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2247
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2248
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2249
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 2251
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2252
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2254
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 2258
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2259
    nop

    .line 2249
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 2255
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2262
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2264
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2266
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2267
    goto/16 :goto_4fd

    .line 2227
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 2230
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2231
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2233
    goto/16 :goto_4fd

    .line 2215
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 2218
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2219
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2220
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2222
    goto/16 :goto_4fd

    .line 2204
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2207
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2208
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2210
    goto/16 :goto_4fd

    .line 2194
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IImsRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2197
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2198
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->videoRingtoneEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2199
    goto/16 :goto_4fd

    .line 2184
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_dd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2186
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2187
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2188
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setCallAdditionalInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2189
    goto/16 :goto_4fd

    .line 2174
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ed
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2176
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2177
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2178
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->eccRedialApproveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2179
    goto/16 :goto_4fd

    .line 2163
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_fd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2166
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2168
    .local v1, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->querySsacStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2169
    goto/16 :goto_4fd

    .line 2153
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_111
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2155
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2156
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2157
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2158
    goto/16 :goto_4fd

    .line 2143
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_121
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2145
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2146
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2147
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsCallModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2148
    goto/16 :goto_4fd

    .line 2133
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_131
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2135
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2136
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2137
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setSipHeaderReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2138
    goto/16 :goto_4fd

    .line 2123
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_141
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2125
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2126
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2127
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setSipHeaderResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2128
    goto/16 :goto_4fd

    .line 2112
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_151
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2115
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2117
    .local v1, "vdp":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getVoiceDomainPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2118
    goto/16 :goto_4fd

    .line 2101
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "vdp":I
    :sswitch_165
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2103
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2104
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2106
    .local v1, "vops":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->queryVopsStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2107
    goto/16 :goto_4fd

    .line 2091
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "vops":I
    :sswitch_179
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2093
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2094
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2095
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->toggleRttAudioIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2096
    goto/16 :goto_4fd

    .line 2081
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_189
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2083
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2084
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2085
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->rttModifyRequestResponseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2086
    goto/16 :goto_4fd

    .line 2071
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_199
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2074
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2075
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->sendRttTextResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2076
    goto/16 :goto_4fd

    .line 2061
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1a9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2064
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2065
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->sendRttModifyRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2066
    goto/16 :goto_4fd

    .line 2051
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1b9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2053
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2054
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2055
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setRttModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2056
    goto/16 :goto_4fd

    .line 2041
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1c9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2044
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2045
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2046
    goto/16 :goto_4fd

    .line 2030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1d9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2035
    .local v1, "value":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getImsCfgResourceCapValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2036
    goto/16 :goto_4fd

    .line 2019
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "value":I
    :sswitch_1ed
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2022
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2024
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 2025
    goto/16 :goto_4fd

    .line 2009
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "value":Ljava/lang/String;
    :sswitch_201
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2012
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2013
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2014
    goto/16 :goto_4fd

    .line 1998
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_211
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2001
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2002
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2003
    .local v1, "value":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2004
    goto/16 :goto_4fd

    .line 1988
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "value":I
    :sswitch_225
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1991
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1992
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1993
    goto/16 :goto_4fd

    .line 1978
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_235
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1981
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1982
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsBearerNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1983
    goto/16 :goto_4fd

    .line 1968
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_245
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1971
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1972
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1973
    goto/16 :goto_4fd

    .line 1958
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_255
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1961
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1962
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1963
    goto/16 :goto_4fd

    .line 1946
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_265
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1948
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1949
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1950
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 1951
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1952
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->sendImsSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 1953
    goto/16 :goto_4fd

    .line 1935
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_27d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1938
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1940
    .local v1, "results":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setModemImsCfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 1941
    goto/16 :goto_4fd

    .line 1924
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "results":Ljava/lang/String;
    :sswitch_291
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1926
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1927
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1929
    .local v1, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1930
    goto/16 :goto_4fd

    .line 1914
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1917
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1918
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1919
    goto/16 :goto_4fd

    .line 1903
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2b5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1906
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1907
    invoke-static {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1908
    .local v1, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1909
    goto/16 :goto_4fd

    .line 1893
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    :sswitch_2c9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1895
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1896
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1897
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1898
    goto/16 :goto_4fd

    .line 1883
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1886
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1887
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1888
    goto/16 :goto_4fd

    .line 1872
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2e9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1874
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1875
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1877
    .local v1, "n":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1878
    goto/16 :goto_4fd

    .line 1860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    :sswitch_2fd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1863
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1864
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1865
    .restart local v1    # "n":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1866
    .local v2, "m":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 1867
    goto/16 :goto_4fd

    .line 1850
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_315
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1853
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1854
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1855
    goto/16 :goto_4fd

    .line 1840
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_325
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1843
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1844
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setVoiceDomainPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1845
    goto/16 :goto_4fd

    .line 1830
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_335
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1833
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1834
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsRegistrationReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1835
    goto/16 :goto_4fd

    .line 1820
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_345
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1823
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1824
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->pullCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1825
    goto/16 :goto_4fd

    .line 1810
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_355
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1813
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1814
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsRtpReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1815
    goto/16 :goto_4fd

    .line 1800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_365
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1803
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1804
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->updateImsRegistrationStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1805
    goto/16 :goto_4fd

    .line 1790
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_375
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1793
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1794
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsCallStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1795
    goto/16 :goto_4fd

    .line 1780
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_385
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1783
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1784
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->imsBearerStateConfirmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1785
    goto/16 :goto_4fd

    .line 1770
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_395
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1773
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1774
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->forceReleaseCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1775
    goto/16 :goto_4fd

    .line 1760
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1763
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1764
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setupXcapUserAgentStringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1765
    goto/16 :goto_4fd

    .line 1750
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1753
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1754
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->resetSuppServResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1755
    goto/16 :goto_4fd

    .line 1740
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3c5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1743
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1744
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getXcapStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1745
    goto/16 :goto_4fd

    .line 1730
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3d5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1733
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1734
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->cancelUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1735
    goto/16 :goto_4fd

    .line 1720
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1723
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1724
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->sendUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1725
    goto/16 :goto_4fd

    .line 1710
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3f5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1713
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1714
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->dialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1715
    goto/16 :goto_4fd

    .line 1700
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_405
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1703
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1704
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->vtDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1705
    goto/16 :goto_4fd

    .line 1690
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_415
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1692
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1693
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1694
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->vtDialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1695
    goto/16 :goto_4fd

    .line 1680
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_425
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1683
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1684
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->conferenceDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1685
    goto/16 :goto_4fd

    .line 1670
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_435
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1673
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1674
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setWfcProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1675
    goto/16 :goto_4fd

    .line 1660
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_445
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1663
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1664
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->controlImsConferenceCallMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1665
    goto/16 :goto_4fd

    .line 1650
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_455
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1652
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1653
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1654
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1655
    goto/16 :goto_4fd

    .line 1640
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_465
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1643
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1644
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->getProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1645
    goto/16 :goto_4fd

    .line 1630
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_475
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1633
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1634
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImscfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1635
    goto/16 :goto_4fd

    .line 1620
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_485
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1623
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1624
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsVideoEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1625
    goto :goto_4fd

    .line 1610
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_494
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1613
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1614
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setImsEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1615
    goto :goto_4fd

    .line 1600
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4a3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1603
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1604
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->imsDeregNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1605
    goto :goto_4fd

    .line 1590
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4b2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1593
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1594
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->controlCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1595
    goto :goto_4fd

    .line 1580
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1583
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1584
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->imsEctCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1585
    goto :goto_4fd

    .line 1570
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1573
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1574
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->videoCallAcceptResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1575
    goto :goto_4fd

    .line 1560
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4df
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1563
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1564
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1565
    goto :goto_4fd

    .line 1550
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4ee
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1553
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1554
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1555
    nop

    .line 2318
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :goto_4fd
    return-void

    :sswitch_data_4fe
    .sparse-switch
        0x1 -> :sswitch_4ee
        0x2 -> :sswitch_4df
        0x3 -> :sswitch_4d0
        0x4 -> :sswitch_4c1
        0x5 -> :sswitch_4b2
        0x6 -> :sswitch_4a3
        0x7 -> :sswitch_494
        0x8 -> :sswitch_485
        0x9 -> :sswitch_475
        0xa -> :sswitch_465
        0xb -> :sswitch_455
        0xc -> :sswitch_445
        0xd -> :sswitch_435
        0xe -> :sswitch_425
        0xf -> :sswitch_415
        0x10 -> :sswitch_405
        0x11 -> :sswitch_3f5
        0x12 -> :sswitch_3e5
        0x13 -> :sswitch_3d5
        0x14 -> :sswitch_3c5
        0x15 -> :sswitch_3b5
        0x16 -> :sswitch_3a5
        0x17 -> :sswitch_395
        0x18 -> :sswitch_385
        0x19 -> :sswitch_375
        0x1a -> :sswitch_365
        0x1b -> :sswitch_355
        0x1c -> :sswitch_345
        0x1d -> :sswitch_335
        0x1e -> :sswitch_325
        0x1f -> :sswitch_315
        0x20 -> :sswitch_2fd
        0x21 -> :sswitch_2e9
        0x22 -> :sswitch_2d9
        0x23 -> :sswitch_2c9
        0x24 -> :sswitch_2b5
        0x25 -> :sswitch_2a5
        0x26 -> :sswitch_291
        0x27 -> :sswitch_27d
        0x28 -> :sswitch_265
        0x29 -> :sswitch_255
        0x2a -> :sswitch_245
        0x2b -> :sswitch_235
        0x2c -> :sswitch_225
        0x2d -> :sswitch_211
        0x2e -> :sswitch_201
        0x2f -> :sswitch_1ed
        0x30 -> :sswitch_1d9
        0x31 -> :sswitch_1c9
        0x32 -> :sswitch_1b9
        0x33 -> :sswitch_1a9
        0x34 -> :sswitch_199
        0x35 -> :sswitch_189
        0x36 -> :sswitch_179
        0x37 -> :sswitch_165
        0x38 -> :sswitch_151
        0x39 -> :sswitch_141
        0x3a -> :sswitch_131
        0x3b -> :sswitch_121
        0x3c -> :sswitch_111
        0x3d -> :sswitch_fd
        0x3e -> :sswitch_ed
        0x3f -> :sswitch_dd
        0x40 -> :sswitch_cb
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a3
        0xf445343 -> :sswitch_91
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 1501
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1529
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.3::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1530
    return-object p0

    .line 1532
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

    .line 1536
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1491
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_3/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1523
    const/4 v0, 0x1

    return v0
.end method
