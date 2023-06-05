.class public abstract Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1730
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1733
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

    .line 1746
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1783
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1784
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1785
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1786
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1787
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

    .line 1758
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
        0x23t
        -0x2t
        0x36t
        -0x1ct
        -0x8t
        -0x4et
        0x46t
        -0x1at
        -0x64t
        -0x38t
        0xft
        -0x4t
        -0x6at
        -0x33t
        -0x4at
        0x50t
        0x5ft
        0x5bt
        -0x7ft
        0x6bt
        0x5bt
        -0x5bt
        0x76t
        -0x7et
        0x1dt
        0x2et
        0x32t
        -0x16t
        -0x3dt
        0x52t
        -0x38t
        0x41t
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

    .line 1738
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@1.0::IImsRadioIndication"

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

    .line 1752
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1771
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1793
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1795
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

    .line 1823
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IImsRadioIndication"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 2830
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 2831
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_7e

    .line 2832
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2834
    goto/16 :goto_7

    .line 2817
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 2818
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 2819
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2821
    goto/16 :goto_7

    .line 2822
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2825
    goto/16 :goto_7

    .line 2801
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 2802
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 2803
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2805
    goto/16 :goto_7

    .line 2806
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2808
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2809
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2810
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2812
    goto/16 :goto_7

    .line 2786
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 2787
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 2788
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2790
    goto/16 :goto_7

    .line 2791
    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2793
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->ping()V

    .line 2794
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2795
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2796
    goto/16 :goto_7

    .line 2776
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 2777
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_7e

    .line 2778
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2780
    goto/16 :goto_7

    .line 2763
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 2764
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 2765
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2767
    goto/16 :goto_7

    .line 2768
    :cond_9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2770
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 2771
    goto/16 :goto_7

    .line 2724
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 2725
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 2726
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2728
    goto/16 :goto_7

    .line 2729
    :cond_b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2731
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2732
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2734
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2736
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2737
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2738
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2739
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2740
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 2742
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 2743
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 2745
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 2749
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2750
    nop

    .line 2740
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2746
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2753
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2755
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2757
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2758
    goto/16 :goto_7

    .line 2708
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 2709
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 2710
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2712
    goto/16 :goto_7

    .line 2713
    :cond_f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2715
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2716
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2717
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2719
    goto/16 :goto_7

    .line 2691
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 2692
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 2693
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2694
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2695
    goto/16 :goto_7

    .line 2696
    :cond_11
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2698
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2699
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2700
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2701
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2703
    goto/16 :goto_7

    .line 2675
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 2676
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 2677
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2679
    goto/16 :goto_7

    .line 2680
    :cond_13
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2682
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2683
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2684
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2686
    goto/16 :goto_7

    .line 2660
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    move v2, v3

    .line 2661
    .local v2, "_hidl_is_oneway":Z
    :cond_14
    if-eq v2, v3, :cond_15

    .line 2662
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2663
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2664
    goto/16 :goto_7

    .line 2665
    :cond_15
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2668
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2669
    .local v1, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->onSsacStatus(ILjava/util/ArrayList;)V

    .line 2670
    goto/16 :goto_7

    .line 2645
    .end local v0    # "type":I
    .end local v1    # "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    move v2, v3

    .line 2646
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v2, v3, :cond_17

    .line 2647
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2649
    goto/16 :goto_7

    .line 2650
    :cond_17
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2653
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2654
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsRegInfoInd(ILjava/util/ArrayList;)V

    .line 2655
    goto/16 :goto_7

    .line 2629
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    move v2, v3

    .line 2630
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v2, v3, :cond_19

    .line 2631
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2632
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2633
    goto/16 :goto_7

    .line 2634
    :cond_19
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2637
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsRegStatusInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsRegStatusInfo;-><init>()V

    .line 2638
    .local v1, "report":Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsRegStatusInfo;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsRegStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2639
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/V1_0/ImsRegStatusInfo;)V

    .line 2640
    goto/16 :goto_7

    .line 2612
    .end local v0    # "type":I
    .end local v1    # "report":Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsRegStatusInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    move v2, v3

    .line 2613
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v2, v3, :cond_1b

    .line 2614
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2615
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2616
    goto/16 :goto_7

    .line 2617
    :cond_1b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2620
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2621
    .local v1, "account_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2622
    .local v3, "response_code":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2623
    .local v4, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->sipRegInfoInd(IIILjava/util/ArrayList;)V

    .line 2624
    goto/16 :goto_7

    .line 2596
    .end local v0    # "type":I
    .end local v1    # "account_id":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "response_code":I
    .end local v4    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    move v2, v3

    .line 2597
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v2, v3, :cond_1d

    .line 2598
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2600
    goto/16 :goto_7

    .line 2601
    :cond_1d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2604
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2605
    .local v1, "domain":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2606
    .local v3, "rat":I
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->callRatIndication(III)V

    .line 2607
    goto/16 :goto_7

    .line 2581
    .end local v0    # "type":I
    .end local v1    # "domain":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "rat":I
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    move v2, v3

    .line 2582
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v2, v3, :cond_1f

    .line 2583
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2585
    goto/16 :goto_7

    .line 2586
    :cond_1f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2589
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2590
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->sipHeaderReport(ILjava/util/ArrayList;)V

    .line 2591
    goto/16 :goto_7

    .line 2565
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 2566
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v2, v3, :cond_21

    .line 2567
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2569
    goto/16 :goto_7

    .line 2570
    :cond_21
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2573
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2574
    .local v1, "ciType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2575
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2576
    goto/16 :goto_7

    .line 2550
    .end local v0    # "type":I
    .end local v1    # "ciType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    move v2, v3

    .line 2551
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v2, v3, :cond_23

    .line 2552
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2554
    goto/16 :goto_7

    .line 2555
    :cond_23
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2558
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2559
    .local v1, "vops":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->sendVopsIndication(II)V

    .line 2560
    goto/16 :goto_7

    .line 2534
    .end local v0    # "type":I
    .end local v1    # "vops":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24

    move v2, v3

    .line 2535
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v2, v3, :cond_25

    .line 2536
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2537
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2538
    goto/16 :goto_7

    .line 2539
    :cond_25
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2542
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2543
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2544
    .local v3, "audio":I
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->audioIndication(III)V

    .line 2545
    goto/16 :goto_7

    .line 2518
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "audio":I
    :pswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26

    move v2, v3

    .line 2519
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v2, v3, :cond_27

    .line 2520
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2521
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2522
    goto/16 :goto_7

    .line 2523
    :cond_27
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2526
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2527
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2528
    .local v3, "rttType":I
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->rttModifyRequestReceive(III)V

    .line 2529
    goto/16 :goto_7

    .line 2501
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "rttType":I
    :pswitch_a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28

    move v2, v3

    .line 2502
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v2, v3, :cond_29

    .line 2503
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2504
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2505
    goto/16 :goto_7

    .line 2506
    :cond_29
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2509
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2510
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2511
    .local v3, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2512
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->rttTextReceive(IIILjava/lang/String;)V

    .line 2513
    goto/16 :goto_7

    .line 2485
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "lenOfString":I
    .end local v4    # "text":Ljava/lang/String;
    :pswitch_b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a

    move v2, v3

    .line 2486
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v2, v3, :cond_2b

    .line 2487
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2489
    goto/16 :goto_7

    .line 2490
    :cond_2b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2493
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2494
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2495
    .local v3, "result":I
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->rttModifyResponse(III)V

    .line 2496
    goto/16 :goto_7

    .line 2466
    .end local v0    # "type":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "result":I
    :pswitch_c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c

    move v2, v3

    :cond_2c
    move v7, v2

    .line 2467
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v3, :cond_2d

    .line 2468
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2470
    goto/16 :goto_7

    .line 2471
    :cond_2d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2474
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2475
    .local v12, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2476
    .local v13, "localCap":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 2477
    .local v14, "remoteCap":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2478
    .local v15, "localStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 2479
    .local v16, "remoteStatus":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->rttCapabilityIndication(IIIIII)V

    .line 2480
    goto/16 :goto_7

    .line 2445
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":I
    .end local v13    # "localCap":I
    .end local v14    # "remoteCap":I
    .end local v15    # "localStatus":I
    .end local v16    # "remoteStatus":I
    :pswitch_d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2e

    move v2, v3

    :cond_2e
    move v12, v2

    .line 2446
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v3, :cond_2f

    .line 2447
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2449
    goto/16 :goto_7

    .line 2450
    :cond_2f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2453
    .local v13, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2454
    .local v14, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2455
    .local v15, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2456
    .local v16, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2457
    .local v17, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2458
    .local v18, "recvPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2459
    .local v19, "jitter":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2460
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    goto/16 :goto_7

    .line 2430
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":I
    .end local v14    # "pdnId":Ljava/lang/String;
    .end local v15    # "networkId":Ljava/lang/String;
    .end local v16    # "timer":Ljava/lang/String;
    .end local v17    # "sendPktLost":Ljava/lang/String;
    .end local v18    # "recvPktLost":Ljava/lang/String;
    .end local v19    # "jitter":Ljava/lang/String;
    .end local v20    # "delay":Ljava/lang/String;
    :pswitch_e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_30

    move v2, v3

    .line 2431
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v2, v3, :cond_31

    .line 2432
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2434
    goto/16 :goto_7

    .line 2435
    :cond_31
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2438
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2439
    .local v1, "callId":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsRedialEmergencyIndication(ILjava/lang/String;)V

    .line 2440
    goto/16 :goto_7

    .line 2416
    .end local v0    # "type":I
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_32

    move v2, v3

    .line 2417
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v2, v3, :cond_33

    .line 2418
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2420
    goto/16 :goto_7

    .line 2421
    :cond_33
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2424
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 2425
    goto/16 :goto_7

    .line 2400
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_34

    move v2, v3

    .line 2401
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v2, v3, :cond_35

    .line 2402
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2403
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2404
    goto/16 :goto_7

    .line 2405
    :cond_35
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2408
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2409
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2410
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2411
    goto/16 :goto_7

    .line 2385
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_36

    move v2, v3

    .line 2386
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v2, v3, :cond_37

    .line 2387
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2389
    goto/16 :goto_7

    .line 2390
    :cond_37
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2393
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2394
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 2395
    goto/16 :goto_7

    .line 2370
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_38

    move v2, v3

    .line 2371
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v2, v3, :cond_39

    .line 2372
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2374
    goto/16 :goto_7

    .line 2375
    :cond_39
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2378
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2379
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 2380
    goto/16 :goto_7

    .line 2353
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3a

    move v2, v3

    .line 2354
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v2, v3, :cond_3b

    .line 2355
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2356
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2357
    goto/16 :goto_7

    .line 2358
    :cond_3b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2360
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2361
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2362
    .local v1, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2363
    .local v3, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2364
    .local v4, "extra":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    goto/16 :goto_7

    .line 2339
    .end local v0    # "type":I
    .end local v1    # "capability":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extra":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    move v2, v3

    .line 2340
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v2, v3, :cond_3d

    .line 2341
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2343
    goto/16 :goto_7

    .line 2344
    :cond_3d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2347
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 2348
    goto/16 :goto_7

    .line 2322
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e

    move v2, v3

    .line 2323
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v2, v3, :cond_3f

    .line 2324
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2326
    goto/16 :goto_7

    .line 2327
    :cond_3f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2330
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2331
    .local v1, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2332
    .local v3, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2333
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 2334
    goto/16 :goto_7

    .line 2305
    .end local v0    # "type":I
    .end local v1    # "phoneId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "configId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_16
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_40

    move v2, v3

    .line 2306
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v2, v3, :cond_41

    .line 2307
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2308
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2309
    goto/16 :goto_7

    .line 2310
    :cond_41
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2313
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2314
    .restart local v1    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2315
    .local v3, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2316
    .local v4, "value":I
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 2317
    goto/16 :goto_7

    .line 2291
    .end local v0    # "type":I
    .end local v1    # "phoneId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "featureId":I
    .end local v4    # "value":I
    :pswitch_17
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_42

    move v2, v3

    .line 2292
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_42
    if-eq v2, v3, :cond_43

    .line 2293
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2295
    goto/16 :goto_7

    .line 2296
    :cond_43
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2299
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 2300
    goto/16 :goto_7

    .line 2276
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_44

    move v2, v3

    .line 2277
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v2, v3, :cond_45

    .line 2278
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2280
    goto/16 :goto_7

    .line 2281
    :cond_45
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2284
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2285
    .local v1, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/Dialog;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 2286
    goto/16 :goto_7

    .line 2257
    .end local v0    # "type":I
    .end local v1    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/Dialog;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_46

    move v2, v3

    :cond_46
    move v7, v2

    .line 2258
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v3, :cond_47

    .line 2259
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2261
    goto/16 :goto_7

    .line 2262
    :cond_47
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2265
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2266
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2267
    .local v13, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2268
    .local v14, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2269
    .local v15, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2270
    .local v16, "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    goto/16 :goto_7

    .line 2242
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_1a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_48

    move v2, v3

    .line 2243
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_48
    if-eq v2, v3, :cond_49

    .line 2244
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2246
    goto/16 :goto_7

    .line 2247
    :cond_49
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2250
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2251
    .local v1, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 2252
    goto/16 :goto_7

    .line 2227
    .end local v0    # "type":I
    .end local v1    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V1_0/ImsConfParticipant;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4a

    move v2, v3

    .line 2228
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v2, v3, :cond_4b

    .line 2229
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2230
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2231
    goto/16 :goto_7

    .line 2232
    :cond_4b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2235
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2236
    .local v1, "info":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 2237
    goto/16 :goto_7

    .line 2211
    .end local v0    # "type":I
    .end local v1    # "info":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4c

    move v2, v3

    .line 2212
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4c
    if-eq v2, v3, :cond_4d

    .line 2213
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2215
    goto/16 :goto_7

    .line 2216
    :cond_4d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2219
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2220
    .local v1, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2221
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 2222
    goto/16 :goto_7

    .line 2196
    .end local v0    # "type":I
    .end local v1    # "iid":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_1d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4e

    move v2, v3

    .line 2197
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v2, v3, :cond_4f

    .line 2198
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2200
    goto/16 :goto_7

    .line 2201
    :cond_4f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2204
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2205
    .local v1, "supportLteEcc":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 2206
    goto/16 :goto_7

    .line 2181
    .end local v0    # "type":I
    .end local v1    # "supportLteEcc":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_50

    move v2, v3

    .line 2182
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_50
    if-eq v2, v3, :cond_51

    .line 2183
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2185
    goto/16 :goto_7

    .line 2186
    :cond_51
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2189
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2190
    .local v1, "count":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 2191
    goto/16 :goto_7

    .line 2167
    .end local v0    # "type":I
    .end local v1    # "count":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_52

    move v2, v3

    .line 2168
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v2, v3, :cond_53

    .line 2169
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2171
    goto/16 :goto_7

    .line 2172
    :cond_53
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2175
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 2176
    goto/16 :goto_7

    .line 2153
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_54

    move v2, v3

    .line 2154
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v2, v3, :cond_55

    .line 2155
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2157
    goto/16 :goto_7

    .line 2158
    :cond_55
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2161
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 2162
    goto/16 :goto_7

    .line 2136
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_56

    move v2, v3

    .line 2137
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v2, v3, :cond_57

    .line 2138
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2140
    goto/16 :goto_7

    .line 2141
    :cond_57
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2144
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2145
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2146
    .local v3, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2147
    .local v4, "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsBearerStateNotify(IIILjava/lang/String;)V

    .line 2148
    goto/16 :goto_7

    .line 2121
    .end local v0    # "type":I
    .end local v1    # "aid":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "action":I
    .end local v4    # "capability":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_58

    move v2, v3

    .line 2122
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v2, v3, :cond_59

    .line 2123
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2125
    goto/16 :goto_7

    .line 2126
    :cond_59
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2129
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2130
    .local v1, "isEnable":Z
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 2131
    goto/16 :goto_7

    .line 2104
    .end local v0    # "type":I
    .end local v1    # "isEnable":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5a

    move v2, v3

    .line 2105
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v2, v3, :cond_5b

    .line 2106
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2108
    goto/16 :goto_7

    .line 2109
    :cond_5b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2112
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2113
    .local v1, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2114
    .local v3, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2115
    .local v4, "cause":I
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 2116
    goto/16 :goto_7

    .line 2090
    .end local v0    # "type":I
    .end local v1    # "call_id":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ectResult":I
    .end local v4    # "cause":I
    :pswitch_24
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5c

    move v2, v3

    .line 2091
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v2, v3, :cond_5d

    .line 2092
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2094
    goto/16 :goto_7

    .line 2095
    :cond_5d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2098
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 2099
    goto/16 :goto_7

    .line 2076
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    move v2, v3

    .line 2077
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v2, v3, :cond_5f

    .line 2078
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2079
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2080
    goto/16 :goto_7

    .line 2081
    :cond_5f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2083
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2084
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 2085
    goto/16 :goto_7

    .line 2062
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_60

    move v2, v3

    .line 2063
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v2, v3, :cond_61

    .line 2064
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2066
    goto/16 :goto_7

    .line 2067
    :cond_61
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2070
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 2071
    goto/16 :goto_7

    .line 2048
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_62

    move v2, v3

    .line 2049
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v2, v3, :cond_63

    .line 2050
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2052
    goto/16 :goto_7

    .line 2053
    :cond_63
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2056
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 2057
    goto/16 :goto_7

    .line 2032
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_64

    move v2, v3

    .line 2033
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v2, v3, :cond_65

    .line 2034
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2036
    goto/16 :goto_7

    .line 2037
    :cond_65
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2040
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2041
    .local v1, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2042
    .local v3, "capability":I
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 2043
    goto/16 :goto_7

    .line 2013
    .end local v0    # "type":I
    .end local v1    # "registerState":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "capability":I
    :pswitch_29
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_66

    move v2, v3

    :cond_66
    move v7, v2

    .line 2014
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v3, :cond_67

    .line 2015
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2017
    goto/16 :goto_7

    .line 2018
    :cond_67
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2021
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2022
    .restart local v12    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2023
    .restart local v13    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2024
    .restart local v14    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2025
    .restart local v15    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2026
    .restart local v16    # "rawData":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    goto/16 :goto_7

    .line 1997
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_2a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_68

    move v2, v3

    .line 1998
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v2, v3, :cond_69

    .line 1999
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2001
    goto/16 :goto_7

    .line 2002
    :cond_69
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2005
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2006
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2007
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2008
    goto/16 :goto_7

    .line 1982
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6a

    move v2, v3

    .line 1983
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v2, v3, :cond_6b

    .line 1984
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1986
    goto/16 :goto_7

    .line 1987
    :cond_6b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1990
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1991
    .local v1, "status":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 1992
    goto/16 :goto_7

    .line 1965
    .end local v0    # "type":I
    .end local v1    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6c

    move v2, v3

    .line 1966
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v2, v3, :cond_6d

    .line 1967
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1968
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1969
    goto/16 :goto_7

    .line 1970
    :cond_6d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1973
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1974
    .local v1, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1975
    .local v3, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1976
    .local v4, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    goto/16 :goto_7

    .line 1949
    .end local v0    # "type":I
    .end local v1    # "accountId":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "broadcastFlag":Ljava/lang/String;
    .end local v4    # "xuiInfo":Ljava/lang/String;
    :pswitch_2d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6e

    move v2, v3

    .line 1950
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v2, v3, :cond_6f

    .line 1951
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1953
    goto/16 :goto_7

    .line 1954
    :cond_6f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1957
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1958
    .local v1, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1959
    .local v3, "result2":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 1960
    goto/16 :goto_7

    .line 1933
    .end local v0    # "type":I
    .end local v1    # "result1":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "result2":Ljava/lang/String;
    :pswitch_2e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_70

    move v2, v3

    .line 1934
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v2, v3, :cond_71

    .line 1935
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1937
    goto/16 :goto_7

    .line 1938
    :cond_71
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1941
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1942
    .local v1, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1943
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->onUssi(IILjava/lang/String;)V

    .line 1944
    goto/16 :goto_7

    .line 1916
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_72

    move v2, v3

    .line 1917
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v2, v3, :cond_73

    .line 1918
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1920
    goto/16 :goto_7

    .line 1921
    :cond_73
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1924
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1925
    .local v1, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1926
    .local v3, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1927
    .local v4, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    goto/16 :goto_7

    .line 1897
    .end local v0    # "type":I
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "localVideoCap":Ljava/lang/String;
    .end local v4    # "remoteVideoCap":Ljava/lang/String;
    :pswitch_30
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_74

    move v2, v3

    :cond_74
    move v7, v2

    .line 1898
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v3, :cond_75

    .line 1899
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1901
    goto/16 :goto_7

    .line 1902
    :cond_75
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1905
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1906
    .restart local v12    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1907
    .local v13, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1908
    .local v14, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1909
    .local v15, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1910
    .local v16, "pau":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    goto/16 :goto_7

    .line 1877
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "callMode":Ljava/lang/String;
    .end local v14    # "videoState":Ljava/lang/String;
    .end local v15    # "audioDirection":Ljava/lang/String;
    .end local v16    # "pau":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_76

    move v2, v3

    :cond_76
    move v8, v2

    .line 1878
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v3, :cond_77

    .line 1879
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1881
    goto/16 :goto_7

    .line 1882
    :cond_77
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1885
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1886
    .local v13, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1887
    .local v14, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1888
    .local v15, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1889
    .local v16, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1890
    .local v17, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1891
    .local v18, "reasonText":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    goto/16 :goto_7

    .line 1857
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "callId":Ljava/lang/String;
    .end local v14    # "dir":Ljava/lang/String;
    .end local v15    # "sipMsgType":Ljava/lang/String;
    .end local v16    # "method":Ljava/lang/String;
    .end local v17    # "responseCode":Ljava/lang/String;
    .end local v18    # "reasonText":Ljava/lang/String;
    :pswitch_32
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_78

    move v2, v3

    :cond_78
    move v8, v2

    .line 1858
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v3, :cond_79

    .line 1859
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1861
    goto/16 :goto_7

    .line 1862
    :cond_79
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1865
    .restart local v12    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1866
    .local v13, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1867
    .local v14, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1868
    .local v15, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1869
    .local v16, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1870
    .local v17, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1871
    .local v18, "joinedCallId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    goto :goto_7

    .line 1842
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "confCallId":Ljava/lang/String;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "num":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "cause":Ljava/lang/String;
    .end local v18    # "joinedCallId":Ljava/lang/String;
    :pswitch_33
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7a

    move v2, v3

    .line 1843
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v2, v3, :cond_7b

    .line 1844
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1846
    goto :goto_7

    .line 1847
    :cond_7b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1850
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1851
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 1852
    goto :goto_7

    .line 1826
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7c

    move v2, v3

    .line 1827
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v2, v3, :cond_7d

    .line 1828
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1830
    goto :goto_7

    .line 1831
    :cond_7d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1834
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;-><init>()V

    .line 1835
    .local v1, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1836
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;)V

    .line 1837
    nop

    .line 2839
    .end local v0    # "type":I
    .end local v1    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_7e
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1777
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1805
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    return-object p0

    .line 1808
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

    .line 1812
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1813
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1767
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1799
    const/4 v0, 0x1

    return v0
.end method
