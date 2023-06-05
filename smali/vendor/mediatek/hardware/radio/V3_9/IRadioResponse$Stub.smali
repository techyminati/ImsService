.class public abstract Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4552
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 4555
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

    .line 4575
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 4619
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4620
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4621
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4622
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4623
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

    .line 4587
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

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

    new-array v3, v2, [B

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0xdt
        -0x1t
        -0x3ft
        -0x39t
        0x60t
        0x5t
        0x79t
        -0x1et
        0x29t
        -0x29t
        0x2ct
        0x16t
        -0x3dt
        0x5ct
        -0x29t
        0x1et
        0x36t
        0x1dt
        0x7ft
        -0x12t
        -0x6ct
        0x8t
        -0x6at
        0x1ft
        0x57t
        0x72t
        0x5ct
        0x51t
        -0xbt
        -0x47t
        0x2ct
        -0x27t
    .end array-data

    :array_1
    .array-data 1
        0x29t
        0x2ft
        -0x5bt
        0x43t
        0x73t
        0x46t
        0x1ct
        0x38t
        0xct
        0x7et
        -0x5at
        -0x8t
        -0x7at
        -0x14t
        0x75t
        0xet
        -0x6ft
        0x6t
        -0x27t
        0x62t
        0x32t
        0x58t
        -0x5dt
        -0x54t
        0x2ct
        0xft
        0x79t
        0x8t
        0x7bt
        -0x31t
        -0x5bt
        0x1ft
    .end array-data

    :array_2
    .array-data 1
        0x2ct
        -0x47t
        0xat
        0x6ft
        -0x18t
        0x68t
        0x4t
        0x48t
        0x6dt
        -0x5ft
        0x7ct
        -0x64t
        -0x39t
        -0x6ft
        0x3bt
        -0x39t
        -0x44t
        -0x2et
        -0x52t
        -0x66t
        0x39t
        0x7ct
        0x41t
        0x51t
        0x2t
        0x26t
        0x1at
        0x7ct
        0x22t
        -0x1t
        0x11t
        0x47t
    .end array-data

    :array_3
    .array-data 1
        -0x22t
        0x1ft
        0x59t
        -0x3at
        -0x9t
        0x9t
        0x7ct
        0x17t
        -0xdt
        -0x13t
        0x63t
        0x22t
        0x67t
        -0x42t
        -0x3bt
        0x67t
        -0x25t
        -0x69t
        0x4ft
        -0x2et
        -0x4ft
        0x4et
        0x59t
        0xft
        0x2ct
        0x59t
        0x24t
        -0x50t
        0x77t
        0x55t
        0x1bt
        -0x6t
    .end array-data

    :array_4
    .array-data 1
        -0x18t
        0x74t
        0x3bt
        0xdt
        0x4at
        0x0t
        -0x8t
        -0x68t
        0xat
        -0x74t
        0x18t
        -0x2at
        -0x2ct
        -0x2dt
        0x14t
        -0x5ct
        -0x68t
        -0x18t
        -0x6ft
        -0x7t
        -0x20t
        -0x47t
        -0x40t
        0x54t
        -0x26t
        -0x74t
        0x73t
        0x71t
        0x2et
        -0x56t
        0x42t
        0x7t
    .end array-data

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4560
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.9::IRadioResponse"

    const-string v2, "vendor.mediatek.hardware.radio@3.8::IRadioResponse"

    const-string v3, "vendor.mediatek.hardware.radio@3.7::IRadioResponse"

    const-string v4, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    const-string v5, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    const-string v6, "android.hardware.radio@1.2::IRadioResponse"

    const-string v7, "android.hardware.radio@1.1::IRadioResponse"

    const-string v8, "android.hardware.radio@1.0::IRadioResponse"

    const-string v9, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 4581
    const-string v0, "vendor.mediatek.hardware.radio@3.9::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4607
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 4629
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4631
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

    .line 4659
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    const-string v2, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    const-string v3, "android.hardware.radio@1.0::IRadioResponse"

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 8828
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 8829
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_214

    .line 8830
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8832
    goto/16 :goto_7

    .line 8815
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 8816
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 8817
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8819
    goto/16 :goto_7

    .line 8820
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8822
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 8823
    goto/16 :goto_7

    .line 8799
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 8800
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 8801
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8802
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8803
    goto/16 :goto_7

    .line 8804
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8806
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 8807
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8808
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 8809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8810
    goto/16 :goto_7

    .line 8784
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

    .line 8785
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 8786
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8788
    goto/16 :goto_7

    .line 8789
    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8791
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->ping()V

    .line 8792
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8793
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8794
    goto/16 :goto_7

    .line 8774
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 8775
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_214

    .line 8776
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8778
    goto/16 :goto_7

    .line 8761
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 8762
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 8763
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8765
    goto/16 :goto_7

    .line 8766
    :cond_9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8768
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 8769
    goto/16 :goto_7

    .line 8722
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 8723
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 8724
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8726
    goto/16 :goto_7

    .line 8727
    :cond_b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8729
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8730
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8732
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 8734
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8735
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 8736
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 8737
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 8738
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 8740
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 8741
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 8743
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 8747
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 8748
    nop

    .line 8738
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 8744
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 8751
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 8753
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 8755
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8756
    goto/16 :goto_7

    .line 8706
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

    .line 8707
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 8708
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8710
    goto/16 :goto_7

    .line 8711
    :cond_f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8713
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 8714
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8715
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 8716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8717
    goto/16 :goto_7

    .line 8689
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

    .line 8690
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 8691
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8692
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8693
    goto/16 :goto_7

    .line 8694
    :cond_11
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 8697
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8698
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 8699
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8701
    goto/16 :goto_7

    .line 8673
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

    .line 8674
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 8675
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8677
    goto/16 :goto_7

    .line 8678
    :cond_13
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8680
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8681
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8682
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 8683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8684
    goto/16 :goto_7

    .line 8658
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v0, v5

    .line 8659
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15

    .line 8660
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8662
    goto/16 :goto_7

    .line 8663
    :cond_15
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8665
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8666
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8667
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8668
    goto/16 :goto_7

    .line 8642
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 8643
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 8644
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8645
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8646
    goto/16 :goto_7

    .line 8647
    :cond_17
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8649
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8650
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8652
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8653
    goto/16 :goto_7

    .line 8626
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 8627
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 8628
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8629
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8630
    goto/16 :goto_7

    .line 8631
    :cond_19
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8633
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8634
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8636
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8637
    goto/16 :goto_7

    .line 8611
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 8612
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 8613
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8615
    goto/16 :goto_7

    .line 8616
    :cond_1b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8618
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8619
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8620
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8621
    goto/16 :goto_7

    .line 8596
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 8597
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 8598
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8600
    goto/16 :goto_7

    .line 8601
    :cond_1d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8603
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8604
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8605
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setOperatorConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8606
    goto/16 :goto_7

    .line 8581
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 8582
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 8583
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8585
    goto/16 :goto_7

    .line 8586
    :cond_1f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8588
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8589
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8590
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPropImsHandoverResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8591
    goto/16 :goto_7

    .line 8566
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 8567
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 8568
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8570
    goto/16 :goto_7

    .line 8571
    :cond_21
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8573
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8574
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8575
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8576
    goto/16 :goto_7

    .line 8551
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 8552
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 8553
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8555
    goto/16 :goto_7

    .line 8556
    :cond_23
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8558
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8559
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8560
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSilentRebootResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8561
    goto/16 :goto_7

    .line 8536
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 8537
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 8538
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8540
    goto/16 :goto_7

    .line 8541
    :cond_25
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8543
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8544
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8545
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->reportSimModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8546
    goto/16 :goto_7

    .line 8521
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 8522
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 8523
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8525
    goto/16 :goto_7

    .line 8526
    :cond_27
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8528
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8529
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8530
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->reportAirplaneModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8531
    goto/16 :goto_7

    .line 8505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 8506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 8507
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8509
    goto/16 :goto_7

    .line 8510
    :cond_29
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8512
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8513
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8515
    .local v2, "mode":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8516
    goto/16 :goto_7

    .line 8490
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 8491
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 8492
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8494
    goto/16 :goto_7

    .line 8495
    :cond_2b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8497
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8498
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8499
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8500
    goto/16 :goto_7

    .line 8475
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 8476
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 8477
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8479
    goto/16 :goto_7

    .line 8480
    :cond_2d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8482
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8483
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8484
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8485
    goto/16 :goto_7

    .line 8460
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 8461
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 8462
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8464
    goto/16 :goto_7

    .line 8465
    :cond_2f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8467
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8468
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8469
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8470
    goto/16 :goto_7

    .line 8445
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 8446
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 8447
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8449
    goto/16 :goto_7

    .line 8450
    :cond_31
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8452
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8453
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8454
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8455
    goto/16 :goto_7

    .line 8429
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 8430
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 8431
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8433
    goto/16 :goto_7

    .line 8434
    :cond_33
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8436
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8437
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8439
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8440
    goto/16 :goto_7

    .line 8414
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 8415
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 8416
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8418
    goto/16 :goto_7

    .line 8419
    :cond_35
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8421
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8422
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8423
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8424
    goto/16 :goto_7

    .line 8399
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 8400
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 8401
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8403
    goto/16 :goto_7

    .line 8404
    :cond_37
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8406
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8407
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8408
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setE911StateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8409
    goto/16 :goto_7

    .line 8384
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 8385
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 8386
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8388
    goto/16 :goto_7

    .line 8389
    :cond_39
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8391
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8392
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8393
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setLteUplinkDataTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8394
    goto/16 :goto_7

    .line 8369
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 8370
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 8371
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8372
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8373
    goto/16 :goto_7

    .line 8374
    :cond_3b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8376
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8377
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8378
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setLteAccessStratumReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8379
    goto/16 :goto_7

    .line 8354
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 8355
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 8356
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8358
    goto/16 :goto_7

    .line 8359
    :cond_3d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8361
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8362
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8363
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8364
    goto/16 :goto_7

    .line 8339
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 8340
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 8341
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8343
    goto/16 :goto_7

    .line 8344
    :cond_3f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8346
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8347
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8348
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8349
    goto/16 :goto_7

    .line 8324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 8325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 8326
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8328
    goto/16 :goto_7

    .line 8329
    :cond_41
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8331
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8332
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8333
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8334
    goto/16 :goto_7

    .line 8309
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 8310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 8311
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8313
    goto/16 :goto_7

    .line 8314
    :cond_43
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8316
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8317
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8318
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8319
    goto/16 :goto_7

    .line 8294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 8295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 8296
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8298
    goto/16 :goto_7

    .line 8299
    :cond_45
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8301
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8302
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8303
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->resetRadioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8304
    goto/16 :goto_7

    .line 8279
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 8280
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 8281
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8283
    goto/16 :goto_7

    .line 8284
    :cond_47
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8286
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8287
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8288
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPdnNameReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8289
    goto/16 :goto_7

    .line 8264
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v0, v5

    .line 8265
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_49

    .line 8266
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8268
    goto/16 :goto_7

    .line 8269
    :cond_49
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8271
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8272
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8273
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setOverrideApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8274
    goto/16 :goto_7

    .line 8249
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 8250
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 8251
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8252
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8253
    goto/16 :goto_7

    .line 8254
    :cond_4b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8256
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8257
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8258
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPdnReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8259
    goto/16 :goto_7

    .line 8234
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 8235
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 8236
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8238
    goto/16 :goto_7

    .line 8239
    :cond_4d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8241
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8242
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8243
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8244
    goto/16 :goto_7

    .line 8219
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v0, v5

    .line 8220
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4f

    .line 8221
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8222
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8223
    goto/16 :goto_7

    .line 8224
    :cond_4f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8226
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8227
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8228
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8229
    goto/16 :goto_7

    .line 8204
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 8205
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 8206
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8208
    goto/16 :goto_7

    .line 8209
    :cond_51
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8211
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8212
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8213
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8214
    goto/16 :goto_7

    .line 8189
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v0, v5

    .line 8190
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_53

    .line 8191
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8193
    goto/16 :goto_7

    .line 8194
    :cond_53
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8196
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8197
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8198
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8199
    goto/16 :goto_7

    .line 8173
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 8174
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 8175
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8177
    goto/16 :goto_7

    .line 8178
    :cond_55
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8180
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8181
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8183
    .local v2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8184
    goto/16 :goto_7

    .line 8157
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 8158
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 8159
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8161
    goto/16 :goto_7

    .line 8162
    :cond_57
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8164
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8165
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8167
    .local v2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8168
    goto/16 :goto_7

    .line 8141
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v0, v5

    .line 8142
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_59

    .line 8143
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8145
    goto/16 :goto_7

    .line 8146
    :cond_59
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8148
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8149
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8151
    .local v2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8152
    goto/16 :goto_7

    .line 8125
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 8126
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 8127
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8129
    goto/16 :goto_7

    .line 8130
    :cond_5b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8132
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8133
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8134
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8135
    .local v2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8136
    goto/16 :goto_7

    .line 8110
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 8111
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 8112
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8114
    goto/16 :goto_7

    .line 8115
    :cond_5d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8117
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8118
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8119
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8120
    goto/16 :goto_7

    .line 8095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 8096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 8097
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8099
    goto/16 :goto_7

    .line 8100
    :cond_5f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8102
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8103
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8104
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8105
    goto/16 :goto_7

    .line 8079
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 8080
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 8081
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8083
    goto/16 :goto_7

    .line 8084
    :cond_61
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8086
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8087
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8089
    .local v2, "mode":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8090
    goto/16 :goto_7

    .line 8064
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 8065
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 8066
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8068
    goto/16 :goto_7

    .line 8069
    :cond_63
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8071
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8072
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8073
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8074
    goto/16 :goto_7

    .line 8049
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 8050
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 8051
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8053
    goto/16 :goto_7

    .line 8054
    :cond_65
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8056
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8057
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8058
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8059
    goto/16 :goto_7

    .line 8033
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 8034
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 8035
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8037
    goto/16 :goto_7

    .line 8038
    :cond_67
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8040
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8041
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8043
    .local v2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8044
    goto/16 :goto_7

    .line 8018
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 8019
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 8020
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8022
    goto/16 :goto_7

    .line 8023
    :cond_69
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8025
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8026
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8027
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8028
    goto/16 :goto_7

    .line 8001
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 8002
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 8003
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8005
    goto/16 :goto_7

    .line 8006
    :cond_6b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8008
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8009
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8010
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 8011
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8012
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 8013
    goto/16 :goto_7

    .line 7985
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 7986
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 7987
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7989
    goto/16 :goto_7

    .line 7990
    :cond_6d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7992
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7993
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7994
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7995
    .local v2, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7996
    goto/16 :goto_7

    .line 7970
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 7971
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 7972
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7974
    goto/16 :goto_7

    .line 7975
    :cond_6f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7977
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7978
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7979
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7980
    goto/16 :goto_7

    .line 7953
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 7954
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 7955
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7957
    goto/16 :goto_7

    .line 7958
    :cond_71
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7960
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7961
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7962
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 7963
    .local v2, "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7964
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 7965
    goto/16 :goto_7

    .line 7938
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 7939
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 7940
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7942
    goto/16 :goto_7

    .line 7943
    :cond_73
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7945
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7946
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7947
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->reloadModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7948
    goto/16 :goto_7

    .line 7923
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 7924
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 7925
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7927
    goto/16 :goto_7

    .line 7928
    :cond_75
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7930
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7931
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7932
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->storeModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7933
    goto/16 :goto_7

    .line 7908
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 7909
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 7910
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7912
    goto/16 :goto_7

    .line 7913
    :cond_77
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7915
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7916
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7917
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7918
    goto/16 :goto_7

    .line 7892
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 7893
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 7894
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7896
    goto/16 :goto_7

    .line 7897
    :cond_79
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7899
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7900
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7902
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7903
    goto/16 :goto_7

    .line 7876
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 7877
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 7878
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7880
    goto/16 :goto_7

    .line 7881
    :cond_7b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7883
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7884
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7886
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7887
    goto/16 :goto_7

    .line 7861
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 7862
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 7863
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7864
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7865
    goto/16 :goto_7

    .line 7866
    :cond_7d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7868
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7869
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7870
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSmsFwkReadyRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7871
    goto/16 :goto_7

    .line 7845
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 7846
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 7847
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7849
    goto/16 :goto_7

    .line 7850
    :cond_7f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7852
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7853
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7855
    .local v2, "active":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7856
    goto/16 :goto_7

    .line 7829
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "active":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 7830
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 7831
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7833
    goto/16 :goto_7

    .line 7834
    :cond_81
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7836
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7837
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7839
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7840
    goto/16 :goto_7

    .line 7814
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 7815
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 7816
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7818
    goto/16 :goto_7

    .line 7819
    :cond_83
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7821
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7822
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7823
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7824
    goto/16 :goto_7

    .line 7799
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 7800
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 7801
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7802
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7803
    goto/16 :goto_7

    .line 7804
    :cond_85
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7806
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7807
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7808
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7809
    goto/16 :goto_7

    .line 7784
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 7785
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 7786
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7788
    goto/16 :goto_7

    .line 7789
    :cond_87
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7791
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7792
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7793
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7794
    goto/16 :goto_7

    .line 7767
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 7768
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 7769
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7771
    goto/16 :goto_7

    .line 7772
    :cond_89
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7774
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7775
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7776
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 7777
    .local v2, "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7778
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 7779
    goto/16 :goto_7

    .line 7752
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 7753
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 7754
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7755
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7756
    goto/16 :goto_7

    .line 7757
    :cond_8b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7759
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7760
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7761
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7762
    goto/16 :goto_7

    .line 7735
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 7736
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 7737
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7739
    goto/16 :goto_7

    .line 7740
    :cond_8d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7742
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7743
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7744
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 7745
    .local v2, "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7746
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 7747
    goto/16 :goto_7

    .line 7720
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 7721
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 7722
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7724
    goto/16 :goto_7

    .line 7725
    :cond_8f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7727
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7728
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7729
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7730
    goto/16 :goto_7

    .line 7703
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 7704
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 7705
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7707
    goto/16 :goto_7

    .line 7708
    :cond_91
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7710
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7711
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7712
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;-><init>()V

    .line 7713
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7714
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;)V

    .line 7715
    goto/16 :goto_7

    .line 7687
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 7688
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 7689
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7691
    goto/16 :goto_7

    .line 7692
    :cond_93
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7694
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7695
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7697
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7698
    goto/16 :goto_7

    .line 7672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 7673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 7674
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7676
    goto/16 :goto_7

    .line 7677
    :cond_95
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7679
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7680
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7681
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7682
    goto/16 :goto_7

    .line 7650
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v12, v5

    .line 7651
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_97

    .line 7652
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7654
    goto/16 :goto_7

    .line 7655
    :cond_97
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7657
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v13, v0

    .line 7658
    .local v13, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v13, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 7660
    .local v14, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 7661
    .local v15, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7662
    .local v16, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 7663
    .local v17, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7664
    .local v18, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 7665
    .local v19, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 7666
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 7667
    goto/16 :goto_7

    .line 7635
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v14    # "catagory":I
    .end local v15    # "state":I
    .end local v16    # "retry_cnt":I
    .end local v17    # "autolock_cnt":I
    .end local v18    # "num_set":I
    .end local v19    # "total_set":I
    .end local v20    # "key_state":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 7636
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 7637
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7639
    goto/16 :goto_7

    .line 7640
    :cond_99
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7642
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7643
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7644
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7645
    goto/16 :goto_7

    .line 7619
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 7620
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 7621
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7623
    goto/16 :goto_7

    .line 7624
    :cond_9b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7626
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7627
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7629
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7630
    goto/16 :goto_7

    .line 7603
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 7604
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 7605
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7607
    goto/16 :goto_7

    .line 7608
    :cond_9d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7610
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7611
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7613
    .restart local v2    # "response":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7614
    goto/16 :goto_7

    .line 7588
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 7589
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 7590
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7592
    goto/16 :goto_7

    .line 7593
    :cond_9f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7595
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7596
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7597
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7598
    goto/16 :goto_7

    .line 7573
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 7574
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 7575
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7577
    goto/16 :goto_7

    .line 7578
    :cond_a1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7580
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7581
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7582
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7583
    goto/16 :goto_7

    .line 7558
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 7559
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 7560
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7562
    goto/16 :goto_7

    .line 7563
    :cond_a3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7565
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7566
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7567
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7568
    goto/16 :goto_7

    .line 7543
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 7544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 7545
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7547
    goto/16 :goto_7

    .line 7548
    :cond_a5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7550
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7551
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7552
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7553
    goto/16 :goto_7

    .line 7528
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 7529
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 7530
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7532
    goto/16 :goto_7

    .line 7533
    :cond_a7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7535
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7536
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7537
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7538
    goto/16 :goto_7

    .line 7513
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 7514
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 7515
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7517
    goto/16 :goto_7

    .line 7518
    :cond_a9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7520
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7521
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7522
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7523
    goto/16 :goto_7

    .line 7498
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 7499
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 7500
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7502
    goto/16 :goto_7

    .line 7503
    :cond_ab
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7505
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7506
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7507
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->currentStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7508
    goto/16 :goto_7

    .line 7483
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 7484
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 7485
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7487
    goto/16 :goto_7

    .line 7488
    :cond_ad
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7490
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7491
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7492
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setEccListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7493
    goto/16 :goto_7

    .line 7468
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 7469
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 7470
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7472
    goto/16 :goto_7

    .line 7473
    :cond_af
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7475
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7476
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7477
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setEccServiceCategoryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7478
    goto/16 :goto_7

    .line 7453
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 7454
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 7455
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7457
    goto/16 :goto_7

    .line 7458
    :cond_b1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7460
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7461
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7462
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7463
    goto/16 :goto_7

    .line 7438
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 7439
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 7440
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7442
    goto/16 :goto_7

    .line 7443
    :cond_b3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7445
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7446
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7447
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7448
    goto/16 :goto_7

    .line 7423
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 7424
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 7425
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7427
    goto/16 :goto_7

    .line 7428
    :cond_b5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7430
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7431
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7432
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7433
    goto/16 :goto_7

    .line 7407
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 7408
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 7409
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7410
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7411
    goto/16 :goto_7

    .line 7412
    :cond_b7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7414
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7415
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7417
    .local v2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7418
    goto/16 :goto_7

    .line 7392
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 7393
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 7394
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7396
    goto/16 :goto_7

    .line 7397
    :cond_b9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7399
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7400
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7401
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7402
    goto/16 :goto_7

    .line 7376
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 7377
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 7378
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7380
    goto/16 :goto_7

    .line 7381
    :cond_bb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7383
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7384
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7385
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7386
    .local v2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7387
    goto/16 :goto_7

    .line 7361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 7362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 7363
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7365
    goto/16 :goto_7

    .line 7366
    :cond_bd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7368
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7369
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7370
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7371
    goto/16 :goto_7

    .line 7346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 7347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 7348
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7350
    goto/16 :goto_7

    .line 7351
    :cond_bf
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7353
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7354
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7355
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7356
    goto/16 :goto_7

    .line 7329
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 7330
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 7331
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7332
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7333
    goto/16 :goto_7

    .line 7334
    :cond_c1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7336
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7337
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7339
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7340
    .local v3, "m":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 7341
    goto/16 :goto_7

    .line 7313
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 7314
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 7315
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7316
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7317
    goto/16 :goto_7

    .line 7318
    :cond_c3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7320
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7321
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7323
    .restart local v2    # "n":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7324
    goto/16 :goto_7

    .line 7296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 7297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 7298
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7300
    goto/16 :goto_7

    .line 7301
    :cond_c5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7303
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7304
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7306
    .restart local v2    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7307
    .restart local v3    # "m":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 7308
    goto/16 :goto_7

    .line 7281
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 7282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 7283
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7285
    goto/16 :goto_7

    .line 7286
    :cond_c7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7288
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7289
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7290
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7291
    goto/16 :goto_7

    .line 7266
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 7267
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 7268
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7270
    goto/16 :goto_7

    .line 7271
    :cond_c9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7273
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7274
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7275
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7276
    goto/16 :goto_7

    .line 7250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 7251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 7252
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7254
    goto/16 :goto_7

    .line 7255
    :cond_cb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7257
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7258
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7260
    .local v2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7261
    goto/16 :goto_7

    .line 7234
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 7235
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 7236
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7238
    goto/16 :goto_7

    .line 7239
    :cond_cd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7241
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7242
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7243
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7244
    .local v2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7245
    goto/16 :goto_7

    .line 7218
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 7219
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 7220
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7222
    goto/16 :goto_7

    .line 7223
    :cond_cf
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7225
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7226
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7228
    .local v2, "sne":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7229
    goto/16 :goto_7

    .line 7202
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sne":Ljava/lang/String;
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move v0, v5

    .line 7203
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d1

    .line 7204
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7205
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7206
    goto/16 :goto_7

    .line 7207
    :cond_d1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7209
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7210
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7212
    .local v2, "email":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7213
    goto/16 :goto_7

    .line 7186
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "email":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v5, v6

    :cond_d2
    move v0, v5

    .line 7187
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d3

    .line 7188
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7190
    goto/16 :goto_7

    .line 7191
    :cond_d3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7193
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7194
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7196
    .local v2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7197
    goto/16 :goto_7

    .line 7171
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v5, v6

    :cond_d4
    move v0, v5

    .line 7172
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d5

    .line 7173
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7174
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7175
    goto/16 :goto_7

    .line 7176
    :cond_d5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7178
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7179
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7180
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7181
    goto/16 :goto_7

    .line 7155
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v5, v6

    :cond_d6
    move v0, v5

    .line 7156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d7

    .line 7157
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7159
    goto/16 :goto_7

    .line 7160
    :cond_d7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7162
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7163
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7164
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7165
    .local v2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7166
    goto/16 :goto_7

    .line 7140
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v5, v6

    :cond_d8
    move v0, v5

    .line 7141
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d9

    .line 7142
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7143
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7144
    goto/16 :goto_7

    .line 7145
    :cond_d9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7147
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7148
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7149
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7150
    goto/16 :goto_7

    .line 7123
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v5, v6

    :cond_da
    move v0, v5

    .line 7124
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_db

    .line 7125
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7127
    goto/16 :goto_7

    .line 7128
    :cond_db
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7130
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7131
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7132
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;-><init>()V

    .line 7133
    .local v2, "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7134
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;)V

    .line 7135
    goto/16 :goto_7

    .line 7107
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v5, v6

    :cond_dc
    move v0, v5

    .line 7108
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_dd

    .line 7109
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7111
    goto/16 :goto_7

    .line 7112
    :cond_dd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7114
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7115
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7117
    .local v2, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7118
    goto/16 :goto_7

    .line 7092
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v5, v6

    :cond_de
    move v0, v5

    .line 7093
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_df

    .line 7094
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7095
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7096
    goto/16 :goto_7

    .line 7097
    :cond_df
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7099
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7100
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7101
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7102
    goto/16 :goto_7

    .line 7076
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v5, v6

    :cond_e0
    move v0, v5

    .line 7077
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e1

    .line 7078
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7079
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7080
    goto/16 :goto_7

    .line 7081
    :cond_e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7083
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7084
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7086
    .local v2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7087
    goto/16 :goto_7

    .line 7060
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v5, v6

    :cond_e2
    move v0, v5

    .line 7061
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e3

    .line 7062
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7064
    goto/16 :goto_7

    .line 7065
    :cond_e3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7067
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7068
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7070
    .local v2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7071
    goto/16 :goto_7

    .line 7045
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v5, v6

    :cond_e4
    move v0, v5

    .line 7046
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e5

    .line 7047
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7049
    goto/16 :goto_7

    .line 7050
    :cond_e5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7052
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7053
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7054
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7055
    goto/16 :goto_7

    .line 7030
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v5, v6

    :cond_e6
    move v0, v5

    .line 7031
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e7

    .line 7032
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7034
    goto/16 :goto_7

    .line 7035
    :cond_e7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7037
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7038
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7039
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7040
    goto/16 :goto_7

    .line 7014
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v5, v6

    :cond_e8
    move v0, v5

    .line 7015
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e9

    .line 7016
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7018
    goto/16 :goto_7

    .line 7019
    :cond_e9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7021
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7022
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7024
    .local v2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7025
    goto/16 :goto_7

    .line 6998
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v5, v6

    :cond_ea
    move v0, v5

    .line 6999
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_eb

    .line 7000
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7002
    goto/16 :goto_7

    .line 7003
    :cond_eb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7005
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7006
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7007
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7008
    .local v2, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7009
    goto/16 :goto_7

    .line 6983
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    move v0, v5

    .line 6984
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ed

    .line 6985
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6987
    goto/16 :goto_7

    .line 6988
    :cond_ed
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6990
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6991
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6992
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6993
    goto/16 :goto_7

    .line 6967
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v5, v6

    :cond_ee
    move v0, v5

    .line 6968
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ef

    .line 6969
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6971
    goto/16 :goto_7

    .line 6972
    :cond_ef
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6974
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6975
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6977
    .local v2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6978
    goto/16 :goto_7

    .line 6951
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v5, v6

    :cond_f0
    move v0, v5

    .line 6952
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f1

    .line 6953
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6955
    goto/16 :goto_7

    .line 6956
    :cond_f1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6958
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6959
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6961
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6962
    goto/16 :goto_7

    .line 6936
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v5, v6

    :cond_f2
    move v0, v5

    .line 6937
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f3

    .line 6938
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6940
    goto/16 :goto_7

    .line 6941
    :cond_f3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6943
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6944
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6945
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6946
    goto/16 :goto_7

    .line 6920
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v5, v6

    :cond_f4
    move v0, v5

    .line 6921
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f5

    .line 6922
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6924
    goto/16 :goto_7

    .line 6925
    :cond_f5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6927
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6928
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6930
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6931
    goto/16 :goto_7

    .line 6903
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v5, v6

    :cond_f6
    move v0, v5

    .line 6904
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f7

    .line 6905
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6907
    goto/16 :goto_7

    .line 6908
    :cond_f7
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6910
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6911
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6912
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 6913
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6914
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 6915
    goto/16 :goto_7

    .line 6886
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v5, v6

    :cond_f8
    move v0, v5

    .line 6887
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f9

    .line 6888
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6889
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6890
    goto/16 :goto_7

    .line 6891
    :cond_f9
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6893
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6894
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6895
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 6896
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6897
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 6898
    goto/16 :goto_7

    .line 6869
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v5, v6

    :cond_fa
    move v0, v5

    .line 6870
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fb

    .line 6871
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6873
    goto/16 :goto_7

    .line 6874
    :cond_fb
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6876
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6877
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6878
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 6879
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6880
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 6881
    goto/16 :goto_7

    .line 6853
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v5, v6

    :cond_fc
    move v0, v5

    .line 6854
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fd

    .line 6855
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6857
    goto/16 :goto_7

    .line 6858
    :cond_fd
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6860
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6861
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6862
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6863
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6864
    goto/16 :goto_7

    .line 6838
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v5, v6

    :cond_fe
    move v0, v5

    .line 6839
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ff

    .line 6840
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6842
    goto/16 :goto_7

    .line 6843
    :cond_ff
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6845
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6846
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6847
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6848
    goto/16 :goto_7

    .line 6823
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v5, v6

    :cond_100
    move v0, v5

    .line 6824
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_101

    .line 6825
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6827
    goto/16 :goto_7

    .line 6828
    :cond_101
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6830
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6831
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6832
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6833
    goto/16 :goto_7

    .line 6806
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v5, v6

    :cond_102
    move v0, v5

    .line 6807
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_103

    .line 6808
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6810
    goto/16 :goto_7

    .line 6811
    :cond_103
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6813
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6814
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6815
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 6816
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6817
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 6818
    goto/16 :goto_7

    .line 6790
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v5, v6

    :cond_104
    move v0, v5

    .line 6791
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_105

    .line 6792
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6793
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6794
    goto/16 :goto_7

    .line 6795
    :cond_105
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6797
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6798
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6799
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6800
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6801
    goto/16 :goto_7

    .line 6775
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_79
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_106

    move v5, v6

    :cond_106
    move v1, v5

    .line 6776
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_107

    .line 6777
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6779
    goto/16 :goto_7

    .line 6780
    :cond_107
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6782
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6783
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6784
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6785
    goto/16 :goto_7

    .line 6758
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_108

    move v5, v6

    :cond_108
    move v1, v5

    .line 6759
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_109

    .line 6760
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6762
    goto/16 :goto_7

    .line 6763
    :cond_109
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6765
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6766
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6767
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 6768
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6769
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 6770
    goto/16 :goto_7

    .line 6743
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_7b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10a

    move v5, v6

    :cond_10a
    move v1, v5

    .line 6744
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_10b

    .line 6745
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6747
    goto/16 :goto_7

    .line 6748
    :cond_10b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6750
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6751
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6752
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6753
    goto/16 :goto_7

    .line 6728
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10c

    move v5, v6

    :cond_10c
    move v1, v5

    .line 6729
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_10d

    .line 6730
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6732
    goto/16 :goto_7

    .line 6733
    :cond_10d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6735
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6736
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6737
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6738
    goto/16 :goto_7

    .line 6713
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10e

    move v5, v6

    :cond_10e
    move v1, v5

    .line 6714
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_10f

    .line 6715
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6717
    goto/16 :goto_7

    .line 6718
    :cond_10f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6720
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6721
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6722
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6723
    goto/16 :goto_7

    .line 6698
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_110

    move v5, v6

    :cond_110
    move v1, v5

    .line 6699
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_111

    .line 6700
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6701
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6702
    goto/16 :goto_7

    .line 6703
    :cond_111
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6705
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6706
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6707
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6708
    goto/16 :goto_7

    .line 6684
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v5, v6

    :cond_112
    move v0, v5

    .line 6685
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_113

    .line 6686
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6688
    goto/16 :goto_7

    .line 6689
    :cond_113
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6692
    .local v1, "serial":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 6693
    goto/16 :goto_7

    .line 6669
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v5, v6

    :cond_114
    move v0, v5

    .line 6670
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_115

    .line 6671
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6673
    goto/16 :goto_7

    .line 6674
    :cond_115
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6676
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6677
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6678
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6679
    goto/16 :goto_7

    .line 6654
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v5, v6

    :cond_116
    move v0, v5

    .line 6655
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_117

    .line 6656
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6658
    goto/16 :goto_7

    .line 6659
    :cond_117
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6661
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6662
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6663
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6664
    goto/16 :goto_7

    .line 6639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v5, v6

    :cond_118
    move v0, v5

    .line 6640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_119

    .line 6641
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6643
    goto/16 :goto_7

    .line 6644
    :cond_119
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6646
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6647
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6648
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6649
    goto/16 :goto_7

    .line 6621
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v5, v6

    :cond_11a
    move v0, v5

    .line 6622
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11b

    .line 6623
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6625
    goto/16 :goto_7

    .line 6626
    :cond_11b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6628
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6629
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6631
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 6632
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6633
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 6634
    goto/16 :goto_7

    .line 6605
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v5, v6

    :cond_11c
    move v0, v5

    .line 6606
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11d

    .line 6607
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6609
    goto/16 :goto_7

    .line 6610
    :cond_11d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6612
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6613
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6615
    .local v2, "numAllowed":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6616
    goto/16 :goto_7

    .line 6588
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "numAllowed":I
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v5, v6

    :cond_11e
    move v0, v5

    .line 6589
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11f

    .line 6590
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6592
    goto/16 :goto_7

    .line 6593
    :cond_11f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6595
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6596
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6597
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 6598
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6599
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 6600
    goto/16 :goto_7

    .line 6571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v5, v6

    :cond_120
    move v0, v5

    .line 6572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_121

    .line 6573
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6575
    goto/16 :goto_7

    .line 6576
    :cond_121
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6578
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6579
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6580
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 6581
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6582
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 6583
    goto/16 :goto_7

    .line 6554
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v5, v6

    :cond_122
    move v0, v5

    .line 6555
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_123

    .line 6556
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6558
    goto/16 :goto_7

    .line 6559
    :cond_123
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6561
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6562
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6563
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6564
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6565
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6566
    goto/16 :goto_7

    .line 6537
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v5, v6

    :cond_124
    move v0, v5

    .line 6538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_125

    .line 6539
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6541
    goto/16 :goto_7

    .line 6542
    :cond_125
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6544
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6545
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6546
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6547
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6548
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6549
    goto/16 :goto_7

    .line 6520
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v5, v6

    :cond_126
    move v0, v5

    .line 6521
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_127

    .line 6522
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6523
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6524
    goto/16 :goto_7

    .line 6525
    :cond_127
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6527
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6528
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6529
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6530
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6531
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6532
    goto/16 :goto_7

    .line 6503
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v5, v6

    :cond_128
    move v0, v5

    .line 6504
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_129

    .line 6505
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6507
    goto/16 :goto_7

    .line 6508
    :cond_129
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6510
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6511
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6512
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6513
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6514
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6515
    goto/16 :goto_7

    .line 6488
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v5, v6

    :cond_12a
    move v0, v5

    .line 6489
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12b

    .line 6490
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6492
    goto/16 :goto_7

    .line 6493
    :cond_12b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6495
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6496
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6497
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6498
    goto/16 :goto_7

    .line 6473
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v5, v6

    :cond_12c
    move v0, v5

    .line 6474
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12d

    .line 6475
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6477
    goto/16 :goto_7

    .line 6478
    :cond_12d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6480
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6481
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6482
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6483
    goto/16 :goto_7

    .line 6456
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v5, v6

    :cond_12e
    move v0, v5

    .line 6457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12f

    .line 6458
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6460
    goto/16 :goto_7

    .line 6461
    :cond_12f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6463
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6464
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6465
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6466
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6467
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6468
    goto/16 :goto_7

    .line 6440
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v5, v6

    :cond_130
    move v0, v5

    .line 6441
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_131

    .line 6442
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6443
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6444
    goto/16 :goto_7

    .line 6445
    :cond_131
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6447
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6448
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6449
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6450
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6451
    goto/16 :goto_7

    .line 6425
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v5, v6

    :cond_132
    move v0, v5

    .line 6426
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_133

    .line 6427
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6429
    goto/16 :goto_7

    .line 6430
    :cond_133
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6432
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6433
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6434
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6435
    goto/16 :goto_7

    .line 6410
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v5, v6

    :cond_134
    move v0, v5

    .line 6411
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_135

    .line 6412
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6414
    goto/16 :goto_7

    .line 6415
    :cond_135
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6417
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6418
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6419
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6420
    goto/16 :goto_7

    .line 6395
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v5, v6

    :cond_136
    move v0, v5

    .line 6396
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_137

    .line 6397
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6399
    goto/16 :goto_7

    .line 6400
    :cond_137
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6402
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6403
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6404
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6405
    goto/16 :goto_7

    .line 6380
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v5, v6

    :cond_138
    move v0, v5

    .line 6381
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_139

    .line 6382
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6383
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6384
    goto/16 :goto_7

    .line 6385
    :cond_139
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6387
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6388
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6389
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6390
    goto/16 :goto_7

    .line 6365
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v5, v6

    :cond_13a
    move v0, v5

    .line 6366
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13b

    .line 6367
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6369
    goto/16 :goto_7

    .line 6370
    :cond_13b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6372
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6373
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6374
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6375
    goto/16 :goto_7

    .line 6349
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v5, v6

    :cond_13c
    move v0, v5

    .line 6350
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13d

    .line 6351
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6352
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6353
    goto/16 :goto_7

    .line 6354
    :cond_13d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6356
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6357
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6359
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6360
    goto/16 :goto_7

    .line 6332
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v5, v6

    :cond_13e
    move v0, v5

    .line 6333
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13f

    .line 6334
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6336
    goto/16 :goto_7

    .line 6337
    :cond_13f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6339
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6340
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6341
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6342
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6343
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6344
    goto/16 :goto_7

    .line 6317
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v5, v6

    :cond_140
    move v0, v5

    .line 6318
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_141

    .line 6319
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6320
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6321
    goto/16 :goto_7

    .line 6322
    :cond_141
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6324
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6325
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6326
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6327
    goto/16 :goto_7

    .line 6300
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v5, v6

    :cond_142
    move v0, v5

    .line 6301
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_143

    .line 6302
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6303
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6304
    goto/16 :goto_7

    .line 6305
    :cond_143
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6307
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6308
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6310
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6311
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 6312
    goto/16 :goto_7

    .line 6283
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v5, v6

    :cond_144
    move v0, v5

    .line 6284
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_145

    .line 6285
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6286
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6287
    goto/16 :goto_7

    .line 6288
    :cond_145
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6290
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6291
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6292
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6293
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6294
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6295
    goto/16 :goto_7

    .line 6266
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v5, v6

    :cond_146
    move v0, v5

    .line 6267
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_147

    .line 6268
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6270
    goto/16 :goto_7

    .line 6271
    :cond_147
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6273
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6274
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6275
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6276
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6277
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6278
    goto/16 :goto_7

    .line 6249
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v5, v6

    :cond_148
    move v0, v5

    .line 6250
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_149

    .line 6251
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6252
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6253
    goto/16 :goto_7

    .line 6254
    :cond_149
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6256
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6257
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6259
    .local v2, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6260
    .local v3, "ratFamily":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 6261
    goto/16 :goto_7

    .line 6234
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v5, v6

    :cond_14a
    move v0, v5

    .line 6235
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14b

    .line 6236
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6238
    goto/16 :goto_7

    .line 6239
    :cond_14b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6241
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6242
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6243
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6244
    goto/16 :goto_7

    .line 6219
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v5, v6

    :cond_14c
    move v0, v5

    .line 6220
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14d

    .line 6221
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6222
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6223
    goto/16 :goto_7

    .line 6224
    :cond_14d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6226
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6227
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6228
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6229
    goto/16 :goto_7

    .line 6203
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v5, v6

    :cond_14e
    move v0, v5

    .line 6204
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14f

    .line 6205
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6207
    goto/16 :goto_7

    .line 6208
    :cond_14f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6210
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6211
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6212
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6213
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6214
    goto/16 :goto_7

    .line 6187
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_9e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_150

    move v5, v6

    :cond_150
    move v0, v5

    .line 6188
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_151

    .line 6189
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6191
    goto/16 :goto_7

    .line 6192
    :cond_151
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6194
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6195
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6197
    .local v2, "rat":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6198
    goto/16 :goto_7

    .line 6170
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rat":I
    :pswitch_9f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v5, v6

    :cond_152
    move v0, v5

    .line 6171
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_153

    .line 6172
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6174
    goto/16 :goto_7

    .line 6175
    :cond_153
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6177
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6178
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6179
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6180
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6181
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6182
    goto/16 :goto_7

    .line 6155
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v5, v6

    :cond_154
    move v0, v5

    .line 6156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_155

    .line 6157
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6159
    goto/16 :goto_7

    .line 6160
    :cond_155
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6162
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6163
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6164
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6165
    goto/16 :goto_7

    .line 6139
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_156

    move v5, v6

    :cond_156
    move v0, v5

    .line 6140
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_157

    .line 6141
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6143
    goto/16 :goto_7

    .line 6144
    :cond_157
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6146
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6147
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6149
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6150
    goto/16 :goto_7

    .line 6123
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v5, v6

    :cond_158
    move v0, v5

    .line 6124
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_159

    .line 6125
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6127
    goto/16 :goto_7

    .line 6128
    :cond_159
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6130
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6131
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6133
    .local v2, "source":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6134
    goto/16 :goto_7

    .line 6108
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "source":I
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v5, v6

    :cond_15a
    move v0, v5

    .line 6109
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15b

    .line 6110
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6112
    goto/16 :goto_7

    .line 6113
    :cond_15b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6115
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6116
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6117
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6118
    goto/16 :goto_7

    .line 6093
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v5, v6

    :cond_15c
    move v0, v5

    .line 6094
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15d

    .line 6095
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6097
    goto/16 :goto_7

    .line 6098
    :cond_15d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6100
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6101
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6102
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6103
    goto/16 :goto_7

    .line 6078
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v5, v6

    :cond_15e
    move v0, v5

    .line 6079
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15f

    .line 6080
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6082
    goto/16 :goto_7

    .line 6083
    :cond_15f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6085
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6086
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6087
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6088
    goto/16 :goto_7

    .line 6062
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v5, v6

    :cond_160
    move v0, v5

    .line 6063
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_161

    .line 6064
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6066
    goto/16 :goto_7

    .line 6067
    :cond_161
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6069
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6070
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6072
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6073
    goto/16 :goto_7

    .line 6047
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v5, v6

    :cond_162
    move v0, v5

    .line 6048
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_163

    .line 6049
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6051
    goto/16 :goto_7

    .line 6052
    :cond_163
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6054
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6055
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6056
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6057
    goto/16 :goto_7

    .line 6028
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v5, v6

    :cond_164
    move v7, v5

    .line 6029
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_165

    .line 6030
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6031
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6032
    goto/16 :goto_7

    .line 6033
    :cond_165
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6035
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v6, v0

    .line 6036
    .local v6, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v6, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6038
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6039
    .local v12, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 6040
    .local v13, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 6041
    .local v14, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6042
    goto/16 :goto_7

    .line 6013
    .end local v6    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "imei":Ljava/lang/String;
    .end local v12    # "imeisv":Ljava/lang/String;
    .end local v13    # "esn":Ljava/lang/String;
    .end local v14    # "meid":Ljava/lang/String;
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v5, v6

    :cond_166
    move v0, v5

    .line 6014
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_167

    .line 6015
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6017
    goto/16 :goto_7

    .line 6018
    :cond_167
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6020
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6021
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6022
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6023
    goto/16 :goto_7

    .line 5997
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v5, v6

    :cond_168
    move v0, v5

    .line 5998
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_169

    .line 5999
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6001
    goto/16 :goto_7

    .line 6002
    :cond_169
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6004
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6005
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6007
    .local v2, "index":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6008
    goto/16 :goto_7

    .line 5977
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v5, v6

    :cond_16a
    move v7, v5

    .line 5978
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_16b

    .line 5979
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5981
    goto/16 :goto_7

    .line 5982
    :cond_16b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5984
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v8, v0

    .line 5985
    .local v8, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v8, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5987
    .local v12, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5988
    .local v13, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5989
    .local v14, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 5990
    .local v15, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5991
    .local v16, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5992
    goto/16 :goto_7

    .line 5962
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v12    # "mdn":Ljava/lang/String;
    .end local v13    # "hSid":Ljava/lang/String;
    .end local v14    # "hNid":Ljava/lang/String;
    .end local v15    # "min":Ljava/lang/String;
    .end local v16    # "prl":Ljava/lang/String;
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    move v5, v6

    :cond_16c
    move v0, v5

    .line 5963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_16d

    .line 5964
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5966
    goto/16 :goto_7

    .line 5967
    :cond_16d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5969
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5970
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5971
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5972
    goto/16 :goto_7

    .line 5947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ad
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    move v5, v6

    :cond_16e
    move v0, v5

    .line 5948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_16f

    .line 5949
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5951
    goto/16 :goto_7

    .line 5952
    :cond_16f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5954
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5955
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5956
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5957
    goto/16 :goto_7

    .line 5931
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ae
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_170

    move v5, v6

    :cond_170
    move v0, v5

    .line 5932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_171

    .line 5933
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5934
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5935
    goto/16 :goto_7

    .line 5936
    :cond_171
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5938
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5939
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5940
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5941
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5942
    goto/16 :goto_7

    .line 5916
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_af
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_172

    move v5, v6

    :cond_172
    move v0, v5

    .line 5917
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_173

    .line 5918
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5920
    goto/16 :goto_7

    .line 5921
    :cond_173
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5923
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5924
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5925
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5926
    goto/16 :goto_7

    .line 5901
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_174

    move v5, v6

    :cond_174
    move v0, v5

    .line 5902
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_175

    .line 5903
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5905
    goto/16 :goto_7

    .line 5906
    :cond_175
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5908
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5909
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5910
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5911
    goto/16 :goto_7

    .line 5885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_176

    move v5, v6

    :cond_176
    move v0, v5

    .line 5886
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_177

    .line 5887
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5889
    goto/16 :goto_7

    .line 5890
    :cond_177
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5892
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5893
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5894
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5895
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5896
    goto/16 :goto_7

    .line 5870
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_b2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_178

    move v5, v6

    :cond_178
    move v0, v5

    .line 5871
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_179

    .line 5872
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5874
    goto/16 :goto_7

    .line 5875
    :cond_179
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5877
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5878
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5879
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5880
    goto/16 :goto_7

    .line 5853
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17a

    move v5, v6

    :cond_17a
    move v0, v5

    .line 5854
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17b

    .line 5855
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5857
    goto/16 :goto_7

    .line 5858
    :cond_17b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5860
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5861
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5862
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5863
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5864
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5865
    goto/16 :goto_7

    .line 5838
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_b4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17c

    move v5, v6

    :cond_17c
    move v0, v5

    .line 5839
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17d

    .line 5840
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5842
    goto/16 :goto_7

    .line 5843
    :cond_17d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5845
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5846
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5847
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5848
    goto/16 :goto_7

    .line 5823
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17e

    move v5, v6

    :cond_17e
    move v0, v5

    .line 5824
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17f

    .line 5825
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5827
    goto/16 :goto_7

    .line 5828
    :cond_17f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5830
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5831
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5832
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5833
    goto/16 :goto_7

    .line 5807
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_180

    move v5, v6

    :cond_180
    move v0, v5

    .line 5808
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_181

    .line 5809
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5810
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5811
    goto/16 :goto_7

    .line 5812
    :cond_181
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5814
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5815
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5817
    .local v2, "enable":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5818
    goto/16 :goto_7

    .line 5792
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v5, v6

    :cond_182
    move v0, v5

    .line 5793
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_183

    .line 5794
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5795
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5796
    goto/16 :goto_7

    .line 5797
    :cond_183
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5799
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5800
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5801
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5802
    goto/16 :goto_7

    .line 5776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v5, v6

    :cond_184
    move v0, v5

    .line 5777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_185

    .line 5778
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5780
    goto/16 :goto_7

    .line 5781
    :cond_185
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5783
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5784
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5786
    .local v2, "mode":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5787
    goto/16 :goto_7

    .line 5761
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v5, v6

    :cond_186
    move v0, v5

    .line 5762
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_187

    .line 5763
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5765
    goto/16 :goto_7

    .line 5766
    :cond_187
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5768
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5769
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5770
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5771
    goto/16 :goto_7

    .line 5745
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v5, v6

    :cond_188
    move v0, v5

    .line 5746
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_189

    .line 5747
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5749
    goto/16 :goto_7

    .line 5750
    :cond_189
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5752
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5753
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5755
    .local v2, "type":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5756
    goto/16 :goto_7

    .line 5730
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "type":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v5, v6

    :cond_18a
    move v0, v5

    .line 5731
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18b

    .line 5732
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5734
    goto/16 :goto_7

    .line 5735
    :cond_18b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5737
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5738
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5739
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5740
    goto/16 :goto_7

    .line 5715
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v5, v6

    :cond_18c
    move v0, v5

    .line 5716
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18d

    .line 5717
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5719
    goto/16 :goto_7

    .line 5720
    :cond_18d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5722
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5723
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5724
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5725
    goto/16 :goto_7

    .line 5700
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v5, v6

    :cond_18e
    move v0, v5

    .line 5701
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18f

    .line 5702
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5703
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5704
    goto/16 :goto_7

    .line 5705
    :cond_18f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5707
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5708
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5709
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5710
    goto/16 :goto_7

    .line 5684
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v5, v6

    :cond_190
    move v0, v5

    .line 5685
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_191

    .line 5686
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5688
    goto/16 :goto_7

    .line 5689
    :cond_191
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5691
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5692
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5693
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5694
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5695
    goto/16 :goto_7

    .line 5668
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v5, v6

    :cond_192
    move v0, v5

    .line 5669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_193

    .line 5670
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5672
    goto/16 :goto_7

    .line 5673
    :cond_193
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5675
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5676
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5678
    .local v2, "nwType":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5679
    goto/16 :goto_7

    .line 5653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "nwType":I
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v5, v6

    :cond_194
    move v0, v5

    .line 5654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_195

    .line 5655
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5657
    goto/16 :goto_7

    .line 5658
    :cond_195
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5660
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5661
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5662
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5663
    goto/16 :goto_7

    .line 5638
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v5, v6

    :cond_196
    move v0, v5

    .line 5639
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_197

    .line 5640
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5642
    goto/16 :goto_7

    .line 5643
    :cond_197
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5645
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5646
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5647
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5648
    goto/16 :goto_7

    .line 5623
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_198

    move v5, v6

    :cond_198
    move v0, v5

    .line 5624
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_199

    .line 5625
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5627
    goto/16 :goto_7

    .line 5628
    :cond_199
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5630
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5631
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5632
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5633
    goto/16 :goto_7

    .line 5608
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v5, v6

    :cond_19a
    move v0, v5

    .line 5609
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19b

    .line 5610
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5612
    goto/16 :goto_7

    .line 5613
    :cond_19b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5615
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5616
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5617
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5618
    goto/16 :goto_7

    .line 5592
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19c

    move v5, v6

    :cond_19c
    move v0, v5

    .line 5593
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19d

    .line 5594
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5596
    goto/16 :goto_7

    .line 5597
    :cond_19d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5599
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5600
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5602
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5603
    goto/16 :goto_7

    .line 5576
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v5, v6

    :cond_19e
    move v0, v5

    .line 5577
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19f

    .line 5578
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5580
    goto/16 :goto_7

    .line 5581
    :cond_19f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5583
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5584
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5586
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5587
    goto/16 :goto_7

    .line 5561
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v5, v6

    :cond_1a0
    move v0, v5

    .line 5562
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a1

    .line 5563
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5564
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5565
    goto/16 :goto_7

    .line 5566
    :cond_1a1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5568
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5569
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5570
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5571
    goto/16 :goto_7

    .line 5546
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v5, v6

    :cond_1a2
    move v0, v5

    .line 5547
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a3

    .line 5548
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5549
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5550
    goto/16 :goto_7

    .line 5551
    :cond_1a3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5553
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5554
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5555
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5556
    goto/16 :goto_7

    .line 5530
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a4

    move v5, v6

    :cond_1a4
    move v0, v5

    .line 5531
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a5

    .line 5532
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5534
    goto/16 :goto_7

    .line 5535
    :cond_1a5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5537
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5538
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5540
    .local v2, "index":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5541
    goto/16 :goto_7

    .line 5515
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v5, v6

    :cond_1a6
    move v0, v5

    .line 5516
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a7

    .line 5517
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5519
    goto/16 :goto_7

    .line 5520
    :cond_1a7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5522
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5523
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5524
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5525
    goto/16 :goto_7

    .line 5499
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v5, v6

    :cond_1a8
    move v0, v5

    .line 5500
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a9

    .line 5501
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5503
    goto/16 :goto_7

    .line 5504
    :cond_1a9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5506
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5507
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5508
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5509
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5510
    goto/16 :goto_7

    .line 5483
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v5, v6

    :cond_1aa
    move v0, v5

    .line 5484
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ab

    .line 5485
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5487
    goto/16 :goto_7

    .line 5488
    :cond_1ab
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5490
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5491
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5493
    .local v2, "status":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5494
    goto/16 :goto_7

    .line 5467
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":I
    :pswitch_cc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ac

    move v5, v6

    :cond_1ac
    move v0, v5

    .line 5468
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ad

    .line 5469
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5471
    goto/16 :goto_7

    .line 5472
    :cond_1ad
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5474
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5475
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5477
    .local v2, "enable":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5478
    goto/16 :goto_7

    .line 5452
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_cd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ae

    move v5, v6

    :cond_1ae
    move v0, v5

    .line 5453
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1af

    .line 5454
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5456
    goto/16 :goto_7

    .line 5457
    :cond_1af
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5459
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5460
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5461
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5462
    goto/16 :goto_7

    .line 5437
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v5, v6

    :cond_1b0
    move v0, v5

    .line 5438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b1

    .line 5439
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5441
    goto/16 :goto_7

    .line 5442
    :cond_1b1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5444
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5445
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5446
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5447
    goto/16 :goto_7

    .line 5421
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v5, v6

    :cond_1b2
    move v0, v5

    .line 5422
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b3

    .line 5423
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5425
    goto/16 :goto_7

    .line 5426
    :cond_1b3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5428
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5429
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5431
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5432
    goto/16 :goto_7

    .line 5406
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v5, v6

    :cond_1b4
    move v0, v5

    .line 5407
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b5

    .line 5408
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5410
    goto/16 :goto_7

    .line 5411
    :cond_1b5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5413
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5414
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5415
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5416
    goto/16 :goto_7

    .line 5391
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v5, v6

    :cond_1b6
    move v0, v5

    .line 5392
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b7

    .line 5393
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5394
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5395
    goto/16 :goto_7

    .line 5396
    :cond_1b7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5398
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5399
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5400
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5401
    goto/16 :goto_7

    .line 5375
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v5, v6

    :cond_1b8
    move v0, v5

    .line 5376
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b9

    .line 5377
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5379
    goto/16 :goto_7

    .line 5380
    :cond_1b9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5382
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5383
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5384
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5385
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5386
    goto/16 :goto_7

    .line 5360
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v5, v6

    :cond_1ba
    move v0, v5

    .line 5361
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bb

    .line 5362
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5364
    goto/16 :goto_7

    .line 5365
    :cond_1bb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5367
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5368
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5369
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5370
    goto/16 :goto_7

    .line 5345
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v5, v6

    :cond_1bc
    move v0, v5

    .line 5346
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bd

    .line 5347
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5349
    goto/16 :goto_7

    .line 5350
    :cond_1bd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5352
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5353
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5354
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5355
    goto/16 :goto_7

    .line 5329
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v5, v6

    :cond_1be
    move v0, v5

    .line 5330
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bf

    .line 5331
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5332
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5333
    goto/16 :goto_7

    .line 5334
    :cond_1bf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5336
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5337
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5339
    .local v2, "manual":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5340
    goto/16 :goto_7

    .line 5314
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "manual":Z
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v5, v6

    :cond_1c0
    move v0, v5

    .line 5315
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c1

    .line 5316
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5318
    goto/16 :goto_7

    .line 5319
    :cond_1c1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5321
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5322
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5323
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5324
    goto/16 :goto_7

    .line 5298
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c2

    move v5, v6

    :cond_1c2
    move v0, v5

    .line 5299
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c3

    .line 5300
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5302
    goto/16 :goto_7

    .line 5303
    :cond_1c3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5305
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5306
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5308
    .local v2, "retry":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5309
    goto/16 :goto_7

    .line 5282
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "retry":I
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v5, v6

    :cond_1c4
    move v0, v5

    .line 5283
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c5

    .line 5284
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5286
    goto/16 :goto_7

    .line 5287
    :cond_1c5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5289
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5290
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5292
    .local v2, "response":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5293
    goto/16 :goto_7

    .line 5267
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":I
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v5, v6

    :cond_1c6
    move v0, v5

    .line 5268
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c7

    .line 5269
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5271
    goto/16 :goto_7

    .line 5272
    :cond_1c7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5274
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5275
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5276
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5277
    goto/16 :goto_7

    .line 5252
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v5, v6

    :cond_1c8
    move v0, v5

    .line 5253
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c9

    .line 5254
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5256
    goto/16 :goto_7

    .line 5257
    :cond_1c9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5259
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5260
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5261
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5262
    goto/16 :goto_7

    .line 5237
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_db
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ca

    move v5, v6

    :cond_1ca
    move v0, v5

    .line 5238
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cb

    .line 5239
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5241
    goto/16 :goto_7

    .line 5242
    :cond_1cb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5244
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5245
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5246
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5247
    goto/16 :goto_7

    .line 5222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v5, v6

    :cond_1cc
    move v0, v5

    .line 5223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cd

    .line 5224
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5226
    goto/16 :goto_7

    .line 5227
    :cond_1cd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5229
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5230
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5231
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5232
    goto/16 :goto_7

    .line 5205
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v5, v6

    :cond_1ce
    move v0, v5

    .line 5206
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cf

    .line 5207
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5209
    goto/16 :goto_7

    .line 5210
    :cond_1cf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5212
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5213
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5215
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5216
    .local v3, "serviceClass":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 5217
    goto/16 :goto_7

    .line 5190
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v5, v6

    :cond_1d0
    move v0, v5

    .line 5191
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d1

    .line 5192
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5194
    goto/16 :goto_7

    .line 5195
    :cond_1d1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5197
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5198
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5199
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5200
    goto/16 :goto_7

    .line 5174
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v5, v6

    :cond_1d2
    move v0, v5

    .line 5175
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d3

    .line 5176
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5178
    goto/16 :goto_7

    .line 5179
    :cond_1d3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5181
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5182
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5183
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5184
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5185
    goto/16 :goto_7

    .line 5159
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :pswitch_e0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d4

    move v5, v6

    :cond_1d4
    move v0, v5

    .line 5160
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d5

    .line 5161
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5163
    goto/16 :goto_7

    .line 5164
    :cond_1d5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5166
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5167
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5168
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5169
    goto/16 :goto_7

    .line 5142
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v5, v6

    :cond_1d6
    move v0, v5

    .line 5143
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d7

    .line 5144
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5145
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5146
    goto/16 :goto_7

    .line 5147
    :cond_1d7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5149
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5150
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5152
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5153
    .local v3, "m":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 5154
    goto/16 :goto_7

    .line 5127
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v5, v6

    :cond_1d8
    move v0, v5

    .line 5128
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d9

    .line 5129
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5131
    goto/16 :goto_7

    .line 5132
    :cond_1d9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5135
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5136
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5137
    goto/16 :goto_7

    .line 5112
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v5, v6

    :cond_1da
    move v0, v5

    .line 5113
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1db

    .line 5114
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5116
    goto/16 :goto_7

    .line 5117
    :cond_1db
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5119
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5120
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5121
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5122
    goto/16 :goto_7

    .line 5095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v5, v6

    :cond_1dc
    move v0, v5

    .line 5096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1dd

    .line 5097
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5099
    goto/16 :goto_7

    .line 5100
    :cond_1dd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5102
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5103
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5104
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5105
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5107
    goto/16 :goto_7

    .line 5078
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v5, v6

    :cond_1de
    move v0, v5

    .line 5079
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1df

    .line 5080
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5082
    goto/16 :goto_7

    .line 5083
    :cond_1df
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5086
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5087
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 5088
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5089
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 5090
    goto/16 :goto_7

    .line 5061
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v5, v6

    :cond_1e0
    move v0, v5

    .line 5062
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e1

    .line 5063
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5064
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5065
    goto/16 :goto_7

    .line 5066
    :cond_1e1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5068
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5069
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5070
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5071
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5072
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5073
    goto/16 :goto_7

    .line 5044
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v5, v6

    :cond_1e2
    move v0, v5

    .line 5045
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e3

    .line 5046
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5048
    goto/16 :goto_7

    .line 5049
    :cond_1e3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5051
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5052
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5053
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5054
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5055
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5056
    goto/16 :goto_7

    .line 5029
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v5, v6

    :cond_1e4
    move v0, v5

    .line 5030
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e5

    .line 5031
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5033
    goto/16 :goto_7

    .line 5034
    :cond_1e5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5036
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5037
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5038
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5039
    goto/16 :goto_7

    .line 5014
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v5, v6

    :cond_1e6
    move v0, v5

    .line 5015
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e7

    .line 5016
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5018
    goto/16 :goto_7

    .line 5019
    :cond_1e7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5021
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5022
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5023
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5024
    goto/16 :goto_7

    .line 4996
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v5, v6

    :cond_1e8
    move v0, v5

    .line 4997
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e9

    .line 4998
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5000
    goto/16 :goto_7

    .line 5001
    :cond_1e9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5003
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5004
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5006
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5007
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5008
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5009
    goto/16 :goto_7

    .line 4979
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v5, v6

    :cond_1ea
    move v0, v5

    .line 4980
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1eb

    .line 4981
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4983
    goto/16 :goto_7

    .line 4984
    :cond_1eb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4986
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4987
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4988
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 4989
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4990
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 4991
    goto/16 :goto_7

    .line 4962
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v5, v6

    :cond_1ec
    move v0, v5

    .line 4963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ed

    .line 4964
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4966
    goto/16 :goto_7

    .line 4967
    :cond_1ed
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4969
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4970
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4971
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 4972
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4973
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 4974
    goto/16 :goto_7

    .line 4945
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v5, v6

    :cond_1ee
    move v0, v5

    .line 4946
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ef

    .line 4947
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4949
    goto/16 :goto_7

    .line 4950
    :cond_1ef
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4952
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4953
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4954
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 4955
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4956
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 4957
    goto/16 :goto_7

    .line 4928
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v5, v6

    :cond_1f0
    move v0, v5

    .line 4929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f1

    .line 4930
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4932
    goto/16 :goto_7

    .line 4933
    :cond_1f1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4935
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4936
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4937
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 4938
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4939
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 4940
    goto/16 :goto_7

    .line 4913
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v5, v6

    :cond_1f2
    move v0, v5

    .line 4914
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f3

    .line 4915
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4916
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4917
    goto/16 :goto_7

    .line 4918
    :cond_1f3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4920
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4921
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4922
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4923
    goto/16 :goto_7

    .line 4898
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v5, v6

    :cond_1f4
    move v0, v5

    .line 4899
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f5

    .line 4900
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4902
    goto/16 :goto_7

    .line 4903
    :cond_1f5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4906
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4907
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4908
    goto/16 :goto_7

    .line 4883
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v5, v6

    :cond_1f6
    move v0, v5

    .line 4884
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f7

    .line 4885
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4887
    goto/16 :goto_7

    .line 4888
    :cond_1f7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4890
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4891
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4892
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4893
    goto/16 :goto_7

    .line 4868
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v5, v6

    :cond_1f8
    move v0, v5

    .line 4869
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f9

    .line 4870
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4872
    goto/16 :goto_7

    .line 4873
    :cond_1f9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4875
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4876
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4877
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4878
    goto/16 :goto_7

    .line 4853
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v5, v6

    :cond_1fa
    move v0, v5

    .line 4854
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fb

    .line 4855
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4857
    goto/16 :goto_7

    .line 4858
    :cond_1fb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4860
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4861
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4862
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4863
    goto/16 :goto_7

    .line 4838
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fc

    move v5, v6

    :cond_1fc
    move v0, v5

    .line 4839
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fd

    .line 4840
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4842
    goto/16 :goto_7

    .line 4843
    :cond_1fd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4845
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4846
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4847
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4848
    goto/16 :goto_7

    .line 4822
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v5, v6

    :cond_1fe
    move v0, v5

    .line 4823
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ff

    .line 4824
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4826
    goto/16 :goto_7

    .line 4827
    :cond_1ff
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4829
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4830
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4832
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4833
    goto/16 :goto_7

    .line 4807
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imsi":Ljava/lang/String;
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v5, v6

    :cond_200
    move v0, v5

    .line 4808
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_201

    .line 4809
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4810
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4811
    goto/16 :goto_7

    .line 4812
    :cond_201
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4814
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4815
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4816
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4817
    goto/16 :goto_7

    .line 4791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v5, v6

    :cond_202
    move v0, v5

    .line 4792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_203

    .line 4793
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4795
    goto/16 :goto_7

    .line 4796
    :cond_203
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4798
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4799
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4800
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4801
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4802
    goto/16 :goto_7

    .line 4775
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v5, v6

    :cond_204
    move v0, v5

    .line 4776
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_205

    .line 4777
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4779
    goto/16 :goto_7

    .line 4780
    :cond_205
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4782
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4783
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4785
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4786
    goto/16 :goto_7

    .line 4759
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v5, v6

    :cond_206
    move v0, v5

    .line 4760
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_207

    .line 4761
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4763
    goto/16 :goto_7

    .line 4764
    :cond_207
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4766
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4767
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4769
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4770
    goto/16 :goto_7

    .line 4743
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v5, v6

    :cond_208
    move v0, v5

    .line 4744
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_209

    .line 4745
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4747
    goto/16 :goto_7

    .line 4748
    :cond_209
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4750
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4751
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4753
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4754
    goto/16 :goto_7

    .line 4727
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v5, v6

    :cond_20a
    move v0, v5

    .line 4728
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20b

    .line 4729
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4731
    goto/16 :goto_7

    .line 4732
    :cond_20b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4734
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4735
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4737
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4738
    goto/16 :goto_7

    .line 4711
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v5, v6

    :cond_20c
    move v0, v5

    .line 4712
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20d

    .line 4713
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4715
    goto/16 :goto_7

    .line 4716
    :cond_20d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4718
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4719
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4721
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4722
    goto/16 :goto_7

    .line 4695
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v5, v6

    :cond_20e
    move v0, v5

    .line 4696
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20f

    .line 4697
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4699
    goto :goto_7

    .line 4700
    :cond_20f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4702
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4703
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4705
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4706
    goto :goto_7

    .line 4679
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v5, v6

    :cond_210
    move v0, v5

    .line 4680
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_211

    .line 4681
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4683
    goto :goto_7

    .line 4684
    :cond_211
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4686
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4687
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4689
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4690
    goto :goto_7

    .line 4662
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v5, v6

    :cond_212
    move v0, v5

    .line 4663
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_213

    .line 4664
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4666
    goto :goto_7

    .line 4667
    :cond_213
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4669
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4670
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4671
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 4672
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4673
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 4674
    nop

    .line 8837
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :cond_214
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
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

    .line 4613
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4641
    const-string v0, "vendor.mediatek.hardware.radio@3.9::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4642
    return-object p0

    .line 4644
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

    .line 4648
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 4649
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 4603
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4635
    const/4 v0, 0x1

    return v0
.end method
