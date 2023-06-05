.class public abstract Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1962
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1965
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

    .line 1984
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2027
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2028
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2029
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2030
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2031
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

    .line 1996
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

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

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x7at
        -0x54t
        0x39t
        -0x39t
        -0x45t
        -0x11t
        -0x3bt
        -0x1ft
        -0x65t
        0x1et
        0x4dt
        -0x5dt
        -0x6dt
        -0x56t
        0x56t
        0x2at
        -0x37t
        -0x1t
        -0x50t
        0x1et
        -0x24t
        0x5ct
        0x67t
        -0x39t
        -0x33t
        0x6et
        0x35t
        -0x18t
        -0x80t
        0x26t
        -0x7ct
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        -0x6bt
        0x3dt
        0x77t
        -0x62t
        0x13t
        -0x7bt
        0x24t
        -0x2bt
        0x7at
        0x6et
        0x60t
        -0x49t
        -0x5bt
        -0x46t
        -0x40t
        -0x2t
        -0x24t
        -0x2t
        -0x69t
        0x27t
        0x58t
        0x1ft
        -0x67t
        0x52t
        0x39t
        0x0t
        -0x7ft
        -0x2et
        0x53t
        0x21t
        -0x6at
        -0x21t
    .end array-data

    :array_2
    .array-data 1
        0x67t
        -0x26t
        -0x1t
        -0x5at
        0x74t
        -0x67t
        -0x78t
        0x6dt
        -0x76t
        -0x48t
        0x70t
        -0x58t
        -0xct
        -0x79t
        -0x25t
        0x53t
        -0xbt
        -0x20t
        -0x50t
        -0x67t
        0x7bt
        0x2ft
        -0x61t
        0x14t
        0x21t
        -0x4t
        0x7et
        0x54t
        0x3dt
        -0xdt
        0x5at
        -0x24t
    .end array-data

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1970
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.11::IImsRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.6::IImsRadioIndication"

    const-string v3, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    const-string v4, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    const-string v5, "android.hardware.radio@1.2::IRadioIndication"

    const-string v6, "android.hardware.radio@1.1::IRadioIndication"

    const-string v7, "android.hardware.radio@1.0::IRadioIndication"

    const-string v8, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1990
    const-string v0, "vendor.mediatek.hardware.radio@3.11::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2015
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2037
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2039
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

    .line 2067
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

    .line 3690
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 3691
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_d0

    .line 3692
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3694
    goto/16 :goto_7

    .line 3677
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 3678
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 3679
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3681
    goto/16 :goto_7

    .line 3682
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3684
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 3685
    goto/16 :goto_7

    .line 3661
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 3662
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 3663
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3665
    goto/16 :goto_7

    .line 3666
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3668
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3669
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3670
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3672
    goto/16 :goto_7

    .line 3646
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

    .line 3647
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 3648
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3649
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3650
    goto/16 :goto_7

    .line 3651
    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3653
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->ping()V

    .line 3654
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3655
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3656
    goto/16 :goto_7

    .line 3636
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 3637
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_d0

    .line 3638
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3640
    goto/16 :goto_7

    .line 3623
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 3624
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 3625
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3627
    goto/16 :goto_7

    .line 3628
    :cond_9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3630
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 3631
    goto/16 :goto_7

    .line 3584
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 3585
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 3586
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3588
    goto/16 :goto_7

    .line 3589
    :cond_b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3591
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3592
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3594
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 3596
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3597
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3598
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3599
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 3600
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 3602
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 3603
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 3605
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 3609
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3610
    nop

    .line 3600
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3606
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3613
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3615
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3617
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3618
    goto/16 :goto_7

    .line 3568
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

    .line 3569
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 3570
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3572
    goto/16 :goto_7

    .line 3573
    :cond_f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3575
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3576
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3577
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3579
    goto/16 :goto_7

    .line 3551
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

    .line 3552
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 3553
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3555
    goto/16 :goto_7

    .line 3556
    :cond_11
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 3559
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3560
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3561
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3563
    goto/16 :goto_7

    .line 3535
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

    .line 3536
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 3537
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3539
    goto/16 :goto_7

    .line 3540
    :cond_13
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3542
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3543
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3544
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3545
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3546
    goto/16 :goto_7

    .line 3514
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v12, v5

    .line 3515
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_15

    .line 3516
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3518
    goto/16 :goto_7

    .line 3519
    :cond_15
    const-string v0, "vendor.mediatek.hardware.radio@3.11::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3522
    .local v13, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3523
    .local v14, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3524
    .local v15, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3525
    .local v16, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3526
    .local v17, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3527
    .local v18, "recvPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3528
    .local v19, "jitter":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 3529
    .local v20, "delay":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsRtpInfoReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    goto/16 :goto_7

    .line 3499
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":I
    .end local v14    # "pdnId":Ljava/lang/String;
    .end local v15    # "networkId":Ljava/lang/String;
    .end local v16    # "timer":Ljava/lang/String;
    .end local v17    # "sendPktLost":Ljava/lang/String;
    .end local v18    # "recvPktLost":Ljava/lang/String;
    .end local v19    # "jitter":Ljava/lang/String;
    .end local v20    # "delay":Ljava/lang/String;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 3500
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 3501
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3503
    goto/16 :goto_7

    .line 3504
    :cond_17
    const-string v1, "vendor.mediatek.hardware.radio@3.6::IImsRadioIndication"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3507
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3508
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsRedialEmergencyIndication(ILjava/lang/String;)V

    .line 3509
    goto/16 :goto_7

    .line 3485
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 3486
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 3487
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3489
    goto/16 :goto_7

    .line 3490
    :cond_19
    const-string v1, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3493
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 3494
    goto/16 :goto_7

    .line 3469
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 3470
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 3471
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3473
    goto/16 :goto_7

    .line 3474
    :cond_1b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3477
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3478
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3479
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3480
    goto/16 :goto_7

    .line 3454
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 3455
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 3456
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3458
    goto/16 :goto_7

    .line 3459
    :cond_1d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3462
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3463
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 3464
    goto/16 :goto_7

    .line 3439
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 3440
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 3441
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3443
    goto/16 :goto_7

    .line 3444
    :cond_1f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3447
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3448
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 3449
    goto/16 :goto_7

    .line 3422
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 3423
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 3424
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3426
    goto/16 :goto_7

    .line 3427
    :cond_21
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3430
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3431
    .local v2, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3432
    .local v3, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3433
    .local v4, "extra":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    goto/16 :goto_7

    .line 3408
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extra":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 3409
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 3410
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3412
    goto/16 :goto_7

    .line 3413
    :cond_23
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3416
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 3417
    goto/16 :goto_7

    .line 3391
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 3392
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 3393
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3394
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3395
    goto/16 :goto_7

    .line 3396
    :cond_25
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3399
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3400
    .local v2, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3401
    .local v3, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3402
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 3403
    goto/16 :goto_7

    .line 3374
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "phoneId":I
    .end local v3    # "configId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 3375
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 3376
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3377
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3378
    goto/16 :goto_7

    .line 3379
    :cond_27
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3382
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3383
    .restart local v2    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3384
    .local v3, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3385
    .local v4, "value":I
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 3386
    goto/16 :goto_7

    .line 3360
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "phoneId":I
    .end local v3    # "featureId":I
    .end local v4    # "value":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 3361
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 3362
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3364
    goto/16 :goto_7

    .line 3365
    :cond_29
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3368
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 3369
    goto/16 :goto_7

    .line 3345
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 3346
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 3347
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3349
    goto/16 :goto_7

    .line 3350
    :cond_2b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3353
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3354
    .local v2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 3355
    goto/16 :goto_7

    .line 3326
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v7, v5

    .line 3327
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_2d

    .line 3328
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3330
    goto/16 :goto_7

    .line 3331
    :cond_2d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3334
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3335
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3336
    .local v13, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3337
    .local v14, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3338
    .local v15, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3339
    .local v16, "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    goto/16 :goto_7

    .line 3311
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 3312
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 3313
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3315
    goto/16 :goto_7

    .line 3316
    :cond_2f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3319
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3320
    .local v2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 3321
    goto/16 :goto_7

    .line 3296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 3297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 3298
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3300
    goto/16 :goto_7

    .line 3301
    :cond_31
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3304
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3305
    .local v2, "info":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3306
    goto/16 :goto_7

    .line 3280
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 3281
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 3282
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3283
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3284
    goto/16 :goto_7

    .line 3285
    :cond_33
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3288
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3289
    .local v2, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3290
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 3291
    goto/16 :goto_7

    .line 3265
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "iid":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 3266
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 3267
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3269
    goto/16 :goto_7

    .line 3270
    :cond_35
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3273
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3274
    .local v2, "supportLteEcc":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 3275
    goto/16 :goto_7

    .line 3250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "supportLteEcc":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 3251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 3252
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3254
    goto/16 :goto_7

    .line 3255
    :cond_37
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3258
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3259
    .local v2, "count":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 3260
    goto/16 :goto_7

    .line 3236
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "count":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 3237
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 3238
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3240
    goto/16 :goto_7

    .line 3241
    :cond_39
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3244
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 3245
    goto/16 :goto_7

    .line 3222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 3223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 3224
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3226
    goto/16 :goto_7

    .line 3227
    :cond_3b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3230
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 3231
    goto/16 :goto_7

    .line 3206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 3207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 3208
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3210
    goto/16 :goto_7

    .line 3211
    :cond_3d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3214
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3215
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3216
    .local v3, "capability":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsBearerDeactivation(IILjava/lang/String;)V

    .line 3217
    goto/16 :goto_7

    .line 3190
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 3191
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 3192
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3194
    goto/16 :goto_7

    .line 3195
    :cond_3f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3198
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3199
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3200
    .restart local v3    # "capability":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsBearerActivation(IILjava/lang/String;)V

    .line 3201
    goto/16 :goto_7

    .line 3175
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 3176
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 3177
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3179
    goto/16 :goto_7

    .line 3180
    :cond_41
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3183
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3184
    .local v2, "isEnable":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 3185
    goto/16 :goto_7

    .line 3158
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "isEnable":Z
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 3159
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 3160
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3162
    goto/16 :goto_7

    .line 3163
    :cond_43
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3166
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3167
    .local v2, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3168
    .local v3, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3169
    .local v4, "cause":I
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 3170
    goto/16 :goto_7

    .line 3144
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "call_id":I
    .end local v3    # "ectResult":I
    .end local v4    # "cause":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 3145
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 3146
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3148
    goto/16 :goto_7

    .line 3149
    :cond_45
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3152
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 3153
    goto/16 :goto_7

    .line 3130
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 3131
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 3132
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3134
    goto/16 :goto_7

    .line 3135
    :cond_47
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3138
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 3139
    goto/16 :goto_7

    .line 3116
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v0, v5

    .line 3117
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_49

    .line 3118
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3119
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3120
    goto/16 :goto_7

    .line 3121
    :cond_49
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3124
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 3125
    goto/16 :goto_7

    .line 3102
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 3103
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 3104
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3106
    goto/16 :goto_7

    .line 3107
    :cond_4b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3110
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 3111
    goto/16 :goto_7

    .line 3086
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 3087
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 3088
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3089
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3090
    goto/16 :goto_7

    .line 3091
    :cond_4d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3093
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3094
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3095
    .local v2, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3096
    .local v3, "capability":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 3097
    goto/16 :goto_7

    .line 3067
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "registerState":I
    .end local v3    # "capability":I
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v7, v5

    .line 3068
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_4f

    .line 3069
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3071
    goto/16 :goto_7

    .line 3072
    :cond_4f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3075
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3076
    .restart local v12    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3077
    .restart local v13    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3078
    .restart local v14    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3079
    .restart local v15    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3080
    .restart local v16    # "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    goto/16 :goto_7

    .line 3052
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 3053
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 3054
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3056
    goto/16 :goto_7

    .line 3057
    :cond_51
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3060
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3061
    .local v2, "status":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 3062
    goto/16 :goto_7

    .line 3035
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "status":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v0, v5

    .line 3036
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_53

    .line 3037
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3038
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3039
    goto/16 :goto_7

    .line 3040
    :cond_53
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3043
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3044
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3045
    .local v3, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3046
    .local v4, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    goto/16 :goto_7

    .line 3016
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "accountId":Ljava/lang/String;
    .end local v3    # "broadcastFlag":Ljava/lang/String;
    .end local v4    # "xuiInfo":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v7, v5

    .line 3017
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_55

    .line 3018
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3020
    goto/16 :goto_7

    .line 3021
    :cond_55
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3024
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3025
    .local v12, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3026
    .local v13, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3027
    .local v14, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3028
    .local v15, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3029
    .local v16, "recvPktLost":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    goto/16 :goto_7

    .line 3000
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "pdnId":Ljava/lang/String;
    .end local v13    # "networkId":Ljava/lang/String;
    .end local v14    # "timer":Ljava/lang/String;
    .end local v15    # "sendPktLost":Ljava/lang/String;
    .end local v16    # "recvPktLost":Ljava/lang/String;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 3001
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 3002
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3004
    goto/16 :goto_7

    .line 3005
    :cond_57
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3008
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3009
    .local v2, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3010
    .local v3, "result2":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 3011
    goto/16 :goto_7

    .line 2979
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "result1":Ljava/lang/String;
    .end local v3    # "result2":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v12, v5

    .line 2980
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_59

    .line 2981
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2983
    goto/16 :goto_7

    .line 2984
    :cond_59
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2987
    .local v13, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2988
    .local v14, "clazz":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2989
    .local v15, "status":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2990
    .local v16, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2991
    .local v17, "lang":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2992
    .local v18, "errorcode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2993
    .local v19, "alertingPattern":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2994
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    goto/16 :goto_7

    .line 2962
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":I
    .end local v14    # "clazz":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "lang":Ljava/lang/String;
    .end local v18    # "errorcode":Ljava/lang/String;
    .end local v19    # "alertingPattern":Ljava/lang/String;
    .end local v20    # "sipCause":Ljava/lang/String;
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 2963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 2964
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2966
    goto/16 :goto_7

    .line 2967
    :cond_5b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2970
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2971
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2972
    .local v3, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2973
    .local v4, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    goto/16 :goto_7

    .line 2943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "localVideoCap":Ljava/lang/String;
    .end local v4    # "remoteVideoCap":Ljava/lang/String;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v7, v5

    .line 2944
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_5d

    .line 2945
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2947
    goto/16 :goto_7

    .line 2948
    :cond_5d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2951
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2952
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2953
    .local v13, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2954
    .local v14, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2955
    .local v15, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2956
    .local v16, "pau":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    goto/16 :goto_7

    .line 2923
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "callMode":Ljava/lang/String;
    .end local v14    # "videoState":Ljava/lang/String;
    .end local v15    # "audioDirection":Ljava/lang/String;
    .end local v16    # "pau":Ljava/lang/String;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v8, v5

    .line 2924
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_5f

    .line 2925
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2927
    goto/16 :goto_7

    .line 2928
    :cond_5f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2931
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2932
    .local v13, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2933
    .local v14, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2934
    .local v15, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2935
    .local v16, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2936
    .local v17, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2937
    .local v18, "reasonText":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    goto/16 :goto_7

    .line 2903
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "callId":Ljava/lang/String;
    .end local v14    # "dir":Ljava/lang/String;
    .end local v15    # "sipMsgType":Ljava/lang/String;
    .end local v16    # "method":Ljava/lang/String;
    .end local v17    # "responseCode":Ljava/lang/String;
    .end local v18    # "reasonText":Ljava/lang/String;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v8, v5

    .line 2904
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_61

    .line 2905
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2907
    goto/16 :goto_7

    .line 2908
    :cond_61
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2911
    .restart local v12    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2912
    .local v13, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2913
    .local v14, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2914
    .local v15, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2915
    .local v16, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2916
    .local v17, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2917
    .local v18, "joinedCallId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    goto/16 :goto_7

    .line 2888
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "confCallId":Ljava/lang/String;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "num":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "cause":Ljava/lang/String;
    .end local v18    # "joinedCallId":Ljava/lang/String;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 2889
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 2890
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2892
    goto/16 :goto_7

    .line 2893
    :cond_63
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2896
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2897
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 2898
    goto/16 :goto_7

    .line 2872
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 2873
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 2874
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2876
    goto/16 :goto_7

    .line 2877
    :cond_65
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2880
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 2881
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2882
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 2883
    goto/16 :goto_7

    .line 2856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 2857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 2858
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2860
    goto/16 :goto_7

    .line 2861
    :cond_67
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2864
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2865
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2866
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2867
    goto/16 :goto_7

    .line 2841
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 2842
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 2843
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2845
    goto/16 :goto_7

    .line 2846
    :cond_69
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2849
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2850
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2851
    goto/16 :goto_7

    .line 2825
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 2826
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 2827
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2829
    goto/16 :goto_7

    .line 2830
    :cond_6b
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2833
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2834
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2835
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2836
    goto/16 :goto_7

    .line 2810
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 2811
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 2812
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2814
    goto/16 :goto_7

    .line 2815
    :cond_6d
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2818
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2819
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2820
    goto/16 :goto_7

    .line 2794
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 2795
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 2796
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2798
    goto/16 :goto_7

    .line 2799
    :cond_6f
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2802
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2803
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2804
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2805
    goto/16 :goto_7

    .line 2778
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_2e
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_70

    move v5, v6

    :cond_70
    move v1, v5

    .line 2779
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_71

    .line 2780
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2781
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2782
    goto/16 :goto_7

    .line 2783
    :cond_71
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2786
    .local v0, "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2787
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2788
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2789
    goto/16 :goto_7

    .line 2762
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_2f
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_72

    move v5, v6

    :cond_72
    move v1, v5

    .line 2763
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_73

    .line 2764
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2765
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2766
    goto/16 :goto_7

    .line 2767
    :cond_73
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2769
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2770
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2771
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2772
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2773
    goto/16 :goto_7

    .line 2748
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_30
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_74

    move v5, v6

    :cond_74
    move v1, v5

    .line 2749
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_75

    .line 2750
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2751
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2752
    goto/16 :goto_7

    .line 2753
    :cond_75
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2756
    .local v0, "info":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2757
    goto/16 :goto_7

    .line 2733
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 2734
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 2735
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2737
    goto/16 :goto_7

    .line 2738
    :cond_77
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2741
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2742
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2743
    goto/16 :goto_7

    .line 2717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 2718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 2719
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2721
    goto/16 :goto_7

    .line 2722
    :cond_79
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2725
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2726
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2727
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2728
    goto/16 :goto_7

    .line 2701
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 2702
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 2703
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2704
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2705
    goto/16 :goto_7

    .line 2706
    :cond_7b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2709
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2710
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2711
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2712
    goto/16 :goto_7

    .line 2686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 2687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 2688
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2690
    goto/16 :goto_7

    .line 2691
    :cond_7d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2694
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2695
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2696
    goto/16 :goto_7

    .line 2670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 2671
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 2672
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2674
    goto/16 :goto_7

    .line 2675
    :cond_7f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2678
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2679
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2680
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2681
    goto/16 :goto_7

    .line 2654
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 2655
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 2656
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2658
    goto/16 :goto_7

    .line 2659
    :cond_81
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2662
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2663
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2664
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2665
    goto/16 :goto_7

    .line 2639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 2640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 2641
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2643
    goto/16 :goto_7

    .line 2644
    :cond_83
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2647
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2648
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2649
    goto/16 :goto_7

    .line 2624
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 2625
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 2626
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2628
    goto/16 :goto_7

    .line 2629
    :cond_85
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2632
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2633
    .local v2, "state":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2634
    goto/16 :goto_7

    .line 2609
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 2610
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 2611
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2612
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2613
    goto/16 :goto_7

    .line 2614
    :cond_87
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2617
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2618
    .local v2, "activate":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2619
    goto/16 :goto_7

    .line 2595
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "activate":Z
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 2596
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 2597
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2599
    goto/16 :goto_7

    .line 2600
    :cond_89
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2603
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2604
    goto/16 :goto_7

    .line 2580
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 2581
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 2582
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2584
    goto/16 :goto_7

    .line 2585
    :cond_8b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2588
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2589
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2590
    goto/16 :goto_7

    .line 2565
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 2566
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 2567
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2569
    goto/16 :goto_7

    .line 2570
    :cond_8d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2573
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2574
    .local v2, "rat":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2575
    goto/16 :goto_7

    .line 2551
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "rat":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 2552
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 2553
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2555
    goto/16 :goto_7

    .line 2556
    :cond_8f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2559
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->rilConnected(I)V

    .line 2560
    goto/16 :goto_7

    .line 2537
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 2538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 2539
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2541
    goto/16 :goto_7

    .line 2542
    :cond_91
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2545
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2546
    goto/16 :goto_7

    .line 2522
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 2523
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 2524
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2526
    goto/16 :goto_7

    .line 2527
    :cond_93
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2529
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2530
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2531
    .local v2, "version":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2532
    goto/16 :goto_7

    .line 2507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "version":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 2508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 2509
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2511
    goto/16 :goto_7

    .line 2512
    :cond_95
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2515
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2516
    .local v2, "cdmaSource":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2517
    goto/16 :goto_7

    .line 2493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cdmaSource":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v0, v5

    .line 2494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_97

    .line 2495
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2497
    goto/16 :goto_7

    .line 2498
    :cond_97
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2501
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->resendIncallMute(I)V

    .line 2502
    goto/16 :goto_7

    .line 2478
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 2479
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 2480
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2482
    goto/16 :goto_7

    .line 2483
    :cond_99
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2486
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2487
    .local v2, "start":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2488
    goto/16 :goto_7

    .line 2462
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "start":Z
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 2463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 2464
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2466
    goto/16 :goto_7

    .line 2467
    :cond_9b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2470
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2471
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2472
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2473
    goto/16 :goto_7

    .line 2447
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 2448
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 2449
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2450
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2451
    goto/16 :goto_7

    .line 2452
    :cond_9d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2455
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2456
    .local v2, "status":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2457
    goto/16 :goto_7

    .line 2431
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "status":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 2432
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 2433
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2434
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2435
    goto/16 :goto_7

    .line 2436
    :cond_9f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2439
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2440
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2441
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2442
    goto/16 :goto_7

    .line 2417
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 2418
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 2419
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2421
    goto/16 :goto_7

    .line 2422
    :cond_a1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2425
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2426
    goto/16 :goto_7

    .line 2402
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 2403
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 2404
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2406
    goto/16 :goto_7

    .line 2407
    :cond_a3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2410
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2411
    .local v2, "state":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2412
    goto/16 :goto_7

    .line 2388
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":I
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 2389
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 2390
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2392
    goto/16 :goto_7

    .line 2393
    :cond_a5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2396
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2397
    goto/16 :goto_7

    .line 2373
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 2374
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 2375
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2377
    goto/16 :goto_7

    .line 2378
    :cond_a7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2381
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2382
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2383
    goto/16 :goto_7

    .line 2357
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 2358
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 2359
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2361
    goto/16 :goto_7

    .line 2362
    :cond_a9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2365
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2366
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2367
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2368
    goto/16 :goto_7

    .line 2343
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 2344
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 2345
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2347
    goto/16 :goto_7

    .line 2348
    :cond_ab
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2351
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->simStatusChanged(I)V

    .line 2352
    goto/16 :goto_7

    .line 2326
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 2327
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 2328
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2330
    goto/16 :goto_7

    .line 2331
    :cond_ad
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2334
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2335
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2336
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2337
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2338
    goto/16 :goto_7

    .line 2310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 2311
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 2312
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2314
    goto/16 :goto_7

    .line 2315
    :cond_af
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2318
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2319
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2320
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2321
    goto/16 :goto_7

    .line 2296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 2297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 2298
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2300
    goto/16 :goto_7

    .line 2301
    :cond_b1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2304
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2305
    goto/16 :goto_7

    .line 2281
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 2282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 2283
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2285
    goto/16 :goto_7

    .line 2286
    :cond_b3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2289
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2290
    .local v2, "timeout":J
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2291
    goto/16 :goto_7

    .line 2266
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "timeout":J
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 2267
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 2268
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2270
    goto/16 :goto_7

    .line 2271
    :cond_b5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2273
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2274
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2275
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2276
    goto/16 :goto_7

    .line 2251
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 2252
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 2253
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2255
    goto/16 :goto_7

    .line 2256
    :cond_b7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2259
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2260
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2261
    goto/16 :goto_7

    .line 2237
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 2238
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 2239
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2241
    goto/16 :goto_7

    .line 2242
    :cond_b9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2245
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2246
    goto/16 :goto_7

    .line 2221
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 2222
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 2223
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2225
    goto/16 :goto_7

    .line 2226
    :cond_bb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2229
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2230
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2231
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2232
    goto/16 :goto_7

    .line 2206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 2207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 2208
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2210
    goto/16 :goto_7

    .line 2211
    :cond_bd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2214
    .restart local v1    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2215
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2216
    goto/16 :goto_7

    .line 2190
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 2191
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 2192
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2194
    goto/16 :goto_7

    .line 2195
    :cond_bf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2198
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2199
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2200
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2201
    goto/16 :goto_7

    .line 2174
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 2175
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 2176
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2178
    goto/16 :goto_7

    .line 2179
    :cond_c1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2182
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2183
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2184
    .local v3, "receivedTime":J
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2185
    goto/16 :goto_7

    .line 2158
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 2159
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 2160
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2162
    goto/16 :goto_7

    .line 2163
    :cond_c3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2166
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2167
    .local v2, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2168
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2169
    goto/16 :goto_7

    .line 2143
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 2144
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 2145
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2147
    goto/16 :goto_7

    .line 2148
    :cond_c5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2151
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2152
    .local v2, "recordNumber":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2153
    goto/16 :goto_7

    .line 2128
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "recordNumber":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 2129
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 2130
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2132
    goto/16 :goto_7

    .line 2133
    :cond_c7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2136
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2137
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2138
    goto/16 :goto_7

    .line 2113
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 2114
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 2115
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2117
    goto/16 :goto_7

    .line 2118
    :cond_c9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2121
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2122
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2123
    goto :goto_7

    .line 2099
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 2100
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 2101
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2103
    goto :goto_7

    .line 2104
    :cond_cb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2107
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->networkStateChanged(I)V

    .line 2108
    goto :goto_7

    .line 2085
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 2086
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 2087
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2089
    goto :goto_7

    .line 2090
    :cond_cd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2093
    .restart local v1    # "type":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 2094
    goto :goto_7

    .line 2070
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 2071
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 2072
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2074
    goto :goto_7

    .line 2075
    :cond_cf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2078
    .restart local v1    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2079
    .local v2, "radioState":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 2080
    nop

    .line 3699
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "radioState":I
    :cond_d0
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2021
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2049
    const-string v0, "vendor.mediatek.hardware.radio@3.11::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    return-object p0

    .line 2052
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

    .line 2056
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2057
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2011
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2043
    const/4 v0, 0x1

    return v0
.end method
