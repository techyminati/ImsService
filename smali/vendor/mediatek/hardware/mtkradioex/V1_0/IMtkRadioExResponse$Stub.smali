.class public abstract Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3529
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3532
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
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

    .line 3545
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3582
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3583
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3584
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3585
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3586
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 3557
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x3at
        0x31t
        -0x18t
        -0x77t
        -0x1ft
        -0x2t
        0x5t
        -0x1bt
        -0x32t
        -0x11t
        0x1ft
        -0x36t
        -0x31t
        0xet
        0x50t
        0x64t
        -0x14t
        0x5ct
        0x7ct
        0x45t
        0x8t
        -0x3dt
        -0x52t
        -0x50t
        -0xft
        -0x34t
        0x6ct
        0x24t
        -0x3at
        -0x5dt
        -0x59t
        0x47t
    .end array-data

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3537
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 3551
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3570
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 3592
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3594
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 21
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3622
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExResponse"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 5644
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 5645
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_104

    .line 5646
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5648
    goto/16 :goto_7

    .line 5631
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 5632
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 5633
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5635
    goto/16 :goto_7

    .line 5636
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5638
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->notifySyspropsChanged()V

    .line 5639
    goto/16 :goto_7

    .line 5615
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 5616
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 5617
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5619
    goto/16 :goto_7

    .line 5620
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5622
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5623
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5624
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5626
    goto/16 :goto_7

    .line 5600
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 5601
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 5602
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5604
    goto/16 :goto_7

    .line 5605
    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5607
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->ping()V

    .line 5608
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5610
    goto/16 :goto_7

    .line 5590
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 5591
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_104

    .line 5592
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5594
    goto/16 :goto_7

    .line 5577
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 5578
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 5579
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5581
    goto/16 :goto_7

    .line 5582
    :cond_9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5584
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setHALInstrumentation()V

    .line 5585
    goto/16 :goto_7

    .line 5538
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 5539
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 5540
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5542
    goto/16 :goto_7

    .line 5543
    :cond_b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5545
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5546
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5548
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5550
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5551
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5552
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5553
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5554
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 5556
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 5557
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5559
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 5563
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5564
    nop

    .line 5554
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5560
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5567
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5569
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5571
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5572
    goto/16 :goto_7

    .line 5522
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 5523
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 5524
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5526
    goto/16 :goto_7

    .line 5527
    :cond_f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5529
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5530
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5531
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5533
    goto/16 :goto_7

    .line 5505
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 5506
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 5507
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5509
    goto/16 :goto_7

    .line 5510
    :cond_11
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5513
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5514
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5515
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5517
    goto/16 :goto_7

    .line 5489
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 5490
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 5491
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5492
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5493
    goto/16 :goto_7

    .line 5494
    :cond_13
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5496
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5497
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5498
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5499
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5500
    goto/16 :goto_7

    .line 5473
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    move v2, v3

    .line 5474
    .local v2, "_hidl_is_oneway":Z
    :cond_14
    if-eq v2, v3, :cond_15

    .line 5475
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5477
    goto/16 :goto_7

    .line 5478
    :cond_15
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5480
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5481
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5483
    .local v1, "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getSuggestedPlmnListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5484
    goto/16 :goto_7

    .line 5458
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    move v2, v3

    .line 5459
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v2, v3, :cond_17

    .line 5460
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5462
    goto/16 :goto_7

    .line 5463
    :cond_17
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5465
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5466
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5467
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5468
    goto/16 :goto_7

    .line 5442
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    move v2, v3

    .line 5443
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v2, v3, :cond_19

    .line 5444
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5446
    goto/16 :goto_7

    .line 5447
    :cond_19
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5449
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5450
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5452
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getDsdaStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5453
    goto/16 :goto_7

    .line 5427
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    move v2, v3

    .line 5428
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v2, v3, :cond_1b

    .line 5429
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5431
    goto/16 :goto_7

    .line 5432
    :cond_1b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5434
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5435
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5436
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->enableDsdaIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5437
    goto/16 :goto_7

    .line 5412
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    move v2, v3

    .line 5413
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v2, v3, :cond_1d

    .line 5414
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5416
    goto/16 :goto_7

    .line 5417
    :cond_1d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5419
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5420
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5421
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5422
    goto/16 :goto_7

    .line 5397
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    move v2, v3

    .line 5398
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v2, v3, :cond_1f

    .line 5399
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5400
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5401
    goto/16 :goto_7

    .line 5402
    :cond_1f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5404
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5405
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5406
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5407
    goto/16 :goto_7

    .line 5382
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 5383
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v2, v3, :cond_21

    .line 5384
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5386
    goto/16 :goto_7

    .line 5387
    :cond_21
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5389
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5390
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5391
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5392
    goto/16 :goto_7

    .line 5367
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    move v2, v3

    .line 5368
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v2, v3, :cond_23

    .line 5369
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5371
    goto/16 :goto_7

    .line 5372
    :cond_23
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5374
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5375
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5376
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5377
    goto/16 :goto_7

    .line 5352
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24

    move v2, v3

    .line 5353
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v2, v3, :cond_25

    .line 5354
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5356
    goto/16 :goto_7

    .line 5357
    :cond_25
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5359
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5360
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5361
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5362
    goto/16 :goto_7

    .line 5337
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26

    move v2, v3

    .line 5338
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v2, v3, :cond_27

    .line 5339
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5341
    goto/16 :goto_7

    .line 5342
    :cond_27
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5344
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5345
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5346
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->enableCAPlusBandWidthFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5347
    goto/16 :goto_7

    .line 5321
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28

    move v2, v3

    .line 5322
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v2, v3, :cond_29

    .line 5323
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5324
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5325
    goto/16 :goto_7

    .line 5326
    :cond_29
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5328
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5329
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5331
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getPlmnNameFromSE13TableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5332
    goto/16 :goto_7

    .line 5306
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a

    move v2, v3

    .line 5307
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v2, v3, :cond_2b

    .line 5308
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5310
    goto/16 :goto_7

    .line 5311
    :cond_2b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5313
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5314
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5315
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5316
    goto/16 :goto_7

    .line 5291
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c

    move v2, v3

    .line 5292
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v2, v3, :cond_2d

    .line 5293
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5295
    goto/16 :goto_7

    .line 5296
    :cond_2d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5298
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5299
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5300
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5301
    goto/16 :goto_7

    .line 5275
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2e

    move v2, v3

    .line 5276
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v2, v3, :cond_2f

    .line 5277
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5279
    goto/16 :goto_7

    .line 5280
    :cond_2f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5282
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5283
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5285
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5286
    goto/16 :goto_7

    .line 5260
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_30

    move v2, v3

    .line 5261
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v2, v3, :cond_31

    .line 5262
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5264
    goto/16 :goto_7

    .line 5265
    :cond_31
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5267
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5268
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5269
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5270
    goto/16 :goto_7

    .line 5245
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_32

    move v2, v3

    .line 5246
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v2, v3, :cond_33

    .line 5247
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5249
    goto/16 :goto_7

    .line 5250
    :cond_33
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5252
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5253
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5254
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5255
    goto/16 :goto_7

    .line 5229
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_34

    move v2, v3

    .line 5230
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v2, v3, :cond_35

    .line 5231
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5233
    goto/16 :goto_7

    .line 5234
    :cond_35
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5236
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5237
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5239
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5240
    goto/16 :goto_7

    .line 5214
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_36

    move v2, v3

    .line 5215
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v2, v3, :cond_37

    .line 5216
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5217
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5218
    goto/16 :goto_7

    .line 5219
    :cond_37
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5221
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5222
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5223
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5224
    goto/16 :goto_7

    .line 5199
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_38

    move v2, v3

    .line 5200
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v2, v3, :cond_39

    .line 5201
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5203
    goto/16 :goto_7

    .line 5204
    :cond_39
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5206
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5207
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5208
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5209
    goto/16 :goto_7

    .line 5184
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3a

    move v2, v3

    .line 5185
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v2, v3, :cond_3b

    .line 5186
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5188
    goto/16 :goto_7

    .line 5189
    :cond_3b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5191
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5192
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5193
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5194
    goto/16 :goto_7

    .line 5169
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    move v2, v3

    .line 5170
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v2, v3, :cond_3d

    .line 5171
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5173
    goto/16 :goto_7

    .line 5174
    :cond_3d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5176
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5177
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5178
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5179
    goto/16 :goto_7

    .line 5153
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e

    move v2, v3

    .line 5154
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v2, v3, :cond_3f

    .line 5155
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5157
    goto/16 :goto_7

    .line 5158
    :cond_3f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5160
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5161
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5163
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5164
    goto/16 :goto_7

    .line 5138
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_40

    move v2, v3

    .line 5139
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v2, v3, :cond_41

    .line 5140
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5142
    goto/16 :goto_7

    .line 5143
    :cond_41
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5145
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5146
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5147
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5148
    goto/16 :goto_7

    .line 5123
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_42

    move v2, v3

    .line 5124
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_42
    if-eq v2, v3, :cond_43

    .line 5125
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5127
    goto/16 :goto_7

    .line 5128
    :cond_43
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5130
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5131
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5132
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setLteUplinkDataTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5133
    goto/16 :goto_7

    .line 5108
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_44

    move v2, v3

    .line 5109
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v2, v3, :cond_45

    .line 5110
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5112
    goto/16 :goto_7

    .line 5113
    :cond_45
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5115
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5116
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5117
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setLteAccessStratumReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5118
    goto/16 :goto_7

    .line 5093
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_46

    move v2, v3

    .line 5094
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v2, v3, :cond_47

    .line 5095
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5097
    goto/16 :goto_7

    .line 5098
    :cond_47
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5100
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5101
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5102
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5103
    goto/16 :goto_7

    .line 5078
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_48

    move v2, v3

    .line 5079
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_48
    if-eq v2, v3, :cond_49

    .line 5080
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5082
    goto/16 :goto_7

    .line 5083
    :cond_49
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5086
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5087
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5088
    goto/16 :goto_7

    .line 5063
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4a

    move v2, v3

    .line 5064
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v2, v3, :cond_4b

    .line 5065
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5066
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5067
    goto/16 :goto_7

    .line 5068
    :cond_4b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5070
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5071
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5072
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5073
    goto/16 :goto_7

    .line 5048
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4c

    move v2, v3

    .line 5049
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4c
    if-eq v2, v3, :cond_4d

    .line 5050
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5052
    goto/16 :goto_7

    .line 5053
    :cond_4d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5055
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5056
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5057
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5058
    goto/16 :goto_7

    .line 5033
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4e

    move v2, v3

    .line 5034
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v2, v3, :cond_4f

    .line 5035
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5037
    goto/16 :goto_7

    .line 5038
    :cond_4f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5041
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5042
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5043
    goto/16 :goto_7

    .line 5018
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_50

    move v2, v3

    .line 5019
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_50
    if-eq v2, v3, :cond_51

    .line 5020
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5022
    goto/16 :goto_7

    .line 5023
    :cond_51
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5025
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5026
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5027
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5028
    goto/16 :goto_7

    .line 5003
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_52

    move v2, v3

    .line 5004
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v2, v3, :cond_53

    .line 5005
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5006
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5007
    goto/16 :goto_7

    .line 5008
    :cond_53
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5010
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5011
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5012
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5013
    goto/16 :goto_7

    .line 4988
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_54

    move v2, v3

    .line 4989
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v2, v3, :cond_55

    .line 4990
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4991
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4992
    goto/16 :goto_7

    .line 4993
    :cond_55
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4995
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4996
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4997
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4998
    goto/16 :goto_7

    .line 4972
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_56

    move v2, v3

    .line 4973
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v2, v3, :cond_57

    .line 4974
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4976
    goto/16 :goto_7

    .line 4977
    :cond_57
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4979
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4980
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4982
    .local v1, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4983
    goto/16 :goto_7

    .line 4956
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_58

    move v2, v3

    .line 4957
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v2, v3, :cond_59

    .line 4958
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4959
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4960
    goto/16 :goto_7

    .line 4961
    :cond_59
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4963
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4964
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4966
    .local v1, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4967
    goto/16 :goto_7

    .line 4940
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5a

    move v2, v3

    .line 4941
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v2, v3, :cond_5b

    .line 4942
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4944
    goto/16 :goto_7

    .line 4945
    :cond_5b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4947
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4948
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4950
    .local v1, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4951
    goto/16 :goto_7

    .line 4924
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5c

    move v2, v3

    .line 4925
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v2, v3, :cond_5d

    .line 4926
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4928
    goto/16 :goto_7

    .line 4929
    :cond_5d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4932
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4934
    .local v1, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4935
    goto/16 :goto_7

    .line 4909
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    move v2, v3

    .line 4910
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v2, v3, :cond_5f

    .line 4911
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4913
    goto/16 :goto_7

    .line 4914
    :cond_5f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4919
    goto/16 :goto_7

    .line 4894
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_60

    move v2, v3

    .line 4895
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v2, v3, :cond_61

    .line 4896
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4898
    goto/16 :goto_7

    .line 4899
    :cond_61
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4901
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4902
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4903
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4904
    goto/16 :goto_7

    .line 4879
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_62

    move v2, v3

    .line 4880
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v2, v3, :cond_63

    .line 4881
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4882
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4883
    goto/16 :goto_7

    .line 4884
    :cond_63
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4886
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4887
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4888
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4889
    goto/16 :goto_7

    .line 4864
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_64

    move v2, v3

    .line 4865
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v2, v3, :cond_65

    .line 4866
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4868
    goto/16 :goto_7

    .line 4869
    :cond_65
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4871
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4872
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4873
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4874
    goto/16 :goto_7

    .line 4849
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_66

    move v2, v3

    .line 4850
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v2, v3, :cond_67

    .line 4851
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4853
    goto/16 :goto_7

    .line 4854
    :cond_67
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4856
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4857
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4858
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->disableNRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4859
    goto/16 :goto_7

    .line 4834
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_68

    move v2, v3

    .line 4835
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v2, v3, :cond_69

    .line 4836
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4838
    goto/16 :goto_7

    .line 4839
    :cond_69
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4841
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4842
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4843
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4844
    goto/16 :goto_7

    .line 4819
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6a

    move v2, v3

    .line 4820
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v2, v3, :cond_6b

    .line 4821
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4823
    goto/16 :goto_7

    .line 4824
    :cond_6b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4826
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4827
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4828
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4829
    goto/16 :goto_7

    .line 4804
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6c

    move v2, v3

    .line 4805
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v2, v3, :cond_6d

    .line 4806
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4808
    goto/16 :goto_7

    .line 4809
    :cond_6d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4811
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4812
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4813
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4814
    goto/16 :goto_7

    .line 4789
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6e

    move v2, v3

    .line 4790
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v2, v3, :cond_6f

    .line 4791
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4793
    goto/16 :goto_7

    .line 4794
    :cond_6f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4796
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4797
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4798
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4799
    goto/16 :goto_7

    .line 4774
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_70

    move v2, v3

    .line 4775
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v2, v3, :cond_71

    .line 4776
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4778
    goto/16 :goto_7

    .line 4779
    :cond_71
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4782
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4783
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4784
    goto/16 :goto_7

    .line 4758
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_72

    move v2, v3

    .line 4759
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v2, v3, :cond_73

    .line 4760
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4762
    goto/16 :goto_7

    .line 4763
    :cond_73
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4765
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4766
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4768
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4769
    goto/16 :goto_7

    .line 4743
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_74

    move v2, v3

    .line 4744
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v2, v3, :cond_75

    .line 4745
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4747
    goto/16 :goto_7

    .line 4748
    :cond_75
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4750
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4751
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4752
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4753
    goto/16 :goto_7

    .line 4728
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_76

    move v2, v3

    .line 4729
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v2, v3, :cond_77

    .line 4730
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4732
    goto/16 :goto_7

    .line 4733
    :cond_77
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4735
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4736
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4737
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4738
    goto/16 :goto_7

    .line 4712
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_78

    move v2, v3

    .line 4713
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_78
    if-eq v2, v3, :cond_79

    .line 4714
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4715
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4716
    goto/16 :goto_7

    .line 4717
    :cond_79
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4719
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4720
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4721
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4722
    .local v1, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4723
    goto/16 :goto_7

    .line 4697
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_33
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7a

    move v2, v3

    .line 4698
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v2, v3, :cond_7b

    .line 4699
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4701
    goto/16 :goto_7

    .line 4702
    :cond_7b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4704
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4705
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4706
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4707
    goto/16 :goto_7

    .line 4680
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7c

    move v2, v3

    .line 4681
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v2, v3, :cond_7d

    .line 4682
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4684
    goto/16 :goto_7

    .line 4685
    :cond_7d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4687
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4688
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4689
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 4690
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4691
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;)V

    .line 4692
    goto/16 :goto_7

    .line 4664
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7e

    move v2, v3

    .line 4665
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7e
    if-eq v2, v3, :cond_7f

    .line 4666
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4668
    goto/16 :goto_7

    .line 4669
    :cond_7f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4671
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4672
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4673
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4674
    .local v1, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4675
    goto/16 :goto_7

    .line 4649
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/OperatorInfoWithAct;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_36
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_80

    move v2, v3

    .line 4650
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_80
    if-eq v2, v3, :cond_81

    .line 4651
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4653
    goto/16 :goto_7

    .line 4654
    :cond_81
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4656
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4657
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4658
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4659
    goto/16 :goto_7

    .line 4632
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_82

    move v2, v3

    .line 4633
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_82
    if-eq v2, v3, :cond_83

    .line 4634
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4636
    goto/16 :goto_7

    .line 4637
    :cond_83
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4639
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4640
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4641
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;-><init>()V

    .line 4642
    .local v1, "memStatus":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4643
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;)V

    .line 4644
    goto/16 :goto_7

    .line 4616
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "memStatus":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_84

    move v2, v3

    .line 4617
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v2, v3, :cond_85

    .line 4618
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4619
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4620
    goto/16 :goto_7

    .line 4621
    :cond_85
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4623
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4624
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4626
    .local v1, "applyType":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4627
    goto/16 :goto_7

    .line 4601
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "applyType":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_86

    move v2, v3

    .line 4602
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_86
    if-eq v2, v3, :cond_87

    .line 4603
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4605
    goto/16 :goto_7

    .line 4606
    :cond_87
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4608
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4609
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4610
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4611
    goto/16 :goto_7

    .line 4585
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_88

    move v2, v3

    .line 4586
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v2, v3, :cond_89

    .line 4587
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4589
    goto/16 :goto_7

    .line 4590
    :cond_89
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4592
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4593
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4595
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4596
    goto/16 :goto_7

    .line 4569
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8a

    move v2, v3

    .line 4570
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v2, v3, :cond_8b

    .line 4571
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4573
    goto/16 :goto_7

    .line 4574
    :cond_8b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4576
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4577
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4579
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4580
    goto/16 :goto_7

    .line 4553
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 4554
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_8d

    .line 4555
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4557
    goto/16 :goto_7

    .line 4558
    :cond_8d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4560
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4561
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4563
    .local v1, "active":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4564
    goto/16 :goto_7

    .line 4537
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "active":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8e

    move v2, v3

    .line 4538
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v2, v3, :cond_8f

    .line 4539
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4541
    goto/16 :goto_7

    .line 4542
    :cond_8f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4545
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4547
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4548
    goto/16 :goto_7

    .line 4522
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "langs":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_90

    move v2, v3

    .line 4523
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v2, v3, :cond_91

    .line 4524
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4526
    goto/16 :goto_7

    .line 4527
    :cond_91
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4529
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4530
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4531
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4532
    goto/16 :goto_7

    .line 4507
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_92

    move v2, v3

    .line 4508
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v2, v3, :cond_93

    .line 4509
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4511
    goto/16 :goto_7

    .line 4512
    :cond_93
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4515
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4516
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4517
    goto/16 :goto_7

    .line 4492
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_40
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_94

    move v2, v3

    .line 4493
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v2, v3, :cond_95

    .line 4494
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4496
    goto/16 :goto_7

    .line 4497
    :cond_95
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4499
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4500
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4501
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4502
    goto/16 :goto_7

    .line 4475
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_41
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_96

    move v2, v3

    .line 4476
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_96
    if-eq v2, v3, :cond_97

    .line 4477
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4479
    goto/16 :goto_7

    .line 4480
    :cond_97
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4482
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4483
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4484
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;-><init>()V

    .line 4485
    .local v1, "status":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4486
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;)V

    .line 4487
    goto/16 :goto_7

    .line 4460
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsMemStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_42
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_98

    move v2, v3

    .line 4461
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_98
    if-eq v2, v3, :cond_99

    .line 4462
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4464
    goto/16 :goto_7

    .line 4465
    :cond_99
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4467
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4468
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4469
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4470
    goto/16 :goto_7

    .line 4443
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_43
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9a

    move v2, v3

    .line 4444
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_9a
    if-eq v2, v3, :cond_9b

    .line 4445
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4447
    goto/16 :goto_7

    .line 4448
    :cond_9b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4450
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4451
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4452
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;-><init>()V

    .line 4453
    .local v1, "param":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4454
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;)V

    .line 4455
    goto/16 :goto_7

    .line 4428
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "param":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_44
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9c

    move v2, v3

    .line 4429
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_9c
    if-eq v2, v3, :cond_9d

    .line 4430
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4432
    goto/16 :goto_7

    .line 4433
    :cond_9d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4435
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4436
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4437
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4438
    goto/16 :goto_7

    .line 4411
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_45
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9e

    move v2, v3

    .line 4412
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_9e
    if-eq v2, v3, :cond_9f

    .line 4413
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4414
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4415
    goto/16 :goto_7

    .line 4416
    :cond_9f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4418
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4419
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4420
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimEvent;-><init>()V

    .line 4421
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimEvent;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4422
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimEvent;)V

    .line 4423
    goto/16 :goto_7

    .line 4395
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimEvent;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a0

    move v2, v3

    .line 4396
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a0
    if-eq v2, v3, :cond_a1

    .line 4397
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4399
    goto/16 :goto_7

    .line 4400
    :cond_a1
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4402
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4403
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4405
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4406
    goto/16 :goto_7

    .line 4380
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_47
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a2

    move v2, v3

    .line 4381
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a2
    if-eq v2, v3, :cond_a3

    .line 4382
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4383
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4384
    goto/16 :goto_7

    .line 4385
    :cond_a3
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4387
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4388
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4389
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4390
    goto/16 :goto_7

    .line 4358
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a4

    move v2, v3

    :cond_a4
    move v12, v2

    .line 4359
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v3, :cond_a5

    .line 4360
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4362
    goto/16 :goto_7

    .line 4363
    :cond_a5
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4365
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v13, v0

    .line 4366
    .local v13, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v13, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4368
    .local v14, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4369
    .local v15, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 4370
    .local v16, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 4371
    .local v17, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 4372
    .local v18, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 4373
    .local v19, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 4374
    .local v20, "key_state":I
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 4375
    goto/16 :goto_7

    .line 4342
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v14    # "catagory":I
    .end local v15    # "state":I
    .end local v16    # "retry_cnt":I
    .end local v17    # "autolock_cnt":I
    .end local v18    # "num_set":I
    .end local v19    # "total_set":I
    .end local v20    # "key_state":I
    :pswitch_49
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a6

    move v2, v3

    .line 4343
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a6
    if-eq v2, v3, :cond_a7

    .line 4344
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4346
    goto/16 :goto_7

    .line 4347
    :cond_a7
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4349
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4350
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4352
    .local v1, "simPowerOnOffStatus":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4353
    goto/16 :goto_7

    .line 4326
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffStatus":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a8

    move v2, v3

    .line 4327
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a8
    if-eq v2, v3, :cond_a9

    .line 4328
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4330
    goto/16 :goto_7

    .line 4331
    :cond_a9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4333
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4334
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4336
    .local v1, "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4337
    goto/16 :goto_7

    .line 4310
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_aa

    move v2, v3

    .line 4311
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_aa
    if-eq v2, v3, :cond_ab

    .line 4312
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4314
    goto/16 :goto_7

    .line 4315
    :cond_ab
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4317
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4318
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4320
    .restart local v1    # "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4321
    goto/16 :goto_7

    .line 4295
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ac

    move v2, v3

    .line 4296
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ac
    if-eq v2, v3, :cond_ad

    .line 4297
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4299
    goto/16 :goto_7

    .line 4300
    :cond_ad
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4302
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4303
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4304
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4305
    goto/16 :goto_7

    .line 4279
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ae

    move v2, v3

    .line 4280
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ae
    if-eq v2, v3, :cond_af

    .line 4281
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4283
    goto/16 :goto_7

    .line 4284
    :cond_af
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4286
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4287
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4289
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4290
    goto/16 :goto_7

    .line 4263
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b0

    move v2, v3

    .line 4264
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b0
    if-eq v2, v3, :cond_b1

    .line 4265
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4267
    goto/16 :goto_7

    .line 4268
    :cond_b1
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4270
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4271
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4273
    .restart local v1    # "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4274
    goto/16 :goto_7

    .line 4248
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b2

    move v2, v3

    .line 4249
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b2
    if-eq v2, v3, :cond_b3

    .line 4250
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4252
    goto/16 :goto_7

    .line 4253
    :cond_b3
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4256
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4257
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4258
    goto/16 :goto_7

    .line 4233
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_50
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b4

    move v2, v3

    .line 4234
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b4
    if-eq v2, v3, :cond_b5

    .line 4235
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4237
    goto/16 :goto_7

    .line 4238
    :cond_b5
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4240
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4241
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4242
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4243
    goto/16 :goto_7

    .line 4218
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_51
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b6

    move v2, v3

    .line 4219
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b6
    if-eq v2, v3, :cond_b7

    .line 4220
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4222
    goto/16 :goto_7

    .line 4223
    :cond_b7
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4226
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4227
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4228
    goto/16 :goto_7

    .line 4203
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_52
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b8

    move v2, v3

    .line 4204
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b8
    if-eq v2, v3, :cond_b9

    .line 4205
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4207
    goto/16 :goto_7

    .line 4208
    :cond_b9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4210
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4211
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4212
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4213
    goto/16 :goto_7

    .line 4188
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_53
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ba

    move v2, v3

    .line 4189
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ba
    if-eq v2, v3, :cond_bb

    .line 4190
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4192
    goto/16 :goto_7

    .line 4193
    :cond_bb
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4196
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4197
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4198
    goto/16 :goto_7

    .line 4173
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_54
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_bc

    move v2, v3

    .line 4174
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_bc
    if-eq v2, v3, :cond_bd

    .line 4175
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4177
    goto/16 :goto_7

    .line 4178
    :cond_bd
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4180
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4181
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4182
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4183
    goto/16 :goto_7

    .line 4158
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_55
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_be

    move v2, v3

    .line 4159
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_be
    if-eq v2, v3, :cond_bf

    .line 4160
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4162
    goto/16 :goto_7

    .line 4163
    :cond_bf
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4165
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4166
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4167
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4168
    goto/16 :goto_7

    .line 4143
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_56
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c0

    move v2, v3

    .line 4144
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c0
    if-eq v2, v3, :cond_c1

    .line 4145
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4147
    goto/16 :goto_7

    .line 4148
    :cond_c1
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4150
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4151
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4152
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4153
    goto/16 :goto_7

    .line 4128
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_57
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c2

    move v2, v3

    .line 4129
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v2, v3, :cond_c3

    .line 4130
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4132
    goto/16 :goto_7

    .line 4133
    :cond_c3
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4135
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4136
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4137
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4138
    goto/16 :goto_7

    .line 4112
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_58
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c4

    move v2, v3

    .line 4113
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c4
    if-eq v2, v3, :cond_c5

    .line 4114
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4116
    goto/16 :goto_7

    .line 4117
    :cond_c5
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4119
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4120
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4122
    .local v1, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4123
    goto/16 :goto_7

    .line 4097
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c6

    move v2, v3

    .line 4098
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c6
    if-eq v2, v3, :cond_c7

    .line 4099
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4101
    goto/16 :goto_7

    .line 4102
    :cond_c7
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4104
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4105
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4106
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4107
    goto/16 :goto_7

    .line 4081
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c8

    move v2, v3

    .line 4082
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c8
    if-eq v2, v3, :cond_c9

    .line 4083
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4085
    goto/16 :goto_7

    .line 4086
    :cond_c9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4089
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4090
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4091
    .local v1, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4092
    goto/16 :goto_7

    .line 4066
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ca

    move v2, v3

    .line 4067
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ca
    if-eq v2, v3, :cond_cb

    .line 4068
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4070
    goto/16 :goto_7

    .line 4071
    :cond_cb
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4073
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4074
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4075
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4076
    goto/16 :goto_7

    .line 4051
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_cc

    move v2, v3

    .line 4052
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_cc
    if-eq v2, v3, :cond_cd

    .line 4053
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4054
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4055
    goto/16 :goto_7

    .line 4056
    :cond_cd
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4058
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4059
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4060
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4061
    goto/16 :goto_7

    .line 4034
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ce

    move v2, v3

    .line 4035
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ce
    if-eq v2, v3, :cond_cf

    .line 4036
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4037
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4038
    goto/16 :goto_7

    .line 4039
    :cond_cf
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4041
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4042
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4044
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4045
    .local v3, "m":I
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4046
    goto/16 :goto_7

    .line 4018
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "m":I
    :pswitch_5e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d0

    move v2, v3

    .line 4019
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d0
    if-eq v2, v3, :cond_d1

    .line 4020
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4022
    goto/16 :goto_7

    .line 4023
    :cond_d1
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4025
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4026
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4028
    .restart local v1    # "n":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4029
    goto/16 :goto_7

    .line 4001
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d2

    move v2, v3

    .line 4002
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d2
    if-eq v2, v3, :cond_d3

    .line 4003
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4005
    goto/16 :goto_7

    .line 4006
    :cond_d3
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4009
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4011
    .restart local v1    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4012
    .restart local v3    # "m":I
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4013
    goto/16 :goto_7

    .line 3986
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "m":I
    :pswitch_60
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d4

    move v2, v3

    .line 3987
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d4
    if-eq v2, v3, :cond_d5

    .line 3988
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3989
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3990
    goto/16 :goto_7

    .line 3991
    :cond_d5
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3993
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3994
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3995
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3996
    goto/16 :goto_7

    .line 3971
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_61
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d6

    move v2, v3

    .line 3972
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d6
    if-eq v2, v3, :cond_d7

    .line 3973
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3975
    goto/16 :goto_7

    .line 3976
    :cond_d7
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3978
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3979
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3980
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3981
    goto/16 :goto_7

    .line 3955
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_62
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d8

    move v2, v3

    .line 3956
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d8
    if-eq v2, v3, :cond_d9

    .line 3957
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3958
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3959
    goto/16 :goto_7

    .line 3960
    :cond_d9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3962
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3963
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3965
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3966
    goto/16 :goto_7

    .line 3939
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_63
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_da

    move v2, v3

    .line 3940
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_da
    if-eq v2, v3, :cond_db

    .line 3941
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3942
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3943
    goto/16 :goto_7

    .line 3944
    :cond_db
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3946
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3947
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3948
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3949
    .local v1, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3950
    goto/16 :goto_7

    .line 3923
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_64
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_dc

    move v2, v3

    .line 3924
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_dc
    if-eq v2, v3, :cond_dd

    .line 3925
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3927
    goto/16 :goto_7

    .line 3928
    :cond_dd
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3930
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3931
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3933
    .local v1, "sne":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3934
    goto/16 :goto_7

    .line 3907
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sne":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_65
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_de

    move v2, v3

    .line 3908
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_de
    if-eq v2, v3, :cond_df

    .line 3909
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3910
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3911
    goto/16 :goto_7

    .line 3912
    :cond_df
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3914
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3915
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3917
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3918
    goto/16 :goto_7

    .line 3891
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_66
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e0

    move v2, v3

    .line 3892
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e0
    if-eq v2, v3, :cond_e1

    .line 3893
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3895
    goto/16 :goto_7

    .line 3896
    :cond_e1
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3898
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3899
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3901
    .local v1, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3902
    goto/16 :goto_7

    .line 3876
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_67
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e2

    move v2, v3

    .line 3877
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e2
    if-eq v2, v3, :cond_e3

    .line 3878
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3880
    goto/16 :goto_7

    .line 3881
    :cond_e3
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3883
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3884
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3885
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3886
    goto/16 :goto_7

    .line 3860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_68
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e4

    move v2, v3

    .line 3861
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e4
    if-eq v2, v3, :cond_e5

    .line 3862
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3864
    goto/16 :goto_7

    .line 3865
    :cond_e5
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3867
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3868
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3869
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3870
    .local v1, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3871
    goto/16 :goto_7

    .line 3845
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_69
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e6

    move v2, v3

    .line 3846
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e6
    if-eq v2, v3, :cond_e7

    .line 3847
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3849
    goto/16 :goto_7

    .line 3850
    :cond_e7
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3852
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3853
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3854
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3855
    goto/16 :goto_7

    .line 3828
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e8

    move v2, v3

    .line 3829
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e8
    if-eq v2, v3, :cond_e9

    .line 3830
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3832
    goto/16 :goto_7

    .line 3833
    :cond_e9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3835
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3836
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3837
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbMemStorageResponse;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbMemStorageResponse;-><init>()V

    .line 3838
    .local v1, "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbMemStorageResponse;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3839
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbMemStorageResponse;)V

    .line 3840
    goto/16 :goto_7

    .line 3812
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbMemStorageResponse;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ea

    move v2, v3

    .line 3813
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ea
    if-eq v2, v3, :cond_eb

    .line 3814
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3816
    goto/16 :goto_7

    .line 3817
    :cond_eb
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3819
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3820
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3822
    .local v1, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3823
    goto/16 :goto_7

    .line 3797
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ec

    move v2, v3

    .line 3798
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ec
    if-eq v2, v3, :cond_ed

    .line 3799
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3801
    goto/16 :goto_7

    .line 3802
    :cond_ed
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3804
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3805
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3806
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3807
    goto/16 :goto_7

    .line 3781
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ee

    move v2, v3

    .line 3782
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ee
    if-eq v2, v3, :cond_ef

    .line 3783
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3785
    goto/16 :goto_7

    .line 3786
    :cond_ef
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3789
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3791
    .local v1, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3792
    goto/16 :goto_7

    .line 3765
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f0

    move v2, v3

    .line 3766
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f0
    if-eq v2, v3, :cond_f1

    .line 3767
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3769
    goto/16 :goto_7

    .line 3770
    :cond_f1
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3772
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3773
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3775
    .local v1, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3776
    goto/16 :goto_7

    .line 3750
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f2

    move v2, v3

    .line 3751
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f2
    if-eq v2, v3, :cond_f3

    .line 3752
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3754
    goto/16 :goto_7

    .line 3755
    :cond_f3
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3758
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3759
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3760
    goto/16 :goto_7

    .line 3735
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_70
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f4

    move v2, v3

    .line 3736
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f4
    if-eq v2, v3, :cond_f5

    .line 3737
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3739
    goto/16 :goto_7

    .line 3740
    :cond_f5
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3742
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3743
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3744
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3745
    goto/16 :goto_7

    .line 3719
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_71
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f6

    move v2, v3

    .line 3720
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f6
    if-eq v2, v3, :cond_f7

    .line 3721
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3723
    goto/16 :goto_7

    .line 3724
    :cond_f7
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3727
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3729
    .local v1, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3730
    goto/16 :goto_7

    .line 3703
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_72
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f8

    move v2, v3

    .line 3704
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v2, v3, :cond_f9

    .line 3705
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3707
    goto/16 :goto_7

    .line 3708
    :cond_f9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3710
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3711
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3712
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3713
    .local v1, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3714
    goto/16 :goto_7

    .line 3688
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_73
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_fa

    move v2, v3

    .line 3689
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_fa
    if-eq v2, v3, :cond_fb

    .line 3690
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3692
    goto/16 :goto_7

    .line 3693
    :cond_fb
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3695
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3696
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3697
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3698
    goto/16 :goto_7

    .line 3672
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_74
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_fc

    move v2, v3

    .line 3673
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_fc
    if-eq v2, v3, :cond_fd

    .line 3674
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3676
    goto/16 :goto_7

    .line 3677
    :cond_fd
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3679
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3680
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3682
    .local v1, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3683
    goto :goto_7

    .line 3656
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_75
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_fe

    move v2, v3

    .line 3657
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_fe
    if-eq v2, v3, :cond_ff

    .line 3658
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3659
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3660
    goto :goto_7

    .line 3661
    :cond_ff
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3663
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3664
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3666
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3667
    goto :goto_7

    .line 3641
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_76
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_100

    move v2, v3

    .line 3642
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_100
    if-eq v2, v3, :cond_101

    .line 3643
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3645
    goto :goto_7

    .line 3646
    :cond_101
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3648
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3649
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3650
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3651
    goto :goto_7

    .line 3625
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_77
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_102

    move v2, v3

    .line 3626
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_102
    if-eq v2, v3, :cond_103

    .line 3627
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3629
    goto :goto_7

    .line 3630
    :cond_103
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3632
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3633
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3635
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3636
    nop

    .line 5653
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_104
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 3576
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3604
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3605
    return-object p0

    .line 3607
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3611
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3612
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 3566
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 3598
    const/4 v0, 0x1

    return v0
.end method
