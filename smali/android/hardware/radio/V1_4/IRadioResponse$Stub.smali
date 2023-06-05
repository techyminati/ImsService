.class public abstract Landroid/hardware/radio/V1_4/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3118
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3121
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

    .line 3138
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3179
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3180
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3181
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3182
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3183
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

    .line 3150
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
        0xct
        -0x40t
        -0x23t
        -0x79t
        -0x3at
        0x34t
        -0x56t
        -0x2dt
        0x6dt
        0x7dt
        -0xet
        0x2bt
        0x28t
        0x32t
        -0x7dt
        -0x62t
        -0x9t
        -0x22t
        -0x29t
        0x19t
        0x9t
        -0x25t
        -0x33t
        -0x1ft
        0x1ct
        -0x3t
        -0x2at
        -0x63t
        -0x40t
        -0x24t
        0x52t
        -0x48t
    .end array-data

    :array_1
    .array-data 1
        -0xbt
        -0x5t
        -0x1ct
        -0xet
        -0x76t
        -0x62t
        0x34t
        0x6bt
        -0x1dt
        0x60t
        0x63t
        -0x14t
        -0x5ct
        -0x1at
        -0x38t
        0x64t
        0x11t
        0x4at
        0x1at
        0x6ft
        -0x4at
        0x48t
        -0x7ct
        -0x25t
        0x3t
        -0x3t
        -0x28t
        0x25t
        0x79t
        0x1at
        -0x27t
        -0x48t
    .end array-data

    :array_2
    .array-data 1
        -0x26t
        -0x74t
        0x6at
        -0x17t
        -0x6ft
        -0x3at
        -0x5ct
        -0x4et
        -0x7ct
        -0x34t
        0x6et
        0x44t
        0x53t
        0x32t
        -0x20t
        0x64t
        -0x1et
        -0x72t
        -0x18t
        -0x60t
        -0x6ct
        -0x7et
        -0x13t
        0x5at
        -0x1t
        -0x7t
        -0x2ft
        0x59t
        -0x14t
        0x66t
        -0x6ct
        -0x49t
    .end array-data

    :array_3
    .array-data 1
        0x5t
        -0x56t
        0x3dt
        -0x1at
        0x13t
        0xat
        -0x69t
        -0x78t
        -0x3t
        -0x4at
        -0xct
        -0x2dt
        -0x34t
        0x57t
        -0x3dt
        -0x16t
        -0x70t
        -0x10t
        0x67t
        -0x19t
        0x7at
        0x5et
        0x9t
        -0x2at
        -0x59t
        0x72t
        -0x14t
        0x7ft
        0x6bt
        -0x36t
        0x33t
        -0x2et
    .end array-data

    :array_4
    .array-data 1
        0x1dt
        0x4at
        0x57t
        0x76t
        0x61t
        0x4ct
        0x8t
        -0x4bt
        -0x29t
        -0x6ct
        -0x5bt
        -0x14t
        0x5at
        -0x50t
        0x46t
        -0x69t
        0x26t
        0xct
        -0x43t
        0x4bt
        0x34t
        0x41t
        -0x2bt
        -0x6dt
        0x5ct
        -0x2bt
        0x3et
        -0x19t
        0x1dt
        0x19t
        -0x26t
        0x2t
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

    .line 3126
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    const-string v2, "android.hardware.radio@1.3::IRadioResponse"

    const-string v3, "android.hardware.radio@1.2::IRadioResponse"

    const-string v4, "android.hardware.radio@1.1::IRadioResponse"

    const-string v5, "android.hardware.radio@1.0::IRadioResponse"

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

    .line 3144
    const-string v0, "android.hardware.radio@1.4::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3167
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 3189
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3191
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3219
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.3::IRadioResponse"

    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    const-string v2, "android.hardware.radio@1.2::IRadioResponse"

    const-string v3, "android.hardware.radio@1.4::IRadioResponse"

    const-string v4, "android.hardware.radio@1.0::IRadioResponse"

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 5875
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v10

    :cond_0
    move v0, v6

    .line 5876
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_150

    .line 5877
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5879
    goto/16 :goto_7

    .line 5862
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v6, v10

    :cond_1
    move v1, v6

    .line 5863
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_2

    .line 5864
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5865
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5866
    goto/16 :goto_7

    .line 5867
    :cond_2
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5869
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 5870
    goto/16 :goto_7

    .line 5846
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v10, v6

    :goto_0
    move v1, v10

    .line 5847
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 5848
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5850
    goto/16 :goto_7

    .line 5851
    :cond_4
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5853
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5854
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5855
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5857
    goto/16 :goto_7

    .line 5831
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v10, v6

    :goto_1
    move v1, v10

    .line 5832
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 5833
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5835
    goto/16 :goto_7

    .line 5836
    :cond_6
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5838
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->ping()V

    .line 5839
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5841
    goto/16 :goto_7

    .line 5821
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v10

    :cond_7
    move v0, v6

    .line 5822
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_150

    .line 5823
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5824
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5825
    goto/16 :goto_7

    .line 5808
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v6, v10

    :cond_8
    move v1, v6

    .line 5809
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_9

    .line 5810
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5812
    goto/16 :goto_7

    .line 5813
    :cond_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5815
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 5816
    goto/16 :goto_7

    .line 5769
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v10, v6

    :goto_2
    move v1, v10

    .line 5770
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 5771
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5773
    goto/16 :goto_7

    .line 5774
    :cond_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5776
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5777
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5779
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5781
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5782
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5783
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5784
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5785
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 5787
    mul-int/lit8 v6, v5, 0x20

    int-to-long v10, v6

    .line 5788
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 5790
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_c

    array-length v12, v6

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 5794
    invoke-virtual {v4, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5795
    nop

    .line 5785
    .end local v6    # "_hidl_array_item_1":[B
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5791
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v10    # "_hidl_array_offset_1":J
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5798
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v10    # "_hidl_array_offset_1":J
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5800
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5802
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5803
    goto/16 :goto_7

    .line 5753
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v10, v6

    :goto_4
    move v1, v10

    .line 5754
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 5755
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5757
    goto/16 :goto_7

    .line 5758
    :cond_f
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5760
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5761
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5762
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5764
    goto/16 :goto_7

    .line 5736
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v10, v6

    :goto_5
    move v1, v10

    .line 5737
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 5738
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5740
    goto/16 :goto_7

    .line 5741
    :cond_11
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5744
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5745
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5746
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5748
    goto/16 :goto_7

    .line 5720
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v10, v6

    :goto_6
    move v1, v10

    .line 5721
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 5722
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5724
    goto/16 :goto_7

    .line 5725
    :cond_13
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5727
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5728
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5729
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5731
    goto/16 :goto_7

    .line 5703
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v6, v10

    :cond_14
    move v0, v6

    .line 5704
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_15

    .line 5705
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5707
    goto/16 :goto_7

    .line 5708
    :cond_15
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5710
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5711
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5712
    new-instance v2, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 5713
    .local v2, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5714
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 5715
    goto/16 :goto_7

    .line 5685
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v6, v10

    :cond_16
    move v0, v6

    .line 5686
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_17

    .line 5687
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5688
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5689
    goto/16 :goto_7

    .line 5690
    :cond_17
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5692
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5693
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5694
    new-instance v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5695
    .local v2, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5697
    .local v3, "multiSimPolicy":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5698
    goto/16 :goto_7

    .line 5670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v3    # "multiSimPolicy":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v6, v10

    :cond_18
    move v0, v6

    .line 5671
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_19

    .line 5672
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5674
    goto/16 :goto_7

    .line 5675
    :cond_19
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5677
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5678
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5679
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5680
    goto/16 :goto_7

    .line 5653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v6, v10

    :cond_1a
    move v0, v6

    .line 5654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_1b

    .line 5655
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5657
    goto/16 :goto_7

    .line 5658
    :cond_1b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5660
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5661
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5662
    new-instance v2, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 5663
    .local v2, "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5664
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 5665
    goto/16 :goto_7

    .line 5637
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v6, v10

    :cond_1c
    move v0, v6

    .line 5638
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_1d

    .line 5639
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5640
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5641
    goto/16 :goto_7

    .line 5642
    :cond_1d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5644
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5645
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5646
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5647
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5648
    goto/16 :goto_7

    .line 5622
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v6, v10

    :cond_1e
    move v0, v6

    .line 5623
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_1f

    .line 5624
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5626
    goto/16 :goto_7

    .line 5627
    :cond_1f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5629
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5630
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5631
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5632
    goto/16 :goto_7

    .line 5606
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v6, v10

    :cond_20
    move v0, v6

    .line 5607
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_21

    .line 5608
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5610
    goto/16 :goto_7

    .line 5611
    :cond_21
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5613
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5614
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5616
    .local v2, "networkTypeBitmap":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5617
    goto/16 :goto_7

    .line 5589
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkTypeBitmap":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v6, v10

    :cond_22
    move v0, v6

    .line 5590
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_23

    .line 5591
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5593
    goto/16 :goto_7

    .line 5594
    :cond_23
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5596
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5597
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5598
    new-instance v2, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    .line 5599
    .local v2, "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_4/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5600
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    .line 5601
    goto/16 :goto_7

    .line 5572
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v6, v10

    :cond_24
    move v0, v6

    .line 5573
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_25

    .line 5574
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5576
    goto/16 :goto_7

    .line 5577
    :cond_25
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5579
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5580
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5581
    new-instance v2, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 5582
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5583
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V

    .line 5584
    goto/16 :goto_7

    .line 5556
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v6, v10

    :cond_26
    move v0, v6

    .line 5557
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_27

    .line 5558
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5560
    goto/16 :goto_7

    .line 5561
    :cond_27
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5563
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5564
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5565
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5566
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5567
    goto/16 :goto_7

    .line 5541
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v6, v10

    :cond_28
    move v0, v6

    .line 5542
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_29

    .line 5543
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5545
    goto/16 :goto_7

    .line 5546
    :cond_29
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5548
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5549
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5550
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5551
    goto/16 :goto_7

    .line 5526
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v6, v10

    :cond_2a
    move v0, v6

    .line 5527
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_2b

    .line 5528
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5530
    goto/16 :goto_7

    .line 5531
    :cond_2b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5533
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5534
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5535
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5536
    goto/16 :goto_7

    .line 5510
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2c

    move v6, v10

    :cond_2c
    move v1, v6

    .line 5511
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_2d

    .line 5512
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5513
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5514
    goto/16 :goto_7

    .line 5515
    :cond_2d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5518
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5520
    .local v2, "isEnabled":Z
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5521
    goto/16 :goto_7

    .line 5495
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isEnabled":Z
    :pswitch_d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2e

    move v6, v10

    :cond_2e
    move v1, v6

    .line 5496
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_2f

    .line 5497
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5499
    goto/16 :goto_7

    .line 5500
    :cond_2f
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5502
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5503
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5504
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5505
    goto/16 :goto_7

    .line 5480
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_30

    move v6, v10

    :cond_30
    move v1, v6

    .line 5481
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_31

    .line 5482
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5484
    goto/16 :goto_7

    .line 5485
    :cond_31
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5487
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5488
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5489
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5490
    goto/16 :goto_7

    .line 5463
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v6, v10

    :cond_32
    move v0, v6

    .line 5464
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_33

    .line 5465
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5467
    goto/16 :goto_7

    .line 5468
    :cond_33
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5470
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5471
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5472
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 5473
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5474
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 5475
    goto/16 :goto_7

    .line 5446
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v6, v10

    :cond_34
    move v0, v6

    .line 5447
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_35

    .line 5448
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5450
    goto/16 :goto_7

    .line 5451
    :cond_35
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5453
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5454
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5455
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 5456
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5457
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 5458
    goto/16 :goto_7

    .line 5429
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v6, v10

    :cond_36
    move v0, v6

    .line 5430
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_37

    .line 5431
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5433
    goto/16 :goto_7

    .line 5434
    :cond_37
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5436
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5437
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5438
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 5439
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5440
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 5441
    goto/16 :goto_7

    .line 5413
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v6, v10

    :cond_38
    move v0, v6

    .line 5414
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_39

    .line 5415
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5417
    goto/16 :goto_7

    .line 5418
    :cond_39
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5420
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5421
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5422
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5423
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5424
    goto/16 :goto_7

    .line 5398
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v6, v10

    :cond_3a
    move v0, v6

    .line 5399
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_3b

    .line 5400
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5401
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5402
    goto/16 :goto_7

    .line 5403
    :cond_3b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5405
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5406
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5407
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5408
    goto/16 :goto_7

    .line 5383
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v6, v10

    :cond_3c
    move v0, v6

    .line 5384
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_3d

    .line 5385
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5387
    goto/16 :goto_7

    .line 5388
    :cond_3d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5390
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5391
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5392
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5393
    goto/16 :goto_7

    .line 5366
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v6, v10

    :cond_3e
    move v0, v6

    .line 5367
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_3f

    .line 5368
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5369
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5370
    goto/16 :goto_7

    .line 5371
    :cond_3f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5373
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5374
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5375
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 5376
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5377
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 5378
    goto/16 :goto_7

    .line 5350
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v6, v10

    :cond_40
    move v0, v6

    .line 5351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_41

    .line 5352
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5354
    goto/16 :goto_7

    .line 5355
    :cond_41
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5357
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5358
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5359
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5360
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5361
    goto/16 :goto_7

    .line 5335
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v6, v10

    :cond_42
    move v0, v6

    .line 5336
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_43

    .line 5337
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5339
    goto/16 :goto_7

    .line 5340
    :cond_43
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5342
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5343
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5344
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5345
    goto/16 :goto_7

    .line 5318
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v6, v10

    :cond_44
    move v0, v6

    .line 5319
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_45

    .line 5320
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5322
    goto/16 :goto_7

    .line 5323
    :cond_45
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5325
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5326
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5327
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 5328
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5329
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 5330
    goto/16 :goto_7

    .line 5303
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v6, v10

    :cond_46
    move v0, v6

    .line 5304
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_47

    .line 5305
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5306
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5307
    goto/16 :goto_7

    .line 5308
    :cond_47
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5310
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5311
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5312
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5313
    goto/16 :goto_7

    .line 5288
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v6, v10

    :cond_48
    move v0, v6

    .line 5289
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_49

    .line 5290
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5292
    goto/16 :goto_7

    .line 5293
    :cond_49
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5295
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5296
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5297
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5298
    goto/16 :goto_7

    .line 5273
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v6, v10

    :cond_4a
    move v0, v6

    .line 5274
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_4b

    .line 5275
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5277
    goto/16 :goto_7

    .line 5278
    :cond_4b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5280
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5281
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5282
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5283
    goto/16 :goto_7

    .line 5258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v6, v10

    :cond_4c
    move v0, v6

    .line 5259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_4d

    .line 5260
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5262
    goto/16 :goto_7

    .line 5263
    :cond_4d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5265
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5266
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5267
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5268
    goto/16 :goto_7

    .line 5244
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v6, v10

    :cond_4e
    move v0, v6

    .line 5245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_4f

    .line 5246
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5248
    goto/16 :goto_7

    .line 5249
    :cond_4f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5252
    .local v1, "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 5253
    goto/16 :goto_7

    .line 5229
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v6, v10

    :cond_50
    move v0, v6

    .line 5230
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_51

    .line 5231
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5233
    goto/16 :goto_7

    .line 5234
    :cond_51
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5236
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5237
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5238
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5239
    goto/16 :goto_7

    .line 5214
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v6, v10

    :cond_52
    move v0, v6

    .line 5215
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_53

    .line 5216
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5217
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5218
    goto/16 :goto_7

    .line 5219
    :cond_53
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5221
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5222
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5223
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5224
    goto/16 :goto_7

    .line 5199
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v6, v10

    :cond_54
    move v0, v6

    .line 5200
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_55

    .line 5201
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5203
    goto/16 :goto_7

    .line 5204
    :cond_55
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5206
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5207
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5208
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5209
    goto/16 :goto_7

    .line 5181
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v6, v10

    :cond_56
    move v0, v6

    .line 5182
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_57

    .line 5183
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5185
    goto/16 :goto_7

    .line 5186
    :cond_57
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5188
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5189
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5191
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5192
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5193
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5194
    goto/16 :goto_7

    .line 5165
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v6, v10

    :cond_58
    move v0, v6

    .line 5166
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_59

    .line 5167
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5169
    goto/16 :goto_7

    .line 5170
    :cond_59
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5172
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5173
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5175
    .local v2, "numAllowed":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5176
    goto/16 :goto_7

    .line 5148
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "numAllowed":I
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v6, v10

    :cond_5a
    move v0, v6

    .line 5149
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_5b

    .line 5150
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5151
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5152
    goto/16 :goto_7

    .line 5153
    :cond_5b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5155
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5156
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5157
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 5158
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5159
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 5160
    goto/16 :goto_7

    .line 5131
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v6, v10

    :cond_5c
    move v0, v6

    .line 5132
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_5d

    .line 5133
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5134
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5135
    goto/16 :goto_7

    .line 5136
    :cond_5d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5138
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5139
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5140
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 5141
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5142
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 5143
    goto/16 :goto_7

    .line 5114
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v6, v10

    :cond_5e
    move v0, v6

    .line 5115
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_5f

    .line 5116
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5118
    goto/16 :goto_7

    .line 5119
    :cond_5f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5121
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5122
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5123
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5124
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5125
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5126
    goto/16 :goto_7

    .line 5097
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v6, v10

    :cond_60
    move v0, v6

    .line 5098
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_61

    .line 5099
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5101
    goto/16 :goto_7

    .line 5102
    :cond_61
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5105
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5107
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5108
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5109
    goto/16 :goto_7

    .line 5080
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v6, v10

    :cond_62
    move v0, v6

    .line 5081
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_63

    .line 5082
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5084
    goto/16 :goto_7

    .line 5085
    :cond_63
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5087
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5088
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5089
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5090
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5091
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5092
    goto/16 :goto_7

    .line 5063
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v6, v10

    :cond_64
    move v0, v6

    .line 5064
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_65

    .line 5065
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5066
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5067
    goto/16 :goto_7

    .line 5068
    :cond_65
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5070
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5071
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5072
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5073
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5074
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5075
    goto/16 :goto_7

    .line 5048
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v6, v10

    :cond_66
    move v0, v6

    .line 5049
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_67

    .line 5050
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5052
    goto/16 :goto_7

    .line 5053
    :cond_67
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5055
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5056
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5057
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5058
    goto/16 :goto_7

    .line 5033
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v6, v10

    :cond_68
    move v0, v6

    .line 5034
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_69

    .line 5035
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5037
    goto/16 :goto_7

    .line 5038
    :cond_69
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5041
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5042
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5043
    goto/16 :goto_7

    .line 5016
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v6, v10

    :cond_6a
    move v0, v6

    .line 5017
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_6b

    .line 5018
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5020
    goto/16 :goto_7

    .line 5021
    :cond_6b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5023
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5024
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5025
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5026
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5027
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5028
    goto/16 :goto_7

    .line 5000
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v6, v10

    :cond_6c
    move v0, v6

    .line 5001
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_6d

    .line 5002
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5004
    goto/16 :goto_7

    .line 5005
    :cond_6d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5007
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5008
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5009
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5010
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5011
    goto/16 :goto_7

    .line 4985
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v6, v10

    :cond_6e
    move v0, v6

    .line 4986
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_6f

    .line 4987
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4989
    goto/16 :goto_7

    .line 4990
    :cond_6f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4992
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4993
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4994
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4995
    goto/16 :goto_7

    .line 4970
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v6, v10

    :cond_70
    move v0, v6

    .line 4971
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_71

    .line 4972
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4974
    goto/16 :goto_7

    .line 4975
    :cond_71
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4977
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4978
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4979
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4980
    goto/16 :goto_7

    .line 4955
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v6, v10

    :cond_72
    move v0, v6

    .line 4956
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_73

    .line 4957
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4958
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4959
    goto/16 :goto_7

    .line 4960
    :cond_73
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4962
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4963
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4964
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4965
    goto/16 :goto_7

    .line 4940
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v6, v10

    :cond_74
    move v0, v6

    .line 4941
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_75

    .line 4942
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4944
    goto/16 :goto_7

    .line 4945
    :cond_75
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4947
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4948
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4949
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4950
    goto/16 :goto_7

    .line 4925
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v6, v10

    :cond_76
    move v0, v6

    .line 4926
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_77

    .line 4927
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4928
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4929
    goto/16 :goto_7

    .line 4930
    :cond_77
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4932
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4933
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4934
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4935
    goto/16 :goto_7

    .line 4909
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v6, v10

    :cond_78
    move v0, v6

    .line 4910
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_79

    .line 4911
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4913
    goto/16 :goto_7

    .line 4914
    :cond_79
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4919
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4920
    goto/16 :goto_7

    .line 4892
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v6, v10

    :cond_7a
    move v0, v6

    .line 4893
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_7b

    .line 4894
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4896
    goto/16 :goto_7

    .line 4897
    :cond_7b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4899
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4900
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4901
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4902
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4903
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4904
    goto/16 :goto_7

    .line 4877
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v6, v10

    :cond_7c
    move v0, v6

    .line 4878
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_7d

    .line 4879
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4881
    goto/16 :goto_7

    .line 4882
    :cond_7d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4884
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4885
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4886
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4887
    goto/16 :goto_7

    .line 4860
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v6, v10

    :cond_7e
    move v0, v6

    .line 4861
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_7f

    .line 4862
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4864
    goto/16 :goto_7

    .line 4865
    :cond_7f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4867
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4868
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4870
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 4871
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 4872
    goto/16 :goto_7

    .line 4843
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v6, v10

    :cond_80
    move v0, v6

    .line 4844
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_81

    .line 4845
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4847
    goto/16 :goto_7

    .line 4848
    :cond_81
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4850
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4851
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4852
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4853
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4854
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4855
    goto/16 :goto_7

    .line 4826
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v6, v10

    :cond_82
    move v0, v6

    .line 4827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_83

    .line 4828
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4830
    goto/16 :goto_7

    .line 4831
    :cond_83
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4833
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4834
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4835
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4836
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4837
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4838
    goto/16 :goto_7

    .line 4809
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v6, v10

    :cond_84
    move v0, v6

    .line 4810
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_85

    .line 4811
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4812
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4813
    goto/16 :goto_7

    .line 4814
    :cond_85
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4816
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4817
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4819
    .local v2, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4820
    .local v3, "ratFamily":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4821
    goto/16 :goto_7

    .line 4794
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v6, v10

    :cond_86
    move v0, v6

    .line 4795
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_87

    .line 4796
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4798
    goto/16 :goto_7

    .line 4799
    :cond_87
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4801
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4802
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4803
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4804
    goto/16 :goto_7

    .line 4779
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v6, v10

    :cond_88
    move v0, v6

    .line 4780
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_89

    .line 4781
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4783
    goto/16 :goto_7

    .line 4784
    :cond_89
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4786
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4787
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4788
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4789
    goto/16 :goto_7

    .line 4763
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v6, v10

    :cond_8a
    move v0, v6

    .line 4764
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_8b

    .line 4765
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4767
    goto/16 :goto_7

    .line 4768
    :cond_8b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4770
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4771
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4772
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4773
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4774
    goto/16 :goto_7

    .line 4747
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v6, v10

    :cond_8c
    move v0, v6

    .line 4748
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_8d

    .line 4749
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4751
    goto/16 :goto_7

    .line 4752
    :cond_8d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4754
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4755
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4757
    .local v2, "rat":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4758
    goto/16 :goto_7

    .line 4730
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rat":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v6, v10

    :cond_8e
    move v0, v6

    .line 4731
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_8f

    .line 4732
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4734
    goto/16 :goto_7

    .line 4735
    :cond_8f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4737
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4738
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4739
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4740
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4741
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4742
    goto/16 :goto_7

    .line 4715
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v6, v10

    :cond_90
    move v0, v6

    .line 4716
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_91

    .line 4717
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4719
    goto/16 :goto_7

    .line 4720
    :cond_91
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4722
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4723
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4724
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4725
    goto/16 :goto_7

    .line 4699
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v6, v10

    :cond_92
    move v0, v6

    .line 4700
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_93

    .line 4701
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4703
    goto/16 :goto_7

    .line 4704
    :cond_93
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4707
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4709
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4710
    goto/16 :goto_7

    .line 4683
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v6, v10

    :cond_94
    move v0, v6

    .line 4684
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_95

    .line 4685
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4687
    goto/16 :goto_7

    .line 4688
    :cond_95
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4690
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4691
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4693
    .local v2, "source":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4694
    goto/16 :goto_7

    .line 4668
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "source":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v6, v10

    :cond_96
    move v0, v6

    .line 4669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_97

    .line 4670
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4672
    goto/16 :goto_7

    .line 4673
    :cond_97
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4675
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4676
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4677
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4678
    goto/16 :goto_7

    .line 4653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v6, v10

    :cond_98
    move v0, v6

    .line 4654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_99

    .line 4655
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4657
    goto/16 :goto_7

    .line 4658
    :cond_99
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4660
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4661
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4662
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4663
    goto/16 :goto_7

    .line 4638
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v6, v10

    :cond_9a
    move v0, v6

    .line 4639
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_9b

    .line 4640
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4642
    goto/16 :goto_7

    .line 4643
    :cond_9b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4645
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4646
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4647
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4648
    goto/16 :goto_7

    .line 4622
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v6, v10

    :cond_9c
    move v0, v6

    .line 4623
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_9d

    .line 4624
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4626
    goto/16 :goto_7

    .line 4627
    :cond_9d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4629
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4630
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4632
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4633
    goto/16 :goto_7

    .line 4607
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v6, v10

    :cond_9e
    move v0, v6

    .line 4608
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_9f

    .line 4609
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4611
    goto/16 :goto_7

    .line 4612
    :cond_9f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4614
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4615
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4616
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4617
    goto/16 :goto_7

    .line 4588
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v6, v10

    .line 4589
    .local v6, "_hidl_is_oneway":Z
    :cond_a0
    if-eq v6, v10, :cond_a1

    .line 4590
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4592
    goto/16 :goto_7

    .line 4593
    :cond_a1
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4595
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 4596
    .local v10, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4598
    .local v11, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4599
    .local v12, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4600
    .local v13, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4601
    .local v14, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4602
    goto/16 :goto_7

    .line 4573
    .end local v6    # "_hidl_is_oneway":Z
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "imei":Ljava/lang/String;
    .end local v12    # "imeisv":Ljava/lang/String;
    .end local v13    # "esn":Ljava/lang/String;
    .end local v14    # "meid":Ljava/lang/String;
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v6, v10

    :cond_a2
    move v0, v6

    .line 4574
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_a3

    .line 4575
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4577
    goto/16 :goto_7

    .line 4578
    :cond_a3
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4580
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4581
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4582
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4583
    goto/16 :goto_7

    .line 4557
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v6, v10

    :cond_a4
    move v0, v6

    .line 4558
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_a5

    .line 4559
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4560
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4561
    goto/16 :goto_7

    .line 4562
    :cond_a5
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4564
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4565
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4567
    .local v2, "index":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4568
    goto/16 :goto_7

    .line 4537
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v6, v10

    :cond_a6
    move v11, v6

    .line 4538
    .local v11, "_hidl_is_oneway":Z
    if-eq v11, v10, :cond_a7

    .line 4539
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4541
    goto/16 :goto_7

    .line 4542
    :cond_a7
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 4545
    .restart local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4547
    .local v12, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4548
    .local v13, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4549
    .local v14, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4550
    .local v15, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 4551
    .local v16, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    goto/16 :goto_7

    .line 4522
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "_hidl_is_oneway":Z
    .end local v12    # "mdn":Ljava/lang/String;
    .end local v13    # "hSid":Ljava/lang/String;
    .end local v14    # "hNid":Ljava/lang/String;
    .end local v15    # "min":Ljava/lang/String;
    .end local v16    # "prl":Ljava/lang/String;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v6, v10

    :cond_a8
    move v0, v6

    .line 4523
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_a9

    .line 4524
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4526
    goto/16 :goto_7

    .line 4527
    :cond_a9
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4529
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4530
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4531
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4532
    goto/16 :goto_7

    .line 4507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v6, v10

    :cond_aa
    move v0, v6

    .line 4508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_ab

    .line 4509
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4511
    goto/16 :goto_7

    .line 4512
    :cond_ab
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4515
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4516
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4517
    goto/16 :goto_7

    .line 4491
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v6, v10

    :cond_ac
    move v0, v6

    .line 4492
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_ad

    .line 4493
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4495
    goto/16 :goto_7

    .line 4496
    :cond_ad
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4498
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4499
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4500
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4501
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4502
    goto/16 :goto_7

    .line 4476
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v6, v10

    :cond_ae
    move v0, v6

    .line 4477
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_af

    .line 4478
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4480
    goto/16 :goto_7

    .line 4481
    :cond_af
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4483
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4484
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4485
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4486
    goto/16 :goto_7

    .line 4461
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v6, v10

    :cond_b0
    move v0, v6

    .line 4462
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_b1

    .line 4463
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4464
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4465
    goto/16 :goto_7

    .line 4466
    :cond_b1
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4468
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4469
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4470
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4471
    goto/16 :goto_7

    .line 4445
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v6, v10

    :cond_b2
    move v0, v6

    .line 4446
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_b3

    .line 4447
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4449
    goto/16 :goto_7

    .line 4450
    :cond_b3
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4452
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4453
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4454
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4455
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4456
    goto/16 :goto_7

    .line 4430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v6, v10

    :cond_b4
    move v0, v6

    .line 4431
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_b5

    .line 4432
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4434
    goto/16 :goto_7

    .line 4435
    :cond_b5
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4437
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4438
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4439
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4440
    goto/16 :goto_7

    .line 4413
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v6, v10

    :cond_b6
    move v0, v6

    .line 4414
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_b7

    .line 4415
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4417
    goto/16 :goto_7

    .line 4418
    :cond_b7
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4420
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4421
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4422
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4423
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4424
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4425
    goto/16 :goto_7

    .line 4398
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v6, v10

    :cond_b8
    move v0, v6

    .line 4399
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_b9

    .line 4400
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4401
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4402
    goto/16 :goto_7

    .line 4403
    :cond_b9
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4405
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4406
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4407
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4408
    goto/16 :goto_7

    .line 4383
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v6, v10

    :cond_ba
    move v0, v6

    .line 4384
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_bb

    .line 4385
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4387
    goto/16 :goto_7

    .line 4388
    :cond_bb
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4390
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4391
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4392
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4393
    goto/16 :goto_7

    .line 4367
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v6, v10

    :cond_bc
    move v0, v6

    .line 4368
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_bd

    .line 4369
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4371
    goto/16 :goto_7

    .line 4372
    :cond_bd
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4374
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4375
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4377
    .local v2, "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4378
    goto/16 :goto_7

    .line 4352
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v6, v10

    :cond_be
    move v0, v6

    .line 4353
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_bf

    .line 4354
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4356
    goto/16 :goto_7

    .line 4357
    :cond_bf
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4360
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4361
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4362
    goto/16 :goto_7

    .line 4336
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v6, v10

    :cond_c0
    move v0, v6

    .line 4337
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_c1

    .line 4338
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4339
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4340
    goto/16 :goto_7

    .line 4341
    :cond_c1
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4344
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4346
    .local v2, "mode":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4347
    goto/16 :goto_7

    .line 4321
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v6, v10

    :cond_c2
    move v0, v6

    .line 4322
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_c3

    .line 4323
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4324
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4325
    goto/16 :goto_7

    .line 4326
    :cond_c3
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4328
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4329
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4330
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4331
    goto/16 :goto_7

    .line 4305
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v6, v10

    :cond_c4
    move v0, v6

    .line 4306
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_c5

    .line 4307
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4308
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4309
    goto/16 :goto_7

    .line 4310
    :cond_c5
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4312
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4313
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4314
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4315
    .local v2, "type":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4316
    goto/16 :goto_7

    .line 4290
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "type":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v6, v10

    :cond_c6
    move v0, v6

    .line 4291
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_c7

    .line 4292
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4294
    goto/16 :goto_7

    .line 4295
    :cond_c7
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4297
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4298
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4299
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4300
    goto/16 :goto_7

    .line 4275
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v6, v10

    :cond_c8
    move v0, v6

    .line 4276
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_c9

    .line 4277
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4279
    goto/16 :goto_7

    .line 4280
    :cond_c9
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4282
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4283
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4284
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4285
    goto/16 :goto_7

    .line 4260
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v6, v10

    :cond_ca
    move v0, v6

    .line 4261
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_cb

    .line 4262
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4264
    goto/16 :goto_7

    .line 4265
    :cond_cb
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4267
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4268
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4269
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4270
    goto/16 :goto_7

    .line 4244
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v6, v10

    :cond_cc
    move v0, v6

    .line 4245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_cd

    .line 4246
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4248
    goto/16 :goto_7

    .line 4249
    :cond_cd
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4251
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4252
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4253
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4254
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4255
    goto/16 :goto_7

    .line 4228
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v6, v10

    :cond_ce
    move v0, v6

    .line 4229
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_cf

    .line 4230
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4231
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4232
    goto/16 :goto_7

    .line 4233
    :cond_cf
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4236
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4238
    .local v2, "nwType":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4239
    goto/16 :goto_7

    .line 4213
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "nwType":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v6, v10

    :cond_d0
    move v0, v6

    .line 4214
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_d1

    .line 4215
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4217
    goto/16 :goto_7

    .line 4218
    :cond_d1
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4220
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4221
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4222
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4223
    goto/16 :goto_7

    .line 4198
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v6, v10

    :cond_d2
    move v0, v6

    .line 4199
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_d3

    .line 4200
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4202
    goto/16 :goto_7

    .line 4203
    :cond_d3
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4206
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4207
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4208
    goto/16 :goto_7

    .line 4183
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v6, v10

    :cond_d4
    move v0, v6

    .line 4184
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_d5

    .line 4185
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4187
    goto/16 :goto_7

    .line 4188
    :cond_d5
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4190
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4191
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4192
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4193
    goto/16 :goto_7

    .line 4168
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v6, v10

    :cond_d6
    move v0, v6

    .line 4169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_d7

    .line 4170
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4172
    goto/16 :goto_7

    .line 4173
    :cond_d7
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4175
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4176
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4177
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4178
    goto/16 :goto_7

    .line 4152
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v6, v10

    :cond_d8
    move v0, v6

    .line 4153
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_d9

    .line 4154
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4156
    goto/16 :goto_7

    .line 4157
    :cond_d9
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4159
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4160
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4162
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4163
    goto/16 :goto_7

    .line 4136
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v6, v10

    :cond_da
    move v0, v6

    .line 4137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_db

    .line 4138
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4140
    goto/16 :goto_7

    .line 4141
    :cond_db
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4143
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4144
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4146
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4147
    goto/16 :goto_7

    .line 4121
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v6, v10

    :cond_dc
    move v0, v6

    .line 4122
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_dd

    .line 4123
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4125
    goto/16 :goto_7

    .line 4126
    :cond_dd
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4128
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4129
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4130
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4131
    goto/16 :goto_7

    .line 4106
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v6, v10

    :cond_de
    move v0, v6

    .line 4107
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_df

    .line 4108
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4110
    goto/16 :goto_7

    .line 4111
    :cond_df
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4113
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4114
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4115
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4116
    goto/16 :goto_7

    .line 4090
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v6, v10

    :cond_e0
    move v0, v6

    .line 4091
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_e1

    .line 4092
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4094
    goto/16 :goto_7

    .line 4095
    :cond_e1
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4097
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4098
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4100
    .local v2, "index":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4101
    goto/16 :goto_7

    .line 4075
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v6, v10

    :cond_e2
    move v0, v6

    .line 4076
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_e3

    .line 4077
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4079
    goto/16 :goto_7

    .line 4080
    :cond_e3
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4082
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4083
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4084
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4085
    goto/16 :goto_7

    .line 4059
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v6, v10

    :cond_e4
    move v0, v6

    .line 4060
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_e5

    .line 4061
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4063
    goto/16 :goto_7

    .line 4064
    :cond_e5
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4066
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4067
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4068
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4069
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4070
    goto/16 :goto_7

    .line 4043
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v6, v10

    :cond_e6
    move v0, v6

    .line 4044
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_e7

    .line 4045
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4046
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4047
    goto/16 :goto_7

    .line 4048
    :cond_e7
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4050
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4051
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4053
    .local v2, "status":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4054
    goto/16 :goto_7

    .line 4027
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v6, v10

    :cond_e8
    move v0, v6

    .line 4028
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_e9

    .line 4029
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4030
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4031
    goto/16 :goto_7

    .line 4032
    :cond_e9
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4034
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4035
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4037
    .local v2, "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4038
    goto/16 :goto_7

    .line 4012
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v6, v10

    :cond_ea
    move v0, v6

    .line 4013
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_eb

    .line 4014
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4015
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4016
    goto/16 :goto_7

    .line 4017
    :cond_eb
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4019
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4020
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4021
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4022
    goto/16 :goto_7

    .line 3997
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v6, v10

    :cond_ec
    move v0, v6

    .line 3998
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_ed

    .line 3999
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4001
    goto/16 :goto_7

    .line 4002
    :cond_ed
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4004
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4005
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4006
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4007
    goto/16 :goto_7

    .line 3981
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v6, v10

    :cond_ee
    move v0, v6

    .line 3982
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_ef

    .line 3983
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3985
    goto/16 :goto_7

    .line 3986
    :cond_ef
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3988
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3989
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3991
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3992
    goto/16 :goto_7

    .line 3966
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v6, v10

    :cond_f0
    move v0, v6

    .line 3967
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_f1

    .line 3968
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3970
    goto/16 :goto_7

    .line 3971
    :cond_f1
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3973
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3974
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3975
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3976
    goto/16 :goto_7

    .line 3951
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v6, v10

    :cond_f2
    move v0, v6

    .line 3952
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_f3

    .line 3953
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3955
    goto/16 :goto_7

    .line 3956
    :cond_f3
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3958
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3959
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3960
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3961
    goto/16 :goto_7

    .line 3935
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v6, v10

    :cond_f4
    move v0, v6

    .line 3936
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_f5

    .line 3937
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3939
    goto/16 :goto_7

    .line 3940
    :cond_f5
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3942
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3943
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3944
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3945
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3946
    goto/16 :goto_7

    .line 3920
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v6, v10

    :cond_f6
    move v0, v6

    .line 3921
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_f7

    .line 3922
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3924
    goto/16 :goto_7

    .line 3925
    :cond_f7
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3927
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3928
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3929
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3930
    goto/16 :goto_7

    .line 3905
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v6, v10

    :cond_f8
    move v0, v6

    .line 3906
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_f9

    .line 3907
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3908
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3909
    goto/16 :goto_7

    .line 3910
    :cond_f9
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3912
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3913
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3914
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3915
    goto/16 :goto_7

    .line 3889
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v6, v10

    :cond_fa
    move v0, v6

    .line 3890
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_fb

    .line 3891
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3893
    goto/16 :goto_7

    .line 3894
    :cond_fb
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3896
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3897
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3899
    .local v2, "manual":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3900
    goto/16 :goto_7

    .line 3874
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "manual":Z
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v6, v10

    :cond_fc
    move v0, v6

    .line 3875
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_fd

    .line 3876
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3878
    goto/16 :goto_7

    .line 3879
    :cond_fd
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3881
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3882
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3883
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3884
    goto/16 :goto_7

    .line 3858
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v6, v10

    :cond_fe
    move v0, v6

    .line 3859
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_ff

    .line 3860
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3862
    goto/16 :goto_7

    .line 3863
    :cond_ff
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3865
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3866
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3868
    .local v2, "retry":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3869
    goto/16 :goto_7

    .line 3842
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "retry":I
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v6, v10

    :cond_100
    move v0, v6

    .line 3843
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_101

    .line 3844
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3846
    goto/16 :goto_7

    .line 3847
    :cond_101
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3849
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3850
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3852
    .local v2, "response":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3853
    goto/16 :goto_7

    .line 3827
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v6, v10

    :cond_102
    move v0, v6

    .line 3828
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_103

    .line 3829
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3831
    goto/16 :goto_7

    .line 3832
    :cond_103
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3835
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3836
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3837
    goto/16 :goto_7

    .line 3812
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v6, v10

    :cond_104
    move v0, v6

    .line 3813
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_105

    .line 3814
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3816
    goto/16 :goto_7

    .line 3817
    :cond_105
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3819
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3820
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3821
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3822
    goto/16 :goto_7

    .line 3797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v6, v10

    :cond_106
    move v0, v6

    .line 3798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_107

    .line 3799
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3801
    goto/16 :goto_7

    .line 3802
    :cond_107
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3804
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3805
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3806
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3807
    goto/16 :goto_7

    .line 3782
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v6, v10

    :cond_108
    move v0, v6

    .line 3783
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_109

    .line 3784
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3786
    goto/16 :goto_7

    .line 3787
    :cond_109
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3789
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3790
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3791
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3792
    goto/16 :goto_7

    .line 3765
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v6, v10

    :cond_10a
    move v0, v6

    .line 3766
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_10b

    .line 3767
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3769
    goto/16 :goto_7

    .line 3770
    :cond_10b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3772
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3773
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3775
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3776
    .local v3, "serviceClass":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 3777
    goto/16 :goto_7

    .line 3750
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v6, v10

    :cond_10c
    move v0, v6

    .line 3751
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_10d

    .line 3752
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3754
    goto/16 :goto_7

    .line 3755
    :cond_10d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3758
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3759
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3760
    goto/16 :goto_7

    .line 3734
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v6, v10

    :cond_10e
    move v0, v6

    .line 3735
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_10f

    .line 3736
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3737
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3738
    goto/16 :goto_7

    .line 3739
    :cond_10f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3741
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3742
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3743
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3744
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3745
    goto/16 :goto_7

    .line 3719
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v6, v10

    :cond_110
    move v0, v6

    .line 3720
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_111

    .line 3721
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3723
    goto/16 :goto_7

    .line 3724
    :cond_111
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3727
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3728
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3729
    goto/16 :goto_7

    .line 3702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v6, v10

    :cond_112
    move v0, v6

    .line 3703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_113

    .line 3704
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3706
    goto/16 :goto_7

    .line 3707
    :cond_113
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3709
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3710
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3712
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3713
    .local v3, "m":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3714
    goto/16 :goto_7

    .line 3687
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v6, v10

    :cond_114
    move v0, v6

    .line 3688
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_115

    .line 3689
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3691
    goto/16 :goto_7

    .line 3692
    :cond_115
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3694
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3695
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3696
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3697
    goto/16 :goto_7

    .line 3672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v6, v10

    :cond_116
    move v0, v6

    .line 3673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_117

    .line 3674
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3676
    goto/16 :goto_7

    .line 3677
    :cond_117
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3679
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3680
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3681
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3682
    goto/16 :goto_7

    .line 3655
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v6, v10

    :cond_118
    move v0, v6

    .line 3656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_119

    .line 3657
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3659
    goto/16 :goto_7

    .line 3660
    :cond_119
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3662
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3663
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3664
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3665
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3666
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3667
    goto/16 :goto_7

    .line 3638
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v6, v10

    :cond_11a
    move v0, v6

    .line 3639
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_11b

    .line 3640
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3642
    goto/16 :goto_7

    .line 3643
    :cond_11b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3646
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3647
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 3648
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3649
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 3650
    goto/16 :goto_7

    .line 3621
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v6, v10

    :cond_11c
    move v0, v6

    .line 3622
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_11d

    .line 3623
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3625
    goto/16 :goto_7

    .line 3626
    :cond_11d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3628
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3629
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3630
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3631
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3632
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3633
    goto/16 :goto_7

    .line 3604
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v6, v10

    :cond_11e
    move v0, v6

    .line 3605
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_11f

    .line 3606
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3608
    goto/16 :goto_7

    .line 3609
    :cond_11f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3611
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3612
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3613
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3614
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3615
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3616
    goto/16 :goto_7

    .line 3589
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v6, v10

    :cond_120
    move v0, v6

    .line 3590
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_121

    .line 3591
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3593
    goto/16 :goto_7

    .line 3594
    :cond_121
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3596
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3597
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3598
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3599
    goto/16 :goto_7

    .line 3574
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v6, v10

    :cond_122
    move v0, v6

    .line 3575
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_123

    .line 3576
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3577
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3578
    goto/16 :goto_7

    .line 3579
    :cond_123
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3581
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3582
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3583
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3584
    goto/16 :goto_7

    .line 3556
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v6, v10

    :cond_124
    move v0, v6

    .line 3557
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_125

    .line 3558
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3560
    goto/16 :goto_7

    .line 3561
    :cond_125
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3563
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3564
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3566
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3567
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3568
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    goto/16 :goto_7

    .line 3539
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v6, v10

    :cond_126
    move v0, v6

    .line 3540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_127

    .line 3541
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3543
    goto/16 :goto_7

    .line 3544
    :cond_127
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3546
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3547
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3548
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3549
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3550
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3551
    goto/16 :goto_7

    .line 3522
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v6, v10

    :cond_128
    move v0, v6

    .line 3523
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_129

    .line 3524
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3526
    goto/16 :goto_7

    .line 3527
    :cond_129
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3529
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3530
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3531
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3532
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3533
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3534
    goto/16 :goto_7

    .line 3505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v6, v10

    :cond_12a
    move v0, v6

    .line 3506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_12b

    .line 3507
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3509
    goto/16 :goto_7

    .line 3510
    :cond_12b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3512
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3513
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3514
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3515
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3516
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3517
    goto/16 :goto_7

    .line 3488
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v6, v10

    :cond_12c
    move v0, v6

    .line 3489
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_12d

    .line 3490
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3492
    goto/16 :goto_7

    .line 3493
    :cond_12d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3495
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3496
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3497
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3498
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3499
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3500
    goto/16 :goto_7

    .line 3473
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v6, v10

    :cond_12e
    move v0, v6

    .line 3474
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_12f

    .line 3475
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3477
    goto/16 :goto_7

    .line 3478
    :cond_12f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3480
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3481
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3482
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3483
    goto/16 :goto_7

    .line 3458
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v6, v10

    :cond_130
    move v0, v6

    .line 3459
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_131

    .line 3460
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3462
    goto/16 :goto_7

    .line 3463
    :cond_131
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3465
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3466
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3467
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3468
    goto/16 :goto_7

    .line 3443
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v6, v10

    :cond_132
    move v0, v6

    .line 3444
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_133

    .line 3445
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3447
    goto/16 :goto_7

    .line 3448
    :cond_133
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3450
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3451
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3452
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3453
    goto/16 :goto_7

    .line 3428
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v6, v10

    :cond_134
    move v0, v6

    .line 3429
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_135

    .line 3430
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3432
    goto/16 :goto_7

    .line 3433
    :cond_135
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3435
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3436
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3437
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3438
    goto/16 :goto_7

    .line 3413
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v6, v10

    :cond_136
    move v0, v6

    .line 3414
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_137

    .line 3415
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3417
    goto/16 :goto_7

    .line 3418
    :cond_137
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3420
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3421
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3422
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3423
    goto/16 :goto_7

    .line 3398
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v6, v10

    :cond_138
    move v0, v6

    .line 3399
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_139

    .line 3400
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3401
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3402
    goto/16 :goto_7

    .line 3403
    :cond_139
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3406
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3407
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3408
    goto/16 :goto_7

    .line 3382
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v6, v10

    :cond_13a
    move v0, v6

    .line 3383
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_13b

    .line 3384
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3386
    goto/16 :goto_7

    .line 3387
    :cond_13b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3389
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3390
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3392
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3393
    goto/16 :goto_7

    .line 3367
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imsi":Ljava/lang/String;
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v6, v10

    :cond_13c
    move v0, v6

    .line 3368
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_13d

    .line 3369
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3371
    goto/16 :goto_7

    .line 3372
    :cond_13d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3374
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3375
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3376
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3377
    goto/16 :goto_7

    .line 3351
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v6, v10

    :cond_13e
    move v0, v6

    .line 3352
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_13f

    .line 3353
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3354
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3355
    goto/16 :goto_7

    .line 3356
    :cond_13f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3358
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3359
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3360
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3361
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3362
    goto/16 :goto_7

    .line 3335
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v6, v10

    :cond_140
    move v0, v6

    .line 3336
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_141

    .line 3337
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3339
    goto/16 :goto_7

    .line 3340
    :cond_141
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3342
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3343
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3345
    .local v2, "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3346
    goto/16 :goto_7

    .line 3319
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v6, v10

    :cond_142
    move v0, v6

    .line 3320
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_143

    .line 3321
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3323
    goto/16 :goto_7

    .line 3324
    :cond_143
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3326
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3327
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3329
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3330
    goto/16 :goto_7

    .line 3303
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v6, v10

    :cond_144
    move v0, v6

    .line 3304
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_145

    .line 3305
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3306
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3307
    goto/16 :goto_7

    .line 3308
    :cond_145
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3310
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3311
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3313
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3314
    goto/16 :goto_7

    .line 3287
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v6, v10

    :cond_146
    move v0, v6

    .line 3288
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_147

    .line 3289
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3291
    goto/16 :goto_7

    .line 3292
    :cond_147
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3294
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3295
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3297
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3298
    goto/16 :goto_7

    .line 3271
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v6, v10

    :cond_148
    move v0, v6

    .line 3272
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_149

    .line 3273
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3275
    goto/16 :goto_7

    .line 3276
    :cond_149
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3278
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3279
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3281
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3282
    goto/16 :goto_7

    .line 3255
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v6, v10

    :cond_14a
    move v0, v6

    .line 3256
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_14b

    .line 3257
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3259
    goto :goto_7

    .line 3260
    :cond_14b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3262
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3263
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3265
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3266
    goto :goto_7

    .line 3239
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v6, v10

    :cond_14c
    move v0, v6

    .line 3240
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_14d

    .line 3241
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3243
    goto :goto_7

    .line 3244
    :cond_14d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3246
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3247
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3248
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3249
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3250
    goto :goto_7

    .line 3222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v6, v10

    :cond_14e
    move v0, v6

    .line 3223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_14f

    .line 3224
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3226
    goto :goto_7

    .line 3227
    :cond_14f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3230
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3231
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 3232
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3233
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 3234
    nop

    .line 5884
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :cond_150
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
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

    .line 3173
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3201
    const-string v0, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3202
    return-object p0

    .line 3204
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

    .line 3208
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3209
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 3163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3195
    const/4 v0, 0x1

    return v0
.end method
