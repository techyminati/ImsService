.class public abstract Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4571
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4574
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

    .line 4587
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4624
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4625
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4626
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4627
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4628
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

    .line 4599
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
        0x1ft
        -0x18t
        0x7at
        -0xdt
        0x5ct
        0x70t
        -0x17t
        0x41t
        0x29t
        0x4dt
        -0x3at
        -0x26t
        0x51t
        -0x51t
        0x7dt
        0x16t
        0x46t
        -0x53t
        0x55t
        -0x6ft
        -0x6ft
        0x1bt
        0x4ft
        0x58t
        0x51t
        -0x3t
        -0x32t
        0x15t
        -0x66t
        0x21t
        -0x71t
        0x52t
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

    .line 4579
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExResponse"

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

    .line 4593
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4612
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 4634
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4636
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

    .line 4664
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExResponse"

    sparse-switch p1, :sswitch_data_c22

    goto/16 :goto_c21

    .line 6433
    :sswitch_10
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6435
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->notifySyspropsChanged()V

    .line 6436
    goto/16 :goto_c21

    .line 6422
    :sswitch_18
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6424
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 6425
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6426
    invoke-virtual {v1, v11}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 6427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6428
    goto/16 :goto_c21

    .line 6412
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6414
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->ping()V

    .line 6415
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6417
    goto/16 :goto_c21

    .line 6407
    :sswitch_38
    goto/16 :goto_c21

    .line 6399
    :sswitch_3a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6401
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setHALInstrumentation()V

    .line 6402
    goto/16 :goto_c21

    .line 6365
    :sswitch_42
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6367
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 6368
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6370
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 6372
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6373
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 6374
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 6375
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 6376
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v3, :cond_8a

    .line 6378
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 6379
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 6381
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v12, 0x20

    if-ne v8, v12, :cond_82

    .line 6385
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 6386
    nop

    .line 6376
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 6382
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6389
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 6391
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 6393
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6394
    goto/16 :goto_c21

    .line 6354
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6356
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 6357
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6358
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 6359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6360
    goto/16 :goto_c21

    .line 6342
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 6345
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6346
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 6347
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6349
    goto/16 :goto_c21

    .line 6331
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6333
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 6334
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6335
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 6336
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6337
    goto/16 :goto_c21

    .line 6321
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6323
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6324
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6325
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setNrBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6326
    goto/16 :goto_c21

    .line 6309
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6311
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6312
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6313
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;-><init>()V

    .line 6314
    .local v1, "data":Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6315
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getAllBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;)V

    .line 6316
    goto/16 :goto_c21

    .line 6298
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Lvendor/mediatek/hardware/mtkradioex/V3_0/BandModeInfo;
    :sswitch_f9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6300
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6301
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6303
    .local v1, "state":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getIWlanRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6304
    goto/16 :goto_c21

    .line 6287
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "state":I
    :sswitch_10d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6289
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6290
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6292
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getEngineeringModeInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6293
    goto/16 :goto_c21

    .line 6276
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_121
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6278
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6279
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6281
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getDisable2GResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6282
    goto/16 :goto_c21

    .line 6266
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_135
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6268
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6269
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6270
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setDisable2GResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6271
    goto/16 :goto_c21

    .line 6255
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_145
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6257
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6258
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6260
    .local v1, "duration":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6261
    goto/16 :goto_c21

    .line 6245
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "duration":I
    :sswitch_159
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6247
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6248
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6249
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6250
    goto/16 :goto_c21

    .line 6233
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_169
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6235
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6236
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6238
    .local v1, "fddOrTdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6239
    .local v2, "enabled":Z
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V

    .line 6240
    goto/16 :goto_c21

    .line 6223
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "fddOrTdd":Z
    .end local v2    # "enabled":Z
    :sswitch_181
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6225
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6226
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6227
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6228
    goto/16 :goto_c21

    .line 6211
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_191
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6213
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6214
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6216
    .local v1, "ulOrDl":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6217
    .restart local v2    # "enabled":Z
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V

    .line 6218
    goto/16 :goto_c21

    .line 6201
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "ulOrDl":Z
    .end local v2    # "enabled":Z
    :sswitch_1a9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6203
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6204
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6205
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6206
    goto/16 :goto_c21

    .line 6190
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1b9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6192
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6193
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6195
    .local v1, "femto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getCampedFemtoCellInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6196
    goto/16 :goto_c21

    .line 6179
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "femto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1cd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6181
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6182
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6184
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getCaBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6185
    goto/16 :goto_c21

    .line 6168
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6170
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6171
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6173
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6174
    goto/16 :goto_c21

    .line 6158
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1f5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6160
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6161
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6162
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->clearLteAvailableFileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6163
    goto/16 :goto_c21

    .line 6147
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_205
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6149
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6150
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6151
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/Lte1xRttCellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6152
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Lte1xRttCellInfo;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getLte1xRttCellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6153
    goto/16 :goto_c21

    .line 6136
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Lte1xRttCellInfo;>;"
    :sswitch_219
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6138
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6139
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6141
    .local v1, "timer":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6142
    goto/16 :goto_c21

    .line 6126
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "timer":I
    :sswitch_22d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6128
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6129
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6130
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6131
    goto/16 :goto_c21

    .line 6115
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_23d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6117
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6118
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6120
    .local v1, "enabled_bitmask":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->get4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6121
    goto/16 :goto_c21

    .line 6105
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enabled_bitmask":I
    :sswitch_251
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6107
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6108
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6109
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->set4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6110
    goto/16 :goto_c21

    .line 6095
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_261
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6097
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6098
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6099
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6100
    goto/16 :goto_c21

    .line 6084
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_271
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6086
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6087
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6089
    .local v1, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6090
    goto/16 :goto_c21

    .line 6074
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_285
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6076
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6077
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6078
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setLteBandEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6079
    goto/16 :goto_c21

    .line 6063
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_295
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6065
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6066
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6068
    .local v1, "state":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getLteRRCStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6069
    goto/16 :goto_c21

    .line 6051
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "state":I
    :sswitch_2a9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6053
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6054
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6055
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;-><init>()V

    .line 6056
    .local v1, "data":Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6057
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getLteDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;)V

    .line 6058
    goto/16 :goto_c21

    .line 6040
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Lvendor/mediatek/hardware/mtkradioex/V3_0/LteData;
    :sswitch_2c1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6042
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6043
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6045
    .local v1, "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getCALinkCapabilityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6046
    goto/16 :goto_c21

    .line 6030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2d5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6034
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6035
    goto/16 :goto_c21

    .line 6019
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2e5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6021
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6022
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6024
    .local v1, "status":Z
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 6025
    goto/16 :goto_c21

    .line 6009
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Z
    :sswitch_2f9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6011
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6012
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6013
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->disableAllCALinksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6014
    goto/16 :goto_c21

    .line 5996
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_309
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5998
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5999
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6001
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6002
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6003
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getTOEInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6004
    goto/16 :goto_c21

    .line 5986
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_325
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5988
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5989
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5990
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setNROptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5991
    goto/16 :goto_c21

    .line 5976
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_335
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5978
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5979
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5980
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5981
    goto/16 :goto_c21

    .line 5966
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_345
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5968
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5969
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5970
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5971
    goto/16 :goto_c21

    .line 5956
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_355
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5958
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5959
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5960
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5961
    goto/16 :goto_c21

    .line 5944
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_365
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5946
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5947
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5948
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;-><init>()V

    .line 5949
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5950
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;)V

    .line 5951
    goto/16 :goto_c21

    .line 5934
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;
    :sswitch_37d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5936
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5937
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5938
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5939
    goto/16 :goto_c21

    .line 5924
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5926
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5927
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5928
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setMaxUlSpeedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5929
    goto/16 :goto_c21

    .line 5912
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_39d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5914
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5915
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5917
    .local v1, "deactivate":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5918
    .local v2, "allowSCGAdd":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 5919
    goto/16 :goto_c21

    .line 5902
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "deactivate":I
    .end local v2    # "allowSCGAdd":I
    :sswitch_3b5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5904
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5905
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5906
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5907
    goto/16 :goto_c21

    .line 5891
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3c5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5893
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5894
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5896
    .local v1, "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getSuggestedPlmnListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5897
    goto/16 :goto_c21

    .line 5881
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3d9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5883
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5884
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5885
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5886
    goto/16 :goto_c21

    .line 5870
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5872
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5873
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5874
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5875
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getDsdaStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5876
    goto/16 :goto_c21

    .line 5860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_3fd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5862
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5863
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5864
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->enableDsdaIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5865
    goto/16 :goto_c21

    .line 5850
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_40d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5852
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5853
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5854
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5855
    goto/16 :goto_c21

    .line 5840
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_41d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5842
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5843
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5844
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5845
    goto/16 :goto_c21

    .line 5830
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_42d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5832
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5833
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5834
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5835
    goto/16 :goto_c21

    .line 5820
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_43d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5822
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5823
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5824
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5825
    goto/16 :goto_c21

    .line 5810
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_44d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5812
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5813
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5814
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5815
    goto/16 :goto_c21

    .line 5800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_45d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5802
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5803
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5804
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->enableCAPlusBandWidthFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5805
    goto/16 :goto_c21

    .line 5789
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_46d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5791
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5792
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5794
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getPlmnNameFromSE13TableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5795
    goto/16 :goto_c21

    .line 5779
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "name":Ljava/lang/String;
    :sswitch_481
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5781
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5782
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5783
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5784
    goto/16 :goto_c21

    .line 5769
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_491
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5771
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5772
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5773
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5774
    goto/16 :goto_c21

    .line 5758
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4a1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5760
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5761
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5763
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5764
    goto/16 :goto_c21

    .line 5748
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_4b5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5750
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5751
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5752
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5753
    goto/16 :goto_c21

    .line 5738
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5740
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5741
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5742
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5743
    goto/16 :goto_c21

    .line 5727
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5729
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5730
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5732
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5733
    goto/16 :goto_c21

    .line 5717
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_4e9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5719
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5720
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5721
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5722
    goto/16 :goto_c21

    .line 5707
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4f9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5709
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5710
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5711
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5712
    goto/16 :goto_c21

    .line 5697
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_509
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5699
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5700
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5701
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5702
    goto/16 :goto_c21

    .line 5687
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_519
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5689
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5690
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5691
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5692
    goto/16 :goto_c21

    .line 5676
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_529
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5678
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5679
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5681
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5682
    goto/16 :goto_c21

    .line 5666
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_53d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5668
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5669
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5670
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5671
    goto/16 :goto_c21

    .line 5656
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5658
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5659
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5660
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5661
    goto/16 :goto_c21

    .line 5646
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_55d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5648
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5649
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5650
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5651
    goto/16 :goto_c21

    .line 5636
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_56d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5638
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5639
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5640
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5641
    goto/16 :goto_c21

    .line 5626
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_57d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5628
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5629
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5630
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5631
    goto/16 :goto_c21

    .line 5616
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5618
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5619
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5620
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5621
    goto/16 :goto_c21

    .line 5606
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_59d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5608
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5609
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5610
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5611
    goto/16 :goto_c21

    .line 5596
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5ad
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5598
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5599
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5600
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5601
    goto/16 :goto_c21

    .line 5586
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5bd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5588
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5589
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5590
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5591
    goto/16 :goto_c21

    .line 5575
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5cd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5577
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5578
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5580
    .local v1, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5581
    goto/16 :goto_c21

    .line 5564
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_5e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5566
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5567
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5569
    .local v1, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5570
    goto/16 :goto_c21

    .line 5553
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_5f5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5555
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5556
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5558
    .local v1, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5559
    goto/16 :goto_c21

    .line 5542
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_609
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5544
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5545
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5547
    .local v1, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5548
    goto/16 :goto_c21

    .line 5532
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_61d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5534
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5535
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5536
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5537
    goto/16 :goto_c21

    .line 5522
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_62d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5524
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5525
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5526
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5527
    goto/16 :goto_c21

    .line 5512
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_63d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5514
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5515
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5516
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5517
    goto/16 :goto_c21

    .line 5502
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_64d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5505
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5506
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5507
    goto/16 :goto_c21

    .line 5492
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_65d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5494
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5495
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5496
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5497
    goto/16 :goto_c21

    .line 5482
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_66d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5484
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5485
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5486
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5487
    goto/16 :goto_c21

    .line 5472
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_67d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5474
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5475
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5476
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5477
    goto/16 :goto_c21

    .line 5462
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_68d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5464
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5465
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5466
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5467
    goto/16 :goto_c21

    .line 5452
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_69d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5454
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5455
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5456
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5457
    goto/16 :goto_c21

    .line 5441
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6ad
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5443
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5444
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5446
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5447
    goto/16 :goto_c21

    .line 5431
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_6c1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5433
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5434
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5435
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5436
    goto/16 :goto_c21

    .line 5421
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6d1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5423
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5424
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5425
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5426
    goto/16 :goto_c21

    .line 5410
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5412
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5413
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5415
    .local v1, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5416
    goto/16 :goto_c21

    .line 5400
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_6f5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5402
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5403
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5404
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5405
    goto/16 :goto_c21

    .line 5388
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_705
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5390
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5391
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5392
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 5393
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5394
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 5395
    goto/16 :goto_c21

    .line 5377
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;
    :sswitch_71d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5379
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5380
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5381
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5382
    .local v1, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5383
    goto/16 :goto_c21

    .line 5367
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/OperatorInfoWithAct;>;"
    :sswitch_731
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5369
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5370
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5371
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5372
    goto/16 :goto_c21

    .line 5355
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_741
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5357
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5358
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5359
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;-><init>()V

    .line 5360
    .local v1, "memStatus":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5361
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V

    .line 5362
    goto/16 :goto_c21

    .line 5344
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "memStatus":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;
    :sswitch_759
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5346
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5347
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5349
    .local v1, "applyType":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5350
    goto/16 :goto_c21

    .line 5334
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "applyType":I
    :sswitch_76d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5336
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5337
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5338
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5339
    goto/16 :goto_c21

    .line 5323
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_77d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5325
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5326
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5327
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5328
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5329
    goto/16 :goto_c21

    .line 5312
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_791
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5314
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5315
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5317
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5318
    goto/16 :goto_c21

    .line 5301
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_7a5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5303
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5304
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5306
    .local v1, "active":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5307
    goto/16 :goto_c21

    .line 5290
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "active":I
    :sswitch_7b9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5292
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5293
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5294
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5295
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5296
    goto/16 :goto_c21

    .line 5280
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_7cd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5282
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5283
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5284
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5285
    goto/16 :goto_c21

    .line 5270
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7dd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5272
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5273
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5274
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5275
    goto/16 :goto_c21

    .line 5260
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7ed
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5262
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5263
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5264
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5265
    goto/16 :goto_c21

    .line 5248
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7fd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5250
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5251
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5252
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;-><init>()V

    .line 5253
    .local v1, "status":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5254
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;)V

    .line 5255
    goto/16 :goto_c21

    .line 5238
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsMemStatus;
    :sswitch_815
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5241
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5242
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5243
    goto/16 :goto_c21

    .line 5226
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_825
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5228
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5229
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5230
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;-><init>()V

    .line 5231
    .local v1, "param":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5232
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;)V

    .line 5233
    goto/16 :goto_c21

    .line 5216
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "param":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;
    :sswitch_83d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5218
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5219
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5220
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5221
    goto/16 :goto_c21

    .line 5204
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_84d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5206
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5207
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5208
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;-><init>()V

    .line 5209
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5210
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;)V

    .line 5211
    goto/16 :goto_c21

    .line 5193
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimEvent;
    :sswitch_865
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5195
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5196
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5198
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5199
    goto/16 :goto_c21

    .line 5183
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_879
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5185
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5186
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5187
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5188
    goto/16 :goto_c21

    .line 5166
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_889
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5168
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v12, v0

    .line 5169
    .local v12, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v12, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5171
    .local v13, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5172
    .local v14, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5173
    .local v15, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 5174
    .local v16, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 5175
    .local v17, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 5176
    .local v18, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 5177
    .local v19, "key_state":I
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 5178
    goto/16 :goto_c21

    .line 5155
    .end local v12    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v13    # "catagory":I
    .end local v14    # "state":I
    .end local v15    # "retry_cnt":I
    .end local v16    # "autolock_cnt":I
    .end local v17    # "num_set":I
    .end local v18    # "total_set":I
    .end local v19    # "key_state":I
    :sswitch_8c4
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5157
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5158
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5160
    .local v1, "simPowerOnOffStatus":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5161
    goto/16 :goto_c21

    .line 5144
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffStatus":I
    :sswitch_8d8
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5146
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5147
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5149
    .local v1, "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5150
    goto/16 :goto_c21

    .line 5133
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    :sswitch_8ec
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5135
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5136
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5138
    .restart local v1    # "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5139
    goto/16 :goto_c21

    .line 5123
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    :sswitch_900
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5125
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5126
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5127
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5128
    goto/16 :goto_c21

    .line 5112
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_910
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5115
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5117
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5118
    goto/16 :goto_c21

    .line 5101
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_924
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5103
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5104
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5106
    .restart local v1    # "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5107
    goto/16 :goto_c21

    .line 5091
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_938
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5093
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5094
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5095
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5096
    goto/16 :goto_c21

    .line 5081
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_948
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5083
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5084
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5085
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5086
    goto/16 :goto_c21

    .line 5070
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_958
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5072
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5073
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5075
    .local v1, "enable":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5076
    goto/16 :goto_c21

    .line 5060
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":I
    :sswitch_96c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5062
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5063
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5064
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5065
    goto/16 :goto_c21

    .line 5050
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_97c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5052
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5053
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5054
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5055
    goto/16 :goto_c21

    .line 5040
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_98c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5042
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5043
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5044
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5045
    goto/16 :goto_c21

    .line 5030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_99c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5034
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5035
    goto/16 :goto_c21

    .line 5020
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9ac
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5023
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5024
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5025
    goto/16 :goto_c21

    .line 5010
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9bc
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5012
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5013
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5014
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5015
    goto/16 :goto_c21

    .line 4999
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9cc
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5001
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5002
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5004
    .local v1, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5005
    goto/16 :goto_c21

    .line 4989
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9e0
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4991
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4992
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4993
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4994
    goto/16 :goto_c21

    .line 4978
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9f0
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4980
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4981
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4982
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4983
    .local v1, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4984
    goto/16 :goto_c21

    .line 4968
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;>;"
    :sswitch_a04
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4970
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4971
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4972
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4973
    goto/16 :goto_c21

    .line 4958
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a14
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4960
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4961
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4962
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4963
    goto/16 :goto_c21

    .line 4946
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a24
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4948
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4949
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4951
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4952
    .local v2, "m":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4953
    goto/16 :goto_c21

    .line 4935
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_a3c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4937
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4938
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4940
    .restart local v1    # "n":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4941
    goto/16 :goto_c21

    .line 4923
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    :sswitch_a50
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4925
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4926
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4927
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4928
    .restart local v1    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4929
    .restart local v2    # "m":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4930
    goto/16 :goto_c21

    .line 4913
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_a68
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4915
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4916
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4917
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4918
    goto/16 :goto_c21

    .line 4903
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a78
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4906
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4907
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4908
    goto/16 :goto_c21

    .line 4892
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a88
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4894
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4895
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4897
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4898
    goto/16 :goto_c21

    .line 4881
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a9c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4883
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4884
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4885
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4886
    .local v1, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4887
    goto/16 :goto_c21

    .line 4870
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    :sswitch_ab0
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4872
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4873
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4874
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4875
    .local v1, "sne":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4876
    goto/16 :goto_c21

    .line 4859
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sne":Ljava/lang/String;
    :sswitch_ac4
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4861
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4862
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4864
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4865
    goto/16 :goto_c21

    .line 4848
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "email":Ljava/lang/String;
    :sswitch_ad8
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4850
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4851
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4853
    .local v1, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4854
    goto/16 :goto_c21

    .line 4838
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_aec
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4840
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4841
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4842
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4843
    goto/16 :goto_c21

    .line 4827
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_afc
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4829
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4830
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4831
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4832
    .local v1, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4833
    goto/16 :goto_c21

    .line 4817
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;>;"
    :sswitch_b10
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4819
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4820
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4821
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4822
    goto/16 :goto_c21

    .line 4805
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b20
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4807
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4808
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4809
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;-><init>()V

    .line 4810
    .local v1, "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4811
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;)V

    .line 4812
    goto/16 :goto_c21

    .line 4794
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbMemStorageResponse;
    :sswitch_b38
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4796
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4797
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4799
    .local v1, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4800
    goto/16 :goto_c21

    .line 4784
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b4c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4786
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4787
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4788
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4789
    goto/16 :goto_c21

    .line 4773
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b5c
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4775
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4776
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4778
    .local v1, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4779
    goto/16 :goto_c21

    .line 4762
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b70
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4764
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4765
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4767
    .local v1, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4768
    goto/16 :goto_c21

    .line 4752
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b84
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4754
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4755
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4756
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4757
    goto/16 :goto_c21

    .line 4742
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b94
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4744
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4745
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4746
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4747
    goto/16 :goto_c21

    .line 4731
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ba4
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4733
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4734
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4736
    .local v1, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4737
    goto :goto_c21

    .line 4720
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_bb7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4722
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4723
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4724
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4725
    .local v1, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4726
    goto :goto_c21

    .line 4710
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;>;"
    :sswitch_bca
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4712
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4713
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4714
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4715
    goto :goto_c21

    .line 4699
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bd9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4701
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4702
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4704
    .local v1, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4705
    goto :goto_c21

    .line 4688
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_bec
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4690
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4691
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4693
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4694
    goto :goto_c21

    .line 4678
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_bff
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4680
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4681
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4682
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4683
    goto :goto_c21

    .line 4667
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c0e
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4669
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4670
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4672
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4673
    nop

    .line 6445
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/lang/String;
    :goto_c21
    return-void

    :sswitch_data_c22
    .sparse-switch
        0x1 -> :sswitch_c0e
        0x2 -> :sswitch_bff
        0x3 -> :sswitch_bec
        0x4 -> :sswitch_bd9
        0x5 -> :sswitch_bca
        0x6 -> :sswitch_bb7
        0x7 -> :sswitch_ba4
        0x8 -> :sswitch_b94
        0x9 -> :sswitch_b84
        0xa -> :sswitch_b70
        0xb -> :sswitch_b5c
        0xc -> :sswitch_b4c
        0xd -> :sswitch_b38
        0xe -> :sswitch_b20
        0xf -> :sswitch_b10
        0x10 -> :sswitch_afc
        0x11 -> :sswitch_aec
        0x12 -> :sswitch_ad8
        0x13 -> :sswitch_ac4
        0x14 -> :sswitch_ab0
        0x15 -> :sswitch_a9c
        0x16 -> :sswitch_a88
        0x17 -> :sswitch_a78
        0x18 -> :sswitch_a68
        0x19 -> :sswitch_a50
        0x1a -> :sswitch_a3c
        0x1b -> :sswitch_a24
        0x1c -> :sswitch_a14
        0x1d -> :sswitch_a04
        0x1e -> :sswitch_9f0
        0x1f -> :sswitch_9e0
        0x20 -> :sswitch_9cc
        0x21 -> :sswitch_9bc
        0x22 -> :sswitch_9ac
        0x23 -> :sswitch_99c
        0x24 -> :sswitch_98c
        0x25 -> :sswitch_97c
        0x26 -> :sswitch_96c
        0x27 -> :sswitch_958
        0x28 -> :sswitch_948
        0x29 -> :sswitch_938
        0x2a -> :sswitch_924
        0x2b -> :sswitch_910
        0x2c -> :sswitch_900
        0x2d -> :sswitch_8ec
        0x2e -> :sswitch_8d8
        0x2f -> :sswitch_8c4
        0x30 -> :sswitch_889
        0x31 -> :sswitch_879
        0x32 -> :sswitch_865
        0x33 -> :sswitch_84d
        0x34 -> :sswitch_83d
        0x35 -> :sswitch_825
        0x36 -> :sswitch_815
        0x37 -> :sswitch_7fd
        0x38 -> :sswitch_7ed
        0x39 -> :sswitch_7dd
        0x3a -> :sswitch_7cd
        0x3b -> :sswitch_7b9
        0x3c -> :sswitch_7a5
        0x3d -> :sswitch_791
        0x3e -> :sswitch_77d
        0x3f -> :sswitch_76d
        0x40 -> :sswitch_759
        0x41 -> :sswitch_741
        0x42 -> :sswitch_731
        0x43 -> :sswitch_71d
        0x44 -> :sswitch_705
        0x45 -> :sswitch_6f5
        0x46 -> :sswitch_6e1
        0x47 -> :sswitch_6d1
        0x48 -> :sswitch_6c1
        0x49 -> :sswitch_6ad
        0x4a -> :sswitch_69d
        0x4b -> :sswitch_68d
        0x4c -> :sswitch_67d
        0x4d -> :sswitch_66d
        0x4e -> :sswitch_65d
        0x4f -> :sswitch_64d
        0x50 -> :sswitch_63d
        0x51 -> :sswitch_62d
        0x52 -> :sswitch_61d
        0x53 -> :sswitch_609
        0x54 -> :sswitch_5f5
        0x55 -> :sswitch_5e1
        0x56 -> :sswitch_5cd
        0x57 -> :sswitch_5bd
        0x58 -> :sswitch_5ad
        0x59 -> :sswitch_59d
        0x5a -> :sswitch_58d
        0x5b -> :sswitch_57d
        0x5c -> :sswitch_56d
        0x5d -> :sswitch_55d
        0x5e -> :sswitch_54d
        0x5f -> :sswitch_53d
        0x60 -> :sswitch_529
        0x61 -> :sswitch_519
        0x62 -> :sswitch_509
        0x63 -> :sswitch_4f9
        0x64 -> :sswitch_4e9
        0x65 -> :sswitch_4d5
        0x66 -> :sswitch_4c5
        0x67 -> :sswitch_4b5
        0x68 -> :sswitch_4a1
        0x69 -> :sswitch_491
        0x6a -> :sswitch_481
        0x6b -> :sswitch_46d
        0x6c -> :sswitch_45d
        0x6d -> :sswitch_44d
        0x6e -> :sswitch_43d
        0x6f -> :sswitch_42d
        0x70 -> :sswitch_41d
        0x71 -> :sswitch_40d
        0x72 -> :sswitch_3fd
        0x73 -> :sswitch_3e9
        0x74 -> :sswitch_3d9
        0x75 -> :sswitch_3c5
        0x76 -> :sswitch_3b5
        0x77 -> :sswitch_39d
        0x78 -> :sswitch_38d
        0x79 -> :sswitch_37d
        0x7a -> :sswitch_365
        0x7b -> :sswitch_355
        0x7c -> :sswitch_345
        0x7d -> :sswitch_335
        0x7e -> :sswitch_325
        0x7f -> :sswitch_309
        0x80 -> :sswitch_2f9
        0x81 -> :sswitch_2e5
        0x82 -> :sswitch_2d5
        0x83 -> :sswitch_2c1
        0x84 -> :sswitch_2a9
        0x85 -> :sswitch_295
        0x86 -> :sswitch_285
        0x87 -> :sswitch_271
        0x88 -> :sswitch_261
        0x89 -> :sswitch_251
        0x8a -> :sswitch_23d
        0x8b -> :sswitch_22d
        0x8c -> :sswitch_219
        0x8d -> :sswitch_205
        0x8e -> :sswitch_1f5
        0x8f -> :sswitch_1e1
        0x90 -> :sswitch_1cd
        0x91 -> :sswitch_1b9
        0x92 -> :sswitch_1a9
        0x93 -> :sswitch_191
        0x94 -> :sswitch_181
        0x95 -> :sswitch_169
        0x96 -> :sswitch_159
        0x97 -> :sswitch_145
        0x98 -> :sswitch_135
        0x99 -> :sswitch_121
        0x9a -> :sswitch_10d
        0x9b -> :sswitch_f9
        0x9c -> :sswitch_e1
        0x9d -> :sswitch_d1
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

    .line 4618
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4646
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4647
    return-object p0

    .line 4649
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

    .line 4653
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 4654
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 4608
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4640
    const/4 v0, 0x1

    return v0
.end method
