.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2961
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2964
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

    .line 2979
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 3018
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3019
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3020
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3021
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3022
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

    .line 2991
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
        0x23t
        -0x35t
        0x2ct
        -0x71t
        0x19t
        -0x57t
        0x7ft
        0x64t
        0x51t
        0x5bt
        0x1at
        0x2ct
        0x62t
        0x6at
        -0x79t
        0x21t
        0x78t
        0x43t
        0x75t
        -0x1ct
        -0x6t
        -0x60t
        0x64t
        -0x8t
        -0x3ft
        -0x23t
        -0x77t
        -0x47t
        0x6at
        0x10t
        -0x37t
        -0x46t
    .end array-data

    :array_44
    .array-data 1
        -0x22t
        -0x6dt
        -0x5at
        -0x9t
        0x20t
        0x3t
        0x6ct
        -0x40t
        -0x1dt
        -0x77t
        0x60t
        0x3ft
        0x27t
        -0x21t
        0x6ct
        -0x2et
        0x6ft
        -0x19t
        0x6dt
        0x41t
        -0x6ft
        0x45t
        -0x38t
        0x4bt
        0x26t
        -0x45t
        -0x1et
        0x37t
        0x5t
        0x39t
        -0x3t
        0x52t
    .end array-data

    :array_58
    .array-data 1
        -0x4dt
        -0x60t
        0x27t
        0x11t
        -0x50t
        -0x34t
        0x10t
        -0x60t
        0x2dt
        0x2bt
        0x1bt
        -0x66t
        0x19t
        0x57t
        -0x58t
        -0x55t
        0x61t
        0x10t
        0x54t
        -0x6ct
        0x36t
        0x6bt
        -0x1dt
        -0x35t
        0x55t
        0x7ct
        -0x14t
        0x1ft
        -0x8t
        -0x63t
        -0x7dt
        -0x70t
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

    .line 2969
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioExResponse"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExResponse"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExResponse"

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

    .line 2985
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioExResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3006
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 3028
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3030
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

    .line 3058
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExResponse"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExResponse"

    sparse-switch p1, :sswitch_data_be6

    goto/16 :goto_be5

    .line 4793
    :sswitch_12
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4795
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->notifySyspropsChanged()V

    .line 4796
    goto/16 :goto_be5

    .line 4782
    :sswitch_1a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4784
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 4785
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4786
    invoke-virtual {v1, v11}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4788
    goto/16 :goto_be5

    .line 4772
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2c
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4774
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->ping()V

    .line 4775
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4777
    goto/16 :goto_be5

    .line 4767
    :sswitch_3a
    goto/16 :goto_be5

    .line 4759
    :sswitch_3c
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4761
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setHALInstrumentation()V

    .line 4762
    goto/16 :goto_be5

    .line 4725
    :sswitch_44
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4727
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4728
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4730
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4732
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4733
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4734
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4735
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4736
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_6b
    if-ge v4, v3, :cond_8c

    .line 4738
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 4739
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 4741
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_84

    array-length v8, v7

    const/16 v12, 0x20

    if-ne v8, v12, :cond_84

    .line 4745
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4746
    nop

    .line 4736
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 4742
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_84
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4749
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8c
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4751
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4753
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4754
    goto/16 :goto_be5

    .line 4714
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_99
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4716
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 4717
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4718
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4720
    goto/16 :goto_be5

    .line 4702
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_ab
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 4705
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4706
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4707
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4709
    goto/16 :goto_be5

    .line 4691
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c1
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4693
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4694
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4695
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4697
    goto/16 :goto_be5

    .line 4680
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d3
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioExResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4682
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4683
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4685
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getEngineeringModeInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4686
    goto/16 :goto_be5

    .line 4669
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_e9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4671
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4672
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4674
    .local v1, "duration":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4675
    goto/16 :goto_be5

    .line 4659
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "duration":I
    :sswitch_fd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4661
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4662
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4663
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4664
    goto/16 :goto_be5

    .line 4647
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_10d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4649
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4650
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4652
    .local v1, "fddOrTdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4653
    .local v2, "enabled":Z
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V

    .line 4654
    goto/16 :goto_be5

    .line 4637
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "fddOrTdd":Z
    .end local v2    # "enabled":Z
    :sswitch_125
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4639
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4640
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4641
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4642
    goto/16 :goto_be5

    .line 4625
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_135
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4627
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4628
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4629
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4630
    .local v1, "ulOrDl":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4631
    .restart local v2    # "enabled":Z
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V

    .line 4632
    goto/16 :goto_be5

    .line 4615
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "ulOrDl":Z
    .end local v2    # "enabled":Z
    :sswitch_14d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4617
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4618
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4619
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4620
    goto/16 :goto_be5

    .line 4604
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_15d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4606
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4607
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4609
    .local v1, "femto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getCampedFemtoCellInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4610
    goto/16 :goto_be5

    .line 4593
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "femto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_171
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4595
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4596
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4598
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getCaBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4599
    goto/16 :goto_be5

    .line 4582
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_185
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4584
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4585
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4586
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4587
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4588
    goto/16 :goto_be5

    .line 4572
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_199
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4574
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4575
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4576
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->clearLteAvailableFileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4577
    goto/16 :goto_be5

    .line 4561
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1a9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4563
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4564
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4565
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/Lte1xRttCellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4566
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_4/Lte1xRttCellInfo;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getLte1xRttCellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4567
    goto/16 :goto_be5

    .line 4550
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_4/Lte1xRttCellInfo;>;"
    :sswitch_1bd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4552
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4553
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4555
    .local v1, "timer":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4556
    goto/16 :goto_be5

    .line 4540
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "timer":I
    :sswitch_1d1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4542
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4543
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4544
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4545
    goto/16 :goto_be5

    .line 4529
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4531
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4532
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4534
    .local v1, "enabled_bitmask":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->get4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4535
    goto/16 :goto_be5

    .line 4519
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enabled_bitmask":I
    :sswitch_1f5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4521
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4522
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4523
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->set4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4524
    goto/16 :goto_be5

    .line 4509
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_205
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4511
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4512
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4513
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4514
    goto/16 :goto_be5

    .line 4498
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_215
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4500
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4501
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4503
    .local v1, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4504
    goto/16 :goto_be5

    .line 4488
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_229
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4490
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4491
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4492
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setLteBandEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4493
    goto/16 :goto_be5

    .line 4477
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_239
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4479
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4480
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4482
    .local v1, "state":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getLteRRCStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4483
    goto/16 :goto_be5

    .line 4465
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "state":I
    :sswitch_24d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4467
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4468
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4469
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;-><init>()V

    .line 4470
    .local v1, "data":Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4471
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getLteDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;)V

    .line 4472
    goto/16 :goto_be5

    .line 4454
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;
    :sswitch_265
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4456
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4457
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4459
    .local v1, "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getCALinkCapabilityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4460
    goto/16 :goto_be5

    .line 4444
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_279
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4446
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4447
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4448
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4449
    goto/16 :goto_be5

    .line 4433
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_289
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4435
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4436
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4438
    .local v1, "status":Z
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4439
    goto/16 :goto_be5

    .line 4423
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Z
    :sswitch_29d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4425
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4426
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4427
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->disableAllCALinksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4428
    goto/16 :goto_be5

    .line 4410
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2ad
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4412
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4413
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4415
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4416
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4417
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getTOEInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4418
    goto/16 :goto_be5

    .line 4400
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_2c9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4402
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4403
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4404
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4405
    goto/16 :goto_be5

    .line 4390
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4392
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4393
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4394
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4395
    goto/16 :goto_be5

    .line 4380
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2e9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4382
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4383
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4384
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4385
    goto/16 :goto_be5

    .line 4368
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2f9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4370
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4371
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4372
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;-><init>()V

    .line 4373
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4374
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;)V

    .line 4375
    goto/16 :goto_be5

    .line 4358
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;
    :sswitch_311
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4360
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4361
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4362
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4363
    goto/16 :goto_be5

    .line 4348
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_321
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4350
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4351
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4352
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setMaxUlSpeedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4353
    goto/16 :goto_be5

    .line 4336
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_331
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4338
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4339
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4341
    .local v1, "deactivate":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4342
    .local v2, "allowSCGAdd":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4343
    goto/16 :goto_be5

    .line 4326
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "deactivate":I
    .end local v2    # "allowSCGAdd":I
    :sswitch_349
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4328
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4329
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4330
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4331
    goto/16 :goto_be5

    .line 4315
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_359
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4317
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4318
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4320
    .local v1, "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getSuggestedPlmnListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4321
    goto/16 :goto_be5

    .line 4305
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_36d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4307
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4308
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4309
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4310
    goto/16 :goto_be5

    .line 4294
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_37d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4296
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4297
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4299
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getDsdaStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4300
    goto/16 :goto_be5

    .line 4284
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_391
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4286
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4287
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4288
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->enableDsdaIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4289
    goto/16 :goto_be5

    .line 4274
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4276
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4277
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4278
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4279
    goto/16 :goto_be5

    .line 4264
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4267
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4268
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4269
    goto/16 :goto_be5

    .line 4254
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3c1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4256
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4257
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4258
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4259
    goto/16 :goto_be5

    .line 4244
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3d1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4246
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4247
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4248
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4249
    goto/16 :goto_be5

    .line 4234
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4236
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4237
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4238
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4239
    goto/16 :goto_be5

    .line 4224
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3f1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4226
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4227
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4228
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->enableCAPlusBandWidthFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4229
    goto/16 :goto_be5

    .line 4213
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_401
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4215
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4216
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4218
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getPlmnNameFromSE13TableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4219
    goto/16 :goto_be5

    .line 4203
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "name":Ljava/lang/String;
    :sswitch_415
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4206
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4207
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4208
    goto/16 :goto_be5

    .line 4193
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_425
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4196
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4197
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4198
    goto/16 :goto_be5

    .line 4182
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_435
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4185
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4187
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4188
    goto/16 :goto_be5

    .line 4172
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_449
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4174
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4175
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4176
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4177
    goto/16 :goto_be5

    .line 4162
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_459
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4164
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4165
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4166
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4167
    goto/16 :goto_be5

    .line 4151
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_469
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4153
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4154
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4156
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4157
    goto/16 :goto_be5

    .line 4141
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_47d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4143
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4144
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4145
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4146
    goto/16 :goto_be5

    .line 4131
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_48d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4133
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4134
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4135
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4136
    goto/16 :goto_be5

    .line 4121
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_49d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4123
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4124
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4125
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4126
    goto/16 :goto_be5

    .line 4111
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4ad
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4113
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4114
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4115
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4116
    goto/16 :goto_be5

    .line 4100
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4bd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4102
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4103
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4105
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4106
    goto/16 :goto_be5

    .line 4090
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_4d1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4092
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4093
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4094
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4095
    goto/16 :goto_be5

    .line 4080
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4e1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4082
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4083
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4084
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4085
    goto/16 :goto_be5

    .line 4070
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4f1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4072
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4073
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4074
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4075
    goto/16 :goto_be5

    .line 4060
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_501
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4062
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4063
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4064
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4065
    goto/16 :goto_be5

    .line 4050
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_511
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4052
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4053
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4054
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4055
    goto/16 :goto_be5

    .line 4040
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_521
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4042
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4043
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4044
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4045
    goto/16 :goto_be5

    .line 4030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_531
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4034
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4035
    goto/16 :goto_be5

    .line 4020
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_541
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4022
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4023
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4024
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4025
    goto/16 :goto_be5

    .line 4010
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_551
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4012
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4013
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4014
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4015
    goto/16 :goto_be5

    .line 3999
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_561
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4001
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4002
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4004
    .local v1, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4005
    goto/16 :goto_be5

    .line 3988
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_575
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3990
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3991
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3993
    .local v1, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3994
    goto/16 :goto_be5

    .line 3977
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_589
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3979
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3980
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3982
    .local v1, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3983
    goto/16 :goto_be5

    .line 3966
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_59d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3968
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3969
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3971
    .local v1, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3972
    goto/16 :goto_be5

    .line 3956
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_5b1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3958
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3959
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3960
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3961
    goto/16 :goto_be5

    .line 3946
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5c1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3948
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3949
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3950
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3951
    goto/16 :goto_be5

    .line 3936
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5d1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3938
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3939
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3940
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3941
    goto/16 :goto_be5

    .line 3926
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5e1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3928
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3929
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3930
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3931
    goto/16 :goto_be5

    .line 3916
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5f1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3918
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3919
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3920
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->disableNRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3921
    goto/16 :goto_be5

    .line 3906
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_601
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3908
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3909
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3910
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3911
    goto/16 :goto_be5

    .line 3896
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_611
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3898
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3899
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3900
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3901
    goto/16 :goto_be5

    .line 3886
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_621
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3888
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3889
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3890
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3891
    goto/16 :goto_be5

    .line 3876
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_631
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3878
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3879
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3880
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3881
    goto/16 :goto_be5

    .line 3866
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_641
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3868
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3869
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3870
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3871
    goto/16 :goto_be5

    .line 3855
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_651
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3857
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3858
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3860
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3861
    goto/16 :goto_be5

    .line 3845
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_665
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3847
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3848
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3849
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3850
    goto/16 :goto_be5

    .line 3835
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_675
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3837
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3838
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3839
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3840
    goto/16 :goto_be5

    .line 3824
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_685
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3826
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3827
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3829
    .local v1, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3830
    goto/16 :goto_be5

    .line 3814
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_699
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3816
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3817
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3818
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3819
    goto/16 :goto_be5

    .line 3802
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6a9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3804
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3805
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3806
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 3807
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3808
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V

    .line 3809
    goto/16 :goto_be5

    .line 3791
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    :sswitch_6c1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3793
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3794
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3795
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3796
    .local v1, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3797
    goto/16 :goto_be5

    .line 3781
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    :sswitch_6d5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3783
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3784
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3785
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3786
    goto/16 :goto_be5

    .line 3769
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3772
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3773
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;-><init>()V

    .line 3774
    .local v1, "memStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3775
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V

    .line 3776
    goto/16 :goto_be5

    .line 3758
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "memStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    :sswitch_6fd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3760
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3761
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3763
    .local v1, "applyType":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3764
    goto/16 :goto_be5

    .line 3748
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "applyType":I
    :sswitch_711
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3750
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3751
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3752
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3753
    goto/16 :goto_be5

    .line 3737
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_721
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3739
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3740
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3741
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3742
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3743
    goto/16 :goto_be5

    .line 3726
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_735
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3728
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3729
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3731
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3732
    goto/16 :goto_be5

    .line 3715
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_749
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3717
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3718
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3719
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3720
    .local v1, "active":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3721
    goto/16 :goto_be5

    .line 3704
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "active":I
    :sswitch_75d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3706
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3707
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3709
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3710
    goto/16 :goto_be5

    .line 3694
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_771
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3696
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3697
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3698
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3699
    goto/16 :goto_be5

    .line 3684
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_781
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3686
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3687
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3688
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3689
    goto/16 :goto_be5

    .line 3674
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_791
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3676
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3677
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3678
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3679
    goto/16 :goto_be5

    .line 3662
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7a1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3664
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3665
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3666
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;-><init>()V

    .line 3667
    .local v1, "status":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3668
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V

    .line 3669
    goto/16 :goto_be5

    .line 3652
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    :sswitch_7b9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3654
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3655
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3656
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3657
    goto/16 :goto_be5

    .line 3640
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7c9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3642
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3643
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3644
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;-><init>()V

    .line 3645
    .local v1, "param":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3646
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 3647
    goto/16 :goto_be5

    .line 3630
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "param":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    :sswitch_7e1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3632
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3633
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3634
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3635
    goto/16 :goto_be5

    .line 3618
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7f1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3620
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3621
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3622
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;-><init>()V

    .line 3623
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3624
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;)V

    .line 3625
    goto/16 :goto_be5

    .line 3607
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;
    :sswitch_809
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3609
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3610
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3612
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3613
    goto/16 :goto_be5

    .line 3597
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_81d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3599
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3600
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3601
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3602
    goto/16 :goto_be5

    .line 3580
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_82d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3582
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v12, v0

    .line 3583
    .local v12, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v12, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3585
    .local v13, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 3586
    .local v14, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3587
    .local v15, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 3588
    .local v16, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 3589
    .local v17, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 3590
    .local v18, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 3591
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 3592
    goto/16 :goto_be5

    .line 3569
    .end local v12    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v13    # "catagory":I
    .end local v14    # "state":I
    .end local v15    # "retry_cnt":I
    .end local v16    # "autolock_cnt":I
    .end local v17    # "num_set":I
    .end local v18    # "total_set":I
    .end local v19    # "key_state":I
    :sswitch_868
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3571
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3572
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3574
    .local v1, "simPowerOnOffStatus":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3575
    goto/16 :goto_be5

    .line 3558
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffStatus":I
    :sswitch_87c
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3560
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3561
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3563
    .local v1, "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3564
    goto/16 :goto_be5

    .line 3547
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    :sswitch_890
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3549
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3550
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3552
    .restart local v1    # "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3553
    goto/16 :goto_be5

    .line 3537
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    :sswitch_8a4
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3539
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3540
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3541
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3542
    goto/16 :goto_be5

    .line 3526
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8b4
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3528
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3529
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3531
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3532
    goto/16 :goto_be5

    .line 3515
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_8c8
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3517
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3518
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3520
    .restart local v1    # "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3521
    goto/16 :goto_be5

    .line 3505
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_8dc
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3507
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3508
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3509
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3510
    goto/16 :goto_be5

    .line 3495
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8ec
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3497
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3498
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3499
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3500
    goto/16 :goto_be5

    .line 3484
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8fc
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3486
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3487
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3489
    .local v1, "enable":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3490
    goto/16 :goto_be5

    .line 3474
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":I
    :sswitch_910
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3476
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3477
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3478
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3479
    goto/16 :goto_be5

    .line 3464
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_920
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3466
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3467
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3468
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3469
    goto/16 :goto_be5

    .line 3454
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_930
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3456
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3457
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3458
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3459
    goto/16 :goto_be5

    .line 3444
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_940
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3446
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3447
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3448
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3449
    goto/16 :goto_be5

    .line 3434
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_950
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3436
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3437
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3438
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3439
    goto/16 :goto_be5

    .line 3424
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_960
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3426
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3427
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3428
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3429
    goto/16 :goto_be5

    .line 3414
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_970
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3416
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3417
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3418
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3419
    goto/16 :goto_be5

    .line 3404
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_980
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3406
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3407
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3408
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3409
    goto/16 :goto_be5

    .line 3393
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_990
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3395
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3396
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3398
    .local v1, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3399
    goto/16 :goto_be5

    .line 3383
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9a4
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3385
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3386
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3387
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3388
    goto/16 :goto_be5

    .line 3372
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9b4
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3374
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3375
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3376
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3377
    .local v1, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3378
    goto/16 :goto_be5

    .line 3362
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    :sswitch_9c8
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3364
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3365
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3366
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3367
    goto/16 :goto_be5

    .line 3352
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9d8
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3354
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3355
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3356
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3357
    goto/16 :goto_be5

    .line 3340
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9e8
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3342
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3343
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3345
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3346
    .local v2, "m":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3347
    goto/16 :goto_be5

    .line 3329
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_a00
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3331
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3332
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3334
    .restart local v1    # "n":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3335
    goto/16 :goto_be5

    .line 3317
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    :sswitch_a14
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3319
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3320
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3322
    .restart local v1    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3323
    .restart local v2    # "m":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3324
    goto/16 :goto_be5

    .line 3307
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_a2c
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3309
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3310
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3311
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3312
    goto/16 :goto_be5

    .line 3297
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a3c
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3300
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3301
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3302
    goto/16 :goto_be5

    .line 3286
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a4c
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3288
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3289
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3291
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3292
    goto/16 :goto_be5

    .line 3275
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a60
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3277
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3278
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3279
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3280
    .local v1, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3281
    goto/16 :goto_be5

    .line 3264
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    :sswitch_a74
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3266
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3267
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3269
    .local v1, "sne":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3270
    goto/16 :goto_be5

    .line 3253
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sne":Ljava/lang/String;
    :sswitch_a88
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3255
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3256
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3258
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3259
    goto/16 :goto_be5

    .line 3242
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "email":Ljava/lang/String;
    :sswitch_a9c
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3244
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3245
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3247
    .local v1, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3248
    goto/16 :goto_be5

    .line 3232
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_ab0
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3234
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3235
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3236
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3237
    goto/16 :goto_be5

    .line 3221
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ac0
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3223
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3224
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3225
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3226
    .local v1, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3227
    goto/16 :goto_be5

    .line 3211
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    :sswitch_ad4
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3213
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3214
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3215
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3216
    goto/16 :goto_be5

    .line 3199
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ae4
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3201
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3202
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3203
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;-><init>()V

    .line 3204
    .local v1, "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3205
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V

    .line 3206
    goto/16 :goto_be5

    .line 3188
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;
    :sswitch_afc
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3190
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3191
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3193
    .local v1, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3194
    goto/16 :goto_be5

    .line 3178
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b10
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3181
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3182
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3183
    goto/16 :goto_be5

    .line 3167
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b20
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3169
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3170
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3172
    .local v1, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3173
    goto/16 :goto_be5

    .line 3156
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b34
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3158
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3159
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3161
    .local v1, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3162
    goto/16 :goto_be5

    .line 3146
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b48
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3148
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3149
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3150
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3151
    goto/16 :goto_be5

    .line 3136
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b58
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3138
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3139
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3140
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3141
    goto/16 :goto_be5

    .line 3125
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b68
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3127
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3128
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3130
    .local v1, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3131
    goto :goto_be5

    .line 3114
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b7b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3116
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3117
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3118
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3119
    .local v1, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3120
    goto :goto_be5

    .line 3104
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    :sswitch_b8e
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3106
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3107
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3108
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3109
    goto :goto_be5

    .line 3093
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b9d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3095
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3096
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3098
    .local v1, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3099
    goto :goto_be5

    .line 3082
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_bb0
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3085
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3087
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3088
    goto :goto_be5

    .line 3072
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_bc3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3074
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3075
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3076
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3077
    goto :goto_be5

    .line 3061
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bd2
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3063
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3064
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3066
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3067
    nop

    .line 4805
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/lang/String;
    :goto_be5
    return-void

    :sswitch_data_be6
    .sparse-switch
        0x1 -> :sswitch_bd2
        0x2 -> :sswitch_bc3
        0x3 -> :sswitch_bb0
        0x4 -> :sswitch_b9d
        0x5 -> :sswitch_b8e
        0x6 -> :sswitch_b7b
        0x7 -> :sswitch_b68
        0x8 -> :sswitch_b58
        0x9 -> :sswitch_b48
        0xa -> :sswitch_b34
        0xb -> :sswitch_b20
        0xc -> :sswitch_b10
        0xd -> :sswitch_afc
        0xe -> :sswitch_ae4
        0xf -> :sswitch_ad4
        0x10 -> :sswitch_ac0
        0x11 -> :sswitch_ab0
        0x12 -> :sswitch_a9c
        0x13 -> :sswitch_a88
        0x14 -> :sswitch_a74
        0x15 -> :sswitch_a60
        0x16 -> :sswitch_a4c
        0x17 -> :sswitch_a3c
        0x18 -> :sswitch_a2c
        0x19 -> :sswitch_a14
        0x1a -> :sswitch_a00
        0x1b -> :sswitch_9e8
        0x1c -> :sswitch_9d8
        0x1d -> :sswitch_9c8
        0x1e -> :sswitch_9b4
        0x1f -> :sswitch_9a4
        0x20 -> :sswitch_990
        0x21 -> :sswitch_980
        0x22 -> :sswitch_970
        0x23 -> :sswitch_960
        0x24 -> :sswitch_950
        0x25 -> :sswitch_940
        0x26 -> :sswitch_930
        0x27 -> :sswitch_920
        0x28 -> :sswitch_910
        0x29 -> :sswitch_8fc
        0x2a -> :sswitch_8ec
        0x2b -> :sswitch_8dc
        0x2c -> :sswitch_8c8
        0x2d -> :sswitch_8b4
        0x2e -> :sswitch_8a4
        0x2f -> :sswitch_890
        0x30 -> :sswitch_87c
        0x31 -> :sswitch_868
        0x32 -> :sswitch_82d
        0x33 -> :sswitch_81d
        0x34 -> :sswitch_809
        0x35 -> :sswitch_7f1
        0x36 -> :sswitch_7e1
        0x37 -> :sswitch_7c9
        0x38 -> :sswitch_7b9
        0x39 -> :sswitch_7a1
        0x3a -> :sswitch_791
        0x3b -> :sswitch_781
        0x3c -> :sswitch_771
        0x3d -> :sswitch_75d
        0x3e -> :sswitch_749
        0x3f -> :sswitch_735
        0x40 -> :sswitch_721
        0x41 -> :sswitch_711
        0x42 -> :sswitch_6fd
        0x43 -> :sswitch_6e5
        0x44 -> :sswitch_6d5
        0x45 -> :sswitch_6c1
        0x46 -> :sswitch_6a9
        0x47 -> :sswitch_699
        0x48 -> :sswitch_685
        0x49 -> :sswitch_675
        0x4a -> :sswitch_665
        0x4b -> :sswitch_651
        0x4c -> :sswitch_641
        0x4d -> :sswitch_631
        0x4e -> :sswitch_621
        0x4f -> :sswitch_611
        0x50 -> :sswitch_601
        0x51 -> :sswitch_5f1
        0x52 -> :sswitch_5e1
        0x53 -> :sswitch_5d1
        0x54 -> :sswitch_5c1
        0x55 -> :sswitch_5b1
        0x56 -> :sswitch_59d
        0x57 -> :sswitch_589
        0x58 -> :sswitch_575
        0x59 -> :sswitch_561
        0x5a -> :sswitch_551
        0x5b -> :sswitch_541
        0x5c -> :sswitch_531
        0x5d -> :sswitch_521
        0x5e -> :sswitch_511
        0x5f -> :sswitch_501
        0x60 -> :sswitch_4f1
        0x61 -> :sswitch_4e1
        0x62 -> :sswitch_4d1
        0x63 -> :sswitch_4bd
        0x64 -> :sswitch_4ad
        0x65 -> :sswitch_49d
        0x66 -> :sswitch_48d
        0x67 -> :sswitch_47d
        0x68 -> :sswitch_469
        0x69 -> :sswitch_459
        0x6a -> :sswitch_449
        0x6b -> :sswitch_435
        0x6c -> :sswitch_425
        0x6d -> :sswitch_415
        0x6e -> :sswitch_401
        0x6f -> :sswitch_3f1
        0x70 -> :sswitch_3e1
        0x71 -> :sswitch_3d1
        0x72 -> :sswitch_3c1
        0x73 -> :sswitch_3b1
        0x74 -> :sswitch_3a1
        0x75 -> :sswitch_391
        0x76 -> :sswitch_37d
        0x77 -> :sswitch_36d
        0x78 -> :sswitch_359
        0x79 -> :sswitch_349
        0x7a -> :sswitch_331
        0x7b -> :sswitch_321
        0x7c -> :sswitch_311
        0x7d -> :sswitch_2f9
        0x7e -> :sswitch_2e9
        0x7f -> :sswitch_2d9
        0x80 -> :sswitch_2c9
        0x81 -> :sswitch_2ad
        0x82 -> :sswitch_29d
        0x83 -> :sswitch_289
        0x84 -> :sswitch_279
        0x85 -> :sswitch_265
        0x86 -> :sswitch_24d
        0x87 -> :sswitch_239
        0x88 -> :sswitch_229
        0x89 -> :sswitch_215
        0x8a -> :sswitch_205
        0x8b -> :sswitch_1f5
        0x8c -> :sswitch_1e1
        0x8d -> :sswitch_1d1
        0x8e -> :sswitch_1bd
        0x8f -> :sswitch_1a9
        0x90 -> :sswitch_199
        0x91 -> :sswitch_185
        0x92 -> :sswitch_171
        0x93 -> :sswitch_15d
        0x94 -> :sswitch_14d
        0x95 -> :sswitch_135
        0x96 -> :sswitch_125
        0x97 -> :sswitch_10d
        0x98 -> :sswitch_fd
        0x99 -> :sswitch_e9
        0x9a -> :sswitch_d3
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

    .line 3012
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3040
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioExResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3041
    return-object p0

    .line 3043
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

    .line 3047
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3048
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 3002
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3034
    const/4 v0, 0x1

    return v0
.end method
