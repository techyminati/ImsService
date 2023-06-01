.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4848
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4851
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

    .line 4868
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4909
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4910
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4911
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4912
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4913
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

    .line 4880
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_40

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_54

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_68

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_7c

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_90

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_a4

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_40
    .array-data 1
        -0xet
        -0xet
        0x8t
        0x62t
        0x2et
        0x36t
        -0x13t
        -0x20t
        0x73t
        0x73t
        -0x10t
        -0x78t
        0x61t
        0x3dt
        -0x15t
        -0x2dt
        -0x2ft
        0x6et
        0x12t
        -0x6et
        0x15t
        0x5bt
        0x8t
        0x24t
        -0x51t
        -0x13t
        0x69t
        -0x79t
        0x63t
        -0x1et
        -0x43t
        0x2at
    .end array-data

    :array_54
    .array-data 1
        0x1bt
        -0x33t
        0x33t
        -0x7et
        0x3et
        -0xet
        0x2t
        -0x80t
        0x57t
        -0x38t
        0x12t
        -0x77t
        -0x2et
        -0x6et
        -0x60t
        -0x5dt
        -0x56t
        0x18t
        -0x33t
        -0x6dt
        0x35t
        0x4ct
        0xdt
        -0x6at
        0x70t
        0x0t
        -0x6t
        -0x17t
        0xft
        0x6at
        -0x48t
        0x43t
    .end array-data

    :array_68
    .array-data 1
        -0x39t
        -0x6ft
        -0x52t
        0x18t
        -0x63t
        -0x39t
        0x17t
        0x7dt
        -0x7ft
        -0x2dt
        0x8t
        0x8t
        -0x1t
        -0x62t
        -0x58t
        0x42t
        0x25t
        -0x79t
        0x64t
        0x21t
        -0x66t
        0x54t
        0x50t
        -0x3ct
        0x63t
        0x39t
        0x3t
        0x26t
        -0x56t
        -0x76t
        -0x13t
        0x44t
    .end array-data

    :array_7c
    .array-data 1
        0x28t
        -0x37t
        0x1et
        -0x48t
        0x6ct
        0x35t
        -0x55t
        0x36t
        0x20t
        -0x25t
        0x27t
        -0x5dt
        0x34t
        -0x56t
        0x60t
        -0x56t
        -0x5t
        -0x6ft
        0x79t
        -0x75t
        0x6t
        0x39t
        -0x27t
        -0x58t
        0x6ct
        0x34t
        0x6et
        0x6bt
        -0xft
        0x4t
        0x2ct
        -0x5at
    .end array-data

    :array_90
    .array-data 1
        0x4ct
        -0x42t
        -0x3dt
        -0x31t
        -0x78t
        0x21t
        0x23t
        -0x30t
        0x6dt
        -0x20t
        -0x47t
        -0x55t
        -0x28t
        -0x67t
        -0x9t
        0x40t
        -0x68t
        -0x10t
        -0x19t
        0x68t
        -0x50t
        -0x56t
        -0x4bt
        0x2ct
        -0x19t
        -0x68t
        0x7et
        -0x47t
        -0x6at
        -0xft
        0x4t
        -0x60t
    .end array-data

    :array_a4
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4856
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.3::IMtkRadioEx"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    const-string v4, "vendor.mediatek.hardware.mtkradioex@2.1::IMtkRadioEx"

    const-string v5, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 4874
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4897
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 4919
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4921
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 33
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4949
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    sparse-switch p1, :sswitch_data_12f8

    goto/16 :goto_12f6

    .line 7576
    :sswitch_12
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7578
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->notifySyspropsChanged()V

    .line 7579
    goto/16 :goto_12f6

    .line 7565
    :sswitch_1a
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7567
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 7568
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7569
    invoke-virtual {v0, v15}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 7570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7571
    goto/16 :goto_12f6

    .line 7555
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2c
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7557
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->ping()V

    .line 7558
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7560
    goto/16 :goto_12f6

    .line 7550
    :sswitch_3a
    goto/16 :goto_12f6

    .line 7542
    :sswitch_3c
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7544
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setHALInstrumentation()V

    .line 7545
    goto/16 :goto_12f6

    .line 7508
    :sswitch_44
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7510
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 7511
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7513
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 7515
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7516
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 7517
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 7518
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 7519
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_6b
    if-ge v4, v3, :cond_8c

    .line 7521
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 7522
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 7524
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_84

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_84

    .line 7528
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 7529
    nop

    .line 7519
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 7525
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_84
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7532
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8c
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 7534
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 7536
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7537
    goto/16 :goto_12f6

    .line 7497
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_99
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7499
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 7500
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7501
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 7502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7503
    goto/16 :goto_12f6

    .line 7485
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_ab
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 7488
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7489
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 7490
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7492
    goto/16 :goto_12f6

    .line 7474
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7476
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 7477
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7478
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 7479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7480
    goto/16 :goto_12f6

    .line 7465
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7468
    .local v0, "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getLteScanDuration(I)V

    .line 7469
    goto/16 :goto_12f6

    .line 7455
    .end local v0    # "serial":I
    :sswitch_df
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7459
    .local v1, "duration":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setLteScanDuration(II)V

    .line 7460
    goto/16 :goto_12f6

    .line 7445
    .end local v0    # "serial":I
    .end local v1    # "duration":I
    :sswitch_ef
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7447
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7448
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7449
    .local v1, "fddOrTdd":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getTm9Enabled(IZ)V

    .line 7450
    goto/16 :goto_12f6

    .line 7434
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    :sswitch_ff
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7437
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7438
    .restart local v1    # "fddOrTdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7439
    .local v2, "enabled":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setTm9Enabled(IZZ)V

    .line 7440
    goto/16 :goto_12f6

    .line 7424
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    .end local v2    # "enabled":Z
    :sswitch_113
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7427
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7428
    .local v1, "ulOrDl":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getQamEnabled(IZ)V

    .line 7429
    goto/16 :goto_12f6

    .line 7413
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    :sswitch_123
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7416
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7417
    .restart local v1    # "ulOrDl":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7418
    .restart local v2    # "enabled":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setQamEnabled(IZZ)V

    .line 7419
    goto/16 :goto_12f6

    .line 7404
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    .end local v2    # "enabled":Z
    :sswitch_137
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7407
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getCampedFemtoCellInfo(I)V

    .line 7408
    goto/16 :goto_12f6

    .line 7394
    .end local v0    # "serial":I
    :sswitch_143
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7397
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7398
    .local v1, "primaryBandId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getCaBandMode(II)V

    .line 7399
    goto/16 :goto_12f6

    .line 7385
    .end local v0    # "serial":I
    .end local v1    # "primaryBandId":I
    :sswitch_153
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7387
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7388
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getBandMode(I)V

    .line 7389
    goto/16 :goto_12f6

    .line 7376
    .end local v0    # "serial":I
    :sswitch_15f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7379
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->clearLteAvailableFile(I)V

    .line 7380
    goto/16 :goto_12f6

    .line 7366
    .end local v0    # "serial":I
    :sswitch_16b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7369
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7370
    .local v1, "available":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getLte1xRttCellList(IZ)V

    .line 7371
    goto/16 :goto_12f6

    .line 7357
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_17b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7360
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getLteBsrTimer(I)V

    .line 7361
    goto/16 :goto_12f6

    .line 7347
    .end local v0    # "serial":I
    :sswitch_187
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7350
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7351
    .local v1, "timer":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setLteBsrTimer(II)V

    .line 7352
    goto/16 :goto_12f6

    .line 7338
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_197
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7341
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->get4x4MimoEnabled(I)V

    .line 7342
    goto/16 :goto_12f6

    .line 7328
    .end local v0    # "serial":I
    :sswitch_1a3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7331
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7332
    .local v1, "enabled_bitmask":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->set4x4MimoEnabled(II)V

    .line 7333
    goto/16 :goto_12f6

    .line 7318
    .end local v0    # "serial":I
    .end local v1    # "enabled_bitmask":I
    :sswitch_1b3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7321
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7322
    .local v1, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setBandPriorityList(ILjava/util/ArrayList;)V

    .line 7323
    goto/16 :goto_12f6

    .line 7309
    .end local v0    # "serial":I
    .end local v1    # "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1c3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7312
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getBandPriorityList(I)V

    .line 7313
    goto/16 :goto_12f6

    .line 7298
    .end local v0    # "serial":I
    :sswitch_1cf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7301
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7302
    .local v1, "bandId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7303
    .local v2, "status":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setLteBandEnableStatus(IIZ)V

    .line 7304
    goto/16 :goto_12f6

    .line 7289
    .end local v0    # "serial":I
    .end local v1    # "bandId":I
    .end local v2    # "status":Z
    :sswitch_1e3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7292
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getLteRRCState(I)V

    .line 7293
    goto/16 :goto_12f6

    .line 7280
    .end local v0    # "serial":I
    :sswitch_1ef
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7283
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getLteData(I)V

    .line 7284
    goto/16 :goto_12f6

    .line 7270
    .end local v0    # "serial":I
    :sswitch_1fb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7273
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7274
    .local v1, "linkType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getCALinkCapabilityList(II)V

    .line 7275
    goto/16 :goto_12f6

    .line 7258
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_20b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7261
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7262
    .local v1, "status":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7263
    .local v2, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7264
    .local v3, "linkType":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setCALinkEnableStatus(IZLjava/lang/String;I)V

    .line 7265
    goto/16 :goto_12f6

    .line 7247
    .end local v0    # "serial":I
    .end local v1    # "status":Z
    .end local v2    # "bandsCombo":Ljava/lang/String;
    .end local v3    # "linkType":I
    :sswitch_223
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7250
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7251
    .local v1, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7252
    .local v2, "linkType":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getCALinkEnableStatus(ILjava/lang/String;I)V

    .line 7253
    goto/16 :goto_12f6

    .line 7237
    .end local v0    # "serial":I
    .end local v1    # "bandsCombo":Ljava/lang/String;
    .end local v2    # "linkType":I
    :sswitch_237
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7240
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7241
    .local v1, "linkType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->disableAllCALinks(II)V

    .line 7242
    goto/16 :goto_12f6

    .line 7228
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_247
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7231
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getTOEInfo(I)V

    .line 7232
    goto/16 :goto_12f6

    .line 7218
    .end local v0    # "serial":I
    :sswitch_253
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7221
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7222
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    .line 7223
    goto/16 :goto_12f6

    .line 7200
    .end local v0    # "serial":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_265
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7203
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7204
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7205
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7206
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7207
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 7208
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 7209
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 7210
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 7211
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 7212
    .local v23, "dnsServers":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7213
    goto/16 :goto_12f6

    .line 7186
    .end local v11    # "serial":I
    .end local v12    # "ifName":Ljava/lang/String;
    .end local v16    # "ipv4Addr":Ljava/lang/String;
    .end local v17    # "ipv6Addr":Ljava/lang/String;
    .end local v18    # "ipv4PrefixLen":I
    .end local v19    # "ipv6PrefixLen":I
    .end local v20    # "ipv4Gateway":Ljava/lang/String;
    .end local v21    # "ipv6Gateway":Ljava/lang/String;
    .end local v22    # "dnsCount":I
    .end local v23    # "dnsServers":Ljava/lang/String;
    :sswitch_2a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7189
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7190
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7191
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 7192
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 7193
    .local v11, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7194
    .local v12, "mtuSize":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 7195
    goto/16 :goto_12f6

    .line 7175
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    .end local v12    # "mtuSize":I
    :sswitch_2d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7178
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7179
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7180
    .local v2, "isWifiEnabled":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendWifiEnabled(ILjava/lang/String;I)V

    .line 7181
    goto/16 :goto_12f6

    .line 7164
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    :sswitch_2e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7167
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;-><init>()V

    .line 7168
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7169
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;)V

    .line 7170
    goto/16 :goto_12f6

    .line 7154
    .end local v0    # "serial":I
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    :sswitch_2f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7157
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7158
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 7159
    goto/16 :goto_12f6

    .line 7143
    .end local v0    # "serial":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_309
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7146
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7147
    .local v1, "sar_cmd_type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7148
    .local v2, "sar_parameter":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendSarIndicator(IILjava/lang/String;)V

    .line 7149
    goto/16 :goto_12f6

    .line 7131
    .end local v0    # "serial":I
    .end local v1    # "sar_cmd_type":I
    .end local v2    # "sar_parameter":Ljava/lang/String;
    :sswitch_31d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7134
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7135
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7136
    .local v2, "tGear":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7137
    .local v3, "lGear":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSmartSceneSwitch(IIII)V

    .line 7138
    goto/16 :goto_12f6

    .line 7121
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "tGear":I
    .end local v3    # "lGear":I
    :sswitch_335
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7124
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7125
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getSmartRatSwitch(II)V

    .line 7126
    goto/16 :goto_12f6

    .line 7110
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_345
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7113
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7114
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7115
    .local v2, "rat":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->smartRatSwitch(III)V

    .line 7116
    goto/16 :goto_12f6

    .line 7098
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "rat":I
    :sswitch_359
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;

    move-result-object v0

    .line 7101
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;

    move-result-object v2

    .line 7102
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsSmartRatSwitch(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;)V

    .line 7103
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7105
    goto/16 :goto_12f6

    .line 7088
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    :sswitch_377
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7091
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7092
    .local v1, "ulSpeed":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setMaxUlSpeed(II)V

    .line 7093
    goto/16 :goto_12f6

    .line 7079
    .end local v0    # "serial":I
    .end local v1    # "ulSpeed":I
    :sswitch_387
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7082
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getDeactivateNrScgCommunication(I)V

    .line 7083
    goto/16 :goto_12f6

    .line 7068
    .end local v0    # "serial":I
    :sswitch_393
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7070
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7071
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7072
    .local v1, "deactivate":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7073
    .local v2, "allowSCGAdd":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->deactivateNrScgCommunication(IZZ)V

    .line 7074
    goto/16 :goto_12f6

    .line 7057
    .end local v0    # "serial":I
    .end local v1    # "deactivate":Z
    .end local v2    # "allowSCGAdd":Z
    :sswitch_3a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7060
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7061
    .local v1, "approve":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7062
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->eccRedialApprove(III)V

    .line 7063
    goto/16 :goto_12f6

    .line 7047
    .end local v0    # "serial":I
    .end local v1    # "approve":I
    .end local v2    # "callId":I
    :sswitch_3bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7050
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7051
    .local v1, "uid":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->abortCertificate(II)V

    .line 7052
    goto/16 :goto_12f6

    .line 7035
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    :sswitch_3cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7038
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7039
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7040
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7041
    .local v3, "toActive":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->enableCapabaility(ILjava/lang/String;II)V

    .line 7042
    goto/16 :goto_12f6

    .line 7024
    .end local v0    # "serial":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "toActive":I
    :sswitch_3e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7027
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7028
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7029
    .local v2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->routeAuthMessage(IILjava/util/ArrayList;)V

    .line 7030
    goto/16 :goto_12f6

    .line 7012
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7015
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7016
    .restart local v1    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7017
    .local v2, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 7018
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7019
    goto/16 :goto_12f6

    .line 7000
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_40f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7003
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7004
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7005
    .local v2, "num":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7006
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getSuggestedPlmnList(IIII)V

    .line 7007
    goto/16 :goto_12f6

    .line 6987
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "num":I
    .end local v3    # "timer":I
    :sswitch_427
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6990
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 6991
    .local v7, "registerQuality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6992
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6993
    .local v9, "thresholdValues":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 6994
    .local v10, "triggerTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6995
    goto/16 :goto_12f6

    .line 6978
    .end local v6    # "serial":I
    .end local v7    # "registerQuality":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "thresholdValues":Ljava/lang/String;
    .end local v10    # "triggerTime":Ljava/lang/String;
    :sswitch_44a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6981
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getDsdaStatus(I)V

    .line 6982
    goto/16 :goto_12f6

    .line 6968
    .end local v0    # "serial":I
    :sswitch_456
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6971
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6972
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->enableDsdaIndication(IZ)V

    .line 6973
    goto/16 :goto_12f6

    .line 6958
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_466
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6961
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6962
    .local v1, "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setKeepAliveByIpData(ILjava/lang/String;)V

    .line 6963
    goto/16 :goto_12f6

    .line 6948
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_476
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6951
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6952
    .restart local v1    # "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V

    .line 6953
    goto/16 :goto_12f6

    .line 6938
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_486
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6941
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6942
    .local v1, "interval":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setIgnoreSameNumberInterval(II)V

    .line 6943
    goto/16 :goto_12f6

    .line 6928
    .end local v0    # "serial":I
    .end local v1    # "interval":I
    :sswitch_496
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6931
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6932
    .local v1, "timer":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setCallValidTimer(II)V

    .line 6933
    goto/16 :goto_12f6

    .line 6918
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_4a6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6920
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6921
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6922
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setGwsdMode(ILjava/util/ArrayList;)V

    .line 6923
    goto/16 :goto_12f6

    .line 6908
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4b6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6911
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6912
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsCallMode(II)V

    .line 6913
    goto/16 :goto_12f6

    .line 6898
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_4c6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6901
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6902
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 6903
    goto/16 :goto_12f6

    .line 6888
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4d6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6891
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6892
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSipHeader(ILjava/util/ArrayList;)V

    .line 6893
    goto/16 :goto_12f6

    .line 6879
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4e6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6882
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getVoiceDomainPreference(I)V

    .line 6883
    goto/16 :goto_12f6

    .line 6869
    .end local v0    # "serial":I
    :sswitch_4f2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6872
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6873
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->enableCAPlusBandWidthFilter(IZ)V

    .line 6874
    goto/16 :goto_12f6

    .line 6858
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_502
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6861
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6862
    .local v1, "mcc":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6863
    .local v2, "mnc":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getPlmnNameFromSE13Table(III)V

    .line 6864
    goto/16 :goto_12f6

    .line 6850
    .end local v0    # "serial":I
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :sswitch_516
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6852
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->notifyImsServiceReady()V

    .line 6853
    goto/16 :goto_12f6

    .line 6841
    :sswitch_51e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6844
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->queryVopsStatus(I)V

    .line 6845
    goto/16 :goto_12f6

    .line 6830
    .end local v0    # "serial":I
    :sswitch_52a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6833
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6834
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6835
    .local v2, "audio":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->toggleRttAudioIndication(III)V

    .line 6836
    goto/16 :goto_12f6

    .line 6819
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_53e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6822
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6823
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6824
    .local v2, "result":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->rttModifyRequestResponse(III)V

    .line 6825
    goto/16 :goto_12f6

    .line 6807
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_552
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6810
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6811
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6812
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6813
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendRttText(IIILjava/lang/String;)V

    .line 6814
    goto/16 :goto_12f6

    .line 6796
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_56a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6799
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6800
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6801
    .local v2, "newMode":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendRttModifyRequest(III)V

    .line 6802
    goto/16 :goto_12f6

    .line 6786
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "newMode":I
    :sswitch_57e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6789
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6790
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setRttMode(II)V

    .line 6791
    goto/16 :goto_12f6

    .line 6775
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_58e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6778
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6779
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6780
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setVendorSetting(IILjava/lang/String;)V

    .line 6781
    goto/16 :goto_12f6

    .line 6764
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_5a2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6767
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6768
    .local v1, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6769
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 6770
    goto/16 :goto_12f6

    .line 6754
    .end local v0    # "serial":I
    .end local v1    # "reqType":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_5b6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;

    move-result-object v0

    .line 6757
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;

    move-result-object v1

    .line 6758
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;)V

    .line 6759
    goto/16 :goto_12f6

    .line 6744
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    :sswitch_5ce
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;

    move-result-object v0

    .line 6747
    .local v0, "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;

    move-result-object v1

    .line 6748
    .local v1, "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;)V

    .line 6749
    goto/16 :goto_12f6

    .line 6733
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    .end local v1    # "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    :sswitch_5e6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6736
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6737
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6738
    .local v2, "reason":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->hangupWithReason(III)V

    .line 6739
    goto/16 :goto_12f6

    .line 6723
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "reason":I
    :sswitch_5fa
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6726
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6727
    .local v1, "state":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->notifyEPDGScreenState(II)V

    .line 6728
    goto/16 :goto_12f6

    .line 6713
    .end local v0    # "serial":I
    .end local v1    # "state":I
    :sswitch_60a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6716
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6717
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 6718
    goto/16 :goto_12f6

    .line 6702
    .end local v0    # "serial":I
    .end local v1    # "pwd":Ljava/lang/String;
    :sswitch_61a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6705
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6706
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6707
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6708
    goto/16 :goto_12f6

    .line 6692
    .end local v0    # "serial":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_62e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6695
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6696
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setTxPowerStatus(II)V

    .line 6697
    goto/16 :goto_12f6

    .line 6683
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_63e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6686
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getLteReleaseVersion(I)V

    .line 6687
    goto/16 :goto_12f6

    .line 6673
    .end local v0    # "serial":I
    :sswitch_64a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6676
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6677
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setLteReleaseVersion(II)V

    .line 6678
    goto/16 :goto_12f6

    .line 6664
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_65a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6667
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->resetAllConnections(I)V

    .line 6668
    goto/16 :goto_12f6

    .line 6654
    .end local v0    # "serial":I
    :sswitch_666
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6657
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6658
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->dataConnectionDetach(II)V

    .line 6659
    goto/16 :goto_12f6

    .line 6644
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_676
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6647
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6648
    .restart local v1    # "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->dataConnectionAttach(II)V

    .line 6649
    goto/16 :goto_12f6

    .line 6634
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_686
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6637
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6638
    .local v1, "featureId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getImsCfgResourceCapValue(II)V

    .line 6639
    goto/16 :goto_12f6

    .line 6624
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    :sswitch_696
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6627
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6628
    .local v1, "configId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getImsCfgProvisionValue(II)V

    .line 6629
    goto/16 :goto_12f6

    .line 6613
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    :sswitch_6a6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6616
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6617
    .restart local v1    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6618
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 6619
    goto/16 :goto_12f6

    .line 6602
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_6ba
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6605
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6606
    .local v1, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6607
    .local v2, "network":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getImsCfgFeatureValue(III)V

    .line 6608
    goto/16 :goto_12f6

    .line 6589
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "network":I
    :sswitch_6ce
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6592
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6593
    .local v7, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6594
    .local v8, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6595
    .local v9, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6596
    .local v10, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 6597
    goto/16 :goto_12f6

    .line 6579
    .end local v6    # "serial":I
    .end local v7    # "featureId":I
    .end local v8    # "network":I
    .end local v9    # "value":I
    .end local v10    # "isLast":I
    :sswitch_6f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6582
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6583
    .local v1, "enable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsBearerNotification(II)V

    .line 6584
    goto/16 :goto_12f6

    .line 6570
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    :sswitch_701
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6573
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getApcInfo(I)V

    .line 6574
    goto/16 :goto_12f6

    .line 6558
    .end local v0    # "serial":I
    :sswitch_70d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6561
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6562
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6563
    .local v2, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6564
    .local v3, "interval":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setApcMode(IIII)V

    .line 6565
    goto/16 :goto_12f6

    .line 6546
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "reportMode":I
    .end local v3    # "interval":I
    :sswitch_725
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6549
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6550
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6551
    .local v2, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6552
    .local v3, "pktloss":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setWifiPingResult(IIII)V

    .line 6553
    goto/16 :goto_12f6

    .line 6531
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "latency":I
    .end local v3    # "pktloss":I
    :sswitch_73d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6534
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6535
    .local v9, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6536
    .local v10, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6537
    .local v11, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6538
    .local v12, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6539
    .local v16, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 6540
    .local v17, "dstPort":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 6541
    goto/16 :goto_12f6

    .line 6521
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "enable":Z
    .end local v11    # "srcIp":Ljava/lang/String;
    .end local v12    # "srcPort":I
    .end local v16    # "dstIp":Ljava/lang/String;
    .end local v17    # "dstPort":I
    :sswitch_76c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6524
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6525
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 6526
    goto/16 :goto_12f6

    .line 6501
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_77c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 6504
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6505
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 6506
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 6507
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 6508
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 6509
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 6510
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 6511
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 6512
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 6513
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 6514
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 6515
    .local v27, "ueWlanMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6516
    goto/16 :goto_12f6

    .line 6492
    .end local v16    # "serial":I
    .end local v17    # "accountId":Ljava/lang/String;
    .end local v18    # "broadcastFlag":Ljava/lang/String;
    .end local v19    # "latitude":Ljava/lang/String;
    .end local v20    # "longitude":Ljava/lang/String;
    .end local v21    # "accuracy":Ljava/lang/String;
    .end local v22    # "method":Ljava/lang/String;
    .end local v23    # "city":Ljava/lang/String;
    .end local v24    # "state":Ljava/lang/String;
    .end local v25    # "zip":Ljava/lang/String;
    .end local v26    # "countryCode":Ljava/lang/String;
    .end local v27    # "ueWlanMac":Ljava/lang/String;
    :sswitch_7ce
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6495
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->querySsacStatus(I)V

    .line 6496
    goto/16 :goto_12f6

    .line 6480
    .end local v0    # "serial":I
    :sswitch_7da
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6483
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6484
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6485
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6486
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V

    .line 6487
    goto/16 :goto_12f6

    .line 6462
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_7f2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6465
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6466
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6467
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6468
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 6469
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 6470
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 6471
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 6472
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 6473
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 6474
    .local v23, "dnsServers":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6475
    goto/16 :goto_12f6

    .line 6451
    .end local v11    # "serial":I
    .end local v12    # "ifName":Ljava/lang/String;
    .end local v16    # "ipv4Addr":Ljava/lang/String;
    .end local v17    # "ipv6Addr":Ljava/lang/String;
    .end local v18    # "ipv4PrefixLen":I
    .end local v19    # "ipv6PrefixLen":I
    .end local v20    # "ipv4Gateway":Ljava/lang/String;
    .end local v21    # "ipv6Gateway":Ljava/lang/String;
    .end local v22    # "dnsCount":I
    .end local v23    # "dnsServers":Ljava/lang/String;
    :sswitch_836
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6453
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6454
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6455
    .local v1, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6456
    .local v2, "snr":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setWifiSignalLevel(III)V

    .line 6457
    goto/16 :goto_12f6

    .line 6436
    .end local v0    # "serial":I
    .end local v1    # "rssi":I
    .end local v2    # "snr":I
    :sswitch_84a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6439
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6440
    .restart local v9    # "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6441
    .local v10, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6442
    .local v11, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6443
    .local v12, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 6444
    .local v16, "mtuSize":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6445
    .local v17, "ueMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6446
    goto/16 :goto_12f6

    .line 6424
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "associated":I
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v12    # "apMac":Ljava/lang/String;
    .end local v16    # "mtuSize":I
    .end local v17    # "ueMac":Ljava/lang/String;
    :sswitch_879
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6427
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6428
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6429
    .local v2, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6430
    .local v3, "isFlightModeOn":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 6431
    goto/16 :goto_12f6

    .line 6414
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    .end local v3    # "isFlightModeOn":I
    :sswitch_891
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6417
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6418
    .local v1, "vdp":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setVoiceDomainPreference(II)V

    .line 6419
    goto/16 :goto_12f6

    .line 6404
    .end local v0    # "serial":I
    .end local v1    # "vdp":I
    :sswitch_8a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6407
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6408
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setRemoveRestrictEutranMode(II)V

    .line 6409
    goto/16 :goto_12f6

    .line 6394
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_8b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6397
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6398
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 6399
    goto/16 :goto_12f6

    .line 6384
    .end local v0    # "serial":I
    .end local v1    # "apn":Ljava/lang/String;
    :sswitch_8c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6387
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6388
    .local v1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 6389
    goto/16 :goto_12f6

    .line 6375
    .end local v0    # "serial":I
    .end local v1    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_8d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6378
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->restartRILD(I)V

    .line 6379
    goto/16 :goto_12f6

    .line 6365
    .end local v0    # "serial":I
    :sswitch_8dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6369
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 6370
    goto/16 :goto_12f6

    .line 6355
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_8ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;

    move-result-object v0

    .line 6358
    .local v0, "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;

    move-result-object v1

    .line 6359
    .local v1, "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;)V

    .line 6360
    goto/16 :goto_12f6

    .line 6345
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    .end local v1    # "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    :sswitch_905
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6348
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6349
    .local v1, "resultCode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 6350
    goto/16 :goto_12f6

    .line 6335
    .end local v0    # "serial":I
    .end local v1    # "resultCode":I
    :sswitch_915
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6338
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6339
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setTrm(II)V

    .line 6340
    goto/16 :goto_12f6

    .line 6323
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_925
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6326
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6327
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6328
    .local v2, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6329
    .local v3, "param2":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setFdMode(IIII)V

    .line 6330
    goto/16 :goto_12f6

    .line 6311
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "param1":I
    .end local v3    # "param2":I
    :sswitch_93d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6314
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6315
    .local v1, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6316
    .local v2, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6317
    .local v3, "nAct":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 6318
    goto/16 :goto_12f6

    .line 6302
    .end local v0    # "serial":I
    .end local v1    # "index":I
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "nAct":I
    :sswitch_955
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6304
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6305
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getCurrentPOLList(I)V

    .line 6306
    goto/16 :goto_12f6

    .line 6293
    .end local v0    # "serial":I
    :sswitch_961
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6296
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getPOLCapability(I)V

    .line 6297
    goto/16 :goto_12f6

    .line 6283
    .end local v0    # "serial":I
    :sswitch_96d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6286
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6287
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getRxTestResult(II)V

    .line 6288
    goto/16 :goto_12f6

    .line 6273
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_97d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6276
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6277
    .local v1, "antType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setRxTestConfig(II)V

    .line 6278
    goto/16 :goto_12f6

    .line 6263
    .end local v0    # "serial":I
    .end local v1    # "antType":I
    :sswitch_98d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6266
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6267
    .local v1, "sleepDuration":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setBgsrchDeltaSleepTimer(II)V

    .line 6268
    goto/16 :goto_12f6

    .line 6253
    .end local v0    # "serial":I
    .end local v1    # "sleepDuration":I
    :sswitch_99d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6256
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6257
    .local v1, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSearchRat(ILjava/util/ArrayList;)V

    .line 6258
    goto/16 :goto_12f6

    .line 6240
    .end local v0    # "serial":I
    .end local v1    # "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6243
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6244
    .local v7, "operation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6245
    .local v8, "plmn_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6246
    .local v9, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 6247
    .local v10, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V

    .line 6248
    goto/16 :goto_12f6

    .line 6230
    .end local v6    # "serial":I
    .end local v7    # "operation":I
    .end local v8    # "plmn_id":I
    .end local v9    # "rat":I
    .end local v10    # "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9d0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6233
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6234
    .local v1, "limitpower":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setTxPower(II)V

    .line 6235
    goto/16 :goto_12f6

    .line 6220
    .end local v0    # "serial":I
    .end local v1    # "limitpower":I
    :sswitch_9e0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6223
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6224
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->disableNR(IZ)V

    .line 6225
    goto/16 :goto_12f6

    .line 6207
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_9f0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6210
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 6211
    .local v7, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6212
    .local v8, "T1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6213
    .local v9, "P1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6214
    .local v10, "T2":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->enableSCGfailure(IZIII)V

    .line 6215
    goto/16 :goto_12f6

    .line 6196
    .end local v6    # "serial":I
    .end local v7    # "enable":Z
    .end local v8    # "T1":I
    .end local v9    # "P1":I
    .end local v10    # "T2":I
    :sswitch_a13
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6199
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6200
    .local v1, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6201
    .local v2, "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->cfgB1offset(III)V

    .line 6202
    goto/16 :goto_12f6

    .line 6185
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_a27
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6188
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6189
    .restart local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6190
    .restart local v2    # "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->cfgA2offset(III)V

    .line 6191
    goto/16 :goto_12f6

    .line 6170
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_a3b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6173
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6174
    .local v9, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6175
    .local v10, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6176
    .local v11, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6177
    .local v12, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 6178
    .local v16, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 6179
    .local v17, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setServiceStateToModem(IIIIIII)V

    .line 6180
    goto/16 :goto_12f6

    .line 6160
    .end local v8    # "serial":I
    .end local v9    # "voiceRegState":I
    .end local v10    # "dataRegState":I
    .end local v11    # "voiceRoamingType":I
    .end local v12    # "dataRoamingType":I
    .end local v16    # "rilVoiceRegState":I
    .end local v17    # "rilDataRegState":I
    :sswitch_a6a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6163
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6164
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 6165
    goto/16 :goto_12f6

    .line 6151
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_a7a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6154
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 6155
    goto/16 :goto_12f6

    .line 6139
    .end local v0    # "serial":I
    :sswitch_a86
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6142
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6143
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6144
    .local v2, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6145
    .local v3, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6146
    goto/16 :goto_12f6

    .line 6130
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "csgId":Ljava/lang/String;
    :sswitch_a9e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6133
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->abortFemtocellList(I)V

    .line 6134
    goto/16 :goto_12f6

    .line 6121
    .end local v0    # "serial":I
    :sswitch_aaa
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6124
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getFemtocellList(I)V

    .line 6125
    goto/16 :goto_12f6

    .line 6112
    .end local v0    # "serial":I
    :sswitch_ab6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6115
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->cancelAvailableNetworks(I)V

    .line 6116
    goto/16 :goto_12f6

    .line 6103
    .end local v0    # "serial":I
    :sswitch_ac2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6106
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 6107
    goto/16 :goto_12f6

    .line 6094
    .end local v0    # "serial":I
    :sswitch_ace
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6097
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getAvailableNetworksWithAct(I)V

    .line 6098
    goto/16 :goto_12f6

    .line 6082
    .end local v0    # "serial":I
    :sswitch_ada
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6085
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6086
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6087
    .restart local v2    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6088
    .local v3, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6089
    goto/16 :goto_12f6

    .line 6073
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "mode":Ljava/lang/String;
    :sswitch_af2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6076
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getSmsRuimMemoryStatus(I)V

    .line 6077
    goto/16 :goto_12f6

    .line 6062
    .end local v0    # "serial":I
    :sswitch_afe
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6065
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6066
    .local v1, "applyType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6067
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->modifyModemType(III)V

    .line 6068
    goto/16 :goto_12f6

    .line 6052
    .end local v0    # "serial":I
    .end local v1    # "applyType":I
    .end local v2    # "modemType":I
    :sswitch_b12
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6055
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6056
    .local v1, "sessionId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResumeRegistration(II)V

    .line 6057
    goto/16 :goto_12f6

    .line 6042
    .end local v0    # "serial":I
    .end local v1    # "sessionId":I
    :sswitch_b22
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6045
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6046
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 6047
    goto/16 :goto_12f6

    .line 6032
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b32
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6035
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6036
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 6037
    goto/16 :goto_12f6

    .line 6021
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_b42
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6024
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 6025
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6026
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 6027
    goto/16 :goto_12f6

    .line 6010
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_b56
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6013
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6014
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6015
    .local v2, "cause":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 6016
    goto/16 :goto_12f6

    .line 5999
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_b6a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6002
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 6003
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6004
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 6005
    goto/16 :goto_12f6

    .line 5990
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_b7e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5993
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getGsmBroadcastActivation(I)V

    .line 5994
    goto/16 :goto_12f6

    .line 5981
    .end local v0    # "serial":I
    :sswitch_b8a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5984
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getGsmBroadcastLangs(I)V

    .line 5985
    goto/16 :goto_12f6

    .line 5971
    .end local v0    # "serial":I
    :sswitch_b96
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5974
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5975
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 5976
    goto/16 :goto_12f6

    .line 5960
    .end local v0    # "serial":I
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_ba6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5963
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5964
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5965
    .local v2, "serialId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->removeCbMsg(III)V

    .line 5966
    goto/16 :goto_12f6

    .line 5950
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    .end local v2    # "serialId":I
    :sswitch_bba
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5953
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5954
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setEtws(II)V

    .line 5955
    goto/16 :goto_12f6

    .line 5941
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_bca
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5944
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getSmsMemStatus(I)V

    .line 5945
    goto/16 :goto_12f6

    .line 5930
    .end local v0    # "serial":I
    :sswitch_bd6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5933
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;-><init>()V

    .line 5934
    .local v1, "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5935
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 5936
    goto/16 :goto_12f6

    .line 5921
    .end local v0    # "serial":I
    .end local v1    # "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    :sswitch_bea
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5924
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getSmsParameters(I)V

    .line 5925
    goto/16 :goto_12f6

    .line 5907
    .end local v0    # "serial":I
    :sswitch_bf6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5910
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5911
    .local v8, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5912
    .local v9, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5913
    .local v10, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 5914
    .local v11, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v12

    .line 5915
    .local v12, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 5916
    goto/16 :goto_12f6

    .line 5895
    .end local v7    # "serial":I
    .end local v8    # "transactionId":I
    .end local v9    # "eventId":I
    .end local v10    # "result":I
    .end local v11    # "dataLength":I
    .end local v12    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_c1e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5898
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5899
    .local v1, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5900
    .local v2, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5901
    .local v3, "simType":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendVsimNotification(IIII)V

    .line 5902
    goto/16 :goto_12f6

    .line 5884
    .end local v0    # "serial":I
    .end local v1    # "transactionId":I
    .end local v2    # "eventId":I
    .end local v3    # "simType":I
    :sswitch_c36
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5886
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5887
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5888
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5889
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 5890
    goto/16 :goto_12f6

    .line 5869
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_c4a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5872
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5873
    .local v9, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5874
    .local v10, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5875
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5876
    .local v12, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5877
    .local v16, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 5878
    .local v17, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5879
    goto/16 :goto_12f6

    .line 5859
    .end local v8    # "serial":I
    .end local v9    # "category":I
    .end local v10    # "lockop":I
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "data_imsi":Ljava/lang/String;
    .end local v16    # "gid1":Ljava/lang/String;
    .end local v17    # "gid2":Ljava/lang/String;
    :sswitch_c79
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5862
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5863
    .local v1, "category":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->queryNetworkLock(II)V

    .line 5864
    goto/16 :goto_12f6

    .line 5848
    .end local v0    # "serial":I
    .end local v1    # "category":I
    :sswitch_c89
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5851
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;-><init>()V

    .line 5852
    .local v1, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5853
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;)V

    .line 5854
    goto/16 :goto_12f6

    .line 5839
    .end local v0    # "serial":I
    .end local v1    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    :sswitch_c9d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5841
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5842
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getCurrentUiccCardProvisioningStatus(I)V

    .line 5843
    goto/16 :goto_12f6

    .line 5830
    .end local v0    # "serial":I
    :sswitch_ca9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5833
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->deactivateUiccCard(I)V

    .line 5834
    goto/16 :goto_12f6

    .line 5821
    .end local v0    # "serial":I
    :sswitch_cb5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5824
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->activateUiccCard(I)V

    .line 5825
    goto/16 :goto_12f6

    .line 5811
    .end local v0    # "serial":I
    :sswitch_cc1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5814
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5815
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setSimPower(II)V

    .line 5816
    goto/16 :goto_12f6

    .line 5802
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_cd1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5805
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getIccid(I)V

    .line 5806
    goto/16 :goto_12f6

    .line 5793
    .end local v0    # "serial":I
    :sswitch_cdd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5796
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getATR(I)V

    .line 5797
    goto/16 :goto_12f6

    .line 5783
    .end local v0    # "serial":I
    :sswitch_ce9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5786
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5787
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->triggerModeSwitchByEcc(II)V

    .line 5788
    goto/16 :goto_12f6

    .line 5773
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_cf9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5776
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5777
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setModemPower(IZ)V

    .line 5778
    goto/16 :goto_12f6

    .line 5763
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_d09
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5766
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5767
    .local v1, "ready":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setPhonebookReady(II)V

    .line 5768
    goto/16 :goto_12f6

    .line 5752
    .end local v0    # "serial":I
    .end local v1    # "ready":I
    :sswitch_d19
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5755
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5756
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5757
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readUPBAasList(III)V

    .line 5758
    goto/16 :goto_12f6

    .line 5741
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_d2d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5744
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5745
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5746
    .local v2, "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readUPBAnrEntry(III)V

    .line 5747
    goto/16 :goto_12f6

    .line 5730
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_d41
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5733
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5734
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5735
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readUPBSneEntry(III)V

    .line 5736
    goto/16 :goto_12f6

    .line 5719
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_d55
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5721
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5722
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5723
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5724
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readUPBEmailEntry(III)V

    .line 5725
    goto/16 :goto_12f6

    .line 5708
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_d69
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5711
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5712
    .local v1, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5713
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->queryUPBAvailable(III)V

    .line 5714
    goto/16 :goto_12f6

    .line 5697
    .end local v0    # "serial":I
    .end local v1    # "eftype":I
    .end local v2    # "fileIndex":I
    :sswitch_d7d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5700
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;-><init>()V

    .line 5701
    .local v1, "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5702
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;)V

    .line 5703
    goto/16 :goto_12f6

    .line 5686
    .end local v0    # "serial":I
    .end local v1    # "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    :sswitch_d91
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5689
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5690
    .local v1, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5691
    .local v2, "index2":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readPhoneBookEntryExt(III)V

    .line 5692
    goto/16 :goto_12f6

    .line 5675
    .end local v0    # "serial":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :sswitch_da5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5678
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5679
    .local v1, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5680
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 5681
    goto/16 :goto_12f6

    .line 5666
    .end local v0    # "serial":I
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    :sswitch_db9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5669
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getPhoneBookMemStorage(I)V

    .line 5670
    goto/16 :goto_12f6

    .line 5657
    .end local v0    # "serial":I
    :sswitch_dc5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5660
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getPhoneBookStringsLength(I)V

    .line 5661
    goto/16 :goto_12f6

    .line 5646
    .end local v0    # "serial":I
    :sswitch_dd1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5649
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5650
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5651
    .local v2, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 5652
    goto/16 :goto_12f6

    .line 5636
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_de5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5639
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5640
    .restart local v1    # "adnIndex":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readUPBGrpEntry(II)V

    .line 5641
    goto/16 :goto_12f6

    .line 5625
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    :sswitch_df5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5628
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5629
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5630
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readUPBGasList(III)V

    .line 5631
    goto/16 :goto_12f6

    .line 5613
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_e09
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5616
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5617
    .local v1, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5618
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5619
    .local v3, "entryIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->deleteUPBEntry(IIII)V

    .line 5620
    goto/16 :goto_12f6

    .line 5603
    .end local v0    # "serial":I
    .end local v1    # "entryType":I
    .end local v2    # "adnIndex":I
    .end local v3    # "entryIndex":I
    :sswitch_e21
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5606
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5607
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 5608
    goto/16 :goto_12f6

    .line 5594
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_e31
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5597
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->queryUPBCapability(I)V

    .line 5598
    goto/16 :goto_12f6

    .line 5582
    .end local v0    # "serial":I
    :sswitch_e3d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5585
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5586
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5587
    .local v2, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5588
    .local v3, "eIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->readPhbEntry(IIII)V

    .line 5589
    goto/16 :goto_12f6

    .line 5571
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "bIndex":I
    .end local v3    # "eIndex":I
    :sswitch_e55
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5574
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;-><init>()V

    .line 5575
    .local v1, "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5576
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;)V

    .line 5577
    goto/16 :goto_12f6

    .line 5561
    .end local v0    # "serial":I
    .end local v1    # "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    :sswitch_e69
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5564
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5565
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->queryPhbStorageInfo(II)V

    .line 5566
    goto/16 :goto_12f6

    .line 5552
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_e79
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5555
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getCallSubAddress(I)V

    .line 5556
    goto/16 :goto_12f6

    .line 5542
    .end local v0    # "serial":I
    :sswitch_e85
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5545
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5546
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setCallSubAddress(IZ)V

    .line 5547
    goto/16 :goto_12f6

    .line 5533
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_e95
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5536
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getEccNum(I)V

    .line 5537
    goto/16 :goto_12f6

    .line 5522
    .end local v0    # "serial":I
    :sswitch_ea1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5525
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5526
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5527
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 5528
    goto/16 :goto_12f6

    .line 5512
    .end local v0    # "serial":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_eb5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5515
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5516
    .local v1, "status":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setVoicePreferStatus(II)V

    .line 5517
    goto/16 :goto_12f6

    .line 5502
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_ec5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5505
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5506
    .local v1, "phoneType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->eccPreferredRat(II)V

    .line 5507
    goto/16 :goto_12f6

    .line 5489
    .end local v0    # "serial":I
    .end local v1    # "phoneType":I
    :sswitch_ed5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5492
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 5493
    .local v7, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5494
    .local v8, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5495
    .local v9, "airplaneMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5496
    .local v10, "imsReg":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setEccMode(ILjava/lang/String;III)V

    .line 5497
    goto/16 :goto_12f6

    .line 5476
    .end local v6    # "serial":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "enable":I
    .end local v9    # "airplaneMode":I
    .end local v10    # "imsReg":I
    :sswitch_ef8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5479
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5480
    .local v7, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5481
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5482
    .local v9, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5483
    .local v10, "cause":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setCallIndication(IIIII)V

    .line 5484
    goto/16 :goto_12f6

    .line 5467
    .end local v6    # "serial":I
    .end local v7    # "mode":I
    .end local v8    # "callId":I
    .end local v9    # "seqNumber":I
    .end local v10    # "cause":I
    :sswitch_f1b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5470
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->hangupAll(I)V

    .line 5471
    goto/16 :goto_12f6

    .line 5457
    .end local v0    # "serial":I
    :sswitch_f27
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5460
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5461
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 5462
    goto/16 :goto_12f6

    .line 5448
    .end local v0    # "serial":I
    .end local v1    # "userAgent":Ljava/lang/String;
    :sswitch_f37
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5451
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->resetSuppServ(I)V

    .line 5452
    goto/16 :goto_12f6

    .line 5439
    .end local v0    # "serial":I
    :sswitch_f43
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5442
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getXcapStatus(I)V

    .line 5443
    goto/16 :goto_12f6

    .line 5430
    .end local v0    # "serial":I
    :sswitch_f4f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5433
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->cancelUssi(I)V

    .line 5434
    goto/16 :goto_12f6

    .line 5420
    .end local v0    # "serial":I
    :sswitch_f5b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5423
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5424
    .local v1, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendUssi(ILjava/lang/String;)V

    .line 5425
    goto/16 :goto_12f6

    .line 5407
    .end local v0    # "serial":I
    .end local v1    # "ussiString":Ljava/lang/String;
    :sswitch_f6b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5410
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 5411
    .local v7, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5412
    .local v8, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 5413
    .local v9, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5414
    .local v10, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 5415
    goto/16 :goto_12f6

    .line 5396
    .end local v6    # "serial":I
    .end local v7    # "nafFqdn":Ljava/lang/String;
    .end local v8    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v9    # "forceRun":Z
    .end local v10    # "netId":I
    :sswitch_f8e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5399
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 5400
    .local v1, "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5401
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 5402
    goto/16 :goto_12f6

    .line 5385
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_fa2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5387
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5388
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 5389
    .restart local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5390
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 5391
    goto/16 :goto_12f6

    .line 5375
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_fb6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5378
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5379
    .local v1, "colrEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setColr(II)V

    .line 5380
    goto/16 :goto_12f6

    .line 5365
    .end local v0    # "serial":I
    .end local v1    # "colrEnable":I
    :sswitch_fc6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5369
    .local v1, "colpEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setColp(II)V

    .line 5370
    goto/16 :goto_12f6

    .line 5355
    .end local v0    # "serial":I
    .end local v1    # "colpEnable":I
    :sswitch_fd6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5358
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5359
    .local v1, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendCnap(ILjava/lang/String;)V

    .line 5360
    goto/16 :goto_12f6

    .line 5346
    .end local v0    # "serial":I
    .end local v1    # "cnapssMessage":Ljava/lang/String;
    :sswitch_fe6
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5349
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getColr(I)V

    .line 5350
    goto/16 :goto_12f6

    .line 5337
    .end local v0    # "serial":I
    :sswitch_ff2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5340
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getColp(I)V

    .line 5341
    goto/16 :goto_12f6

    .line 5327
    .end local v0    # "serial":I
    :sswitch_ffe
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5330
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5331
    .local v1, "clipEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setClip(II)V

    .line 5332
    goto/16 :goto_12f6

    .line 5314
    .end local v0    # "serial":I
    .end local v1    # "clipEnable":I
    :sswitch_100e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5317
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 5318
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5319
    .local v8, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 5320
    .local v9, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 5321
    .local v10, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5322
    goto/16 :goto_12f6

    .line 5304
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "oldPassword":Ljava/lang/String;
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "cfmPassword":Ljava/lang/String;
    :sswitch_1031
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5307
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5308
    .local v1, "phoneId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getRoamingEnable(II)V

    .line 5309
    goto/16 :goto_12f6

    .line 5294
    .end local v0    # "serial":I
    .end local v1    # "phoneId":I
    :sswitch_1041
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5297
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5298
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 5299
    goto/16 :goto_12f6

    .line 5284
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1051
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5287
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5288
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 5289
    goto/16 :goto_12f6

    .line 5275
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/lang/String;
    :sswitch_1061
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5278
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsRegistrationReport(I)V

    .line 5279
    goto/16 :goto_12f6

    .line 5264
    .end local v0    # "serial":I
    :sswitch_106d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5267
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5268
    .local v1, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5269
    .local v2, "isVideoCall":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 5270
    goto/16 :goto_12f6

    .line 5252
    .end local v0    # "serial":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "isVideoCall":Z
    :sswitch_1081
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5255
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5256
    .local v1, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5257
    .local v2, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5258
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsRtpReport(IIII)V

    .line 5259
    goto/16 :goto_12f6

    .line 5240
    .end local v0    # "serial":I
    .end local v1    # "pdnId":I
    .end local v2    # "networkId":I
    .end local v3    # "timer":I
    :sswitch_1099
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5243
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5244
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5245
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5246
    .local v3, "status":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->imsBearerStateConfirm(IIII)V

    .line 5247
    goto/16 :goto_12f6

    .line 5230
    .end local v0    # "serial":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "status":I
    :sswitch_10b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5233
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5234
    .local v1, "callId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->forceReleaseCall(II)V

    .line 5235
    goto/16 :goto_12f6

    .line 5219
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    :sswitch_10c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5222
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 5223
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5224
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 5225
    goto/16 :goto_12f6

    .line 5209
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_10d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5212
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5213
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 5214
    goto/16 :goto_12f6

    .line 5199
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_10e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5202
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5203
    .restart local v1    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 5204
    goto/16 :goto_12f6

    .line 5187
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_10f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5190
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5191
    .local v1, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5192
    .local v2, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5193
    .local v3, "type":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 5194
    goto/16 :goto_12f6

    .line 5176
    .end local v0    # "serial":I
    .end local v1    # "keys":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    .end local v3    # "type":I
    :sswitch_110d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5179
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;-><init>()V

    .line 5180
    .local v1, "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5181
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V

    .line 5182
    goto/16 :goto_12f6

    .line 5166
    .end local v0    # "serial":I
    .end local v1    # "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    :sswitch_1121
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5169
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5170
    .local v1, "wfcPreference":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setWfcProfile(II)V

    .line 5171
    goto/16 :goto_12f6

    .line 5153
    .end local v0    # "serial":I
    .end local v1    # "wfcPreference":I
    :sswitch_1131
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5156
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5157
    .local v7, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5158
    .local v8, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 5159
    .local v9, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5160
    .local v10, "callId":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 5161
    goto/16 :goto_12f6

    .line 5142
    .end local v6    # "serial":I
    .end local v7    # "controlType":I
    .end local v8    # "confCallId":I
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "callId":I
    :sswitch_1154
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5145
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5146
    .local v1, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5147
    .local v2, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 5148
    goto/16 :goto_12f6

    .line 5132
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "provisionValue":Ljava/lang/String;
    :sswitch_1168
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5135
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5136
    .restart local v1    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 5137
    goto/16 :goto_12f6

    .line 5117
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    :sswitch_1178
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5120
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 5121
    .local v9, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 5122
    .local v10, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 5123
    .local v11, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 5124
    .local v12, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5125
    .local v16, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5126
    .local v17, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImscfg(IZZZZZZ)V

    .line 5127
    goto/16 :goto_12f6

    .line 5107
    .end local v8    # "serial":I
    .end local v9    # "volteEnable":Z
    .end local v10    # "vilteEnable":Z
    .end local v11    # "vowifiEnable":Z
    .end local v12    # "viwifiEnable":Z
    .end local v16    # "smsEnable":Z
    .end local v17    # "eimsEnable":Z
    :sswitch_11a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5110
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5111
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsVideoEnable(IZ)V

    .line 5112
    goto/16 :goto_12f6

    .line 5097
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_11b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5100
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5101
    .restart local v1    # "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setImsEnable(IZ)V

    .line 5102
    goto/16 :goto_12f6

    .line 5087
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_11c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5090
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5091
    .local v1, "cause":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->imsDeregNotification(II)V

    .line 5092
    goto/16 :goto_12f6

    .line 5076
    .end local v0    # "serial":I
    .end local v1    # "cause":I
    :sswitch_11d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5079
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5080
    .local v1, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5081
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->controlCall(III)V

    .line 5082
    goto/16 :goto_12f6

    .line 5065
    .end local v0    # "serial":I
    .end local v1    # "controlType":I
    .end local v2    # "callId":I
    :sswitch_11eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5068
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5069
    .local v1, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5070
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 5071
    goto/16 :goto_12f6

    .line 5054
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_11ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5058
    .local v1, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5059
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->videoCallAccept(III)V

    .line 5060
    goto/16 :goto_12f6

    .line 5042
    .end local v0    # "serial":I
    .end local v1    # "videoMode":I
    .end local v2    # "callId":I
    :sswitch_1213
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;

    move-result-object v0

    .line 5045
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;

    move-result-object v2

    .line 5046
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsRsu(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;)V

    .line 5047
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5049
    goto/16 :goto_12f6

    .line 5031
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    :sswitch_1231
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;

    move-result-object v0

    .line 5034
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;)V

    .line 5035
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5037
    goto/16 :goto_12f6

    .line 5020
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    :sswitch_1247
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;

    move-result-object v0

    .line 5023
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;)V

    .line 5024
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5025
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5026
    goto/16 :goto_12f6

    .line 5008
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    :sswitch_125d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;

    move-result-object v0

    .line 5011
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;

    move-result-object v2

    .line 5012
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;)V

    .line 5013
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5015
    goto/16 :goto_12f6

    .line 4996
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    :sswitch_127b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;

    move-result-object v0

    .line 4999
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;

    move-result-object v2

    .line 5000
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;)V

    .line 5001
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5003
    goto :goto_12f6

    .line 4984
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    :sswitch_1298
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;

    move-result-object v0

    .line 4987
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;

    move-result-object v2

    .line 4988
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;)V

    .line 4989
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4991
    goto :goto_12f6

    .line 4972
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    :sswitch_12b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;

    move-result-object v0

    .line 4975
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;

    move-result-object v2

    .line 4976
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V

    .line 4977
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4979
    goto :goto_12f6

    .line 4960
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    :sswitch_12d2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;

    move-result-object v0

    .line 4963
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;

    move-result-object v2

    .line 4964
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;)V

    .line 4965
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4966
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4967
    goto :goto_12f6

    .line 4952
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    :sswitch_12ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4954
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->responseAcknowledgementMtk()V

    .line 4955
    nop

    .line 7588
    :goto_12f6
    return-void

    nop

    :sswitch_data_12f8
    .sparse-switch
        0x1 -> :sswitch_12ef
        0x2 -> :sswitch_12d2
        0x3 -> :sswitch_12b5
        0x4 -> :sswitch_1298
        0x5 -> :sswitch_127b
        0x6 -> :sswitch_125d
        0x7 -> :sswitch_1247
        0x8 -> :sswitch_1231
        0x9 -> :sswitch_1213
        0xa -> :sswitch_11ff
        0xb -> :sswitch_11eb
        0xc -> :sswitch_11d7
        0xd -> :sswitch_11c7
        0xe -> :sswitch_11b7
        0xf -> :sswitch_11a7
        0x10 -> :sswitch_1178
        0x11 -> :sswitch_1168
        0x12 -> :sswitch_1154
        0x13 -> :sswitch_1131
        0x14 -> :sswitch_1121
        0x15 -> :sswitch_110d
        0x16 -> :sswitch_10f5
        0x17 -> :sswitch_10e5
        0x18 -> :sswitch_10d5
        0x19 -> :sswitch_10c1
        0x1a -> :sswitch_10b1
        0x1b -> :sswitch_1099
        0x1c -> :sswitch_1081
        0x1d -> :sswitch_106d
        0x1e -> :sswitch_1061
        0x1f -> :sswitch_1051
        0x20 -> :sswitch_1041
        0x21 -> :sswitch_1031
        0x22 -> :sswitch_100e
        0x23 -> :sswitch_ffe
        0x24 -> :sswitch_ff2
        0x25 -> :sswitch_fe6
        0x26 -> :sswitch_fd6
        0x27 -> :sswitch_fc6
        0x28 -> :sswitch_fb6
        0x29 -> :sswitch_fa2
        0x2a -> :sswitch_f8e
        0x2b -> :sswitch_f6b
        0x2c -> :sswitch_f5b
        0x2d -> :sswitch_f4f
        0x2e -> :sswitch_f43
        0x2f -> :sswitch_f37
        0x30 -> :sswitch_f27
        0x31 -> :sswitch_f1b
        0x32 -> :sswitch_ef8
        0x33 -> :sswitch_ed5
        0x34 -> :sswitch_ec5
        0x35 -> :sswitch_eb5
        0x36 -> :sswitch_ea1
        0x37 -> :sswitch_e95
        0x38 -> :sswitch_e85
        0x39 -> :sswitch_e79
        0x3a -> :sswitch_e69
        0x3b -> :sswitch_e55
        0x3c -> :sswitch_e3d
        0x3d -> :sswitch_e31
        0x3e -> :sswitch_e21
        0x3f -> :sswitch_e09
        0x40 -> :sswitch_df5
        0x41 -> :sswitch_de5
        0x42 -> :sswitch_dd1
        0x43 -> :sswitch_dc5
        0x44 -> :sswitch_db9
        0x45 -> :sswitch_da5
        0x46 -> :sswitch_d91
        0x47 -> :sswitch_d7d
        0x48 -> :sswitch_d69
        0x49 -> :sswitch_d55
        0x4a -> :sswitch_d41
        0x4b -> :sswitch_d2d
        0x4c -> :sswitch_d19
        0x4d -> :sswitch_d09
        0x4e -> :sswitch_cf9
        0x4f -> :sswitch_ce9
        0x50 -> :sswitch_cdd
        0x51 -> :sswitch_cd1
        0x52 -> :sswitch_cc1
        0x53 -> :sswitch_cb5
        0x54 -> :sswitch_ca9
        0x55 -> :sswitch_c9d
        0x56 -> :sswitch_c89
        0x57 -> :sswitch_c79
        0x58 -> :sswitch_c4a
        0x59 -> :sswitch_c36
        0x5a -> :sswitch_c1e
        0x5b -> :sswitch_bf6
        0x5c -> :sswitch_bea
        0x5d -> :sswitch_bd6
        0x5e -> :sswitch_bca
        0x5f -> :sswitch_bba
        0x60 -> :sswitch_ba6
        0x61 -> :sswitch_b96
        0x62 -> :sswitch_b8a
        0x63 -> :sswitch_b7e
        0x64 -> :sswitch_b6a
        0x65 -> :sswitch_b56
        0x66 -> :sswitch_b42
        0x67 -> :sswitch_b32
        0x68 -> :sswitch_b22
        0x69 -> :sswitch_b12
        0x6a -> :sswitch_afe
        0x6b -> :sswitch_af2
        0x6c -> :sswitch_ada
        0x6d -> :sswitch_ace
        0x6e -> :sswitch_ac2
        0x6f -> :sswitch_ab6
        0x70 -> :sswitch_aaa
        0x71 -> :sswitch_a9e
        0x72 -> :sswitch_a86
        0x73 -> :sswitch_a7a
        0x74 -> :sswitch_a6a
        0x75 -> :sswitch_a3b
        0x76 -> :sswitch_a27
        0x77 -> :sswitch_a13
        0x78 -> :sswitch_9f0
        0x79 -> :sswitch_9e0
        0x7a -> :sswitch_9d0
        0x7b -> :sswitch_9ad
        0x7c -> :sswitch_99d
        0x7d -> :sswitch_98d
        0x7e -> :sswitch_97d
        0x7f -> :sswitch_96d
        0x80 -> :sswitch_961
        0x81 -> :sswitch_955
        0x82 -> :sswitch_93d
        0x83 -> :sswitch_925
        0x84 -> :sswitch_915
        0x85 -> :sswitch_905
        0x86 -> :sswitch_8ed
        0x87 -> :sswitch_8dd
        0x88 -> :sswitch_8d1
        0x89 -> :sswitch_8c1
        0x8a -> :sswitch_8b1
        0x8b -> :sswitch_8a1
        0x8c -> :sswitch_891
        0x8d -> :sswitch_879
        0x8e -> :sswitch_84a
        0x8f -> :sswitch_836
        0x90 -> :sswitch_7f2
        0x91 -> :sswitch_7da
        0x92 -> :sswitch_7ce
        0x93 -> :sswitch_77c
        0x94 -> :sswitch_76c
        0x95 -> :sswitch_73d
        0x96 -> :sswitch_725
        0x97 -> :sswitch_70d
        0x98 -> :sswitch_701
        0x99 -> :sswitch_6f1
        0x9a -> :sswitch_6ce
        0x9b -> :sswitch_6ba
        0x9c -> :sswitch_6a6
        0x9d -> :sswitch_696
        0x9e -> :sswitch_686
        0x9f -> :sswitch_676
        0xa0 -> :sswitch_666
        0xa1 -> :sswitch_65a
        0xa2 -> :sswitch_64a
        0xa3 -> :sswitch_63e
        0xa4 -> :sswitch_62e
        0xa5 -> :sswitch_61a
        0xa6 -> :sswitch_60a
        0xa7 -> :sswitch_5fa
        0xa8 -> :sswitch_5e6
        0xa9 -> :sswitch_5ce
        0xaa -> :sswitch_5b6
        0xab -> :sswitch_5a2
        0xac -> :sswitch_58e
        0xad -> :sswitch_57e
        0xae -> :sswitch_56a
        0xaf -> :sswitch_552
        0xb0 -> :sswitch_53e
        0xb1 -> :sswitch_52a
        0xb2 -> :sswitch_51e
        0xb3 -> :sswitch_516
        0xb4 -> :sswitch_502
        0xb5 -> :sswitch_4f2
        0xb6 -> :sswitch_4e6
        0xb7 -> :sswitch_4d6
        0xb8 -> :sswitch_4c6
        0xb9 -> :sswitch_4b6
        0xba -> :sswitch_4a6
        0xbb -> :sswitch_496
        0xbc -> :sswitch_486
        0xbd -> :sswitch_476
        0xbe -> :sswitch_466
        0xbf -> :sswitch_456
        0xc0 -> :sswitch_44a
        0xc1 -> :sswitch_427
        0xc2 -> :sswitch_40f
        0xc3 -> :sswitch_3f7
        0xc4 -> :sswitch_3e3
        0xc5 -> :sswitch_3cb
        0xc6 -> :sswitch_3bb
        0xc7 -> :sswitch_3a7
        0xc8 -> :sswitch_393
        0xc9 -> :sswitch_387
        0xca -> :sswitch_377
        0xcb -> :sswitch_359
        0xcc -> :sswitch_345
        0xcd -> :sswitch_335
        0xce -> :sswitch_31d
        0xcf -> :sswitch_309
        0xd0 -> :sswitch_2f9
        0xd1 -> :sswitch_2e5
        0xd2 -> :sswitch_2d1
        0xd3 -> :sswitch_2a9
        0xd4 -> :sswitch_265
        0xd5 -> :sswitch_253
        0xd6 -> :sswitch_247
        0xd7 -> :sswitch_237
        0xd8 -> :sswitch_223
        0xd9 -> :sswitch_20b
        0xda -> :sswitch_1fb
        0xdb -> :sswitch_1ef
        0xdc -> :sswitch_1e3
        0xdd -> :sswitch_1cf
        0xde -> :sswitch_1c3
        0xdf -> :sswitch_1b3
        0xe0 -> :sswitch_1a3
        0xe1 -> :sswitch_197
        0xe2 -> :sswitch_187
        0xe3 -> :sswitch_17b
        0xe4 -> :sswitch_16b
        0xe5 -> :sswitch_15f
        0xe6 -> :sswitch_153
        0xe7 -> :sswitch_143
        0xe8 -> :sswitch_137
        0xe9 -> :sswitch_123
        0xea -> :sswitch_113
        0xeb -> :sswitch_ff
        0xec -> :sswitch_ef
        0xed -> :sswitch_df
        0xee -> :sswitch_d3
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_44
        0xf494e54 -> :sswitch_3c
        0xf4c5444 -> :sswitch_3a
        0xf504e47 -> :sswitch_2c
        0xf524546 -> :sswitch_1a
        0xf535953 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 4903
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4931
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4932
    return-object p0

    .line 4934
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

    .line 4938
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->registerService(Ljava/lang/String;)V

    .line 4939
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 4893
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4925
    const/4 v0, 0x1

    return v0
.end method
