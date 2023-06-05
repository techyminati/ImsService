.class public abstract Landroid/hardware/radio/V1_4/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3154
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3157
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

    .line 3174
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3215
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3216
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3217
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3218
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3219
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

    .line 3186
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x11t
        0x4at
        -0x49t
        0x41t
        -0x9t
        -0x19t
        0x76t
        0x2ft
        -0x4ct
        0x5et
        0x2et
        0x24t
        -0x36t
        -0x7dt
        -0x79t
        0x1ft
        0x72t
        0x0t
        0x6ct
        -0x20t
        0x5ft
        0x57t
        -0x56t
        -0x66t
        -0x23t
        -0x3bt
        0x74t
        -0x77t
        0x3dt
        -0x2et
        -0x68t
        0x72t
    .end array-data

    :array_1
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x1dt
        0x19t
        0x72t
        0xdt
        0x4ft
        -0x2dt
        -0x75t
        0x10t
        -0x6bt
        -0x10t
        -0xbt
        0x55t
        -0x5ct
        -0x43t
        -0x6et
        -0x4dt
        -0x4ft
        0x2ct
        -0x65t
        0x1dt
        0xft
        0x56t
        0xbt
        0xet
        -0x66t
        0x47t
        0x4ct
        -0x2at
        -0x24t
        -0x3et
        0xdt
        -0x4at
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x62t
        -0x21t
        0x50t
        -0x5dt
        0x78t
        -0x57t
        -0x37t
        -0x45t
        0x73t
        0x7ft
        -0x6dt
        -0xet
        0x5t
        -0x26t
        -0x47t
        0x1bt
        0x4ct
        0x63t
        -0x16t
        0x49t
        0x72t
        0x3at
        -0x4t
        0x6ft
        -0x7bt
        0x6ct
        0x13t
        -0x7et
        0x3t
        -0x16t
        -0x7ft
    .end array-data

    :array_4
    .array-data 1
        -0x65t
        0x5at
        -0x5ct
        -0x67t
        -0x14t
        0x3bt
        0x42t
        0x26t
        -0xft
        0x5ft
        0x48t
        -0xbt
        -0x13t
        0x8t
        -0x77t
        0x6et
        0x2ft
        -0x40t
        0x67t
        0x6ft
        -0x69t
        -0x74t
        -0x62t
        0x19t
        -0x64t
        0x1dt
        -0x5et
        0x1dt
        -0x56t
        -0x10t
        0x2t
        -0x5at
    .end array-data

    :array_5
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3162
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.4::IRadio"

    const-string v2, "android.hardware.radio@1.3::IRadio"

    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    const-string v5, "android.hardware.radio@1.0::IRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 3180
    const-string v0, "android.hardware.radio@1.4::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3203
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 3225
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3227
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 23
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3255
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hardware.radio@1.4::IRadio"

    const-string v4, "android.hardware.radio@1.0::IRadio"

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 5780
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    move v0, v6

    .line 5781
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_14a

    .line 5782
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5784
    goto/16 :goto_8

    .line 5767
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v6, v7

    :cond_1
    move v1, v6

    .line 5768
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_2

    .line 5769
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5771
    goto/16 :goto_8

    .line 5772
    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5774
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->notifySyspropsChanged()V

    .line 5775
    goto/16 :goto_8

    .line 5751
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v1, v7

    .line 5752
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 5753
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5755
    goto/16 :goto_8

    .line 5756
    :cond_4
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5758
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5759
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5760
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5762
    goto/16 :goto_8

    .line 5736
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    move v1, v7

    .line 5737
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 5738
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5740
    goto/16 :goto_8

    .line 5741
    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5743
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->ping()V

    .line 5744
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5746
    goto/16 :goto_8

    .line 5726
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    :cond_7
    move v0, v6

    .line 5727
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_14a

    .line 5728
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5730
    goto/16 :goto_8

    .line 5713
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v6, v7

    :cond_8
    move v1, v6

    .line 5714
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_9

    .line 5715
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5717
    goto/16 :goto_8

    .line 5718
    :cond_9
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5720
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setHALInstrumentation()V

    .line 5721
    goto/16 :goto_8

    .line 5674
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v1, v7

    .line 5675
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 5676
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5678
    goto/16 :goto_8

    .line 5679
    :cond_b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5681
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5682
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5684
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5686
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5687
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5688
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5689
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5690
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 5692
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 5693
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5695
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v13, 0x20

    if-ne v9, v13, :cond_c

    .line 5699
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5700
    nop

    .line 5690
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5696
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v9, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5703
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5705
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5707
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5708
    goto/16 :goto_8

    .line 5658
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v7, v6

    :goto_4
    move v1, v7

    .line 5659
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 5660
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5662
    goto/16 :goto_8

    .line 5663
    :cond_f
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5665
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5666
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5667
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5669
    goto/16 :goto_8

    .line 5641
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v7, v6

    :goto_5
    move v1, v7

    .line 5642
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 5643
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5645
    goto/16 :goto_8

    .line 5646
    :cond_11
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5649
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5650
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5651
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5653
    goto/16 :goto_8

    .line 5625
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v7, v6

    :goto_6
    move v1, v7

    .line 5626
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 5627
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5629
    goto/16 :goto_8

    .line 5630
    :cond_13
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5632
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5633
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5634
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5636
    goto/16 :goto_8

    .line 5611
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v6, v7

    :cond_14
    move v0, v6

    .line 5612
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15

    .line 5613
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5615
    goto/16 :goto_8

    .line 5616
    :cond_15
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5619
    .local v1, "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength_1_4(I)V

    .line 5620
    goto/16 :goto_8

    .line 5597
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v6, v7

    :cond_16
    move v0, v6

    .line 5598
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_17

    .line 5599
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5600
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5601
    goto/16 :goto_8

    .line 5602
    :cond_17
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5605
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    .line 5606
    goto/16 :goto_8

    .line 5580
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v6, v7

    :cond_18
    move v0, v6

    .line 5581
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19

    .line 5582
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5584
    goto/16 :goto_8

    .line 5585
    :cond_19
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5588
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5589
    .local v2, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5591
    .local v3, "multiSimPolicy":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5592
    goto/16 :goto_8

    .line 5565
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v3    # "multiSimPolicy":I
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v6, v7

    :cond_1a
    move v0, v6

    .line 5566
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b

    .line 5567
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5569
    goto/16 :goto_8

    .line 5570
    :cond_1b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5573
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5574
    .local v2, "networkTypeBitmap":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    .line 5575
    goto/16 :goto_8

    .line 5551
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "networkTypeBitmap":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v6, v7

    :cond_1c
    move v0, v6

    .line 5552
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d

    .line 5553
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5555
    goto/16 :goto_8

    .line 5556
    :cond_1d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5559
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    .line 5560
    goto/16 :goto_8

    .line 5535
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v6, v7

    :cond_1e
    move v0, v6

    .line 5536
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f

    .line 5537
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5539
    goto/16 :goto_8

    .line 5540
    :cond_1f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5543
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5544
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5545
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5546
    goto/16 :goto_8

    .line 5514
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    move v8, v6

    .line 5515
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_21

    .line 5516
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5518
    goto/16 :goto_8

    .line 5519
    :cond_21
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5522
    .local v9, "serial":I
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v13, v0

    .line 5523
    .local v13, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5525
    .local v14, "categories":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v15

    .line 5526
    .local v15, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 5527
    .local v16, "routing":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5528
    .local v17, "hasKnownUserIntentEmergency":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 5529
    .local v18, "isTesting":Z
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 5530
    goto/16 :goto_8

    .line 5499
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v13    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v14    # "categories":I
    .end local v15    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "routing":I
    .end local v17    # "hasKnownUserIntentEmergency":Z
    .end local v18    # "isTesting":Z
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v6, v7

    :cond_22
    move v0, v6

    .line 5500
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23

    .line 5501
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5503
    goto/16 :goto_8

    .line 5504
    :cond_23
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5507
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5508
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    .line 5509
    goto/16 :goto_8

    .line 5483
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v6, v7

    :cond_24
    move v0, v6

    .line 5484
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25

    .line 5485
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5487
    goto/16 :goto_8

    .line 5488
    :cond_25
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5491
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 5492
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5493
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    .line 5494
    goto/16 :goto_8

    .line 5462
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v6, v7

    :cond_26
    move v8, v6

    .line 5463
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_27

    .line 5464
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5466
    goto/16 :goto_8

    .line 5467
    :cond_27
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5470
    .restart local v9    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5471
    .local v13, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    move-object v14, v0

    .line 5472
    .local v14, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v14, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 5474
    .local v15, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 5475
    .local v16, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    .line 5476
    .local v17, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v18

    .line 5477
    .local v18, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5478
    goto/16 :goto_8

    .line 5448
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v13    # "accessNetwork":I
    .end local v14    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    .end local v15    # "roamingAllowed":Z
    .end local v16    # "reason":I
    .end local v17    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_28

    move v6, v7

    :cond_28
    move v1, v6

    .line 5449
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_29

    .line 5450
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5452
    goto/16 :goto_8

    .line 5453
    :cond_29
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5456
    .local v0, "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemStackStatus(I)V

    .line 5457
    goto/16 :goto_8

    .line 5433
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2a

    move v6, v7

    :cond_2a
    move v1, v6

    .line 5434
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_2b

    .line 5435
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5437
    goto/16 :goto_8

    .line 5438
    :cond_2b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5441
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5442
    .local v2, "on":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->enableModem(IZ)V

    .line 5443
    goto/16 :goto_8

    .line 5417
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2c

    move v6, v7

    :cond_2c
    move v1, v6

    .line 5418
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_2d

    .line 5419
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5421
    goto/16 :goto_8

    .line 5422
    :cond_2d
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5425
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5426
    .local v2, "specifyChannels":Z
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5427
    .local v3, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 5428
    goto/16 :goto_8

    .line 5401
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "specifyChannels":Z
    .end local v3    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v6, v7

    :cond_2e
    move v0, v6

    .line 5402
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2f

    .line 5403
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5405
    goto/16 :goto_8

    .line 5406
    :cond_2f
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5409
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5410
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5411
    .local v3, "reason":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 5412
    goto/16 :goto_8

    .line 5378
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v6, v7

    :cond_30
    move v13, v6

    .line 5379
    .local v13, "_hidl_is_oneway":Z
    if-eq v13, v7, :cond_31

    .line 5380
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5381
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5382
    goto/16 :goto_8

    .line 5383
    :cond_31
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5386
    .local v14, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5387
    .local v15, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 5388
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5390
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5391
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 5392
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 5393
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 5394
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 5395
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v22, v9

    .end local v9    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .local v22, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5396
    goto/16 :goto_8

    .line 5358
    .end local v13    # "_hidl_is_oneway":Z
    .end local v14    # "serial":I
    .end local v15    # "accessNetwork":I
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v6, v7

    :cond_32
    move v8, v6

    .line 5359
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_33

    .line 5360
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5362
    goto/16 :goto_8

    .line 5363
    :cond_33
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5366
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5367
    .local v13, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5368
    .local v14, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5369
    .local v15, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 5370
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 5371
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 5372
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5373
    goto/16 :goto_8

    .line 5340
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v13    # "hysteresisMs":I
    .end local v14    # "hysteresisDlKbps":I
    .end local v15    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v6, v7

    .line 5341
    .local v6, "_hidl_is_oneway":Z
    :cond_34
    if-eq v6, v7, :cond_35

    .line 5342
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5343
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5344
    goto/16 :goto_8

    .line 5345
    :cond_35
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5348
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5349
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5350
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 5351
    .local v13, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5352
    .local v14, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 5353
    goto/16 :goto_8

    .line 5325
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v13    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "accessNetwork":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v6, v7

    :cond_36
    move v0, v6

    .line 5326
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_37

    .line 5327
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5329
    goto/16 :goto_8

    .line 5330
    :cond_37
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5333
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5334
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 5335
    goto/16 :goto_8

    .line 5309
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v6, v7

    :cond_38
    move v0, v6

    .line 5310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_39

    .line 5311
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5313
    goto/16 :goto_8

    .line 5314
    :cond_39
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5317
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5318
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5319
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5320
    goto/16 :goto_8

    .line 5294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v6, v7

    :cond_3a
    move v0, v6

    .line 5295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3b

    .line 5296
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5298
    goto/16 :goto_8

    .line 5299
    :cond_3b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5302
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5303
    .local v2, "sessionHandle":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopKeepalive(II)V

    .line 5304
    goto/16 :goto_8

    .line 5278
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v6, v7

    :cond_3c
    move v0, v6

    .line 5279
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3d

    .line 5280
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5282
    goto/16 :goto_8

    .line 5283
    :cond_3d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5286
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 5287
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5288
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 5289
    goto/16 :goto_8

    .line 5264
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v6, v7

    :cond_3e
    move v0, v6

    .line 5265
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3f

    .line 5266
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5268
    goto/16 :goto_8

    .line 5269
    :cond_3f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5272
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopNetworkScan(I)V

    .line 5273
    goto/16 :goto_8

    .line 5248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v6, v7

    :cond_40
    move v0, v6

    .line 5249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_41

    .line 5250
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5252
    goto/16 :goto_8

    .line 5253
    :cond_41
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5256
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 5257
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5258
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 5259
    goto/16 :goto_8

    .line 5233
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v6, v7

    :cond_42
    move v0, v6

    .line 5234
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_43

    .line 5235
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5237
    goto/16 :goto_8

    .line 5238
    :cond_43
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5241
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5242
    .local v2, "powerUp":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 5243
    goto/16 :goto_8

    .line 5217
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v6, v7

    :cond_44
    move v0, v6

    .line 5218
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_45

    .line 5219
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5221
    goto/16 :goto_8

    .line 5222
    :cond_45
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5225
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 5226
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5227
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 5228
    goto/16 :goto_8

    .line 5204
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v6, v7

    :cond_46
    move v0, v6

    .line 5205
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_47

    .line 5206
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5208
    goto/16 :goto_8

    .line 5209
    :cond_47
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5211
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->responseAcknowledgement()V

    .line 5212
    goto/16 :goto_8

    .line 5189
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v6, v7

    :cond_48
    move v0, v6

    .line 5190
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_49

    .line 5191
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5193
    goto/16 :goto_8

    .line 5194
    :cond_49
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5197
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5198
    .local v2, "powerUp":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower(IZ)V

    .line 5199
    goto/16 :goto_8

    .line 5174
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v6, v7

    :cond_4a
    move v0, v6

    .line 5175
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4b

    .line 5176
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5178
    goto/16 :goto_8

    .line 5179
    :cond_4b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5182
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5183
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter(II)V

    .line 5184
    goto/16 :goto_8

    .line 5158
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v6, v7

    :cond_4c
    move v0, v6

    .line 5159
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4d

    .line 5160
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5162
    goto/16 :goto_8

    .line 5163
    :cond_4d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5166
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5167
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5168
    .local v3, "state":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 5169
    goto/16 :goto_8

    .line 5144
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v6, v7

    :cond_4e
    move v0, v6

    .line 5145
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4f

    .line 5146
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5148
    goto/16 :goto_8

    .line 5149
    :cond_4f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5152
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers(I)V

    .line 5153
    goto/16 :goto_8

    .line 5127
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v6, v7

    :cond_50
    move v0, v6

    .line 5128
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_51

    .line 5129
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5131
    goto/16 :goto_8

    .line 5132
    :cond_51
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5135
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5136
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5137
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5138
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5139
    goto/16 :goto_8

    .line 5113
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v6, v7

    :cond_52
    move v0, v6

    .line 5114
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_53

    .line 5115
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5117
    goto/16 :goto_8

    .line 5118
    :cond_53
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5121
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemActivityInfo(I)V

    .line 5122
    goto/16 :goto_8

    .line 5099
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v6, v7

    :cond_54
    move v0, v6

    .line 5100
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_55

    .line 5101
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5103
    goto/16 :goto_8

    .line 5104
    :cond_55
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5107
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->pullLceData(I)V

    .line 5108
    goto/16 :goto_8

    .line 5085
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v6, v7

    :cond_56
    move v0, v6

    .line 5086
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_57

    .line 5087
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5089
    goto/16 :goto_8

    .line 5090
    :cond_57
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5093
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopLceService(I)V

    .line 5094
    goto/16 :goto_8

    .line 5069
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v6, v7

    :cond_58
    move v0, v6

    .line 5070
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_59

    .line 5071
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5073
    goto/16 :goto_8

    .line 5074
    :cond_59
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5077
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5078
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5079
    .local v3, "pullMode":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startLceService(IIZ)V

    .line 5080
    goto/16 :goto_8

    .line 5053
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v6, v7

    :cond_5a
    move v0, v6

    .line 5054
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5b

    .line 5055
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5057
    goto/16 :goto_8

    .line 5058
    :cond_5b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5061
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5062
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5063
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5064
    goto/16 :goto_8

    .line 5039
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v6, v7

    :cond_5c
    move v0, v6

    .line 5040
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5d

    .line 5041
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5042
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5043
    goto/16 :goto_8

    .line 5044
    :cond_5d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5047
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getRadioCapability(I)V

    .line 5048
    goto/16 :goto_8

    .line 5025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v6, v7

    :cond_5e
    move v0, v6

    .line 5026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5f

    .line 5027
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5029
    goto/16 :goto_8

    .line 5030
    :cond_5f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5033
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestShutdown(I)V

    .line 5034
    goto/16 :goto_8

    .line 5009
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v6, v7

    :cond_60
    move v0, v6

    .line 5010
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_61

    .line 5011
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5013
    goto/16 :goto_8

    .line 5014
    :cond_61
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5017
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5018
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5019
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 5020
    goto/16 :goto_8

    .line 4992
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v6, v7

    :cond_62
    move v0, v6

    .line 4993
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_63

    .line 4994
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4996
    goto/16 :goto_8

    .line 4997
    :cond_63
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4999
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5000
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5001
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5002
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5003
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 5004
    goto/16 :goto_8

    .line 4978
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v6, v7

    :cond_64
    move v0, v6

    .line 4979
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_65

    .line 4980
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4981
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4982
    goto/16 :goto_8

    .line 4983
    :cond_65
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4986
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHardwareConfig(I)V

    .line 4987
    goto/16 :goto_8

    .line 4963
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v6, v7

    :cond_66
    move v0, v6

    .line 4964
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_67

    .line 4965
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4966
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4967
    goto/16 :goto_8

    .line 4968
    :cond_67
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4971
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4972
    .local v2, "allow":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4973
    goto/16 :goto_8

    .line 4947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v6, v7

    :cond_68
    move v0, v6

    .line 4948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_69

    .line 4949
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4951
    goto/16 :goto_8

    .line 4952
    :cond_69
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4955
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4956
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4957
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4958
    goto/16 :goto_8

    .line 4932
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v6, v7

    :cond_6a
    move v0, v6

    .line 4933
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6b

    .line 4934
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4936
    goto/16 :goto_8

    .line 4937
    :cond_6b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4940
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4941
    .local v2, "resetType":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvResetConfig(II)V

    .line 4942
    goto/16 :goto_8

    .line 4917
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v6, v7

    :cond_6c
    move v0, v6

    .line 4918
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6d

    .line 4919
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4921
    goto/16 :goto_8

    .line 4922
    :cond_6d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4925
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4926
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4927
    goto/16 :goto_8

    .line 4901
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v6, v7

    :cond_6e
    move v0, v6

    .line 4902
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6f

    .line 4903
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4905
    goto/16 :goto_8

    .line 4906
    :cond_6f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4909
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4910
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4911
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4912
    goto/16 :goto_8

    .line 4886
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v6, v7

    :cond_70
    move v0, v6

    .line 4887
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_71

    .line 4888
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4889
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4890
    goto/16 :goto_8

    .line 4891
    :cond_71
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4894
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4895
    .local v2, "itemId":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvReadItem(II)V

    .line 4896
    goto/16 :goto_8

    .line 4870
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v6, v7

    :cond_72
    move v0, v6

    .line 4871
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_73

    .line 4872
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4874
    goto/16 :goto_8

    .line 4875
    :cond_73
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4878
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4879
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4880
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4881
    goto/16 :goto_8

    .line 4855
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v6, v7

    :cond_74
    move v0, v6

    .line 4856
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_75

    .line 4857
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4859
    goto/16 :goto_8

    .line 4860
    :cond_75
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4863
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4864
    .local v2, "channelId":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4865
    goto/16 :goto_8

    .line 4839
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v6, v7

    :cond_76
    move v0, v6

    .line 4840
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_77

    .line 4841
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4842
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4843
    goto/16 :goto_8

    .line 4844
    :cond_77
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4846
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4847
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4848
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4849
    .local v3, "p2":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4850
    goto/16 :goto_8

    .line 4823
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v6, v7

    :cond_78
    move v0, v6

    .line 4824
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_79

    .line 4825
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4827
    goto/16 :goto_8

    .line 4828
    :cond_79
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4831
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4832
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4833
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4834
    goto/16 :goto_8

    .line 4807
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v6, v7

    :cond_7a
    move v0, v6

    .line 4808
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7b

    .line 4809
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4810
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4811
    goto/16 :goto_8

    .line 4812
    :cond_7b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4814
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4815
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4816
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4817
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4818
    goto/16 :goto_8

    .line 4793
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v6, v7

    :cond_7c
    move v0, v6

    .line 4794
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7d

    .line 4795
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4797
    goto/16 :goto_8

    .line 4798
    :cond_7d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4801
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4802
    goto/16 :goto_8

    .line 4775
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v6, v7

    :cond_7e
    move v0, v6

    .line 4776
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7f

    .line 4777
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4779
    goto/16 :goto_8

    .line 4780
    :cond_7f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4783
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4784
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4786
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4787
    .local v4, "isRoaming":Z
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4788
    goto/16 :goto_8

    .line 4760
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v6, v7

    :cond_80
    move v0, v6

    .line 4761
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_81

    .line 4762
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4764
    goto/16 :goto_8

    .line 4765
    :cond_81
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4768
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4769
    .local v2, "rate":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4770
    goto/16 :goto_8

    .line 4746
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v6, v7

    :cond_82
    move v0, v6

    .line 4747
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_83

    .line 4748
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4750
    goto/16 :goto_8

    .line 4751
    :cond_83
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4754
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCellInfoList(I)V

    .line 4755
    goto/16 :goto_8

    .line 4732
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v6, v7

    :cond_84
    move v0, v6

    .line 4733
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_85

    .line 4734
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4735
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4736
    goto/16 :goto_8

    .line 4737
    :cond_85
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4739
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4740
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4741
    goto/16 :goto_8

    .line 4717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v6, v7

    :cond_86
    move v0, v6

    .line 4718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_87

    .line 4719
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4721
    goto/16 :goto_8

    .line 4722
    :cond_87
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4725
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4726
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4727
    goto/16 :goto_8

    .line 4701
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v6, v7

    :cond_88
    move v0, v6

    .line 4702
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_89

    .line 4703
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4704
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4705
    goto/16 :goto_8

    .line 4706
    :cond_89
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4709
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4710
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4711
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4712
    goto/16 :goto_8

    .line 4686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v6, v7

    :cond_8a
    move v0, v6

    .line 4687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8b

    .line 4688
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4690
    goto/16 :goto_8

    .line 4691
    :cond_8b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4694
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4695
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4696
    goto/16 :goto_8

    .line 4672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v6, v7

    :cond_8c
    move v0, v6

    .line 4673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8d

    .line 4674
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4676
    goto/16 :goto_8

    .line 4677
    :cond_8d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4680
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4681
    goto/16 :goto_8

    .line 4658
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v6, v7

    :cond_8e
    move v0, v6

    .line 4659
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8f

    .line 4660
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4662
    goto/16 :goto_8

    .line 4663
    :cond_8f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4666
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4667
    goto/16 :goto_8

    .line 4643
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v6, v7

    :cond_90
    move v0, v6

    .line 4644
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_91

    .line 4645
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4647
    goto/16 :goto_8

    .line 4648
    :cond_91
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4651
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4652
    .local v2, "available":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4653
    goto/16 :goto_8

    .line 4628
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v6, v7

    :cond_92
    move v0, v6

    .line 4629
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_93

    .line 4630
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4632
    goto/16 :goto_8

    .line 4633
    :cond_93
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4636
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4637
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4638
    goto/16 :goto_8

    .line 4614
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v6, v7

    :cond_94
    move v0, v6

    .line 4615
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_95

    .line 4616
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4618
    goto/16 :goto_8

    .line 4619
    :cond_95
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4622
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSmscAddress(I)V

    .line 4623
    goto/16 :goto_8

    .line 4600
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v6, v7

    :cond_96
    move v0, v6

    .line 4601
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_97

    .line 4602
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4604
    goto/16 :goto_8

    .line 4605
    :cond_97
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4608
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4609
    goto/16 :goto_8

    .line 4586
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v6, v7

    :cond_98
    move v0, v6

    .line 4587
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_99

    .line 4588
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4590
    goto/16 :goto_8

    .line 4591
    :cond_99
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4594
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4595
    goto/16 :goto_8

    .line 4571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v6, v7

    :cond_9a
    move v0, v6

    .line 4572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9b

    .line 4573
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4575
    goto/16 :goto_8

    .line 4576
    :cond_9b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4579
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4580
    .local v2, "index":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4581
    goto/16 :goto_8

    .line 4555
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v6, v7

    :cond_9c
    move v0, v6

    .line 4556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9d

    .line 4557
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4559
    goto/16 :goto_8

    .line 4560
    :cond_9d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4563
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4564
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4565
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4566
    goto/16 :goto_8

    .line 4541
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v6, v7

    :cond_9e
    move v0, v6

    .line 4542
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9f

    .line 4543
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4545
    goto/16 :goto_8

    .line 4546
    :cond_9f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4549
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCDMASubscription(I)V

    .line 4550
    goto/16 :goto_8

    .line 4526
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v6, v7

    :cond_a0
    move v0, v6

    .line 4527
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a1

    .line 4528
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4530
    goto/16 :goto_8

    .line 4531
    :cond_a1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4534
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4535
    .local v2, "activate":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4536
    goto/16 :goto_8

    .line 4511
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v6, v7

    :cond_a2
    move v0, v6

    .line 4512
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a3

    .line 4513
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4515
    goto/16 :goto_8

    .line 4516
    :cond_a3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4519
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4520
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4521
    goto/16 :goto_8

    .line 4497
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v6, v7

    :cond_a4
    move v0, v6

    .line 4498
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a5

    .line 4499
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4501
    goto/16 :goto_8

    .line 4502
    :cond_a5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4505
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4506
    goto/16 :goto_8

    .line 4482
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v6, v7

    :cond_a6
    move v0, v6

    .line 4483
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a7

    .line 4484
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4486
    goto/16 :goto_8

    .line 4487
    :cond_a7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4490
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4491
    .local v2, "activate":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4492
    goto/16 :goto_8

    .line 4467
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v6, v7

    :cond_a8
    move v0, v6

    .line 4468
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a9

    .line 4469
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4471
    goto/16 :goto_8

    .line 4472
    :cond_a9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4475
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4476
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4477
    goto/16 :goto_8

    .line 4453
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v6, v7

    :cond_aa
    move v0, v6

    .line 4454
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ab

    .line 4455
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4457
    goto/16 :goto_8

    .line 4458
    :cond_ab
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4461
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4462
    goto/16 :goto_8

    .line 4437
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v6, v7

    :cond_ac
    move v0, v6

    .line 4438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ad

    .line 4439
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4441
    goto/16 :goto_8

    .line 4442
    :cond_ad
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4445
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4446
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4447
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4448
    goto/16 :goto_8

    .line 4421
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v6, v7

    :cond_ae
    move v0, v6

    .line 4422
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_af

    .line 4423
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4425
    goto/16 :goto_8

    .line 4426
    :cond_af
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4429
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4430
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4431
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4432
    goto/16 :goto_8

    .line 4404
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v6, v7

    :cond_b0
    move v0, v6

    .line 4405
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b1

    .line 4406
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4408
    goto/16 :goto_8

    .line 4409
    :cond_b1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4412
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4413
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4414
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4415
    .local v4, "off":I
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4416
    goto/16 :goto_8

    .line 4389
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v6, v7

    :cond_b2
    move v0, v6

    .line 4390
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b3

    .line 4391
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4392
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4393
    goto/16 :goto_8

    .line 4394
    :cond_b3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4397
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4398
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4399
    goto/16 :goto_8

    .line 4375
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v6, v7

    :cond_b4
    move v0, v6

    .line 4376
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b5

    .line 4377
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4379
    goto/16 :goto_8

    .line 4380
    :cond_b5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4383
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4384
    goto/16 :goto_8

    .line 4360
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v6, v7

    :cond_b6
    move v0, v6

    .line 4361
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b7

    .line 4362
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4364
    goto/16 :goto_8

    .line 4365
    :cond_b7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4368
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4369
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4370
    goto/16 :goto_8

    .line 4346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v6, v7

    :cond_b8
    move v0, v6

    .line 4347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b9

    .line 4348
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4350
    goto/16 :goto_8

    .line 4351
    :cond_b9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4354
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getTTYMode(I)V

    .line 4355
    goto/16 :goto_8

    .line 4331
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v6, v7

    :cond_ba
    move v0, v6

    .line 4332
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bb

    .line 4333
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4335
    goto/16 :goto_8

    .line 4336
    :cond_bb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4339
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4340
    .local v2, "mode":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setTTYMode(II)V

    .line 4341
    goto/16 :goto_8

    .line 4317
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v6, v7

    :cond_bc
    move v0, v6

    .line 4318
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bd

    .line 4319
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4320
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4321
    goto/16 :goto_8

    .line 4322
    :cond_bd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4325
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4326
    goto/16 :goto_8

    .line 4302
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v6, v7

    :cond_be
    move v0, v6

    .line 4303
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bf

    .line 4304
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4306
    goto/16 :goto_8

    .line 4307
    :cond_bf
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4310
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4311
    .local v2, "type":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4312
    goto/16 :goto_8

    .line 4287
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v6, v7

    :cond_c0
    move v0, v6

    .line 4288
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c1

    .line 4289
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4291
    goto/16 :goto_8

    .line 4292
    :cond_c1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4294
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4295
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4296
    .local v2, "cdmaSub":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4297
    goto/16 :goto_8

    .line 4272
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v6, v7

    :cond_c2
    move v0, v6

    .line 4273
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c3

    .line 4274
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4276
    goto/16 :goto_8

    .line 4277
    :cond_c3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4280
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4281
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4282
    goto/16 :goto_8

    .line 4258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v6, v7

    :cond_c4
    move v0, v6

    .line 4259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c5

    .line 4260
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4262
    goto/16 :goto_8

    .line 4263
    :cond_c5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4266
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNeighboringCids(I)V

    .line 4267
    goto/16 :goto_8

    .line 4244
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v6, v7

    :cond_c6
    move v0, v6

    .line 4245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c7

    .line 4246
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4248
    goto/16 :goto_8

    .line 4249
    :cond_c7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4252
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4253
    goto/16 :goto_8

    .line 4229
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v6, v7

    :cond_c8
    move v0, v6

    .line 4230
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c9

    .line 4231
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4233
    goto/16 :goto_8

    .line 4234
    :cond_c9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4237
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4238
    .local v2, "nwType":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4239
    goto/16 :goto_8

    .line 4215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v6, v7

    :cond_ca
    move v0, v6

    .line 4216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cb

    .line 4217
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4219
    goto/16 :goto_8

    .line 4220
    :cond_cb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4223
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4224
    goto/16 :goto_8

    .line 4200
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v6, v7

    :cond_cc
    move v0, v6

    .line 4201
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cd

    .line 4202
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4203
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4204
    goto/16 :goto_8

    .line 4205
    :cond_cd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4207
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4208
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4209
    .local v2, "accept":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 4210
    goto/16 :goto_8

    .line 4185
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v6, v7

    :cond_ce
    move v0, v6

    .line 4186
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cf

    .line 4187
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4188
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4189
    goto/16 :goto_8

    .line 4190
    :cond_cf
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4193
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4194
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 4195
    goto/16 :goto_8

    .line 4170
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v6, v7

    :cond_d0
    move v0, v6

    .line 4171
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d1

    .line 4172
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4174
    goto/16 :goto_8

    .line 4175
    :cond_d1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4178
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4179
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 4180
    goto/16 :goto_8

    .line 4156
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v6, v7

    :cond_d2
    move v0, v6

    .line 4157
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d3

    .line 4158
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4159
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4160
    goto/16 :goto_8

    .line 4161
    :cond_d3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4163
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4164
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableBandModes(I)V

    .line 4165
    goto/16 :goto_8

    .line 4141
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v6, v7

    :cond_d4
    move v0, v6

    .line 4142
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d5

    .line 4143
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4145
    goto/16 :goto_8

    .line 4146
    :cond_d5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4149
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4150
    .local v2, "mode":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBandMode(II)V

    .line 4151
    goto/16 :goto_8

    .line 4126
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v6, v7

    :cond_d6
    move v0, v6

    .line 4127
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d7

    .line 4128
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4129
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4130
    goto/16 :goto_8

    .line 4131
    :cond_d7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4134
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4135
    .local v2, "index":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 4136
    goto/16 :goto_8

    .line 4110
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v6, v7

    :cond_d8
    move v0, v6

    .line 4111
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d9

    .line 4112
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4114
    goto/16 :goto_8

    .line 4115
    :cond_d9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4118
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 4119
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4120
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 4121
    goto/16 :goto_8

    .line 4095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v6, v7

    :cond_da
    move v0, v6

    .line 4096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_db

    .line 4097
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4099
    goto/16 :goto_8

    .line 4100
    :cond_db
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4103
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4104
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 4105
    goto/16 :goto_8

    .line 4081
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v6, v7

    :cond_dc
    move v0, v6

    .line 4082
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_dd

    .line 4083
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4085
    goto/16 :goto_8

    .line 4086
    :cond_dd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4089
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataCallList(I)V

    .line 4090
    goto/16 :goto_8

    .line 4067
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v6, v7

    :cond_de
    move v0, v6

    .line 4068
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_df

    .line 4069
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4071
    goto/16 :goto_8

    .line 4072
    :cond_df
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4075
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClip(I)V

    .line 4076
    goto/16 :goto_8

    .line 4053
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v6, v7

    :cond_e0
    move v0, v6

    .line 4054
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e1

    .line 4055
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4057
    goto/16 :goto_8

    .line 4058
    :cond_e1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4061
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getMute(I)V

    .line 4062
    goto/16 :goto_8

    .line 4038
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v6, v7

    :cond_e2
    move v0, v6

    .line 4039
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e3

    .line 4040
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4042
    goto/16 :goto_8

    .line 4043
    :cond_e3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4046
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4047
    .restart local v2    # "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setMute(IZ)V

    .line 4048
    goto/16 :goto_8

    .line 4023
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v6, v7

    :cond_e4
    move v0, v6

    .line 4024
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e5

    .line 4025
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4027
    goto/16 :goto_8

    .line 4028
    :cond_e5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4031
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4032
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->separateConnection(II)V

    .line 4033
    goto/16 :goto_8

    .line 4009
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v6, v7

    :cond_e6
    move v0, v6

    .line 4010
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e7

    .line 4011
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4013
    goto/16 :goto_8

    .line 4014
    :cond_e7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4017
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getBasebandVersion(I)V

    .line 4018
    goto/16 :goto_8

    .line 3995
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v6, v7

    :cond_e8
    move v0, v6

    .line 3996
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e9

    .line 3997
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3998
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3999
    goto/16 :goto_8

    .line 4000
    :cond_e9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4003
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopDtmf(I)V

    .line 4004
    goto/16 :goto_8

    .line 3980
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v6, v7

    :cond_ea
    move v0, v6

    .line 3981
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_eb

    .line 3982
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3984
    goto/16 :goto_8

    .line 3985
    :cond_eb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3988
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3989
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3990
    goto/16 :goto_8

    .line 3966
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v6, v7

    :cond_ec
    move v0, v6

    .line 3967
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ed

    .line 3968
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3970
    goto/16 :goto_8

    .line 3971
    :cond_ed
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3974
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3975
    goto/16 :goto_8

    .line 3951
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v6, v7

    :cond_ee
    move v0, v6

    .line 3952
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ef

    .line 3953
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3955
    goto/16 :goto_8

    .line 3956
    :cond_ef
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3959
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3960
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3961
    goto/16 :goto_8

    .line 3937
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v6, v7

    :cond_f0
    move v0, v6

    .line 3938
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f1

    .line 3939
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3940
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3941
    goto/16 :goto_8

    .line 3942
    :cond_f1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3945
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3946
    goto/16 :goto_8

    .line 3923
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v6, v7

    :cond_f2
    move v0, v6

    .line 3924
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f3

    .line 3925
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3927
    goto/16 :goto_8

    .line 3928
    :cond_f3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3931
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3932
    goto/16 :goto_8

    .line 3906
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v6, v7

    :cond_f4
    move v0, v6

    .line 3907
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f5

    .line 3908
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3910
    goto/16 :goto_8

    .line 3911
    :cond_f5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3914
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3915
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3916
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3917
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3918
    goto/16 :goto_8

    .line 3887
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v6, v7

    :cond_f6
    move v8, v6

    .line 3888
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_f7

    .line 3889
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3891
    goto/16 :goto_8

    .line 3892
    :cond_f7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3895
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3896
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3897
    .local v13, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3898
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3899
    .local v15, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3900
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3901
    goto/16 :goto_8

    .line 3869
    .end local v7    # "serial":I
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v6, v7

    .line 3870
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v6, v7, :cond_f9

    .line 3871
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3873
    goto/16 :goto_8

    .line 3874
    :cond_f9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3877
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3878
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3879
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3880
    .local v13, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3881
    .local v14, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3882
    goto/16 :goto_8

    .line 3853
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v13    # "serviceClass":I
    .end local v14    # "appId":Ljava/lang/String;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v6, v7

    :cond_fa
    move v0, v6

    .line 3854
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fb

    .line 3855
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3857
    goto/16 :goto_8

    .line 3858
    :cond_fb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3861
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3862
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3863
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3864
    goto/16 :goto_8

    .line 3839
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v6, v7

    :cond_fc
    move v0, v6

    .line 3840
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fd

    .line 3841
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3842
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3843
    goto/16 :goto_8

    .line 3844
    :cond_fd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3846
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3847
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acceptCall(I)V

    .line 3848
    goto/16 :goto_8

    .line 3823
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v6, v7

    :cond_fe
    move v0, v6

    .line 3824
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ff

    .line 3825
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3827
    goto/16 :goto_8

    .line 3828
    :cond_ff
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3831
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3832
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3833
    .local v3, "cause":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3834
    goto/16 :goto_8

    .line 3807
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v6, v7

    :cond_100
    move v0, v6

    .line 3808
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_101

    .line 3809
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3810
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3811
    goto/16 :goto_8

    .line 3812
    :cond_101
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3814
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3815
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3816
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3817
    .local v3, "serviceClass":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3818
    goto/16 :goto_8

    .line 3792
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v6, v7

    :cond_102
    move v0, v6

    .line 3793
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_103

    .line 3794
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3795
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3796
    goto/16 :goto_8

    .line 3797
    :cond_103
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3799
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3800
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3801
    .local v2, "serviceClass":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallWaiting(II)V

    .line 3802
    goto/16 :goto_8

    .line 3776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v6, v7

    :cond_104
    move v0, v6

    .line 3777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_105

    .line 3778
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3780
    goto/16 :goto_8

    .line 3781
    :cond_105
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3784
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3785
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3786
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3787
    goto/16 :goto_8

    .line 3760
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v6, v7

    :cond_106
    move v0, v6

    .line 3761
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_107

    .line 3762
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3764
    goto/16 :goto_8

    .line 3765
    :cond_107
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3768
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3769
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3770
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3771
    goto/16 :goto_8

    .line 3745
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v6, v7

    :cond_108
    move v0, v6

    .line 3746
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_109

    .line 3747
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3749
    goto/16 :goto_8

    .line 3750
    :cond_109
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3753
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3754
    .local v2, "status":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setClir(II)V

    .line 3755
    goto/16 :goto_8

    .line 3731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v6, v7

    :cond_10a
    move v0, v6

    .line 3732
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10b

    .line 3733
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3735
    goto/16 :goto_8

    .line 3736
    :cond_10b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3739
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClir(I)V

    .line 3740
    goto/16 :goto_8

    .line 3717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v6, v7

    :cond_10c
    move v0, v6

    .line 3718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10d

    .line 3719
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3721
    goto/16 :goto_8

    .line 3722
    :cond_10d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3725
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3726
    goto/16 :goto_8

    .line 3702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v6, v7

    :cond_10e
    move v0, v6

    .line 3703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10f

    .line 3704
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3706
    goto/16 :goto_8

    .line 3707
    :cond_10f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3710
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3711
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3712
    goto/16 :goto_8

    .line 3686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v6, v7

    :cond_110
    move v0, v6

    .line 3687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_111

    .line 3688
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3690
    goto/16 :goto_8

    .line 3691
    :cond_111
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3694
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3695
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3696
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3697
    goto/16 :goto_8

    .line 3666
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v6, v7

    :cond_112
    move v8, v6

    .line 3667
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_113

    .line 3668
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3670
    goto/16 :goto_8

    .line 3671
    :cond_113
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3674
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 3675
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 3676
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3678
    .local v14, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3679
    .local v15, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 3680
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3681
    goto/16 :goto_8

    .line 3650
    .end local v7    # "serial":I
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "radioTechnology":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v14    # "modemCognitive":Z
    .end local v15    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v6, v7

    :cond_114
    move v0, v6

    .line 3651
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_115

    .line 3652
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3654
    goto/16 :goto_8

    .line 3655
    :cond_115
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3658
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3659
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3660
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3661
    goto/16 :goto_8

    .line 3634
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v6, v7

    :cond_116
    move v0, v6

    .line 3635
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_117

    .line 3636
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3638
    goto/16 :goto_8

    .line 3639
    :cond_117
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3642
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3643
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3644
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3645
    goto/16 :goto_8

    .line 3619
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v6, v7

    :cond_118
    move v0, v6

    .line 3620
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_119

    .line 3621
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3623
    goto/16 :goto_8

    .line 3624
    :cond_119
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3627
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3628
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3629
    goto/16 :goto_8

    .line 3604
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v6, v7

    :cond_11a
    move v0, v6

    .line 3605
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11b

    .line 3606
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3608
    goto/16 :goto_8

    .line 3609
    :cond_11b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3612
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3613
    .local v2, "on":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioPower(IZ)V

    .line 3614
    goto/16 :goto_8

    .line 3590
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v6, v7

    :cond_11c
    move v0, v6

    .line 3591
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11d

    .line 3592
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3594
    goto/16 :goto_8

    .line 3595
    :cond_11d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3598
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getOperator(I)V

    .line 3599
    goto/16 :goto_8

    .line 3576
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v6, v7

    :cond_11e
    move v0, v6

    .line 3577
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11f

    .line 3578
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3580
    goto/16 :goto_8

    .line 3581
    :cond_11f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3584
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3585
    goto/16 :goto_8

    .line 3562
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v6, v7

    :cond_120
    move v0, v6

    .line 3563
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_121

    .line 3564
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3566
    goto/16 :goto_8

    .line 3567
    :cond_121
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3570
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3571
    goto/16 :goto_8

    .line 3548
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v6, v7

    :cond_122
    move v0, v6

    .line 3549
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_123

    .line 3550
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3552
    goto/16 :goto_8

    .line 3553
    :cond_123
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3556
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength(I)V

    .line 3557
    goto/16 :goto_8

    .line 3534
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v6, v7

    :cond_124
    move v0, v6

    .line 3535
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_125

    .line 3536
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3537
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3538
    goto/16 :goto_8

    .line 3539
    :cond_125
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3542
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3543
    goto/16 :goto_8

    .line 3520
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v6, v7

    :cond_126
    move v0, v6

    .line 3521
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_127

    .line 3522
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3523
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3524
    goto/16 :goto_8

    .line 3525
    :cond_127
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3528
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->rejectCall(I)V

    .line 3529
    goto/16 :goto_8

    .line 3506
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v6, v7

    :cond_128
    move v0, v6

    .line 3507
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_129

    .line 3508
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3509
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3510
    goto/16 :goto_8

    .line 3511
    :cond_129
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3513
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3514
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->conference(I)V

    .line 3515
    goto/16 :goto_8

    .line 3492
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v6, v7

    :cond_12a
    move v0, v6

    .line 3493
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12b

    .line 3494
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3496
    goto/16 :goto_8

    .line 3497
    :cond_12b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3500
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3501
    goto/16 :goto_8

    .line 3478
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v6, v7

    :cond_12c
    move v0, v6

    .line 3479
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12d

    .line 3480
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3482
    goto/16 :goto_8

    .line 3483
    :cond_12d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3486
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3487
    goto/16 :goto_8

    .line 3464
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v6, v7

    :cond_12e
    move v0, v6

    .line 3465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12f

    .line 3466
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3468
    goto/16 :goto_8

    .line 3469
    :cond_12f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3472
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3473
    goto/16 :goto_8

    .line 3449
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v6, v7

    :cond_130
    move v0, v6

    .line 3450
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_131

    .line 3451
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3453
    goto/16 :goto_8

    .line 3454
    :cond_131
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3457
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3458
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangup(II)V

    .line 3459
    goto/16 :goto_8

    .line 3434
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v6, v7

    :cond_132
    move v0, v6

    .line 3435
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_133

    .line 3436
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3438
    goto/16 :goto_8

    .line 3439
    :cond_133
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3442
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3443
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3444
    goto/16 :goto_8

    .line 3418
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v6, v7

    :cond_134
    move v0, v6

    .line 3419
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_135

    .line 3420
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3421
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3422
    goto/16 :goto_8

    .line 3423
    :cond_135
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3426
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3427
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3428
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3429
    goto/16 :goto_8

    .line 3404
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v6, v7

    :cond_136
    move v0, v6

    .line 3405
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_137

    .line 3406
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3408
    goto/16 :goto_8

    .line 3409
    :cond_137
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3412
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCurrentCalls(I)V

    .line 3413
    goto/16 :goto_8

    .line 3389
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v6, v7

    :cond_138
    move v0, v6

    .line 3390
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_139

    .line 3391
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3392
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3393
    goto/16 :goto_8

    .line 3394
    :cond_139
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3397
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3398
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3399
    goto/16 :goto_8

    .line 3372
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v6, v7

    :cond_13a
    move v0, v6

    .line 3373
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13b

    .line 3374
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3376
    goto/16 :goto_8

    .line 3377
    :cond_13b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3380
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3381
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3382
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3383
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    goto/16 :goto_8

    .line 3355
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v6, v7

    :cond_13c
    move v0, v6

    .line 3356
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13d

    .line 3357
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3358
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3359
    goto/16 :goto_8

    .line 3360
    :cond_13d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3362
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3363
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3364
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3365
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3366
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    goto/16 :goto_8

    .line 3338
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v6, v7

    :cond_13e
    move v0, v6

    .line 3339
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13f

    .line 3340
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3342
    goto/16 :goto_8

    .line 3343
    :cond_13f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3346
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3347
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3348
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3349
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    goto/16 :goto_8

    .line 3322
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v6, v7

    :cond_140
    move v0, v6

    .line 3323
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_141

    .line 3324
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3326
    goto/16 :goto_8

    .line 3327
    :cond_141
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3330
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3331
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3332
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3333
    goto/16 :goto_8

    .line 3305
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v6, v7

    :cond_142
    move v0, v6

    .line 3306
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_143

    .line 3307
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3308
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3309
    goto/16 :goto_8

    .line 3310
    :cond_143
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3313
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3314
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3315
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3316
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    goto/16 :goto_8

    .line 3289
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v6, v7

    :cond_144
    move v0, v6

    .line 3290
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_145

    .line 3291
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3292
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3293
    goto :goto_8

    .line 3294
    :cond_145
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3297
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3298
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3299
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3300
    goto :goto_8

    .line 3275
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v6, v7

    :cond_146
    move v0, v6

    .line 3276
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_147

    .line 3277
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3279
    goto :goto_8

    .line 3280
    :cond_147
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3283
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getIccCardStatus(I)V

    .line 3284
    goto :goto_8

    .line 3258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    goto :goto_7

    :cond_148
    move v7, v6

    :goto_7
    move v0, v7

    .line 3259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_149

    .line 3260
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3262
    goto :goto_8

    .line 3263
    :cond_149
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 3266
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 3267
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3268
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3270
    nop

    .line 5789
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_14a
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
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

    .line 3209
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3237
    const-string v0, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3238
    return-object p0

    .line 3240
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

    .line 3244
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3245
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 3199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3231
    const/4 v0, 0x1

    return v0
.end method
