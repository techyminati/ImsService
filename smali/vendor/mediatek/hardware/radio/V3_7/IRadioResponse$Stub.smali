.class public abstract Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse;
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

    .line 4573
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 4615
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4616
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4617
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4618
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4619
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

    .line 4585
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

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

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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
    .locals 8
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

    const-string v1, "vendor.mediatek.hardware.radio@3.7::IRadioResponse"

    const-string v2, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    const-string v3, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    const-string v4, "android.hardware.radio@1.2::IRadioResponse"

    const-string v5, "android.hardware.radio@1.1::IRadioResponse"

    const-string v6, "android.hardware.radio@1.0::IRadioResponse"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 4579
    const-string v0, "vendor.mediatek.hardware.radio@3.7::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4603
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 4625
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4627
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

    .line 4655
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

    .line 8824
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 8825
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_214

    .line 8826
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8827
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8828
    goto/16 :goto_7

    .line 8811
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 8812
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 8813
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8814
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8815
    goto/16 :goto_7

    .line 8816
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8818
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 8819
    goto/16 :goto_7

    .line 8795
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 8796
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 8797
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8799
    goto/16 :goto_7

    .line 8800
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8802
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 8803
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8804
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 8805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8806
    goto/16 :goto_7

    .line 8780
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

    .line 8781
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 8782
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8784
    goto/16 :goto_7

    .line 8785
    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8787
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->ping()V

    .line 8788
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8790
    goto/16 :goto_7

    .line 8770
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 8771
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_214

    .line 8772
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8774
    goto/16 :goto_7

    .line 8757
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 8758
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 8759
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8761
    goto/16 :goto_7

    .line 8762
    :cond_9
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8764
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 8765
    goto/16 :goto_7

    .line 8718
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 8719
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 8720
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8721
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8722
    goto/16 :goto_7

    .line 8723
    :cond_b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8725
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8726
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8728
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 8730
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8731
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 8732
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 8733
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 8734
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 8736
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 8737
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 8739
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 8743
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 8744
    nop

    .line 8734
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 8740
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 8747
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 8749
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 8751
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8752
    goto/16 :goto_7

    .line 8702
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

    .line 8703
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 8704
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8706
    goto/16 :goto_7

    .line 8707
    :cond_f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8709
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 8710
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8711
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 8712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8713
    goto/16 :goto_7

    .line 8685
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

    .line 8686
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 8687
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8688
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8689
    goto/16 :goto_7

    .line 8690
    :cond_11
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 8693
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8694
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 8695
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8697
    goto/16 :goto_7

    .line 8669
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

    .line 8670
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 8671
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8673
    goto/16 :goto_7

    .line 8674
    :cond_13
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8676
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8677
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8678
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 8679
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8680
    goto/16 :goto_7

    .line 8654
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v0, v5

    .line 8655
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15

    .line 8656
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8658
    goto/16 :goto_7

    .line 8659
    :cond_15
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8661
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8662
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8663
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8664
    goto/16 :goto_7

    .line 8638
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 8639
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 8640
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8642
    goto/16 :goto_7

    .line 8643
    :cond_17
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8645
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8646
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8648
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8649
    goto/16 :goto_7

    .line 8622
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 8623
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 8624
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8626
    goto/16 :goto_7

    .line 8627
    :cond_19
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8629
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8630
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8632
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8633
    goto/16 :goto_7

    .line 8607
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 8608
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 8609
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8611
    goto/16 :goto_7

    .line 8612
    :cond_1b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8614
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8615
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8616
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8617
    goto/16 :goto_7

    .line 8592
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 8593
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 8594
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8596
    goto/16 :goto_7

    .line 8597
    :cond_1d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8599
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8600
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8601
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setOperatorConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8602
    goto/16 :goto_7

    .line 8577
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 8578
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 8579
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8581
    goto/16 :goto_7

    .line 8582
    :cond_1f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8584
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8585
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8586
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPropImsHandoverResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8587
    goto/16 :goto_7

    .line 8562
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 8563
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 8564
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8566
    goto/16 :goto_7

    .line 8567
    :cond_21
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8569
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8570
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8571
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8572
    goto/16 :goto_7

    .line 8547
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 8548
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 8549
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8551
    goto/16 :goto_7

    .line 8552
    :cond_23
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8554
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8555
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8556
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSilentRebootResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8557
    goto/16 :goto_7

    .line 8532
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 8533
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 8534
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8536
    goto/16 :goto_7

    .line 8537
    :cond_25
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8539
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8540
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8541
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->reportSimModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8542
    goto/16 :goto_7

    .line 8517
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 8518
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 8519
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8521
    goto/16 :goto_7

    .line 8522
    :cond_27
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8524
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8525
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8526
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->reportAirplaneModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8527
    goto/16 :goto_7

    .line 8501
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 8502
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 8503
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8504
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8505
    goto/16 :goto_7

    .line 8506
    :cond_29
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8508
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8509
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8511
    .local v2, "mode":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8512
    goto/16 :goto_7

    .line 8486
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 8487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 8488
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8490
    goto/16 :goto_7

    .line 8491
    :cond_2b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8493
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8494
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8495
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8496
    goto/16 :goto_7

    .line 8471
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 8472
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 8473
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8474
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8475
    goto/16 :goto_7

    .line 8476
    :cond_2d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8478
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8479
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8480
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8481
    goto/16 :goto_7

    .line 8456
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 8457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 8458
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8460
    goto/16 :goto_7

    .line 8461
    :cond_2f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8463
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8464
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8465
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8466
    goto/16 :goto_7

    .line 8441
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 8442
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 8443
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8445
    goto/16 :goto_7

    .line 8446
    :cond_31
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8448
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8449
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8450
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8451
    goto/16 :goto_7

    .line 8425
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 8426
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 8427
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8429
    goto/16 :goto_7

    .line 8430
    :cond_33
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8432
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8433
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8435
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8436
    goto/16 :goto_7

    .line 8410
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 8411
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 8412
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8414
    goto/16 :goto_7

    .line 8415
    :cond_35
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8417
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8418
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8419
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8420
    goto/16 :goto_7

    .line 8395
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 8396
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 8397
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8399
    goto/16 :goto_7

    .line 8400
    :cond_37
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8402
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8403
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8404
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setE911StateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8405
    goto/16 :goto_7

    .line 8380
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 8381
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 8382
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8383
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8384
    goto/16 :goto_7

    .line 8385
    :cond_39
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8387
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8388
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8389
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setLteUplinkDataTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8390
    goto/16 :goto_7

    .line 8365
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 8366
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 8367
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8369
    goto/16 :goto_7

    .line 8370
    :cond_3b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8372
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8373
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8374
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setLteAccessStratumReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8375
    goto/16 :goto_7

    .line 8350
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 8351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 8352
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8354
    goto/16 :goto_7

    .line 8355
    :cond_3d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8357
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8358
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8359
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8360
    goto/16 :goto_7

    .line 8335
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 8336
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 8337
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8339
    goto/16 :goto_7

    .line 8340
    :cond_3f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8342
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8343
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8344
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8345
    goto/16 :goto_7

    .line 8320
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 8321
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 8322
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8323
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8324
    goto/16 :goto_7

    .line 8325
    :cond_41
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8327
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8328
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8329
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8330
    goto/16 :goto_7

    .line 8305
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 8306
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 8307
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8308
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8309
    goto/16 :goto_7

    .line 8310
    :cond_43
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8312
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8313
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8314
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8315
    goto/16 :goto_7

    .line 8290
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 8291
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 8292
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8294
    goto/16 :goto_7

    .line 8295
    :cond_45
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8297
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8298
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8299
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->resetRadioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8300
    goto/16 :goto_7

    .line 8275
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 8276
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 8277
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8279
    goto/16 :goto_7

    .line 8280
    :cond_47
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8282
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8283
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8284
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPdnNameReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8285
    goto/16 :goto_7

    .line 8260
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v0, v5

    .line 8261
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_49

    .line 8262
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8264
    goto/16 :goto_7

    .line 8265
    :cond_49
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8267
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8268
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8269
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setOverrideApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8270
    goto/16 :goto_7

    .line 8245
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 8246
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 8247
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8249
    goto/16 :goto_7

    .line 8250
    :cond_4b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8252
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8253
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8254
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPdnReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8255
    goto/16 :goto_7

    .line 8230
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 8231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 8232
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8234
    goto/16 :goto_7

    .line 8235
    :cond_4d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8237
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8238
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8239
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8240
    goto/16 :goto_7

    .line 8215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v0, v5

    .line 8216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4f

    .line 8217
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8219
    goto/16 :goto_7

    .line 8220
    :cond_4f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8222
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8223
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8224
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8225
    goto/16 :goto_7

    .line 8200
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 8201
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 8202
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8203
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8204
    goto/16 :goto_7

    .line 8205
    :cond_51
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8207
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8208
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8209
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8210
    goto/16 :goto_7

    .line 8185
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v0, v5

    .line 8186
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_53

    .line 8187
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8188
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8189
    goto/16 :goto_7

    .line 8190
    :cond_53
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8192
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8193
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8194
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8195
    goto/16 :goto_7

    .line 8169
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 8170
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 8171
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8173
    goto/16 :goto_7

    .line 8174
    :cond_55
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8176
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8177
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8179
    .local v2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8180
    goto/16 :goto_7

    .line 8153
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 8154
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 8155
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8157
    goto/16 :goto_7

    .line 8158
    :cond_57
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8160
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8161
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8163
    .local v2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8164
    goto/16 :goto_7

    .line 8137
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v0, v5

    .line 8138
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_59

    .line 8139
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8141
    goto/16 :goto_7

    .line 8142
    :cond_59
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8144
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8145
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8147
    .local v2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8148
    goto/16 :goto_7

    .line 8121
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 8122
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 8123
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8125
    goto/16 :goto_7

    .line 8126
    :cond_5b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8128
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8129
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8131
    .local v2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8132
    goto/16 :goto_7

    .line 8106
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 8107
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 8108
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8110
    goto/16 :goto_7

    .line 8111
    :cond_5d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8113
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8114
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8115
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8116
    goto/16 :goto_7

    .line 8091
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 8092
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 8093
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8095
    goto/16 :goto_7

    .line 8096
    :cond_5f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8098
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8099
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8100
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8101
    goto/16 :goto_7

    .line 8075
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 8076
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 8077
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8079
    goto/16 :goto_7

    .line 8080
    :cond_61
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8082
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8083
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8085
    .local v2, "mode":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8086
    goto/16 :goto_7

    .line 8060
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 8061
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 8062
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8064
    goto/16 :goto_7

    .line 8065
    :cond_63
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8067
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8068
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8069
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8070
    goto/16 :goto_7

    .line 8045
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 8046
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 8047
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8049
    goto/16 :goto_7

    .line 8050
    :cond_65
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8052
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8053
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8054
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8055
    goto/16 :goto_7

    .line 8029
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 8030
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 8031
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8033
    goto/16 :goto_7

    .line 8034
    :cond_67
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8036
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8037
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8039
    .local v2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8040
    goto/16 :goto_7

    .line 8014
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 8015
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 8016
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8018
    goto/16 :goto_7

    .line 8019
    :cond_69
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8021
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8022
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8023
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8024
    goto/16 :goto_7

    .line 7997
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 7998
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 7999
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8001
    goto/16 :goto_7

    .line 8002
    :cond_6b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8004
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8005
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8006
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 8007
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8008
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 8009
    goto/16 :goto_7

    .line 7981
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 7982
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 7983
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7985
    goto/16 :goto_7

    .line 7986
    :cond_6d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7988
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7989
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7990
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7991
    .local v2, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7992
    goto/16 :goto_7

    .line 7966
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 7967
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 7968
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7970
    goto/16 :goto_7

    .line 7971
    :cond_6f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7973
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7974
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7975
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7976
    goto/16 :goto_7

    .line 7949
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 7950
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 7951
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7953
    goto/16 :goto_7

    .line 7954
    :cond_71
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7956
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7957
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7958
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 7959
    .local v2, "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7960
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 7961
    goto/16 :goto_7

    .line 7934
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 7935
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 7936
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7938
    goto/16 :goto_7

    .line 7939
    :cond_73
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7941
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7942
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7943
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->reloadModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7944
    goto/16 :goto_7

    .line 7919
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 7920
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 7921
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7923
    goto/16 :goto_7

    .line 7924
    :cond_75
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7926
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7927
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7928
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->storeModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7929
    goto/16 :goto_7

    .line 7904
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 7905
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 7906
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7908
    goto/16 :goto_7

    .line 7909
    :cond_77
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7911
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7912
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7913
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7914
    goto/16 :goto_7

    .line 7888
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 7889
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 7890
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7892
    goto/16 :goto_7

    .line 7893
    :cond_79
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7895
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7896
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7898
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7899
    goto/16 :goto_7

    .line 7872
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 7873
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 7874
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7876
    goto/16 :goto_7

    .line 7877
    :cond_7b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7879
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7880
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7882
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7883
    goto/16 :goto_7

    .line 7857
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 7858
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 7859
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7861
    goto/16 :goto_7

    .line 7862
    :cond_7d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7864
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7865
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7866
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSmsFwkReadyRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7867
    goto/16 :goto_7

    .line 7841
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 7842
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 7843
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7845
    goto/16 :goto_7

    .line 7846
    :cond_7f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7848
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7849
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7851
    .local v2, "active":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7852
    goto/16 :goto_7

    .line 7825
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "active":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 7826
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 7827
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7829
    goto/16 :goto_7

    .line 7830
    :cond_81
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7832
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7833
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7835
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7836
    goto/16 :goto_7

    .line 7810
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 7811
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 7812
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7814
    goto/16 :goto_7

    .line 7815
    :cond_83
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7817
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7818
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7819
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7820
    goto/16 :goto_7

    .line 7795
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 7796
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 7797
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7799
    goto/16 :goto_7

    .line 7800
    :cond_85
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7802
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7803
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7804
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7805
    goto/16 :goto_7

    .line 7780
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 7781
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 7782
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7784
    goto/16 :goto_7

    .line 7785
    :cond_87
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7787
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7788
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7789
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7790
    goto/16 :goto_7

    .line 7763
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 7764
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 7765
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7767
    goto/16 :goto_7

    .line 7768
    :cond_89
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7770
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7771
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7772
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 7773
    .local v2, "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7774
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 7775
    goto/16 :goto_7

    .line 7748
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 7749
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 7750
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7751
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7752
    goto/16 :goto_7

    .line 7753
    :cond_8b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7755
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7756
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7757
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7758
    goto/16 :goto_7

    .line 7731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 7732
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 7733
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7735
    goto/16 :goto_7

    .line 7736
    :cond_8d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7738
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7739
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7740
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 7741
    .local v2, "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7742
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 7743
    goto/16 :goto_7

    .line 7716
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 7717
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 7718
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7720
    goto/16 :goto_7

    .line 7721
    :cond_8f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7723
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7724
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7725
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7726
    goto/16 :goto_7

    .line 7699
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 7700
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 7701
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7703
    goto/16 :goto_7

    .line 7704
    :cond_91
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7706
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7707
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7708
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;-><init>()V

    .line 7709
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7710
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;)V

    .line 7711
    goto/16 :goto_7

    .line 7683
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 7684
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 7685
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7687
    goto/16 :goto_7

    .line 7688
    :cond_93
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7690
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7691
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7693
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7694
    goto/16 :goto_7

    .line 7668
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 7669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 7670
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7672
    goto/16 :goto_7

    .line 7673
    :cond_95
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7675
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7676
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7677
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7678
    goto/16 :goto_7

    .line 7646
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v12, v5

    .line 7647
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_97

    .line 7648
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7649
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7650
    goto/16 :goto_7

    .line 7651
    :cond_97
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7653
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v13, v0

    .line 7654
    .local v13, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v13, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 7656
    .local v14, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 7657
    .local v15, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7658
    .local v16, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 7659
    .local v17, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7660
    .local v18, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 7661
    .local v19, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 7662
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 7663
    goto/16 :goto_7

    .line 7631
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

    .line 7632
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 7633
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7635
    goto/16 :goto_7

    .line 7636
    :cond_99
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7638
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7639
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7640
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7641
    goto/16 :goto_7

    .line 7615
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 7616
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 7617
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7619
    goto/16 :goto_7

    .line 7620
    :cond_9b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7622
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7623
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7625
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7626
    goto/16 :goto_7

    .line 7599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 7600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 7601
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7603
    goto/16 :goto_7

    .line 7604
    :cond_9d
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7606
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7607
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7609
    .restart local v2    # "response":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7610
    goto/16 :goto_7

    .line 7584
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 7585
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 7586
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7588
    goto/16 :goto_7

    .line 7589
    :cond_9f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7591
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7592
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7593
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7594
    goto/16 :goto_7

    .line 7569
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 7570
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 7571
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7573
    goto/16 :goto_7

    .line 7574
    :cond_a1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7576
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7577
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7578
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7579
    goto/16 :goto_7

    .line 7554
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 7555
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 7556
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7558
    goto/16 :goto_7

    .line 7559
    :cond_a3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7561
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7562
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7563
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7564
    goto/16 :goto_7

    .line 7539
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 7540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 7541
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7543
    goto/16 :goto_7

    .line 7544
    :cond_a5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7546
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7547
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7548
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7549
    goto/16 :goto_7

    .line 7524
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 7525
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 7526
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7527
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7528
    goto/16 :goto_7

    .line 7529
    :cond_a7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7531
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7532
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7533
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7534
    goto/16 :goto_7

    .line 7509
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 7510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 7511
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7513
    goto/16 :goto_7

    .line 7514
    :cond_a9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7516
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7517
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7518
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7519
    goto/16 :goto_7

    .line 7494
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 7495
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 7496
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7497
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7498
    goto/16 :goto_7

    .line 7499
    :cond_ab
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7501
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7502
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7503
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->currentStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7504
    goto/16 :goto_7

    .line 7479
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 7480
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 7481
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7483
    goto/16 :goto_7

    .line 7484
    :cond_ad
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7486
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7487
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7488
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setEccListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7489
    goto/16 :goto_7

    .line 7464
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 7465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 7466
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7468
    goto/16 :goto_7

    .line 7469
    :cond_af
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7471
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7472
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7473
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setEccServiceCategoryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7474
    goto/16 :goto_7

    .line 7449
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 7450
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 7451
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7453
    goto/16 :goto_7

    .line 7454
    :cond_b1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7456
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7457
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7458
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7459
    goto/16 :goto_7

    .line 7434
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 7435
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 7436
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7438
    goto/16 :goto_7

    .line 7439
    :cond_b3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7441
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7442
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7443
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7444
    goto/16 :goto_7

    .line 7419
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 7420
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 7421
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7423
    goto/16 :goto_7

    .line 7424
    :cond_b5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7426
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7427
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7428
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7429
    goto/16 :goto_7

    .line 7403
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 7404
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 7405
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7407
    goto/16 :goto_7

    .line 7408
    :cond_b7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7410
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7411
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7412
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7413
    .local v2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7414
    goto/16 :goto_7

    .line 7388
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 7389
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 7390
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7392
    goto/16 :goto_7

    .line 7393
    :cond_b9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7395
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7396
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7397
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7398
    goto/16 :goto_7

    .line 7372
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 7373
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 7374
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7376
    goto/16 :goto_7

    .line 7377
    :cond_bb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7379
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7380
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7381
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7382
    .local v2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7383
    goto/16 :goto_7

    .line 7357
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 7358
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 7359
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7361
    goto/16 :goto_7

    .line 7362
    :cond_bd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7364
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7365
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7366
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7367
    goto/16 :goto_7

    .line 7342
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 7343
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 7344
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7346
    goto/16 :goto_7

    .line 7347
    :cond_bf
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7349
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7350
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7351
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7352
    goto/16 :goto_7

    .line 7325
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 7326
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 7327
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7329
    goto/16 :goto_7

    .line 7330
    :cond_c1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7332
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7333
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7335
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7336
    .local v3, "m":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 7337
    goto/16 :goto_7

    .line 7309
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

    .line 7310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 7311
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7313
    goto/16 :goto_7

    .line 7314
    :cond_c3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7316
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7317
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7319
    .restart local v2    # "n":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7320
    goto/16 :goto_7

    .line 7292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 7293
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 7294
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7296
    goto/16 :goto_7

    .line 7297
    :cond_c5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7299
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7300
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7302
    .restart local v2    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7303
    .restart local v3    # "m":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 7304
    goto/16 :goto_7

    .line 7277
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

    .line 7278
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 7279
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7281
    goto/16 :goto_7

    .line 7282
    :cond_c7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7284
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7285
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7286
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7287
    goto/16 :goto_7

    .line 7262
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 7263
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 7264
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7266
    goto/16 :goto_7

    .line 7267
    :cond_c9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7269
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7270
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7271
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7272
    goto/16 :goto_7

    .line 7246
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 7247
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 7248
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7249
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7250
    goto/16 :goto_7

    .line 7251
    :cond_cb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7253
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7254
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7256
    .local v2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7257
    goto/16 :goto_7

    .line 7230
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 7231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 7232
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7234
    goto/16 :goto_7

    .line 7235
    :cond_cd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7237
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7238
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7239
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7240
    .local v2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7241
    goto/16 :goto_7

    .line 7214
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 7215
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 7216
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7217
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7218
    goto/16 :goto_7

    .line 7219
    :cond_cf
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7221
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7222
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7223
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7224
    .local v2, "sne":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7225
    goto/16 :goto_7

    .line 7198
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sne":Ljava/lang/String;
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move v0, v5

    .line 7199
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d1

    .line 7200
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7202
    goto/16 :goto_7

    .line 7203
    :cond_d1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7205
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7206
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7207
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7208
    .local v2, "email":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7209
    goto/16 :goto_7

    .line 7182
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "email":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v5, v6

    :cond_d2
    move v0, v5

    .line 7183
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d3

    .line 7184
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7186
    goto/16 :goto_7

    .line 7187
    :cond_d3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7189
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7190
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7192
    .local v2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7193
    goto/16 :goto_7

    .line 7167
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v5, v6

    :cond_d4
    move v0, v5

    .line 7168
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d5

    .line 7169
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7171
    goto/16 :goto_7

    .line 7172
    :cond_d5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7174
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7175
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7176
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7177
    goto/16 :goto_7

    .line 7151
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v5, v6

    :cond_d6
    move v0, v5

    .line 7152
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d7

    .line 7153
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7155
    goto/16 :goto_7

    .line 7156
    :cond_d7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7158
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7159
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7160
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7161
    .local v2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7162
    goto/16 :goto_7

    .line 7136
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v5, v6

    :cond_d8
    move v0, v5

    .line 7137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d9

    .line 7138
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7140
    goto/16 :goto_7

    .line 7141
    :cond_d9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7143
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7144
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7145
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7146
    goto/16 :goto_7

    .line 7119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v5, v6

    :cond_da
    move v0, v5

    .line 7120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_db

    .line 7121
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7123
    goto/16 :goto_7

    .line 7124
    :cond_db
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7126
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7127
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7128
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;-><init>()V

    .line 7129
    .local v2, "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7130
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;)V

    .line 7131
    goto/16 :goto_7

    .line 7103
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v5, v6

    :cond_dc
    move v0, v5

    .line 7104
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_dd

    .line 7105
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7107
    goto/16 :goto_7

    .line 7108
    :cond_dd
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7110
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7111
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7113
    .local v2, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7114
    goto/16 :goto_7

    .line 7088
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v5, v6

    :cond_de
    move v0, v5

    .line 7089
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_df

    .line 7090
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7091
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7092
    goto/16 :goto_7

    .line 7093
    :cond_df
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7095
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7096
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7097
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7098
    goto/16 :goto_7

    .line 7072
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v5, v6

    :cond_e0
    move v0, v5

    .line 7073
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e1

    .line 7074
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7075
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7076
    goto/16 :goto_7

    .line 7077
    :cond_e1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7079
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7080
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7082
    .local v2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7083
    goto/16 :goto_7

    .line 7056
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v5, v6

    :cond_e2
    move v0, v5

    .line 7057
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e3

    .line 7058
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7059
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7060
    goto/16 :goto_7

    .line 7061
    :cond_e3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7063
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7064
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7066
    .local v2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7067
    goto/16 :goto_7

    .line 7041
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v5, v6

    :cond_e4
    move v0, v5

    .line 7042
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e5

    .line 7043
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7045
    goto/16 :goto_7

    .line 7046
    :cond_e5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7048
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7049
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7050
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7051
    goto/16 :goto_7

    .line 7026
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v5, v6

    :cond_e6
    move v0, v5

    .line 7027
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e7

    .line 7028
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7029
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7030
    goto/16 :goto_7

    .line 7031
    :cond_e7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7033
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7034
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7035
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7036
    goto/16 :goto_7

    .line 7010
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v5, v6

    :cond_e8
    move v0, v5

    .line 7011
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e9

    .line 7012
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7014
    goto/16 :goto_7

    .line 7015
    :cond_e9
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7017
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7018
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7020
    .local v2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7021
    goto/16 :goto_7

    .line 6994
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v5, v6

    :cond_ea
    move v0, v5

    .line 6995
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_eb

    .line 6996
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6997
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6998
    goto/16 :goto_7

    .line 6999
    :cond_eb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7001
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7002
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7003
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7004
    .local v2, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7005
    goto/16 :goto_7

    .line 6979
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    move v0, v5

    .line 6980
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ed

    .line 6981
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6983
    goto/16 :goto_7

    .line 6984
    :cond_ed
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6986
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6987
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6988
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6989
    goto/16 :goto_7

    .line 6963
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v5, v6

    :cond_ee
    move v0, v5

    .line 6964
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ef

    .line 6965
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6966
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6967
    goto/16 :goto_7

    .line 6968
    :cond_ef
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6970
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6971
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6973
    .local v2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6974
    goto/16 :goto_7

    .line 6947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v5, v6

    :cond_f0
    move v0, v5

    .line 6948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f1

    .line 6949
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6951
    goto/16 :goto_7

    .line 6952
    :cond_f1
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6954
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6955
    .local v1, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6957
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6958
    goto/16 :goto_7

    .line 6932
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v5, v6

    :cond_f2
    move v0, v5

    .line 6933
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f3

    .line 6934
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6936
    goto/16 :goto_7

    .line 6937
    :cond_f3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6939
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6940
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6941
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6942
    goto/16 :goto_7

    .line 6916
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v5, v6

    :cond_f4
    move v0, v5

    .line 6917
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f5

    .line 6918
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6920
    goto/16 :goto_7

    .line 6921
    :cond_f5
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6923
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6924
    .restart local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6926
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6927
    goto/16 :goto_7

    .line 6899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v5, v6

    :cond_f6
    move v0, v5

    .line 6900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f7

    .line 6901
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6903
    goto/16 :goto_7

    .line 6904
    :cond_f7
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6906
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6907
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6908
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 6909
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6910
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 6911
    goto/16 :goto_7

    .line 6882
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v5, v6

    :cond_f8
    move v0, v5

    .line 6883
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f9

    .line 6884
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6885
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6886
    goto/16 :goto_7

    .line 6887
    :cond_f9
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6889
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6890
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6891
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 6892
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6893
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 6894
    goto/16 :goto_7

    .line 6865
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v5, v6

    :cond_fa
    move v0, v5

    .line 6866
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fb

    .line 6867
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6868
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6869
    goto/16 :goto_7

    .line 6870
    :cond_fb
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6872
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6873
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6874
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 6875
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6876
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 6877
    goto/16 :goto_7

    .line 6849
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v5, v6

    :cond_fc
    move v0, v5

    .line 6850
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fd

    .line 6851
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6853
    goto/16 :goto_7

    .line 6854
    :cond_fd
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6856
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6857
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6858
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6859
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6860
    goto/16 :goto_7

    .line 6834
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v5, v6

    :cond_fe
    move v0, v5

    .line 6835
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ff

    .line 6836
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6838
    goto/16 :goto_7

    .line 6839
    :cond_ff
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6841
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6842
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6843
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6844
    goto/16 :goto_7

    .line 6819
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v5, v6

    :cond_100
    move v0, v5

    .line 6820
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_101

    .line 6821
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6823
    goto/16 :goto_7

    .line 6824
    :cond_101
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6826
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6827
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6828
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6829
    goto/16 :goto_7

    .line 6802
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v5, v6

    :cond_102
    move v0, v5

    .line 6803
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_103

    .line 6804
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6806
    goto/16 :goto_7

    .line 6807
    :cond_103
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6809
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6810
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6811
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 6812
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6813
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 6814
    goto/16 :goto_7

    .line 6786
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v5, v6

    :cond_104
    move v0, v5

    .line 6787
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_105

    .line 6788
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6790
    goto/16 :goto_7

    .line 6791
    :cond_105
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6793
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6794
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6795
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6796
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6797
    goto/16 :goto_7

    .line 6771
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_79
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_106

    move v5, v6

    :cond_106
    move v1, v5

    .line 6772
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_107

    .line 6773
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6775
    goto/16 :goto_7

    .line 6776
    :cond_107
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6778
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6779
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6780
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6781
    goto/16 :goto_7

    .line 6754
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_108

    move v5, v6

    :cond_108
    move v1, v5

    .line 6755
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_109

    .line 6756
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6758
    goto/16 :goto_7

    .line 6759
    :cond_109
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6761
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6762
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6763
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 6764
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6765
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 6766
    goto/16 :goto_7

    .line 6739
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_7b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10a

    move v5, v6

    :cond_10a
    move v1, v5

    .line 6740
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_10b

    .line 6741
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6743
    goto/16 :goto_7

    .line 6744
    :cond_10b
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6746
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6747
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6748
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6749
    goto/16 :goto_7

    .line 6724
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10c

    move v5, v6

    :cond_10c
    move v1, v5

    .line 6725
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_10d

    .line 6726
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6728
    goto/16 :goto_7

    .line 6729
    :cond_10d
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6731
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6732
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6733
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6734
    goto/16 :goto_7

    .line 6709
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10e

    move v5, v6

    :cond_10e
    move v1, v5

    .line 6710
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_10f

    .line 6711
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6713
    goto/16 :goto_7

    .line 6714
    :cond_10f
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6716
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6717
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6718
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6719
    goto/16 :goto_7

    .line 6694
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_110

    move v5, v6

    :cond_110
    move v1, v5

    .line 6695
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_111

    .line 6696
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6698
    goto/16 :goto_7

    .line 6699
    :cond_111
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6701
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6702
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6703
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6704
    goto/16 :goto_7

    .line 6680
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v5, v6

    :cond_112
    move v0, v5

    .line 6681
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_113

    .line 6682
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6684
    goto/16 :goto_7

    .line 6685
    :cond_113
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6688
    .local v1, "serial":I
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 6689
    goto/16 :goto_7

    .line 6665
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v5, v6

    :cond_114
    move v0, v5

    .line 6666
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_115

    .line 6667
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6669
    goto/16 :goto_7

    .line 6670
    :cond_115
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6672
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6673
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6674
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6675
    goto/16 :goto_7

    .line 6650
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v5, v6

    :cond_116
    move v0, v5

    .line 6651
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_117

    .line 6652
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6654
    goto/16 :goto_7

    .line 6655
    :cond_117
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6657
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6658
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6659
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6660
    goto/16 :goto_7

    .line 6635
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v5, v6

    :cond_118
    move v0, v5

    .line 6636
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_119

    .line 6637
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6639
    goto/16 :goto_7

    .line 6640
    :cond_119
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6642
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6643
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6644
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6645
    goto/16 :goto_7

    .line 6617
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v5, v6

    :cond_11a
    move v0, v5

    .line 6618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11b

    .line 6619
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6621
    goto/16 :goto_7

    .line 6622
    :cond_11b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6624
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6625
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6627
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 6628
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6629
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 6630
    goto/16 :goto_7

    .line 6601
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

    .line 6602
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11d

    .line 6603
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6605
    goto/16 :goto_7

    .line 6606
    :cond_11d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6608
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6609
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6611
    .local v2, "numAllowed":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6612
    goto/16 :goto_7

    .line 6584
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "numAllowed":I
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v5, v6

    :cond_11e
    move v0, v5

    .line 6585
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11f

    .line 6586
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6588
    goto/16 :goto_7

    .line 6589
    :cond_11f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6591
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6592
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6593
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 6594
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6595
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 6596
    goto/16 :goto_7

    .line 6567
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v5, v6

    :cond_120
    move v0, v5

    .line 6568
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_121

    .line 6569
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6571
    goto/16 :goto_7

    .line 6572
    :cond_121
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6574
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6575
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6576
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 6577
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6578
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 6579
    goto/16 :goto_7

    .line 6550
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v5, v6

    :cond_122
    move v0, v5

    .line 6551
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_123

    .line 6552
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6554
    goto/16 :goto_7

    .line 6555
    :cond_123
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6557
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6558
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6559
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6560
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6561
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6562
    goto/16 :goto_7

    .line 6533
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v5, v6

    :cond_124
    move v0, v5

    .line 6534
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_125

    .line 6535
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6537
    goto/16 :goto_7

    .line 6538
    :cond_125
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6540
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6541
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6542
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6543
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6544
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6545
    goto/16 :goto_7

    .line 6516
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v5, v6

    :cond_126
    move v0, v5

    .line 6517
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_127

    .line 6518
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6520
    goto/16 :goto_7

    .line 6521
    :cond_127
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6523
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6524
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6525
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6526
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6527
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6528
    goto/16 :goto_7

    .line 6499
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v5, v6

    :cond_128
    move v0, v5

    .line 6500
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_129

    .line 6501
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6503
    goto/16 :goto_7

    .line 6504
    :cond_129
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6506
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6507
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6508
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6509
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6510
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6511
    goto/16 :goto_7

    .line 6484
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v5, v6

    :cond_12a
    move v0, v5

    .line 6485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12b

    .line 6486
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6488
    goto/16 :goto_7

    .line 6489
    :cond_12b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6491
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6492
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6493
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6494
    goto/16 :goto_7

    .line 6469
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v5, v6

    :cond_12c
    move v0, v5

    .line 6470
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12d

    .line 6471
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6473
    goto/16 :goto_7

    .line 6474
    :cond_12d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6476
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6477
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6478
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6479
    goto/16 :goto_7

    .line 6452
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v5, v6

    :cond_12e
    move v0, v5

    .line 6453
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12f

    .line 6454
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6456
    goto/16 :goto_7

    .line 6457
    :cond_12f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6459
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6460
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6461
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6462
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6463
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6464
    goto/16 :goto_7

    .line 6436
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v5, v6

    :cond_130
    move v0, v5

    .line 6437
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_131

    .line 6438
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6440
    goto/16 :goto_7

    .line 6441
    :cond_131
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6443
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6444
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6445
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6446
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6447
    goto/16 :goto_7

    .line 6421
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v5, v6

    :cond_132
    move v0, v5

    .line 6422
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_133

    .line 6423
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6425
    goto/16 :goto_7

    .line 6426
    :cond_133
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6428
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6429
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6430
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6431
    goto/16 :goto_7

    .line 6406
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v5, v6

    :cond_134
    move v0, v5

    .line 6407
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_135

    .line 6408
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6410
    goto/16 :goto_7

    .line 6411
    :cond_135
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6413
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6414
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6415
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6416
    goto/16 :goto_7

    .line 6391
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v5, v6

    :cond_136
    move v0, v5

    .line 6392
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_137

    .line 6393
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6394
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6395
    goto/16 :goto_7

    .line 6396
    :cond_137
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6398
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6399
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6400
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6401
    goto/16 :goto_7

    .line 6376
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v5, v6

    :cond_138
    move v0, v5

    .line 6377
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_139

    .line 6378
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6380
    goto/16 :goto_7

    .line 6381
    :cond_139
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6383
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6384
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6385
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6386
    goto/16 :goto_7

    .line 6361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v5, v6

    :cond_13a
    move v0, v5

    .line 6362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13b

    .line 6363
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6365
    goto/16 :goto_7

    .line 6366
    :cond_13b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6368
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6369
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6370
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6371
    goto/16 :goto_7

    .line 6345
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v5, v6

    :cond_13c
    move v0, v5

    .line 6346
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13d

    .line 6347
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6349
    goto/16 :goto_7

    .line 6350
    :cond_13d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6352
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6353
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6355
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6356
    goto/16 :goto_7

    .line 6328
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v5, v6

    :cond_13e
    move v0, v5

    .line 6329
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13f

    .line 6330
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6332
    goto/16 :goto_7

    .line 6333
    :cond_13f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6335
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6336
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6337
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6338
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6339
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6340
    goto/16 :goto_7

    .line 6313
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v5, v6

    :cond_140
    move v0, v5

    .line 6314
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_141

    .line 6315
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6316
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6317
    goto/16 :goto_7

    .line 6318
    :cond_141
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6320
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6321
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6322
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6323
    goto/16 :goto_7

    .line 6296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v5, v6

    :cond_142
    move v0, v5

    .line 6297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_143

    .line 6298
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6300
    goto/16 :goto_7

    .line 6301
    :cond_143
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6303
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6304
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6306
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6307
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 6308
    goto/16 :goto_7

    .line 6279
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

    .line 6280
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_145

    .line 6281
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6283
    goto/16 :goto_7

    .line 6284
    :cond_145
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6286
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6287
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6288
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6289
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6290
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6291
    goto/16 :goto_7

    .line 6262
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v5, v6

    :cond_146
    move v0, v5

    .line 6263
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_147

    .line 6264
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6266
    goto/16 :goto_7

    .line 6267
    :cond_147
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6269
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6270
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6271
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6272
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6273
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6274
    goto/16 :goto_7

    .line 6245
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v5, v6

    :cond_148
    move v0, v5

    .line 6246
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_149

    .line 6247
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6249
    goto/16 :goto_7

    .line 6250
    :cond_149
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6252
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6253
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6255
    .local v2, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6256
    .local v3, "ratFamily":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 6257
    goto/16 :goto_7

    .line 6230
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

    .line 6231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14b

    .line 6232
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6234
    goto/16 :goto_7

    .line 6235
    :cond_14b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6237
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6238
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6239
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6240
    goto/16 :goto_7

    .line 6215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v5, v6

    :cond_14c
    move v0, v5

    .line 6216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14d

    .line 6217
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6219
    goto/16 :goto_7

    .line 6220
    :cond_14d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6222
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6223
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6224
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6225
    goto/16 :goto_7

    .line 6199
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v5, v6

    :cond_14e
    move v0, v5

    .line 6200
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14f

    .line 6201
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6203
    goto/16 :goto_7

    .line 6204
    :cond_14f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6206
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6207
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6208
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6209
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6210
    goto/16 :goto_7

    .line 6183
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_9e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_150

    move v5, v6

    :cond_150
    move v0, v5

    .line 6184
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_151

    .line 6185
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6187
    goto/16 :goto_7

    .line 6188
    :cond_151
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6190
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6191
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6193
    .local v2, "rat":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6194
    goto/16 :goto_7

    .line 6166
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rat":I
    :pswitch_9f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v5, v6

    :cond_152
    move v0, v5

    .line 6167
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_153

    .line 6168
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6170
    goto/16 :goto_7

    .line 6171
    :cond_153
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6173
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6174
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6175
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6176
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6177
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6178
    goto/16 :goto_7

    .line 6151
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v5, v6

    :cond_154
    move v0, v5

    .line 6152
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_155

    .line 6153
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6155
    goto/16 :goto_7

    .line 6156
    :cond_155
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6158
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6159
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6160
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6161
    goto/16 :goto_7

    .line 6135
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_156

    move v5, v6

    :cond_156
    move v0, v5

    .line 6136
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_157

    .line 6137
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6139
    goto/16 :goto_7

    .line 6140
    :cond_157
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6142
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6143
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6145
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6146
    goto/16 :goto_7

    .line 6119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v5, v6

    :cond_158
    move v0, v5

    .line 6120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_159

    .line 6121
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6123
    goto/16 :goto_7

    .line 6124
    :cond_159
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6126
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6127
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6129
    .local v2, "source":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6130
    goto/16 :goto_7

    .line 6104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "source":I
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v5, v6

    :cond_15a
    move v0, v5

    .line 6105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15b

    .line 6106
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6108
    goto/16 :goto_7

    .line 6109
    :cond_15b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6111
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6112
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6113
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6114
    goto/16 :goto_7

    .line 6089
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v5, v6

    :cond_15c
    move v0, v5

    .line 6090
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15d

    .line 6091
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6093
    goto/16 :goto_7

    .line 6094
    :cond_15d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6096
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6097
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6098
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6099
    goto/16 :goto_7

    .line 6074
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v5, v6

    :cond_15e
    move v0, v5

    .line 6075
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15f

    .line 6076
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6078
    goto/16 :goto_7

    .line 6079
    :cond_15f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6081
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6082
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6083
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6084
    goto/16 :goto_7

    .line 6058
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v5, v6

    :cond_160
    move v0, v5

    .line 6059
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_161

    .line 6060
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6062
    goto/16 :goto_7

    .line 6063
    :cond_161
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6065
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6066
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6068
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6069
    goto/16 :goto_7

    .line 6043
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v5, v6

    :cond_162
    move v0, v5

    .line 6044
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_163

    .line 6045
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6046
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6047
    goto/16 :goto_7

    .line 6048
    :cond_163
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6050
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6051
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6052
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6053
    goto/16 :goto_7

    .line 6024
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v5, v6

    :cond_164
    move v7, v5

    .line 6025
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_165

    .line 6026
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6028
    goto/16 :goto_7

    .line 6029
    :cond_165
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6031
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v6, v0

    .line 6032
    .local v6, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v6, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6034
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6035
    .local v12, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 6036
    .local v13, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 6037
    .local v14, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6038
    goto/16 :goto_7

    .line 6009
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

    .line 6010
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_167

    .line 6011
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6013
    goto/16 :goto_7

    .line 6014
    :cond_167
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6016
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6017
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6018
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6019
    goto/16 :goto_7

    .line 5993
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v5, v6

    :cond_168
    move v0, v5

    .line 5994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_169

    .line 5995
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5997
    goto/16 :goto_7

    .line 5998
    :cond_169
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6000
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6001
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6003
    .local v2, "index":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6004
    goto/16 :goto_7

    .line 5973
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v5, v6

    :cond_16a
    move v7, v5

    .line 5974
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_16b

    .line 5975
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5977
    goto/16 :goto_7

    .line 5978
    :cond_16b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5980
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v8, v0

    .line 5981
    .local v8, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v8, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5983
    .local v12, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5984
    .local v13, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5985
    .local v14, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 5986
    .local v15, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5987
    .local v16, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5988
    goto/16 :goto_7

    .line 5958
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

    .line 5959
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_16d

    .line 5960
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5962
    goto/16 :goto_7

    .line 5963
    :cond_16d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5965
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5966
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5967
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5968
    goto/16 :goto_7

    .line 5943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ad
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    move v5, v6

    :cond_16e
    move v0, v5

    .line 5944
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_16f

    .line 5945
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5947
    goto/16 :goto_7

    .line 5948
    :cond_16f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5950
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5951
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5952
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5953
    goto/16 :goto_7

    .line 5927
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ae
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_170

    move v5, v6

    :cond_170
    move v0, v5

    .line 5928
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_171

    .line 5929
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5931
    goto/16 :goto_7

    .line 5932
    :cond_171
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5934
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5935
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5936
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5937
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5938
    goto/16 :goto_7

    .line 5912
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_af
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_172

    move v5, v6

    :cond_172
    move v0, v5

    .line 5913
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_173

    .line 5914
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5915
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5916
    goto/16 :goto_7

    .line 5917
    :cond_173
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5919
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5920
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5921
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5922
    goto/16 :goto_7

    .line 5897
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_174

    move v5, v6

    :cond_174
    move v0, v5

    .line 5898
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_175

    .line 5899
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5901
    goto/16 :goto_7

    .line 5902
    :cond_175
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5904
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5905
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5906
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5907
    goto/16 :goto_7

    .line 5881
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_176

    move v5, v6

    :cond_176
    move v0, v5

    .line 5882
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_177

    .line 5883
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5885
    goto/16 :goto_7

    .line 5886
    :cond_177
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5888
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5889
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5890
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5891
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5892
    goto/16 :goto_7

    .line 5866
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_b2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_178

    move v5, v6

    :cond_178
    move v0, v5

    .line 5867
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_179

    .line 5868
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5869
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5870
    goto/16 :goto_7

    .line 5871
    :cond_179
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5873
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5874
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5875
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5876
    goto/16 :goto_7

    .line 5849
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17a

    move v5, v6

    :cond_17a
    move v0, v5

    .line 5850
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17b

    .line 5851
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5853
    goto/16 :goto_7

    .line 5854
    :cond_17b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5856
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5857
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5858
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5859
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5860
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5861
    goto/16 :goto_7

    .line 5834
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_b4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17c

    move v5, v6

    :cond_17c
    move v0, v5

    .line 5835
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17d

    .line 5836
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5838
    goto/16 :goto_7

    .line 5839
    :cond_17d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5841
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5842
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5843
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5844
    goto/16 :goto_7

    .line 5819
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17e

    move v5, v6

    :cond_17e
    move v0, v5

    .line 5820
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17f

    .line 5821
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5823
    goto/16 :goto_7

    .line 5824
    :cond_17f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5826
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5827
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5828
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5829
    goto/16 :goto_7

    .line 5803
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_180

    move v5, v6

    :cond_180
    move v0, v5

    .line 5804
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_181

    .line 5805
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5807
    goto/16 :goto_7

    .line 5808
    :cond_181
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5810
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5811
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5813
    .local v2, "enable":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5814
    goto/16 :goto_7

    .line 5788
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v5, v6

    :cond_182
    move v0, v5

    .line 5789
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_183

    .line 5790
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5792
    goto/16 :goto_7

    .line 5793
    :cond_183
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5795
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5796
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5797
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5798
    goto/16 :goto_7

    .line 5772
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v5, v6

    :cond_184
    move v0, v5

    .line 5773
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_185

    .line 5774
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5776
    goto/16 :goto_7

    .line 5777
    :cond_185
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5779
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5780
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5782
    .local v2, "mode":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5783
    goto/16 :goto_7

    .line 5757
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v5, v6

    :cond_186
    move v0, v5

    .line 5758
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_187

    .line 5759
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5761
    goto/16 :goto_7

    .line 5762
    :cond_187
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5764
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5765
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5766
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5767
    goto/16 :goto_7

    .line 5741
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v5, v6

    :cond_188
    move v0, v5

    .line 5742
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_189

    .line 5743
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5745
    goto/16 :goto_7

    .line 5746
    :cond_189
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5748
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5749
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5751
    .local v2, "type":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5752
    goto/16 :goto_7

    .line 5726
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "type":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v5, v6

    :cond_18a
    move v0, v5

    .line 5727
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18b

    .line 5728
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5730
    goto/16 :goto_7

    .line 5731
    :cond_18b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5733
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5734
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5735
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5736
    goto/16 :goto_7

    .line 5711
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v5, v6

    :cond_18c
    move v0, v5

    .line 5712
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18d

    .line 5713
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5715
    goto/16 :goto_7

    .line 5716
    :cond_18d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5718
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5719
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5720
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5721
    goto/16 :goto_7

    .line 5696
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v5, v6

    :cond_18e
    move v0, v5

    .line 5697
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18f

    .line 5698
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5700
    goto/16 :goto_7

    .line 5701
    :cond_18f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5703
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5704
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5705
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5706
    goto/16 :goto_7

    .line 5680
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v5, v6

    :cond_190
    move v0, v5

    .line 5681
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_191

    .line 5682
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5684
    goto/16 :goto_7

    .line 5685
    :cond_191
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5687
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5688
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5689
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5690
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5691
    goto/16 :goto_7

    .line 5664
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v5, v6

    :cond_192
    move v0, v5

    .line 5665
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_193

    .line 5666
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5668
    goto/16 :goto_7

    .line 5669
    :cond_193
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5671
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5672
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5674
    .local v2, "nwType":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5675
    goto/16 :goto_7

    .line 5649
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "nwType":I
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v5, v6

    :cond_194
    move v0, v5

    .line 5650
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_195

    .line 5651
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5653
    goto/16 :goto_7

    .line 5654
    :cond_195
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5656
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5657
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5658
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5659
    goto/16 :goto_7

    .line 5634
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v5, v6

    :cond_196
    move v0, v5

    .line 5635
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_197

    .line 5636
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5638
    goto/16 :goto_7

    .line 5639
    :cond_197
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5641
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5642
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5643
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5644
    goto/16 :goto_7

    .line 5619
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_198

    move v5, v6

    :cond_198
    move v0, v5

    .line 5620
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_199

    .line 5621
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5623
    goto/16 :goto_7

    .line 5624
    :cond_199
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5626
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5627
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5628
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5629
    goto/16 :goto_7

    .line 5604
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v5, v6

    :cond_19a
    move v0, v5

    .line 5605
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19b

    .line 5606
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5608
    goto/16 :goto_7

    .line 5609
    :cond_19b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5611
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5612
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5613
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5614
    goto/16 :goto_7

    .line 5588
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19c

    move v5, v6

    :cond_19c
    move v0, v5

    .line 5589
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19d

    .line 5590
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5592
    goto/16 :goto_7

    .line 5593
    :cond_19d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5595
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5596
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5598
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5599
    goto/16 :goto_7

    .line 5572
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v5, v6

    :cond_19e
    move v0, v5

    .line 5573
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19f

    .line 5574
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5576
    goto/16 :goto_7

    .line 5577
    :cond_19f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5579
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5580
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5582
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5583
    goto/16 :goto_7

    .line 5557
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v5, v6

    :cond_1a0
    move v0, v5

    .line 5558
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a1

    .line 5559
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5560
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5561
    goto/16 :goto_7

    .line 5562
    :cond_1a1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5564
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5565
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5566
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5567
    goto/16 :goto_7

    .line 5542
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v5, v6

    :cond_1a2
    move v0, v5

    .line 5543
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a3

    .line 5544
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5545
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5546
    goto/16 :goto_7

    .line 5547
    :cond_1a3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5549
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5550
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5551
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5552
    goto/16 :goto_7

    .line 5526
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_c8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a4

    move v5, v6

    :cond_1a4
    move v0, v5

    .line 5527
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a5

    .line 5528
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5530
    goto/16 :goto_7

    .line 5531
    :cond_1a5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5533
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5534
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5536
    .local v2, "index":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5537
    goto/16 :goto_7

    .line 5511
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v5, v6

    :cond_1a6
    move v0, v5

    .line 5512
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a7

    .line 5513
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5515
    goto/16 :goto_7

    .line 5516
    :cond_1a7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5518
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5519
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5520
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5521
    goto/16 :goto_7

    .line 5495
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v5, v6

    :cond_1a8
    move v0, v5

    .line 5496
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a9

    .line 5497
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5499
    goto/16 :goto_7

    .line 5500
    :cond_1a9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5502
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5503
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5504
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5505
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5506
    goto/16 :goto_7

    .line 5479
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v5, v6

    :cond_1aa
    move v0, v5

    .line 5480
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ab

    .line 5481
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5483
    goto/16 :goto_7

    .line 5484
    :cond_1ab
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5486
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5487
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5489
    .local v2, "status":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5490
    goto/16 :goto_7

    .line 5463
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":I
    :pswitch_cc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ac

    move v5, v6

    :cond_1ac
    move v0, v5

    .line 5464
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ad

    .line 5465
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5467
    goto/16 :goto_7

    .line 5468
    :cond_1ad
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5470
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5471
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5473
    .local v2, "enable":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5474
    goto/16 :goto_7

    .line 5448
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_cd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ae

    move v5, v6

    :cond_1ae
    move v0, v5

    .line 5449
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1af

    .line 5450
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5452
    goto/16 :goto_7

    .line 5453
    :cond_1af
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5455
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5456
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5457
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5458
    goto/16 :goto_7

    .line 5433
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v5, v6

    :cond_1b0
    move v0, v5

    .line 5434
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b1

    .line 5435
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5437
    goto/16 :goto_7

    .line 5438
    :cond_1b1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5440
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5441
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5442
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5443
    goto/16 :goto_7

    .line 5417
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v5, v6

    :cond_1b2
    move v0, v5

    .line 5418
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b3

    .line 5419
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5421
    goto/16 :goto_7

    .line 5422
    :cond_1b3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5424
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5425
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5427
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5428
    goto/16 :goto_7

    .line 5402
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v5, v6

    :cond_1b4
    move v0, v5

    .line 5403
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b5

    .line 5404
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5406
    goto/16 :goto_7

    .line 5407
    :cond_1b5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5409
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5410
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5411
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5412
    goto/16 :goto_7

    .line 5387
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v5, v6

    :cond_1b6
    move v0, v5

    .line 5388
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b7

    .line 5389
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5391
    goto/16 :goto_7

    .line 5392
    :cond_1b7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5394
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5395
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5396
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5397
    goto/16 :goto_7

    .line 5371
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v5, v6

    :cond_1b8
    move v0, v5

    .line 5372
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b9

    .line 5373
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5375
    goto/16 :goto_7

    .line 5376
    :cond_1b9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5378
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5379
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5380
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5381
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5382
    goto/16 :goto_7

    .line 5356
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v5, v6

    :cond_1ba
    move v0, v5

    .line 5357
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bb

    .line 5358
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5360
    goto/16 :goto_7

    .line 5361
    :cond_1bb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5363
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5364
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5365
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5366
    goto/16 :goto_7

    .line 5341
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v5, v6

    :cond_1bc
    move v0, v5

    .line 5342
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bd

    .line 5343
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5345
    goto/16 :goto_7

    .line 5346
    :cond_1bd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5348
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5349
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5350
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5351
    goto/16 :goto_7

    .line 5325
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v5, v6

    :cond_1be
    move v0, v5

    .line 5326
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bf

    .line 5327
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5329
    goto/16 :goto_7

    .line 5330
    :cond_1bf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5332
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5333
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5335
    .local v2, "manual":Z
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5336
    goto/16 :goto_7

    .line 5310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "manual":Z
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v5, v6

    :cond_1c0
    move v0, v5

    .line 5311
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c1

    .line 5312
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5314
    goto/16 :goto_7

    .line 5315
    :cond_1c1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5317
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5318
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5319
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5320
    goto/16 :goto_7

    .line 5294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_d7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c2

    move v5, v6

    :cond_1c2
    move v0, v5

    .line 5295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c3

    .line 5296
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5298
    goto/16 :goto_7

    .line 5299
    :cond_1c3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5301
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5302
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5304
    .local v2, "retry":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5305
    goto/16 :goto_7

    .line 5278
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "retry":I
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v5, v6

    :cond_1c4
    move v0, v5

    .line 5279
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c5

    .line 5280
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5282
    goto/16 :goto_7

    .line 5283
    :cond_1c5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5285
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5286
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5288
    .local v2, "response":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5289
    goto/16 :goto_7

    .line 5263
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":I
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v5, v6

    :cond_1c6
    move v0, v5

    .line 5264
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c7

    .line 5265
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5267
    goto/16 :goto_7

    .line 5268
    :cond_1c7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5270
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5271
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5272
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5273
    goto/16 :goto_7

    .line 5248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v5, v6

    :cond_1c8
    move v0, v5

    .line 5249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c9

    .line 5250
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5252
    goto/16 :goto_7

    .line 5253
    :cond_1c9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5255
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5256
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5257
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5258
    goto/16 :goto_7

    .line 5233
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_db
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ca

    move v5, v6

    :cond_1ca
    move v0, v5

    .line 5234
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cb

    .line 5235
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5237
    goto/16 :goto_7

    .line 5238
    :cond_1cb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5241
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5242
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5243
    goto/16 :goto_7

    .line 5218
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v5, v6

    :cond_1cc
    move v0, v5

    .line 5219
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cd

    .line 5220
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5222
    goto/16 :goto_7

    .line 5223
    :cond_1cd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5225
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5226
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5227
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5228
    goto/16 :goto_7

    .line 5201
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v5, v6

    :cond_1ce
    move v0, v5

    .line 5202
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cf

    .line 5203
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5205
    goto/16 :goto_7

    .line 5206
    :cond_1cf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5208
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5209
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5211
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5212
    .local v3, "serviceClass":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 5213
    goto/16 :goto_7

    .line 5186
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

    .line 5187
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d1

    .line 5188
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5190
    goto/16 :goto_7

    .line 5191
    :cond_1d1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5193
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5194
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5195
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5196
    goto/16 :goto_7

    .line 5170
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v5, v6

    :cond_1d2
    move v0, v5

    .line 5171
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d3

    .line 5172
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5174
    goto/16 :goto_7

    .line 5175
    :cond_1d3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5177
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5178
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5179
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5180
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5181
    goto/16 :goto_7

    .line 5155
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :pswitch_e0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d4

    move v5, v6

    :cond_1d4
    move v0, v5

    .line 5156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d5

    .line 5157
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5159
    goto/16 :goto_7

    .line 5160
    :cond_1d5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5162
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5163
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5164
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5165
    goto/16 :goto_7

    .line 5138
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v5, v6

    :cond_1d6
    move v0, v5

    .line 5139
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d7

    .line 5140
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5142
    goto/16 :goto_7

    .line 5143
    :cond_1d7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5145
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5146
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5147
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5148
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5149
    .local v3, "m":I
    invoke-virtual {v9, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 5150
    goto/16 :goto_7

    .line 5123
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

    .line 5124
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d9

    .line 5125
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5127
    goto/16 :goto_7

    .line 5128
    :cond_1d9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5130
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5131
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5132
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5133
    goto/16 :goto_7

    .line 5108
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v5, v6

    :cond_1da
    move v0, v5

    .line 5109
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1db

    .line 5110
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5112
    goto/16 :goto_7

    .line 5113
    :cond_1db
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5115
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5116
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5117
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5118
    goto/16 :goto_7

    .line 5091
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v5, v6

    :cond_1dc
    move v0, v5

    .line 5092
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1dd

    .line 5093
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5095
    goto/16 :goto_7

    .line 5096
    :cond_1dd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5098
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5099
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5100
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5101
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5102
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5103
    goto/16 :goto_7

    .line 5074
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v5, v6

    :cond_1de
    move v0, v5

    .line 5075
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1df

    .line 5076
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5078
    goto/16 :goto_7

    .line 5079
    :cond_1df
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5081
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5082
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5083
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 5084
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5085
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 5086
    goto/16 :goto_7

    .line 5057
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v5, v6

    :cond_1e0
    move v0, v5

    .line 5058
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e1

    .line 5059
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5061
    goto/16 :goto_7

    .line 5062
    :cond_1e1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5064
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5065
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5066
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5067
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5068
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5069
    goto/16 :goto_7

    .line 5040
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v5, v6

    :cond_1e2
    move v0, v5

    .line 5041
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e3

    .line 5042
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5044
    goto/16 :goto_7

    .line 5045
    :cond_1e3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5047
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5048
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5049
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5050
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5051
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5052
    goto/16 :goto_7

    .line 5025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v5, v6

    :cond_1e4
    move v0, v5

    .line 5026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e5

    .line 5027
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5029
    goto/16 :goto_7

    .line 5030
    :cond_1e5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5033
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5034
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5035
    goto/16 :goto_7

    .line 5010
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v5, v6

    :cond_1e6
    move v0, v5

    .line 5011
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e7

    .line 5012
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5014
    goto/16 :goto_7

    .line 5015
    :cond_1e7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5017
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5018
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5019
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5020
    goto/16 :goto_7

    .line 4992
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v5, v6

    :cond_1e8
    move v0, v5

    .line 4993
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e9

    .line 4994
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4996
    goto/16 :goto_7

    .line 4997
    :cond_1e9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4999
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5000
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5002
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5003
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5004
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {v9, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    goto/16 :goto_7

    .line 4975
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

    .line 4976
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1eb

    .line 4977
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4979
    goto/16 :goto_7

    .line 4980
    :cond_1eb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4982
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4983
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4984
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 4985
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4986
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 4987
    goto/16 :goto_7

    .line 4958
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v5, v6

    :cond_1ec
    move v0, v5

    .line 4959
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ed

    .line 4960
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4962
    goto/16 :goto_7

    .line 4963
    :cond_1ed
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4965
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4966
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4967
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 4968
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4969
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 4970
    goto/16 :goto_7

    .line 4941
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v5, v6

    :cond_1ee
    move v0, v5

    .line 4942
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ef

    .line 4943
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4944
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4945
    goto/16 :goto_7

    .line 4946
    :cond_1ef
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4948
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4949
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4950
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 4951
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4952
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 4953
    goto/16 :goto_7

    .line 4924
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v5, v6

    :cond_1f0
    move v0, v5

    .line 4925
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f1

    .line 4926
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4928
    goto/16 :goto_7

    .line 4929
    :cond_1f1
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4932
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4933
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 4934
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4935
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 4936
    goto/16 :goto_7

    .line 4909
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v5, v6

    :cond_1f2
    move v0, v5

    .line 4910
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f3

    .line 4911
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4913
    goto/16 :goto_7

    .line 4914
    :cond_1f3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4919
    goto/16 :goto_7

    .line 4894
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v5, v6

    :cond_1f4
    move v0, v5

    .line 4895
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f5

    .line 4896
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4898
    goto/16 :goto_7

    .line 4899
    :cond_1f5
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4901
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4902
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4903
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4904
    goto/16 :goto_7

    .line 4879
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v5, v6

    :cond_1f6
    move v0, v5

    .line 4880
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f7

    .line 4881
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4882
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4883
    goto/16 :goto_7

    .line 4884
    :cond_1f7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4886
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4887
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4888
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4889
    goto/16 :goto_7

    .line 4864
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v5, v6

    :cond_1f8
    move v0, v5

    .line 4865
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f9

    .line 4866
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4868
    goto/16 :goto_7

    .line 4869
    :cond_1f9
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4871
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4872
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4873
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4874
    goto/16 :goto_7

    .line 4849
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v5, v6

    :cond_1fa
    move v0, v5

    .line 4850
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fb

    .line 4851
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4853
    goto/16 :goto_7

    .line 4854
    :cond_1fb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4856
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4857
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4858
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4859
    goto/16 :goto_7

    .line 4834
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fc

    move v5, v6

    :cond_1fc
    move v0, v5

    .line 4835
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fd

    .line 4836
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4838
    goto/16 :goto_7

    .line 4839
    :cond_1fd
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4841
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4842
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4843
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4844
    goto/16 :goto_7

    .line 4818
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v5, v6

    :cond_1fe
    move v0, v5

    .line 4819
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ff

    .line 4820
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4822
    goto/16 :goto_7

    .line 4823
    :cond_1ff
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4825
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4826
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4828
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4829
    goto/16 :goto_7

    .line 4803
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imsi":Ljava/lang/String;
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v5, v6

    :cond_200
    move v0, v5

    .line 4804
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_201

    .line 4805
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4807
    goto/16 :goto_7

    .line 4808
    :cond_201
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4810
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4811
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4812
    invoke-virtual {v9, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4813
    goto/16 :goto_7

    .line 4787
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v5, v6

    :cond_202
    move v0, v5

    .line 4788
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_203

    .line 4789
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4791
    goto/16 :goto_7

    .line 4792
    :cond_203
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4794
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4795
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4796
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4797
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4798
    goto/16 :goto_7

    .line 4771
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v5, v6

    :cond_204
    move v0, v5

    .line 4772
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_205

    .line 4773
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4775
    goto/16 :goto_7

    .line 4776
    :cond_205
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4778
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4779
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4781
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4782
    goto/16 :goto_7

    .line 4755
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v5, v6

    :cond_206
    move v0, v5

    .line 4756
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_207

    .line 4757
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4759
    goto/16 :goto_7

    .line 4760
    :cond_207
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4763
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4765
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4766
    goto/16 :goto_7

    .line 4739
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v5, v6

    :cond_208
    move v0, v5

    .line 4740
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_209

    .line 4741
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4743
    goto/16 :goto_7

    .line 4744
    :cond_209
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4746
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4747
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4749
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4750
    goto/16 :goto_7

    .line 4723
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v5, v6

    :cond_20a
    move v0, v5

    .line 4724
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20b

    .line 4725
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4727
    goto/16 :goto_7

    .line 4728
    :cond_20b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4730
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4731
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4733
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4734
    goto/16 :goto_7

    .line 4707
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v5, v6

    :cond_20c
    move v0, v5

    .line 4708
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20d

    .line 4709
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4711
    goto/16 :goto_7

    .line 4712
    :cond_20d
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4714
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4715
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4717
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4718
    goto/16 :goto_7

    .line 4691
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v5, v6

    :cond_20e
    move v0, v5

    .line 4692
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20f

    .line 4693
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4694
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4695
    goto :goto_7

    .line 4696
    :cond_20f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4698
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4699
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4701
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4702
    goto :goto_7

    .line 4675
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v5, v6

    :cond_210
    move v0, v5

    .line 4676
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_211

    .line 4677
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4679
    goto :goto_7

    .line 4680
    :cond_211
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4682
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4683
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4685
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4686
    goto :goto_7

    .line 4658
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v5, v6

    :cond_212
    move v0, v5

    .line 4659
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_213

    .line 4660
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4662
    goto :goto_7

    .line 4663
    :cond_213
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4665
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4666
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4667
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 4668
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4669
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 4670
    nop

    .line 8833
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

    .line 4609
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4637
    const-string v0, "vendor.mediatek.hardware.radio@3.7::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4638
    return-object p0

    .line 4640
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

    .line 4644
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 4645
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 4599
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4631
    const/4 v0, 0x1

    return v0
.end method
