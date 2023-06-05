.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2225
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2228
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

    .line 2244
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2284
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2285
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2286
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2287
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2288
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

    .line 2256
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

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

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x49t
        0x47t
        -0x54t
        -0x7t
        -0x57t
        -0x21t
        0x67t
        0x52t
        -0x5et
        -0x3t
        0x19t
        -0x7dt
        0x14t
        0x56t
        0x59t
        -0x1at
        -0x78t
        -0x29t
        -0x51t
        -0x5ft
        -0x3bt
        0x23t
        0x7at
        0x52t
        -0x19t
        -0x22t
        0x0t
        0x2ct
        -0x3ft
        -0xft
        -0x63t
        -0x44t
    .end array-data

    :array_1
    .array-data 1
        -0x33t
        -0x59t
        0x52t
        -0x52t
        -0x55t
        -0x56t
        -0x44t
        0x20t
        0x48t
        0x6at
        -0x7et
        -0x54t
        0x57t
        -0x5dt
        -0x23t
        0x10t
        0x77t
        -0x7bt
        -0x40t
        0x6t
        0x9t
        0x4at
        0x34t
        -0x65t
        -0x3bt
        -0x1et
        0x24t
        -0x18t
        -0x56t
        0x22t
        -0x5ft
        0x7ct
    .end array-data

    :array_2
    .array-data 1
        -0x4t
        -0x3bt
        -0x38t
        -0x38t
        -0x75t
        -0x7bt
        -0x57t
        -0xat
        0x3ft
        -0x46t
        0x67t
        -0x27t
        -0x1at
        0x74t
        -0x26t
        0x46t
        0x6ct
        0x72t
        -0x57t
        -0x74t
        -0x5et
        -0x79t
        -0xdt
        0x43t
        -0x5t
        0x57t
        0x21t
        -0x30t
        -0x68t
        0x71t
        0x3ft
        -0x7at
    .end array-data

    :array_3
    .array-data 1
        0x5ct
        -0x72t
        -0x5t
        -0x47t
        -0x3ct
        0x51t
        -0x5bt
        -0x69t
        0x37t
        -0x13t
        0x2ct
        0x6ct
        0x20t
        0x23t
        0xat
        -0x52t
        0x47t
        0x45t
        -0x7dt
        -0x64t
        -0x60t
        0x1dt
        -0x80t
        -0x78t
        -0x2at
        -0x24t
        -0x37t
        0x2t
        0xet
        0x52t
        -0x2et
        -0x3bt
    .end array-data

    :array_4
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2233
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    const-string v2, "android.hardware.radio@1.2::IRadioIndication"

    const-string v3, "android.hardware.radio@1.1::IRadioIndication"

    const-string v4, "android.hardware.radio@1.0::IRadioIndication"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2250
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2272
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2294
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2296
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

    .line 2324
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    const-string v1, "android.hardware.radio@1.2::IRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    const-string v3, "android.hardware.radio@1.0::IRadioIndication"

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 3897
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 3898
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_ca

    .line 3899
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3901
    goto/16 :goto_7

    .line 3884
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 3885
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 3886
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3887
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3888
    goto/16 :goto_7

    .line 3889
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3891
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 3892
    goto/16 :goto_7

    .line 3868
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 3869
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 3870
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3872
    goto/16 :goto_7

    .line 3873
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3875
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3876
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3877
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3879
    goto/16 :goto_7

    .line 3853
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    move v1, v6

    .line 3854
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 3855
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3857
    goto/16 :goto_7

    .line 3858
    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3860
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->ping()V

    .line 3861
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3863
    goto/16 :goto_7

    .line 3843
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 3844
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_ca

    .line 3845
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3847
    goto/16 :goto_7

    .line 3830
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 3831
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 3832
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3834
    goto/16 :goto_7

    .line 3835
    :cond_9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3837
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 3838
    goto/16 :goto_7

    .line 3791
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 3792
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 3793
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3795
    goto/16 :goto_7

    .line 3796
    :cond_b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3798
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3799
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3801
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 3803
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3804
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3805
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3806
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 3807
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 3809
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 3810
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 3812
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 3816
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3817
    nop

    .line 3807
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3813
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3820
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3822
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3824
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3825
    goto/16 :goto_7

    .line 3775
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v6, v5

    :goto_4
    move v1, v6

    .line 3776
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 3777
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3779
    goto/16 :goto_7

    .line 3780
    :cond_f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3782
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3783
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3784
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3786
    goto/16 :goto_7

    .line 3758
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v6, v5

    :goto_5
    move v1, v6

    .line 3759
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 3760
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3762
    goto/16 :goto_7

    .line 3763
    :cond_11
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 3766
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3767
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3768
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3770
    goto/16 :goto_7

    .line 3742
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v6, v5

    :goto_6
    move v1, v6

    .line 3743
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 3744
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3746
    goto/16 :goto_7

    .line 3747
    :cond_13
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3749
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3750
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3751
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3753
    goto/16 :goto_7

    .line 3726
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v0, v5

    .line 3727
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15

    .line 3728
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3730
    goto/16 :goto_7

    .line 3731
    :cond_15
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3734
    .local v1, "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3735
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3736
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3737
    goto/16 :goto_7

    .line 3711
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 3712
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 3713
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3715
    goto/16 :goto_7

    .line 3716
    :cond_17
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3719
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3720
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 3721
    goto/16 :goto_7

    .line 3696
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 3697
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 3698
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3700
    goto/16 :goto_7

    .line 3701
    :cond_19
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3704
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3705
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 3706
    goto/16 :goto_7

    .line 3679
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 3680
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 3681
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3683
    goto/16 :goto_7

    .line 3684
    :cond_1b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3687
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3688
    .local v2, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3689
    .local v3, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3690
    .local v4, "extra":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    goto/16 :goto_7

    .line 3665
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extra":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 3666
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 3667
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3669
    goto/16 :goto_7

    .line 3670
    :cond_1d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3673
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 3674
    goto/16 :goto_7

    .line 3648
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 3649
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 3650
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3652
    goto/16 :goto_7

    .line 3653
    :cond_1f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3656
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3657
    .local v2, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3658
    .local v3, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3659
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 3660
    goto/16 :goto_7

    .line 3631
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "phoneId":I
    .end local v3    # "configId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 3632
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 3633
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3635
    goto/16 :goto_7

    .line 3636
    :cond_21
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3639
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3640
    .restart local v2    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3641
    .local v3, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3642
    .local v4, "value":I
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 3643
    goto/16 :goto_7

    .line 3617
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "phoneId":I
    .end local v3    # "featureId":I
    .end local v4    # "value":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 3618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 3619
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3621
    goto/16 :goto_7

    .line 3622
    :cond_23
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3625
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 3626
    goto/16 :goto_7

    .line 3602
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 3603
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 3604
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3605
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3606
    goto/16 :goto_7

    .line 3607
    :cond_25
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3610
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3611
    .local v2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 3612
    goto/16 :goto_7

    .line 3583
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v7, v5

    .line 3584
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_27

    .line 3585
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3587
    goto/16 :goto_7

    .line 3588
    :cond_27
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3591
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3592
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3593
    .local v13, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3594
    .local v14, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3595
    .local v15, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3596
    .local v16, "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    goto/16 :goto_7

    .line 3568
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 3569
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 3570
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3572
    goto/16 :goto_7

    .line 3573
    :cond_29
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3576
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3577
    .local v2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 3578
    goto/16 :goto_7

    .line 3553
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 3554
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 3555
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3557
    goto/16 :goto_7

    .line 3558
    :cond_2b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3561
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3562
    .local v2, "info":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3563
    goto/16 :goto_7

    .line 3537
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 3538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 3539
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3541
    goto/16 :goto_7

    .line 3542
    :cond_2d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3545
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3546
    .local v2, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3547
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 3548
    goto/16 :goto_7

    .line 3522
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "iid":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 3523
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 3524
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3526
    goto/16 :goto_7

    .line 3527
    :cond_2f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3529
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3530
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3531
    .local v2, "supportLteEcc":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 3532
    goto/16 :goto_7

    .line 3507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "supportLteEcc":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 3508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 3509
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3511
    goto/16 :goto_7

    .line 3512
    :cond_31
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3515
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3516
    .local v2, "count":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 3517
    goto/16 :goto_7

    .line 3493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "count":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 3494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 3495
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3497
    goto/16 :goto_7

    .line 3498
    :cond_33
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3501
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 3502
    goto/16 :goto_7

    .line 3479
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 3480
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 3481
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3483
    goto/16 :goto_7

    .line 3484
    :cond_35
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3487
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 3488
    goto/16 :goto_7

    .line 3463
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 3464
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 3465
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3467
    goto/16 :goto_7

    .line 3468
    :cond_37
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3471
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3472
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3473
    .local v3, "capability":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsBearerDeactivation(IILjava/lang/String;)V

    .line 3474
    goto/16 :goto_7

    .line 3447
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 3448
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 3449
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3450
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3451
    goto/16 :goto_7

    .line 3452
    :cond_39
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3455
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3456
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3457
    .restart local v3    # "capability":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsBearerActivation(IILjava/lang/String;)V

    .line 3458
    goto/16 :goto_7

    .line 3432
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 3433
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 3434
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3435
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3436
    goto/16 :goto_7

    .line 3437
    :cond_3b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3440
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3441
    .local v2, "isEnable":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 3442
    goto/16 :goto_7

    .line 3415
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "isEnable":Z
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 3416
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 3417
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3419
    goto/16 :goto_7

    .line 3420
    :cond_3d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3423
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3424
    .local v2, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3425
    .local v3, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3426
    .local v4, "cause":I
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 3427
    goto/16 :goto_7

    .line 3401
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "call_id":I
    .end local v3    # "ectResult":I
    .end local v4    # "cause":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 3402
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 3403
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3405
    goto/16 :goto_7

    .line 3406
    :cond_3f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3409
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 3410
    goto/16 :goto_7

    .line 3387
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 3388
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 3389
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3391
    goto/16 :goto_7

    .line 3392
    :cond_41
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3395
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 3396
    goto/16 :goto_7

    .line 3373
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 3374
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 3375
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3377
    goto/16 :goto_7

    .line 3378
    :cond_43
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3381
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 3382
    goto/16 :goto_7

    .line 3359
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 3360
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 3361
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3362
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3363
    goto/16 :goto_7

    .line 3364
    :cond_45
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3367
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 3368
    goto/16 :goto_7

    .line 3343
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 3344
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 3345
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3347
    goto/16 :goto_7

    .line 3348
    :cond_47
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3351
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3352
    .local v2, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3353
    .local v3, "capability":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 3354
    goto/16 :goto_7

    .line 3324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "registerState":I
    .end local v3    # "capability":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v7, v5

    .line 3325
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_49

    .line 3326
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3328
    goto/16 :goto_7

    .line 3329
    :cond_49
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3332
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3333
    .restart local v12    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3334
    .restart local v13    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3335
    .restart local v14    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3336
    .restart local v15    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3337
    .restart local v16    # "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    goto/16 :goto_7

    .line 3309
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 3310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 3311
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3313
    goto/16 :goto_7

    .line 3314
    :cond_4b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3317
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3318
    .local v2, "status":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 3319
    goto/16 :goto_7

    .line 3292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "status":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 3293
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 3294
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3296
    goto/16 :goto_7

    .line 3297
    :cond_4d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3300
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3301
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3302
    .local v3, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3303
    .local v4, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    goto/16 :goto_7

    .line 3273
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "accountId":Ljava/lang/String;
    .end local v3    # "broadcastFlag":Ljava/lang/String;
    .end local v4    # "xuiInfo":Ljava/lang/String;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v7, v5

    .line 3274
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_4f

    .line 3275
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3277
    goto/16 :goto_7

    .line 3278
    :cond_4f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3281
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3282
    .local v12, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3283
    .local v13, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3284
    .local v14, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3285
    .local v15, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3286
    .local v16, "recvPktLost":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    goto/16 :goto_7

    .line 3257
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "pdnId":Ljava/lang/String;
    .end local v13    # "networkId":Ljava/lang/String;
    .end local v14    # "timer":Ljava/lang/String;
    .end local v15    # "sendPktLost":Ljava/lang/String;
    .end local v16    # "recvPktLost":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 3258
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 3259
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3261
    goto/16 :goto_7

    .line 3262
    :cond_51
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3265
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3266
    .local v2, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3267
    .local v3, "result2":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 3268
    goto/16 :goto_7

    .line 3236
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "result1":Ljava/lang/String;
    .end local v3    # "result2":Ljava/lang/String;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v12, v5

    .line 3237
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_53

    .line 3238
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3240
    goto/16 :goto_7

    .line 3241
    :cond_53
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3244
    .local v13, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3245
    .local v14, "clazz":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3246
    .local v15, "status":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3247
    .local v16, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3248
    .local v17, "lang":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3249
    .local v18, "errorcode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3250
    .local v19, "alertingPattern":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 3251
    .local v20, "sipCause":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    goto/16 :goto_7

    .line 3219
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":I
    .end local v14    # "clazz":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "lang":Ljava/lang/String;
    .end local v18    # "errorcode":Ljava/lang/String;
    .end local v19    # "alertingPattern":Ljava/lang/String;
    .end local v20    # "sipCause":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 3220
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 3221
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3222
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3223
    goto/16 :goto_7

    .line 3224
    :cond_55
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3226
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3227
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3228
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3229
    .local v3, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3230
    .local v4, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    goto/16 :goto_7

    .line 3200
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "localVideoCap":Ljava/lang/String;
    .end local v4    # "remoteVideoCap":Ljava/lang/String;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v7, v5

    .line 3201
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_57

    .line 3202
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3203
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3204
    goto/16 :goto_7

    .line 3205
    :cond_57
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3207
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3208
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3209
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3210
    .local v13, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3211
    .local v14, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3212
    .local v15, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3213
    .local v16, "pau":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    goto/16 :goto_7

    .line 3180
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "callMode":Ljava/lang/String;
    .end local v14    # "videoState":Ljava/lang/String;
    .end local v15    # "audioDirection":Ljava/lang/String;
    .end local v16    # "pau":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v8, v5

    .line 3181
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_59

    .line 3182
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3184
    goto/16 :goto_7

    .line 3185
    :cond_59
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 3188
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3189
    .local v13, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3190
    .local v14, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3191
    .local v15, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3192
    .local v16, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3193
    .local v17, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3194
    .local v18, "reasonText":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    goto/16 :goto_7

    .line 3160
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "callId":Ljava/lang/String;
    .end local v14    # "dir":Ljava/lang/String;
    .end local v15    # "sipMsgType":Ljava/lang/String;
    .end local v16    # "method":Ljava/lang/String;
    .end local v17    # "responseCode":Ljava/lang/String;
    .end local v18    # "reasonText":Ljava/lang/String;
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v8, v5

    .line 3161
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_5b

    .line 3162
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3164
    goto/16 :goto_7

    .line 3165
    :cond_5b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 3168
    .restart local v12    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3169
    .local v13, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3170
    .local v14, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3171
    .local v15, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3172
    .local v16, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3173
    .local v17, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3174
    .local v18, "joinedCallId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    goto/16 :goto_7

    .line 3145
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "confCallId":Ljava/lang/String;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "num":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "cause":Ljava/lang/String;
    .end local v18    # "joinedCallId":Ljava/lang/String;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 3146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 3147
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3149
    goto/16 :goto_7

    .line 3150
    :cond_5d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3153
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3154
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 3155
    goto/16 :goto_7

    .line 3129
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 3130
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 3131
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3133
    goto/16 :goto_7

    .line 3134
    :cond_5f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3137
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 3138
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3139
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 3140
    goto/16 :goto_7

    .line 3113
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 3114
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 3115
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3117
    goto/16 :goto_7

    .line 3118
    :cond_61
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3121
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 3122
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3123
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 3124
    goto/16 :goto_7

    .line 3098
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 3099
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 3100
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3102
    goto/16 :goto_7

    .line 3103
    :cond_63
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3106
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3107
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 3108
    goto/16 :goto_7

    .line 3082
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 3083
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 3084
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3086
    goto/16 :goto_7

    .line 3087
    :cond_65
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3090
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 3091
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3092
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 3093
    goto/16 :goto_7

    .line 3067
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 3068
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 3069
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3071
    goto/16 :goto_7

    .line 3072
    :cond_67
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3075
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3076
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 3077
    goto/16 :goto_7

    .line 3051
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 3052
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 3053
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3054
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3055
    goto/16 :goto_7

    .line 3056
    :cond_69
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3059
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 3060
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3061
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 3062
    goto/16 :goto_7

    .line 3035
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_2b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_6a

    move v5, v6

    :cond_6a
    move v1, v5

    .line 3036
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_6b

    .line 3037
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3038
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3039
    goto/16 :goto_7

    .line 3040
    :cond_6b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3043
    .local v0, "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 3044
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3045
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 3046
    goto/16 :goto_7

    .line 3019
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_2c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_6c

    move v5, v6

    :cond_6c
    move v1, v5

    .line 3020
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_6d

    .line 3021
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3023
    goto/16 :goto_7

    .line 3024
    :cond_6d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3027
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 3028
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3029
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 3030
    goto/16 :goto_7

    .line 3005
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_2d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_6e

    move v5, v6

    :cond_6e
    move v1, v5

    .line 3006
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_6f

    .line 3007
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3009
    goto/16 :goto_7

    .line 3010
    :cond_6f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3013
    .local v0, "info":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 3014
    goto/16 :goto_7

    .line 2990
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 2991
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 2992
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2994
    goto/16 :goto_7

    .line 2995
    :cond_71
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2998
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2999
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 3000
    goto/16 :goto_7

    .line 2974
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 2975
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 2976
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2977
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2978
    goto/16 :goto_7

    .line 2979
    :cond_73
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2982
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2983
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2984
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2985
    goto/16 :goto_7

    .line 2958
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 2959
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 2960
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2962
    goto/16 :goto_7

    .line 2963
    :cond_75
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2966
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2967
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2968
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2969
    goto/16 :goto_7

    .line 2943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 2944
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 2945
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2947
    goto/16 :goto_7

    .line 2948
    :cond_77
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2951
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2952
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2953
    goto/16 :goto_7

    .line 2927
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 2928
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 2929
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2931
    goto/16 :goto_7

    .line 2932
    :cond_79
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2935
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2936
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2937
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2938
    goto/16 :goto_7

    .line 2911
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 2912
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 2913
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2915
    goto/16 :goto_7

    .line 2916
    :cond_7b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2919
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2920
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2921
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2922
    goto/16 :goto_7

    .line 2896
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 2897
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 2898
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2899
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2900
    goto/16 :goto_7

    .line 2901
    :cond_7d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2904
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2905
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2906
    goto/16 :goto_7

    .line 2881
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 2882
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 2883
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2885
    goto/16 :goto_7

    .line 2886
    :cond_7f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2888
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2889
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2890
    .local v2, "state":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2891
    goto/16 :goto_7

    .line 2866
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 2867
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 2868
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2869
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2870
    goto/16 :goto_7

    .line 2871
    :cond_81
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2874
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2875
    .local v2, "activate":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2876
    goto/16 :goto_7

    .line 2852
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "activate":Z
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 2853
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 2854
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2855
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2856
    goto/16 :goto_7

    .line 2857
    :cond_83
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2860
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2861
    goto/16 :goto_7

    .line 2837
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 2838
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 2839
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2841
    goto/16 :goto_7

    .line 2842
    :cond_85
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2845
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2846
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2847
    goto/16 :goto_7

    .line 2822
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 2823
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 2824
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2826
    goto/16 :goto_7

    .line 2827
    :cond_87
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2830
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2831
    .local v2, "rat":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2832
    goto/16 :goto_7

    .line 2808
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "rat":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 2809
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 2810
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2812
    goto/16 :goto_7

    .line 2813
    :cond_89
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2816
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->rilConnected(I)V

    .line 2817
    goto/16 :goto_7

    .line 2794
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 2795
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 2796
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2798
    goto/16 :goto_7

    .line 2799
    :cond_8b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2802
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2803
    goto/16 :goto_7

    .line 2779
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 2780
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 2781
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2783
    goto/16 :goto_7

    .line 2784
    :cond_8d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2787
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2788
    .local v2, "version":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2789
    goto/16 :goto_7

    .line 2764
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "version":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 2765
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 2766
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2767
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2768
    goto/16 :goto_7

    .line 2769
    :cond_8f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2772
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2773
    .local v2, "cdmaSource":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2774
    goto/16 :goto_7

    .line 2750
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cdmaSource":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 2751
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 2752
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2754
    goto/16 :goto_7

    .line 2755
    :cond_91
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2758
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->resendIncallMute(I)V

    .line 2759
    goto/16 :goto_7

    .line 2735
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 2736
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 2737
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2739
    goto/16 :goto_7

    .line 2740
    :cond_93
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2743
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2744
    .local v2, "start":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2745
    goto/16 :goto_7

    .line 2719
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "start":Z
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 2720
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 2721
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2723
    goto/16 :goto_7

    .line 2724
    :cond_95
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2727
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2728
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2729
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2730
    goto/16 :goto_7

    .line 2704
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v0, v5

    .line 2705
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_97

    .line 2706
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2708
    goto/16 :goto_7

    .line 2709
    :cond_97
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2712
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2713
    .local v2, "status":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2714
    goto/16 :goto_7

    .line 2688
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "status":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 2689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 2690
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2692
    goto/16 :goto_7

    .line 2693
    :cond_99
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2696
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2697
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2698
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2699
    goto/16 :goto_7

    .line 2674
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 2675
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 2676
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2678
    goto/16 :goto_7

    .line 2679
    :cond_9b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2682
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2683
    goto/16 :goto_7

    .line 2659
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 2660
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 2661
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2663
    goto/16 :goto_7

    .line 2664
    :cond_9d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2667
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2668
    .local v2, "state":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2669
    goto/16 :goto_7

    .line 2645
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 2646
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 2647
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2649
    goto/16 :goto_7

    .line 2650
    :cond_9f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2653
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2654
    goto/16 :goto_7

    .line 2630
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 2631
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 2632
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2634
    goto/16 :goto_7

    .line 2635
    :cond_a1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2638
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2639
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2640
    goto/16 :goto_7

    .line 2614
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 2615
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 2616
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2618
    goto/16 :goto_7

    .line 2619
    :cond_a3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2622
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2623
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2624
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2625
    goto/16 :goto_7

    .line 2600
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 2601
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 2602
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2604
    goto/16 :goto_7

    .line 2605
    :cond_a5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2608
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->simStatusChanged(I)V

    .line 2609
    goto/16 :goto_7

    .line 2583
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 2584
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 2585
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2587
    goto/16 :goto_7

    .line 2588
    :cond_a7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2591
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2592
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2593
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2594
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2595
    goto/16 :goto_7

    .line 2567
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 2568
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 2569
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2571
    goto/16 :goto_7

    .line 2572
    :cond_a9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2575
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2576
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2577
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2578
    goto/16 :goto_7

    .line 2553
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 2554
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 2555
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2557
    goto/16 :goto_7

    .line 2558
    :cond_ab
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2561
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2562
    goto/16 :goto_7

    .line 2538
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 2539
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 2540
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2542
    goto/16 :goto_7

    .line 2543
    :cond_ad
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2545
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2546
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2547
    .local v2, "timeout":J
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2548
    goto/16 :goto_7

    .line 2523
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "timeout":J
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 2524
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 2525
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2527
    goto/16 :goto_7

    .line 2528
    :cond_af
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2531
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2532
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2533
    goto/16 :goto_7

    .line 2508
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 2509
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 2510
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2511
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2512
    goto/16 :goto_7

    .line 2513
    :cond_b1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2516
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2517
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2518
    goto/16 :goto_7

    .line 2494
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 2495
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 2496
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2497
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2498
    goto/16 :goto_7

    .line 2499
    :cond_b3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2502
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2503
    goto/16 :goto_7

    .line 2478
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 2479
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 2480
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2482
    goto/16 :goto_7

    .line 2483
    :cond_b5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2486
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2487
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2488
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2489
    goto/16 :goto_7

    .line 2463
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 2464
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 2465
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2467
    goto/16 :goto_7

    .line 2468
    :cond_b7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2471
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2472
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2473
    goto/16 :goto_7

    .line 2447
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 2448
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 2449
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2450
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2451
    goto/16 :goto_7

    .line 2452
    :cond_b9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2455
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2456
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2457
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2458
    goto/16 :goto_7

    .line 2431
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 2432
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 2433
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2434
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2435
    goto/16 :goto_7

    .line 2436
    :cond_bb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2439
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2440
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2441
    .local v3, "receivedTime":J
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2442
    goto/16 :goto_7

    .line 2415
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 2416
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 2417
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2419
    goto/16 :goto_7

    .line 2420
    :cond_bd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2423
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2424
    .local v2, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2425
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2426
    goto/16 :goto_7

    .line 2400
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 2401
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 2402
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2403
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2404
    goto/16 :goto_7

    .line 2405
    :cond_bf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2408
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2409
    .local v2, "recordNumber":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2410
    goto/16 :goto_7

    .line 2385
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "recordNumber":I
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 2386
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 2387
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2389
    goto/16 :goto_7

    .line 2390
    :cond_c1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2393
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2394
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2395
    goto/16 :goto_7

    .line 2370
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 2371
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 2372
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2374
    goto/16 :goto_7

    .line 2375
    :cond_c3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2378
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2379
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2380
    goto :goto_7

    .line 2356
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 2357
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 2358
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2360
    goto :goto_7

    .line 2361
    :cond_c5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2364
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->networkStateChanged(I)V

    .line 2365
    goto :goto_7

    .line 2342
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 2343
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 2344
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2346
    goto :goto_7

    .line 2347
    :cond_c7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2350
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 2351
    goto :goto_7

    .line 2327
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 2328
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 2329
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2330
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2331
    goto :goto_7

    .line 2332
    :cond_c9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2335
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2336
    .local v2, "radioState":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 2337
    nop

    .line 3906
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "radioState":I
    :cond_ca
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2278
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2306
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    return-object p0

    .line 2309
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

    .line 2313
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2314
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2300
    const/4 v0, 0x1

    return v0
.end method
