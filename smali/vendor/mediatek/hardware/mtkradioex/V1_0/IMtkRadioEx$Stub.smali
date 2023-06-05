.class public abstract Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5611
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5614
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

    .line 5627
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5664
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5665
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5666
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5667
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5668
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

    .line 5639
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
        0x54t
        -0x65t
        0x50t
        -0x3et
        -0x7t
        -0x29t
        0x4dt
        -0x15t
        0x2et
        0x50t
        -0x66t
        -0x58t
        -0x6at
        -0x5at
        0x22t
        0x54t
        0x3dt
        -0x58t
        0x13t
        0x5ct
        0x65t
        0x55t
        -0x58t
        -0x46t
        -0x38t
        0x25t
        -0x5et
        -0x76t
        -0x3ft
        0x2et
        -0x3at
        0x31t
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

    .line 5619
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioEx"

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

    .line 5633
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioEx"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5652
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5674
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5676
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 29
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5704
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioEx"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_e

    .line 8958
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 8959
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a0

    .line 8960
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8962
    goto/16 :goto_e

    .line 8945
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 8946
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 8947
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8949
    goto/16 :goto_e

    .line 8950
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8952
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->notifySyspropsChanged()V

    .line 8953
    goto/16 :goto_e

    .line 8929
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 8930
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 8931
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8933
    goto/16 :goto_e

    .line 8934
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8936
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 8937
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8938
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 8939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8940
    goto/16 :goto_e

    .line 8914
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 8915
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 8916
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8918
    goto/16 :goto_e

    .line 8919
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8921
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->ping()V

    .line 8922
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8924
    goto/16 :goto_e

    .line 8904
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 8905
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a0

    .line 8906
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8908
    goto/16 :goto_e

    .line 8891
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 8892
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 8893
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8895
    goto/16 :goto_e

    .line 8896
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8898
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setHALInstrumentation()V

    .line 8899
    goto/16 :goto_e

    .line 8852
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 8853
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 8854
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8855
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8856
    goto/16 :goto_e

    .line 8857
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8859
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8860
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8862
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 8864
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8865
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 8866
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 8867
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 8868
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 8870
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 8871
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 8873
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 8877
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 8878
    nop

    .line 8868
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 8874
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 8881
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 8883
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 8885
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8886
    goto/16 :goto_e

    .line 8836
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 8837
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 8838
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8840
    goto/16 :goto_e

    .line 8841
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8843
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 8844
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8845
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 8846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8847
    goto/16 :goto_e

    .line 8819
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 8820
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 8821
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8823
    goto/16 :goto_e

    .line 8824
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8826
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 8827
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8828
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 8829
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8831
    goto/16 :goto_e

    .line 8803
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 8804
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 8805
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8807
    goto/16 :goto_e

    .line 8808
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8810
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8811
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8812
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 8813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8814
    goto/16 :goto_e

    .line 8787
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    move v2, v3

    .line 8788
    .local v2, "_hidl_is_oneway":Z
    :cond_14
    if-eq v2, v3, :cond_15

    .line 8789
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8791
    goto/16 :goto_e

    .line 8792
    :cond_15
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8795
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8796
    .local v1, "approve":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8797
    .local v3, "callId":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->eccRedialApprove(III)V

    .line 8798
    goto/16 :goto_e

    .line 8772
    .end local v0    # "serial":I
    .end local v1    # "approve":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "callId":I
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    move v2, v3

    .line 8773
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v2, v3, :cond_17

    .line 8774
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8776
    goto/16 :goto_e

    .line 8777
    :cond_17
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8780
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8781
    .local v1, "uid":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->abortCertificate(II)V

    .line 8782
    goto/16 :goto_e

    .line 8755
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    move v2, v3

    .line 8756
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v2, v3, :cond_19

    .line 8757
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8759
    goto/16 :goto_e

    .line 8760
    :cond_19
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8763
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8764
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8765
    .local v3, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8766
    .local v4, "toActive":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->enableCapabaility(ILjava/lang/String;II)V

    .line 8767
    goto/16 :goto_e

    .line 8739
    .end local v0    # "serial":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "uid":I
    .end local v4    # "toActive":I
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    move v2, v3

    .line 8740
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v2, v3, :cond_1b

    .line 8741
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8743
    goto/16 :goto_e

    .line 8744
    :cond_1b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8747
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8748
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 8749
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->routeAuthMessage(IILjava/util/ArrayList;)V

    .line 8750
    goto/16 :goto_e

    .line 8722
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    move v2, v3

    .line 8723
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v2, v3, :cond_1d

    .line 8724
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8726
    goto/16 :goto_e

    .line 8727
    :cond_1d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8729
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8730
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8731
    .restart local v1    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 8732
    .local v3, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 8733
    .local v4, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8734
    goto/16 :goto_e

    .line 8705
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    move v2, v3

    .line 8706
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v2, v3, :cond_1f

    .line 8707
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8709
    goto/16 :goto_e

    .line 8710
    :cond_1f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8713
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8714
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8715
    .local v3, "num":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8716
    .local v4, "timer":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getSuggestedPlmnList(IIII)V

    .line 8717
    goto/16 :goto_e

    .line 8687
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "num":I
    .end local v4    # "timer":I
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    :cond_20
    move v6, v2

    .line 8688
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_21

    .line 8689
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8691
    goto/16 :goto_e

    .line 8692
    :cond_21
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8695
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8696
    .local v8, "registerQuality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8697
    .local v9, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8698
    .local v10, "thresholdValues":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8699
    .local v11, "triggerTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8700
    goto/16 :goto_e

    .line 8673
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "registerQuality":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "thresholdValues":Ljava/lang/String;
    .end local v11    # "triggerTime":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    move v2, v3

    .line 8674
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v2, v3, :cond_23

    .line 8675
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8677
    goto/16 :goto_e

    .line 8678
    :cond_23
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8681
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getDsdaStatus(I)V

    .line 8682
    goto/16 :goto_e

    .line 8658
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24

    move v2, v3

    .line 8659
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v2, v3, :cond_25

    .line 8660
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8662
    goto/16 :goto_e

    .line 8663
    :cond_25
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8666
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 8667
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->enableDsdaIndication(IZ)V

    .line 8668
    goto/16 :goto_e

    .line 8643
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26

    move v2, v3

    .line 8644
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v2, v3, :cond_27

    .line 8645
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8647
    goto/16 :goto_e

    .line 8648
    :cond_27
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8651
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8652
    .local v1, "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setKeepAliveByIpData(ILjava/lang/String;)V

    .line 8653
    goto/16 :goto_e

    .line 8628
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28

    move v2, v3

    .line 8629
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v2, v3, :cond_29

    .line 8630
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8632
    goto/16 :goto_e

    .line 8633
    :cond_29
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8636
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8637
    .restart local v1    # "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V

    .line 8638
    goto/16 :goto_e

    .line 8613
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a

    move v2, v3

    .line 8614
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v2, v3, :cond_2b

    .line 8615
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8617
    goto/16 :goto_e

    .line 8618
    :cond_2b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8621
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8622
    .local v1, "interval":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setIgnoreSameNumberInterval(II)V

    .line 8623
    goto/16 :goto_e

    .line 8598
    .end local v0    # "serial":I
    .end local v1    # "interval":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c

    move v2, v3

    .line 8599
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v2, v3, :cond_2d

    .line 8600
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8602
    goto/16 :goto_e

    .line 8603
    :cond_2d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8606
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8607
    .local v1, "timer":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setCallValidTimer(II)V

    .line 8608
    goto/16 :goto_e

    .line 8583
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2e

    move v2, v3

    .line 8584
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v2, v3, :cond_2f

    .line 8585
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8587
    goto/16 :goto_e

    .line 8588
    :cond_2f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8591
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8592
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setGwsdMode(ILjava/util/ArrayList;)V

    .line 8593
    goto/16 :goto_e

    .line 8568
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_30

    move v2, v3

    .line 8569
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v2, v3, :cond_31

    .line 8570
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8572
    goto/16 :goto_e

    .line 8573
    :cond_31
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8576
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8577
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsCallMode(II)V

    .line 8578
    goto/16 :goto_e

    .line 8553
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_32

    move v2, v3

    .line 8554
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v2, v3, :cond_33

    .line 8555
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8557
    goto/16 :goto_e

    .line 8558
    :cond_33
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8561
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8562
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 8563
    goto/16 :goto_e

    .line 8538
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_34

    move v2, v3

    .line 8539
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v2, v3, :cond_35

    .line 8540
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8542
    goto/16 :goto_e

    .line 8543
    :cond_35
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8545
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8546
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8547
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setSipHeader(ILjava/util/ArrayList;)V

    .line 8548
    goto/16 :goto_e

    .line 8524
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_36

    move v2, v3

    .line 8525
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v2, v3, :cond_37

    .line 8526
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8527
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8528
    goto/16 :goto_e

    .line 8529
    :cond_37
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8532
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getVoiceDomainPreference(I)V

    .line 8533
    goto/16 :goto_e

    .line 8509
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_38

    move v2, v3

    .line 8510
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v2, v3, :cond_39

    .line 8511
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8513
    goto/16 :goto_e

    .line 8514
    :cond_39
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8517
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 8518
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->enableCAPlusBandWidthFilter(IZ)V

    .line 8519
    goto/16 :goto_e

    .line 8493
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3a

    move v2, v3

    .line 8494
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v2, v3, :cond_3b

    .line 8495
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8497
    goto/16 :goto_e

    .line 8498
    :cond_3b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8501
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8502
    .local v1, "mcc":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8503
    .local v3, "mnc":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getPlmnNameFromSE13Table(III)V

    .line 8504
    goto/16 :goto_e

    .line 8480
    .end local v0    # "serial":I
    .end local v1    # "mcc":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "mnc":I
    :pswitch_14
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    move v2, v3

    .line 8481
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v2, v3, :cond_3d

    .line 8482
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8484
    goto/16 :goto_e

    .line 8485
    :cond_3d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8487
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->notifyImsServiceReady()V

    .line 8488
    goto/16 :goto_e

    .line 8466
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e

    move v2, v3

    .line 8467
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v2, v3, :cond_3f

    .line 8468
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8470
    goto/16 :goto_e

    .line 8471
    :cond_3f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8474
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->queryVopsStatus(I)V

    .line 8475
    goto/16 :goto_e

    .line 8450
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_40

    move v2, v3

    .line 8451
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v2, v3, :cond_41

    .line 8452
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8454
    goto/16 :goto_e

    .line 8455
    :cond_41
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8459
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8460
    .local v3, "audio":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->toggleRttAudioIndication(III)V

    .line 8461
    goto/16 :goto_e

    .line 8434
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "audio":I
    :pswitch_17
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_42

    move v2, v3

    .line 8435
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_42
    if-eq v2, v3, :cond_43

    .line 8436
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8438
    goto/16 :goto_e

    .line 8439
    :cond_43
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8442
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8443
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8444
    .local v3, "result":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->rttModifyRequestResponse(III)V

    .line 8445
    goto/16 :goto_e

    .line 8417
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "result":I
    :pswitch_18
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_44

    move v2, v3

    .line 8418
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v2, v3, :cond_45

    .line 8419
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8421
    goto/16 :goto_e

    .line 8422
    :cond_45
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8425
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8426
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8427
    .local v3, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8428
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendRttText(IIILjava/lang/String;)V

    .line 8429
    goto/16 :goto_e

    .line 8401
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "lenOfString":I
    .end local v4    # "text":Ljava/lang/String;
    :pswitch_19
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_46

    move v2, v3

    .line 8402
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v2, v3, :cond_47

    .line 8403
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8405
    goto/16 :goto_e

    .line 8406
    :cond_47
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8409
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8410
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8411
    .local v3, "newMode":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendRttModifyRequest(III)V

    .line 8412
    goto/16 :goto_e

    .line 8386
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "newMode":I
    :pswitch_1a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_48

    move v2, v3

    .line 8387
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_48
    if-eq v2, v3, :cond_49

    .line 8388
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8389
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8390
    goto/16 :goto_e

    .line 8391
    :cond_49
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8394
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8395
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setRttMode(II)V

    .line 8396
    goto/16 :goto_e

    .line 8370
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4a

    move v2, v3

    .line 8371
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v2, v3, :cond_4b

    .line 8372
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8374
    goto/16 :goto_e

    .line 8375
    :cond_4b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8378
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8379
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8380
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setVendorSetting(IILjava/lang/String;)V

    .line 8381
    goto/16 :goto_e

    .line 8354
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_1c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4c

    move v2, v3

    .line 8355
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4c
    if-eq v2, v3, :cond_4d

    .line 8356
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8358
    goto/16 :goto_e

    .line 8359
    :cond_4d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8362
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8363
    .local v1, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 8364
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 8365
    goto/16 :goto_e

    .line 8339
    .end local v0    # "serial":I
    .end local v1    # "reqType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_1d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4e

    move v2, v3

    .line 8340
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v2, v3, :cond_4f

    .line 8341
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8343
    goto/16 :goto_e

    .line 8344
    :cond_4f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioResponse;

    move-result-object v0

    .line 8347
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioIndication;

    move-result-object v1

    .line 8348
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioIndication;)V

    .line 8349
    goto/16 :goto_e

    .line 8324
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IRcsRadioIndication;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_50

    move v2, v3

    .line 8325
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_50
    if-eq v2, v3, :cond_51

    .line 8326
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8328
    goto/16 :goto_e

    .line 8329
    :cond_51
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockResponse;

    move-result-object v0

    .line 8332
    .local v0, "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockIndication;

    move-result-object v1

    .line 8333
    .local v1, "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockIndication;)V

    .line 8334
    goto/16 :goto_e

    .line 8308
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockResponse;
    .end local v1    # "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISubsidyLockIndication;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_52

    move v2, v3

    .line 8309
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v2, v3, :cond_53

    .line 8310
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8312
    goto/16 :goto_e

    .line 8313
    :cond_53
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8316
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8317
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8318
    .local v3, "reason":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->hangupWithReason(III)V

    .line 8319
    goto/16 :goto_e

    .line 8293
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "reason":I
    :pswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_54

    move v2, v3

    .line 8294
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v2, v3, :cond_55

    .line 8295
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8297
    goto/16 :goto_e

    .line 8298
    :cond_55
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8301
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8302
    .local v1, "state":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->notifyEPDGScreenState(II)V

    .line 8303
    goto/16 :goto_e

    .line 8278
    .end local v0    # "serial":I
    .end local v1    # "state":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_56

    move v2, v3

    .line 8279
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v2, v3, :cond_57

    .line 8280
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8282
    goto/16 :goto_e

    .line 8283
    :cond_57
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8286
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8287
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 8288
    goto/16 :goto_e

    .line 8262
    .end local v0    # "serial":I
    .end local v1    # "pwd":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_58

    move v2, v3

    .line 8263
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v2, v3, :cond_59

    .line 8264
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8266
    goto/16 :goto_e

    .line 8267
    :cond_59
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8270
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8271
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8272
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 8273
    goto/16 :goto_e

    .line 8247
    .end local v0    # "serial":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_23
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5a

    move v2, v3

    .line 8248
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v2, v3, :cond_5b

    .line 8249
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8251
    goto/16 :goto_e

    .line 8252
    :cond_5b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8255
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8256
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setTxPowerStatus(II)V

    .line 8257
    goto/16 :goto_e

    .line 8233
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5c

    move v2, v3

    .line 8234
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v2, v3, :cond_5d

    .line 8235
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8237
    goto/16 :goto_e

    .line 8238
    :cond_5d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8241
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getLteReleaseVersion(I)V

    .line 8242
    goto/16 :goto_e

    .line 8218
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    move v2, v3

    .line 8219
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v2, v3, :cond_5f

    .line 8220
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8222
    goto/16 :goto_e

    .line 8223
    :cond_5f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8226
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8227
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setLteReleaseVersion(II)V

    .line 8228
    goto/16 :goto_e

    .line 8204
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_60

    move v2, v3

    .line 8205
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v2, v3, :cond_61

    .line 8206
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8208
    goto/16 :goto_e

    .line 8209
    :cond_61
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8212
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->resetAllConnections(I)V

    .line 8213
    goto/16 :goto_e

    .line 8189
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_62

    move v2, v3

    .line 8190
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v2, v3, :cond_63

    .line 8191
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8193
    goto/16 :goto_e

    .line 8194
    :cond_63
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8197
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8198
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->dataConnectionDetach(II)V

    .line 8199
    goto/16 :goto_e

    .line 8174
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_64

    move v2, v3

    .line 8175
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v2, v3, :cond_65

    .line 8176
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8178
    goto/16 :goto_e

    .line 8179
    :cond_65
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8182
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8183
    .restart local v1    # "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->dataConnectionAttach(II)V

    .line 8184
    goto/16 :goto_e

    .line 8159
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_66

    move v2, v3

    .line 8160
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v2, v3, :cond_67

    .line 8161
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8163
    goto/16 :goto_e

    .line 8164
    :cond_67
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8167
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8168
    .local v1, "featureId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getImsCfgResourceCapValue(II)V

    .line 8169
    goto/16 :goto_e

    .line 8144
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_68

    move v2, v3

    .line 8145
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v2, v3, :cond_69

    .line 8146
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8148
    goto/16 :goto_e

    .line 8149
    :cond_69
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8152
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8153
    .local v1, "configId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getImsCfgProvisionValue(II)V

    .line 8154
    goto/16 :goto_e

    .line 8128
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6a

    move v2, v3

    .line 8129
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v2, v3, :cond_6b

    .line 8130
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8132
    goto/16 :goto_e

    .line 8133
    :cond_6b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8136
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8137
    .restart local v1    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8138
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 8139
    goto/16 :goto_e

    .line 8112
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_2c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6c

    move v2, v3

    .line 8113
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v2, v3, :cond_6d

    .line 8114
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8116
    goto/16 :goto_e

    .line 8117
    :cond_6d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8120
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8121
    .local v1, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8122
    .local v3, "network":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getImsCfgFeatureValue(III)V

    .line 8123
    goto/16 :goto_e

    .line 8094
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "network":I
    :pswitch_2d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6e

    move v2, v3

    :cond_6e
    move v6, v2

    .line 8095
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_6f

    .line 8096
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8098
    goto/16 :goto_e

    .line 8099
    :cond_6f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8102
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8103
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8104
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8105
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8106
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 8107
    goto/16 :goto_e

    .line 8079
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_2e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_70

    move v2, v3

    .line 8080
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v2, v3, :cond_71

    .line 8081
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8083
    goto/16 :goto_e

    .line 8084
    :cond_71
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8087
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8088
    .local v1, "enable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsBearerNotification(II)V

    .line 8089
    goto/16 :goto_e

    .line 8065
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_72

    move v2, v3

    .line 8066
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v2, v3, :cond_73

    .line 8067
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8069
    goto/16 :goto_e

    .line 8070
    :cond_73
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8072
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8073
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getApcInfo(I)V

    .line 8074
    goto/16 :goto_e

    .line 8048
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_74

    move v2, v3

    .line 8049
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v2, v3, :cond_75

    .line 8050
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8052
    goto/16 :goto_e

    .line 8053
    :cond_75
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8056
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8057
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8058
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8059
    .local v4, "interval":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setApcMode(IIII)V

    .line 8060
    goto/16 :goto_e

    .line 8031
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_31
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_76

    move v2, v3

    .line 8032
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v2, v3, :cond_77

    .line 8033
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8035
    goto/16 :goto_e

    .line 8036
    :cond_77
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8039
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8040
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8041
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8042
    .local v4, "pktloss":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setWifiPingResult(IIII)V

    .line 8043
    goto/16 :goto_e

    .line 8011
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_32
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_78

    move v2, v3

    :cond_78
    move v8, v2

    .line 8012
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v3, :cond_79

    .line 8013
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8015
    goto/16 :goto_e

    .line 8016
    :cond_79
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8019
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8020
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8021
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 8022
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 8023
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 8024
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8025
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 8026
    goto/16 :goto_e

    .line 7996
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v12    # "srcIp":Ljava/lang/String;
    .end local v16    # "srcPort":I
    .end local v17    # "dstIp":Ljava/lang/String;
    .end local v18    # "dstPort":I
    :pswitch_33
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7a

    move v2, v3

    .line 7997
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v2, v3, :cond_7b

    .line 7998
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8000
    goto/16 :goto_e

    .line 8001
    :cond_7b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8004
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8005
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 8006
    goto/16 :goto_e

    .line 7971
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7c

    move v2, v3

    :cond_7c
    move v12, v2

    .line 7972
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v3, :cond_7d

    .line 7973
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7975
    goto/16 :goto_e

    .line 7976
    :cond_7d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7979
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7980
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 7981
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 7982
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 7983
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 7984
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 7985
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 7986
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 7987
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 7988
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 7989
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 7990
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

    move/from16 v28, v12

    .end local v12    # "_hidl_is_oneway":Z
    .local v28, "_hidl_is_oneway":Z
    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7991
    goto/16 :goto_e

    .line 7957
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
    .end local v28    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7e

    move v2, v3

    .line 7958
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7e
    if-eq v2, v3, :cond_7f

    .line 7959
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7960
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7961
    goto/16 :goto_e

    .line 7962
    :cond_7f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7965
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->querySsacStatus(I)V

    .line 7966
    goto/16 :goto_e

    .line 7940
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_36
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_80

    move v2, v3

    .line 7941
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_80
    if-eq v2, v3, :cond_81

    .line 7942
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7944
    goto/16 :goto_e

    .line 7945
    :cond_81
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7948
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7949
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7950
    .local v3, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7951
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V

    .line 7952
    goto/16 :goto_e

    .line 7917
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ifName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_82

    move v2, v3

    :cond_82
    move v11, v2

    .line 7918
    .local v11, "_hidl_is_oneway":Z
    if-eq v11, v3, :cond_83

    .line 7919
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7921
    goto/16 :goto_e

    .line 7922
    :cond_83
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7925
    .local v12, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7926
    .local v16, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7927
    .local v17, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 7928
    .local v18, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 7929
    .local v19, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 7930
    .local v20, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 7931
    .local v21, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 7932
    .local v22, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 7933
    .local v23, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 7934
    .local v24, "dnsServers":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7935
    goto/16 :goto_e

    .line 7901
    .end local v11    # "_hidl_is_oneway":Z
    .end local v12    # "serial":I
    .end local v16    # "ifName":Ljava/lang/String;
    .end local v17    # "ipv4Addr":Ljava/lang/String;
    .end local v18    # "ipv6Addr":Ljava/lang/String;
    .end local v19    # "ipv4PrefixLen":I
    .end local v20    # "ipv6PrefixLen":I
    .end local v21    # "ipv4Gateway":Ljava/lang/String;
    .end local v22    # "ipv6Gateway":Ljava/lang/String;
    .end local v23    # "dnsCount":I
    .end local v24    # "dnsServers":Ljava/lang/String;
    :pswitch_38
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_84

    move v2, v3

    .line 7902
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v2, v3, :cond_85

    .line 7903
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7905
    goto/16 :goto_e

    .line 7906
    :cond_85
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7909
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7910
    .local v1, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7911
    .local v3, "snr":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setWifiSignalLevel(III)V

    .line 7912
    goto/16 :goto_e

    .line 7881
    .end local v0    # "serial":I
    .end local v1    # "rssi":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "snr":I
    :pswitch_39
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_86

    move v2, v3

    :cond_86
    move v8, v2

    .line 7882
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v3, :cond_87

    .line 7883
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7885
    goto/16 :goto_e

    .line 7886
    :cond_87
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7888
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7889
    .restart local v9    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 7890
    .restart local v10    # "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7891
    .local v11, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7892
    .local v12, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7893
    .local v16, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 7894
    .local v17, "mtuSize":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 7895
    .local v18, "ueMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7896
    goto/16 :goto_e

    .line 7864
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "associated":I
    .end local v12    # "ssid":Ljava/lang/String;
    .end local v16    # "apMac":Ljava/lang/String;
    .end local v17    # "mtuSize":I
    .end local v18    # "ueMac":Ljava/lang/String;
    :pswitch_3a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_88

    move v2, v3

    .line 7865
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v2, v3, :cond_89

    .line 7866
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7868
    goto/16 :goto_e

    .line 7869
    :cond_89
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7872
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7873
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7874
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7875
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 7876
    goto/16 :goto_e

    .line 7849
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_3b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8a

    move v2, v3

    .line 7850
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v2, v3, :cond_8b

    .line 7851
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7853
    goto/16 :goto_e

    .line 7854
    :cond_8b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7857
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7858
    .local v1, "vdp":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setVoiceDomainPreference(II)V

    .line 7859
    goto/16 :goto_e

    .line 7833
    .end local v0    # "serial":I
    .end local v1    # "vdp":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 7834
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_8d

    .line 7835
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7837
    goto/16 :goto_e

    .line 7838
    :cond_8d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7841
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7842
    .local v1, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7843
    .local v3, "interfaceId":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setLteUplinkDataTransfer(III)V

    .line 7844
    goto/16 :goto_e

    .line 7818
    .end local v0    # "serial":I
    .end local v1    # "state":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "interfaceId":I
    :pswitch_3d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8e

    move v2, v3

    .line 7819
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v2, v3, :cond_8f

    .line 7820
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7822
    goto/16 :goto_e

    .line 7823
    :cond_8f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7826
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7827
    .local v1, "enable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setLteAccessStratumReport(II)V

    .line 7828
    goto/16 :goto_e

    .line 7803
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_90

    move v2, v3

    .line 7804
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v2, v3, :cond_91

    .line 7805
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7807
    goto/16 :goto_e

    .line 7808
    :cond_91
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7811
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7812
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setRemoveRestrictEutranMode(II)V

    .line 7813
    goto/16 :goto_e

    .line 7788
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_92

    move v2, v3

    .line 7789
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v2, v3, :cond_93

    .line 7790
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7792
    goto/16 :goto_e

    .line 7793
    :cond_93
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7796
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7797
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 7798
    goto/16 :goto_e

    .line 7773
    .end local v0    # "serial":I
    .end local v1    # "apn":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_40
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_94

    move v2, v3

    .line 7774
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v2, v3, :cond_95

    .line 7775
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7777
    goto/16 :goto_e

    .line 7778
    :cond_95
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7781
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7782
    .local v1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 7783
    goto/16 :goto_e

    .line 7759
    .end local v0    # "serial":I
    .end local v1    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_41
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_96

    move v2, v3

    .line 7760
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_96
    if-eq v2, v3, :cond_97

    .line 7761
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7763
    goto/16 :goto_e

    .line 7764
    :cond_97
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7767
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->restartRILD(I)V

    .line 7768
    goto/16 :goto_e

    .line 7744
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_42
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_98

    move v2, v3

    .line 7745
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_98
    if-eq v2, v3, :cond_99

    .line 7746
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7748
    goto/16 :goto_e

    .line 7749
    :cond_99
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7752
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7753
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 7754
    goto/16 :goto_e

    .line 7729
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_43
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9a

    move v2, v3

    .line 7730
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_9a
    if-eq v2, v3, :cond_9b

    .line 7731
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7733
    goto/16 :goto_e

    .line 7734
    :cond_9b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciResponse;

    move-result-object v0

    .line 7737
    .local v0, "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciIndication;

    move-result-object v1

    .line 7738
    .local v1, "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciIndication;)V

    .line 7739
    goto/16 :goto_e

    .line 7714
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciResponse;
    .end local v1    # "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IAtciIndication;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_44
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9c

    move v2, v3

    .line 7715
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_9c
    if-eq v2, v3, :cond_9d

    .line 7716
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7718
    goto/16 :goto_e

    .line 7719
    :cond_9d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7721
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7722
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7723
    .local v1, "resultCode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 7724
    goto/16 :goto_e

    .line 7699
    .end local v0    # "serial":I
    .end local v1    # "resultCode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_45
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9e

    move v2, v3

    .line 7700
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_9e
    if-eq v2, v3, :cond_9f

    .line 7701
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7703
    goto/16 :goto_e

    .line 7704
    :cond_9f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7707
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7708
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setTrm(II)V

    .line 7709
    goto/16 :goto_e

    .line 7682
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a0

    move v2, v3

    .line 7683
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a0
    if-eq v2, v3, :cond_a1

    .line 7684
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7686
    goto/16 :goto_e

    .line 7687
    :cond_a1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7690
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7691
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7692
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7693
    .local v4, "param2":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setFdMode(IIII)V

    .line 7694
    goto/16 :goto_e

    .line 7665
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_47
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a2

    move v2, v3

    .line 7666
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a2
    if-eq v2, v3, :cond_a3

    .line 7667
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7669
    goto/16 :goto_e

    .line 7670
    :cond_a3
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7673
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7674
    .local v1, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7675
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7676
    .local v4, "nAct":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 7677
    goto/16 :goto_e

    .line 7651
    .end local v0    # "serial":I
    .end local v1    # "index":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_48
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a4

    move v2, v3

    .line 7652
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a4
    if-eq v2, v3, :cond_a5

    .line 7653
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7655
    goto/16 :goto_e

    .line 7656
    :cond_a5
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7659
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getCurrentPOLList(I)V

    .line 7660
    goto/16 :goto_e

    .line 7637
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a6

    move v2, v3

    .line 7638
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a6
    if-eq v2, v3, :cond_a7

    .line 7639
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7640
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7641
    goto/16 :goto_e

    .line 7642
    :cond_a7
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7644
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7645
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getPOLCapability(I)V

    .line 7646
    goto/16 :goto_e

    .line 7622
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a8

    move v2, v3

    .line 7623
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_a8
    if-eq v2, v3, :cond_a9

    .line 7624
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7626
    goto/16 :goto_e

    .line 7627
    :cond_a9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7629
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7630
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7631
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getRxTestResult(II)V

    .line 7632
    goto/16 :goto_e

    .line 7607
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_aa

    move v2, v3

    .line 7608
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_aa
    if-eq v2, v3, :cond_ab

    .line 7609
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7611
    goto/16 :goto_e

    .line 7612
    :cond_ab
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7615
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7616
    .local v1, "antType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setRxTestConfig(II)V

    .line 7617
    goto/16 :goto_e

    .line 7592
    .end local v0    # "serial":I
    .end local v1    # "antType":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ac

    move v2, v3

    .line 7593
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ac
    if-eq v2, v3, :cond_ad

    .line 7594
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7596
    goto/16 :goto_e

    .line 7597
    :cond_ad
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7600
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7601
    .local v1, "sleepDuration":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setBgsrchDeltaSleepTimer(II)V

    .line 7602
    goto/16 :goto_e

    .line 7577
    .end local v0    # "serial":I
    .end local v1    # "sleepDuration":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ae

    move v2, v3

    .line 7578
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ae
    if-eq v2, v3, :cond_af

    .line 7579
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7581
    goto/16 :goto_e

    .line 7582
    :cond_af
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7585
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7586
    .local v1, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setSearchRat(ILjava/util/ArrayList;)V

    .line 7587
    goto/16 :goto_e

    .line 7559
    .end local v0    # "serial":I
    .end local v1    # "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b0

    move v2, v3

    :cond_b0
    move v6, v2

    .line 7560
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_b1

    .line 7561
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7563
    goto/16 :goto_e

    .line 7564
    :cond_b1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7567
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7568
    .local v8, "operation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7569
    .local v9, "plmn_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7570
    .local v10, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v11

    .line 7571
    .local v11, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V

    .line 7572
    goto/16 :goto_e

    .line 7544
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "operation":I
    .end local v9    # "plmn_id":I
    .end local v10    # "rat":I
    .end local v11    # "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_4f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b2

    move v2, v3

    .line 7545
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b2
    if-eq v2, v3, :cond_b3

    .line 7546
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7548
    goto/16 :goto_e

    .line 7549
    :cond_b3
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7552
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7553
    .local v1, "limitpower":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setTxPower(II)V

    .line 7554
    goto/16 :goto_e

    .line 7529
    .end local v0    # "serial":I
    .end local v1    # "limitpower":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_50
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b4

    move v2, v3

    .line 7530
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b4
    if-eq v2, v3, :cond_b5

    .line 7531
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7533
    goto/16 :goto_e

    .line 7534
    :cond_b5
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7537
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7538
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->disableNR(IZ)V

    .line 7539
    goto/16 :goto_e

    .line 7511
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_51
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b6

    move v2, v3

    :cond_b6
    move v6, v2

    .line 7512
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_b7

    .line 7513
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7515
    goto/16 :goto_e

    .line 7516
    :cond_b7
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7519
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 7520
    .local v8, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7521
    .local v9, "T1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7522
    .local v10, "P1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7523
    .local v11, "T2":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->enableSCGfailure(IZIII)V

    .line 7524
    goto/16 :goto_e

    .line 7495
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "enable":Z
    .end local v9    # "T1":I
    .end local v10    # "P1":I
    .end local v11    # "T2":I
    :pswitch_52
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b8

    move v2, v3

    .line 7496
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_b8
    if-eq v2, v3, :cond_b9

    .line 7497
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7499
    goto/16 :goto_e

    .line 7500
    :cond_b9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7503
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7504
    .local v1, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7505
    .local v3, "threshBound":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->cfgB1offset(III)V

    .line 7506
    goto/16 :goto_e

    .line 7479
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "threshBound":I
    :pswitch_53
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ba

    move v2, v3

    .line 7480
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ba
    if-eq v2, v3, :cond_bb

    .line 7481
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7483
    goto/16 :goto_e

    .line 7484
    :cond_bb
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7487
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7488
    .restart local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7489
    .restart local v3    # "threshBound":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->cfgA2offset(III)V

    .line 7490
    goto/16 :goto_e

    .line 7459
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "threshBound":I
    :pswitch_54
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_bc

    move v2, v3

    :cond_bc
    move v8, v2

    .line 7460
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v3, :cond_bd

    .line 7461
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7463
    goto/16 :goto_e

    .line 7464
    :cond_bd
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7467
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7468
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7469
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7470
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7471
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 7472
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7473
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setServiceStateToModem(IIIIIII)V

    .line 7474
    goto/16 :goto_e

    .line 7444
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_55
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_be

    move v2, v3

    .line 7445
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_be
    if-eq v2, v3, :cond_bf

    .line 7446
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7448
    goto/16 :goto_e

    .line 7449
    :cond_bf
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7452
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7453
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 7454
    goto/16 :goto_e

    .line 7430
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_56
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c0

    move v2, v3

    .line 7431
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c0
    if-eq v2, v3, :cond_c1

    .line 7432
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7434
    goto/16 :goto_e

    .line 7435
    :cond_c1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7438
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 7439
    goto/16 :goto_e

    .line 7413
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_57
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c2

    move v2, v3

    .line 7414
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v2, v3, :cond_c3

    .line 7415
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7417
    goto/16 :goto_e

    .line 7418
    :cond_c3
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7420
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7421
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7422
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7423
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7424
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7425
    goto/16 :goto_e

    .line 7399
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_58
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c4

    move v2, v3

    .line 7400
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c4
    if-eq v2, v3, :cond_c5

    .line 7401
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7403
    goto/16 :goto_e

    .line 7404
    :cond_c5
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7407
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->abortFemtocellList(I)V

    .line 7408
    goto/16 :goto_e

    .line 7385
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c6

    move v2, v3

    .line 7386
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c6
    if-eq v2, v3, :cond_c7

    .line 7387
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7389
    goto/16 :goto_e

    .line 7390
    :cond_c7
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7393
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getFemtocellList(I)V

    .line 7394
    goto/16 :goto_e

    .line 7371
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c8

    move v2, v3

    .line 7372
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_c8
    if-eq v2, v3, :cond_c9

    .line 7373
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7375
    goto/16 :goto_e

    .line 7376
    :cond_c9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7379
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->cancelAvailableNetworks(I)V

    .line 7380
    goto/16 :goto_e

    .line 7357
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ca

    move v2, v3

    .line 7358
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ca
    if-eq v2, v3, :cond_cb

    .line 7359
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7361
    goto/16 :goto_e

    .line 7362
    :cond_cb
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7365
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 7366
    goto/16 :goto_e

    .line 7343
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_cc

    move v2, v3

    .line 7344
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_cc
    if-eq v2, v3, :cond_cd

    .line 7345
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7347
    goto/16 :goto_e

    .line 7348
    :cond_cd
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7351
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getAvailableNetworksWithAct(I)V

    .line 7352
    goto/16 :goto_e

    .line 7326
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ce

    move v2, v3

    .line 7327
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ce
    if-eq v2, v3, :cond_cf

    .line 7328
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7330
    goto/16 :goto_e

    .line 7331
    :cond_cf
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7334
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7335
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7336
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7337
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7338
    goto/16 :goto_e

    .line 7312
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_5e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d0

    move v2, v3

    .line 7313
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d0
    if-eq v2, v3, :cond_d1

    .line 7314
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7316
    goto/16 :goto_e

    .line 7317
    :cond_d1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7320
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getSmsRuimMemoryStatus(I)V

    .line 7321
    goto/16 :goto_e

    .line 7296
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d2

    move v2, v3

    .line 7297
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d2
    if-eq v2, v3, :cond_d3

    .line 7298
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7300
    goto/16 :goto_e

    .line 7301
    :cond_d3
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7304
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7305
    .local v1, "applyType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7306
    .local v3, "modemType":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->modifyModemType(III)V

    .line 7307
    goto/16 :goto_e

    .line 7281
    .end local v0    # "serial":I
    .end local v1    # "applyType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "modemType":I
    :pswitch_60
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d4

    move v2, v3

    .line 7282
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d4
    if-eq v2, v3, :cond_d5

    .line 7283
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7285
    goto/16 :goto_e

    .line 7286
    :cond_d5
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7289
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7290
    .local v1, "sessionId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResumeRegistration(II)V

    .line 7291
    goto/16 :goto_e

    .line 7266
    .end local v0    # "serial":I
    .end local v1    # "sessionId":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_61
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d6

    move v2, v3

    .line 7267
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d6
    if-eq v2, v3, :cond_d7

    .line 7268
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7270
    goto/16 :goto_e

    .line 7271
    :cond_d7
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7273
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7274
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7275
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 7276
    goto/16 :goto_e

    .line 7251
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_62
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d8

    move v2, v3

    .line 7252
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_d8
    if-eq v2, v3, :cond_d9

    .line 7253
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7255
    goto/16 :goto_e

    .line 7256
    :cond_d9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7259
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7260
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 7261
    goto/16 :goto_e

    .line 7235
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_63
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_da

    move v2, v3

    .line 7236
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_da
    if-eq v2, v3, :cond_db

    .line 7237
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7239
    goto/16 :goto_e

    .line 7240
    :cond_db
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7243
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7244
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7245
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7246
    goto/16 :goto_e

    .line 7219
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_64
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_dc

    move v2, v3

    .line 7220
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_dc
    if-eq v2, v3, :cond_dd

    .line 7221
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7222
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7223
    goto/16 :goto_e

    .line 7224
    :cond_dd
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7226
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7227
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7228
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7229
    .local v3, "cause":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 7230
    goto/16 :goto_e

    .line 7203
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cause":I
    :pswitch_65
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_de

    move v2, v3

    .line 7204
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_de
    if-eq v2, v3, :cond_df

    .line 7205
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7207
    goto/16 :goto_e

    .line 7208
    :cond_df
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7211
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7212
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7213
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7214
    goto/16 :goto_e

    .line 7189
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_66
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e0

    move v2, v3

    .line 7190
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e0
    if-eq v2, v3, :cond_e1

    .line 7191
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7193
    goto/16 :goto_e

    .line 7194
    :cond_e1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7197
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getGsmBroadcastActivation(I)V

    .line 7198
    goto/16 :goto_e

    .line 7175
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_67
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e2

    move v2, v3

    .line 7176
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e2
    if-eq v2, v3, :cond_e3

    .line 7177
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7179
    goto/16 :goto_e

    .line 7180
    :cond_e3
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7183
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getGsmBroadcastLangs(I)V

    .line 7184
    goto/16 :goto_e

    .line 7160
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_68
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e4

    move v2, v3

    .line 7161
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e4
    if-eq v2, v3, :cond_e5

    .line 7162
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7164
    goto/16 :goto_e

    .line 7165
    :cond_e5
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7168
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7169
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 7170
    goto/16 :goto_e

    .line 7144
    .end local v0    # "serial":I
    .end local v1    # "langs":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_69
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e6

    move v2, v3

    .line 7145
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e6
    if-eq v2, v3, :cond_e7

    .line 7146
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7148
    goto/16 :goto_e

    .line 7149
    :cond_e7
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7152
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7153
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7154
    .local v3, "serialId":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->removeCbMsg(III)V

    .line 7155
    goto/16 :goto_e

    .line 7129
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "serialId":I
    :pswitch_6a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e8

    move v2, v3

    .line 7130
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_e8
    if-eq v2, v3, :cond_e9

    .line 7131
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7133
    goto/16 :goto_e

    .line 7134
    :cond_e9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7137
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7138
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setEtws(II)V

    .line 7139
    goto/16 :goto_e

    .line 7115
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ea

    move v2, v3

    .line 7116
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ea
    if-eq v2, v3, :cond_eb

    .line 7117
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7119
    goto/16 :goto_e

    .line 7120
    :cond_eb
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7123
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getSmsMemStatus(I)V

    .line 7124
    goto/16 :goto_e

    .line 7099
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ec

    move v2, v3

    .line 7100
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ec
    if-eq v2, v3, :cond_ed

    .line 7101
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7103
    goto/16 :goto_e

    .line 7104
    :cond_ed
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7107
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;-><init>()V

    .line 7108
    .local v1, "message":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7109
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;)V

    .line 7110
    goto/16 :goto_e

    .line 7085
    .end local v0    # "serial":I
    .end local v1    # "message":Lvendor/mediatek/hardware/mtkradioex/V1_0/SmsParams;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ee

    move v2, v3

    .line 7086
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_ee
    if-eq v2, v3, :cond_ef

    .line 7087
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7089
    goto/16 :goto_e

    .line 7090
    :cond_ef
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7093
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getSmsParameters(I)V

    .line 7094
    goto/16 :goto_e

    .line 7066
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f0

    move v2, v3

    :cond_f0
    move v7, v2

    .line 7067
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v3, :cond_f1

    .line 7068
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7070
    goto/16 :goto_e

    .line 7071
    :cond_f1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7074
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7075
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7076
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7077
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7078
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 7079
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 7080
    goto/16 :goto_e

    .line 7049
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_6f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f2

    move v2, v3

    .line 7050
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f2
    if-eq v2, v3, :cond_f3

    .line 7051
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7053
    goto/16 :goto_e

    .line 7054
    :cond_f3
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7058
    .local v1, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7059
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7060
    .local v4, "simType":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendVsimNotification(IIII)V

    .line 7061
    goto/16 :goto_e

    .line 7033
    .end local v0    # "serial":I
    .end local v1    # "transactionId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_70
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f4

    move v2, v3

    .line 7034
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f4
    if-eq v2, v3, :cond_f5

    .line 7035
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7037
    goto/16 :goto_e

    .line 7038
    :cond_f5
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7041
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7042
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7043
    .local v3, "type":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 7044
    goto/16 :goto_e

    .line 7013
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "type":I
    :pswitch_71
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f6

    move v2, v3

    :cond_f6
    move v8, v2

    .line 7014
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v3, :cond_f7

    .line 7015
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7017
    goto/16 :goto_e

    .line 7018
    :cond_f7
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7021
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7022
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7023
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7024
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7025
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7026
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 7027
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7028
    goto/16 :goto_e

    .line 6998
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_72
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f8

    move v2, v3

    .line 6999
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v2, v3, :cond_f9

    .line 7000
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7002
    goto/16 :goto_e

    .line 7003
    :cond_f9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7006
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7007
    .local v1, "category":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->queryNetworkLock(II)V

    .line 7008
    goto/16 :goto_e

    .line 6982
    .end local v0    # "serial":I
    .end local v1    # "category":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_73
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_fa

    move v2, v3

    .line 6983
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_fa
    if-eq v2, v3, :cond_fb

    .line 6984
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6986
    goto/16 :goto_e

    .line 6987
    :cond_fb
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6990
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/SimAuthStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SimAuthStructure;-><init>()V

    .line 6991
    .local v1, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V1_0/SimAuthStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6992
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V1_0/SimAuthStructure;)V

    .line 6993
    goto/16 :goto_e

    .line 6968
    .end local v0    # "serial":I
    .end local v1    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V1_0/SimAuthStructure;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_74
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_fc

    move v2, v3

    .line 6969
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_fc
    if-eq v2, v3, :cond_fd

    .line 6970
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6972
    goto/16 :goto_e

    .line 6973
    :cond_fd
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6976
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getCurrentUiccCardProvisioningStatus(I)V

    .line 6977
    goto/16 :goto_e

    .line 6954
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_75
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_fe

    move v2, v3

    .line 6955
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_fe
    if-eq v2, v3, :cond_ff

    .line 6956
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6957
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6958
    goto/16 :goto_e

    .line 6959
    :cond_ff
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6962
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->deactivateUiccCard(I)V

    .line 6963
    goto/16 :goto_e

    .line 6940
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_76
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_100

    move v2, v3

    .line 6941
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_100
    if-eq v2, v3, :cond_101

    .line 6942
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6944
    goto/16 :goto_e

    .line 6945
    :cond_101
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6948
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->activateUiccCard(I)V

    .line 6949
    goto/16 :goto_e

    .line 6925
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_77
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_102

    move v2, v3

    .line 6926
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_102
    if-eq v2, v3, :cond_103

    .line 6927
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6928
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6929
    goto/16 :goto_e

    .line 6930
    :cond_103
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6933
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6934
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setSimPower(II)V

    .line 6935
    goto/16 :goto_e

    .line 6911
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_78
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_104

    move v2, v3

    .line 6912
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_104
    if-eq v2, v3, :cond_105

    .line 6913
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6915
    goto/16 :goto_e

    .line 6916
    :cond_105
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6919
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getIccid(I)V

    .line 6920
    goto/16 :goto_e

    .line 6897
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_79
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_106

    move v2, v3

    .line 6898
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_106
    if-eq v2, v3, :cond_107

    .line 6899
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6901
    goto/16 :goto_e

    .line 6902
    :cond_107
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6905
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getATR(I)V

    .line 6906
    goto/16 :goto_e

    .line 6882
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    move v2, v3

    .line 6883
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_108
    if-eq v2, v3, :cond_109

    .line 6884
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6885
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6886
    goto/16 :goto_e

    .line 6887
    :cond_109
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6890
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6891
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->triggerModeSwitchByEcc(II)V

    .line 6892
    goto/16 :goto_e

    .line 6867
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10a

    move v2, v3

    .line 6868
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_10a
    if-eq v2, v3, :cond_10b

    .line 6869
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6870
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6871
    goto/16 :goto_e

    .line 6872
    :cond_10b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6874
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6875
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6876
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setModemPower(IZ)V

    .line 6877
    goto/16 :goto_e

    .line 6852
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10c

    move v2, v3

    .line 6853
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_10c
    if-eq v2, v3, :cond_10d

    .line 6854
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6855
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6856
    goto/16 :goto_e

    .line 6857
    :cond_10d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6860
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6861
    .local v1, "ready":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setPhonebookReady(II)V

    .line 6862
    goto/16 :goto_e

    .line 6836
    .end local v0    # "serial":I
    .end local v1    # "ready":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10e

    move v2, v3

    .line 6837
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_10e
    if-eq v2, v3, :cond_10f

    .line 6838
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6840
    goto/16 :goto_e

    .line 6841
    :cond_10f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6844
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6845
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6846
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readUPBAasList(III)V

    .line 6847
    goto/16 :goto_e

    .line 6820
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "endIndex":I
    :pswitch_7e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_110

    move v2, v3

    .line 6821
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_110
    if-eq v2, v3, :cond_111

    .line 6822
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6823
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6824
    goto/16 :goto_e

    .line 6825
    :cond_111
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6828
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6829
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6830
    .local v3, "fileIndex":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readUPBAnrEntry(III)V

    .line 6831
    goto/16 :goto_e

    .line 6804
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "fileIndex":I
    :pswitch_7f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_112

    move v2, v3

    .line 6805
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_112
    if-eq v2, v3, :cond_113

    .line 6806
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6808
    goto/16 :goto_e

    .line 6809
    :cond_113
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6812
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6813
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6814
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readUPBSneEntry(III)V

    .line 6815
    goto/16 :goto_e

    .line 6788
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "fileIndex":I
    :pswitch_80
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_114

    move v2, v3

    .line 6789
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_114
    if-eq v2, v3, :cond_115

    .line 6790
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6792
    goto/16 :goto_e

    .line 6793
    :cond_115
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6796
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6797
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6798
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readUPBEmailEntry(III)V

    .line 6799
    goto/16 :goto_e

    .line 6772
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "fileIndex":I
    :pswitch_81
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_116

    move v2, v3

    .line 6773
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_116
    if-eq v2, v3, :cond_117

    .line 6774
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6776
    goto/16 :goto_e

    .line 6777
    :cond_117
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6780
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6781
    .local v1, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6782
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->queryUPBAvailable(III)V

    .line 6783
    goto/16 :goto_e

    .line 6756
    .end local v0    # "serial":I
    .end local v1    # "eftype":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "fileIndex":I
    :pswitch_82
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_118

    move v2, v3

    .line 6757
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_118
    if-eq v2, v3, :cond_119

    .line 6758
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6760
    goto/16 :goto_e

    .line 6761
    :cond_119
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6764
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;-><init>()V

    .line 6765
    .local v1, "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6766
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;)V

    .line 6767
    goto/16 :goto_e

    .line 6740
    .end local v0    # "serial":I
    .end local v1    # "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryExt;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_83
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_11a

    move v2, v3

    .line 6741
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v2, v3, :cond_11b

    .line 6742
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6743
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6744
    goto/16 :goto_e

    .line 6745
    :cond_11b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6748
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6749
    .local v1, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6750
    .local v3, "index2":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readPhoneBookEntryExt(III)V

    .line 6751
    goto/16 :goto_e

    .line 6724
    .end local v0    # "serial":I
    .end local v1    # "index1":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "index2":I
    :pswitch_84
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_11c

    move v2, v3

    .line 6725
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_11c
    if-eq v2, v3, :cond_11d

    .line 6726
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6728
    goto/16 :goto_e

    .line 6729
    :cond_11d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6732
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6733
    .local v1, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6734
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 6735
    goto/16 :goto_e

    .line 6710
    .end local v0    # "serial":I
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_85
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_11e

    move v2, v3

    .line 6711
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_11e
    if-eq v2, v3, :cond_11f

    .line 6712
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6714
    goto/16 :goto_e

    .line 6715
    :cond_11f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6718
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getPhoneBookMemStorage(I)V

    .line 6719
    goto/16 :goto_e

    .line 6696
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_86
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_120

    move v2, v3

    .line 6697
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_120
    if-eq v2, v3, :cond_121

    .line 6698
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6700
    goto/16 :goto_e

    .line 6701
    :cond_121
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6704
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getPhoneBookStringsLength(I)V

    .line 6705
    goto/16 :goto_e

    .line 6680
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_122

    move v2, v3

    .line 6681
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_122
    if-eq v2, v3, :cond_123

    .line 6682
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6684
    goto/16 :goto_e

    .line 6685
    :cond_123
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6688
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6689
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6690
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 6691
    goto/16 :goto_e

    .line 6665
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_88
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_124

    move v2, v3

    .line 6666
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_124
    if-eq v2, v3, :cond_125

    .line 6667
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6669
    goto/16 :goto_e

    .line 6670
    :cond_125
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6673
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6674
    .restart local v1    # "adnIndex":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readUPBGrpEntry(II)V

    .line 6675
    goto/16 :goto_e

    .line 6649
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_89
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_126

    move v2, v3

    .line 6650
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_126
    if-eq v2, v3, :cond_127

    .line 6651
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6653
    goto/16 :goto_e

    .line 6654
    :cond_127
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6657
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6658
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6659
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readUPBGasList(III)V

    .line 6660
    goto/16 :goto_e

    .line 6632
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "endIndex":I
    :pswitch_8a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_128

    move v2, v3

    .line 6633
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_128
    if-eq v2, v3, :cond_129

    .line 6634
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6636
    goto/16 :goto_e

    .line 6637
    :cond_129
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6640
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6641
    .local v1, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6642
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 6643
    .local v4, "entryIndex":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->deleteUPBEntry(IIII)V

    .line 6644
    goto/16 :goto_e

    .line 6617
    .end local v0    # "serial":I
    .end local v1    # "entryType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_8b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    move v2, v3

    .line 6618
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_12a
    if-eq v2, v3, :cond_12b

    .line 6619
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6621
    goto/16 :goto_e

    .line 6622
    :cond_12b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6625
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6626
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 6627
    goto/16 :goto_e

    .line 6603
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12c

    move v2, v3

    .line 6604
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v2, v3, :cond_12d

    .line 6605
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6607
    goto/16 :goto_e

    .line 6608
    :cond_12d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6611
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->queryUPBCapability(I)V

    .line 6612
    goto/16 :goto_e

    .line 6586
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12e

    move v2, v3

    .line 6587
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_12e
    if-eq v2, v3, :cond_12f

    .line 6588
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6590
    goto/16 :goto_e

    .line 6591
    :cond_12f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6594
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6595
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6596
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 6597
    .local v4, "eIndex":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->readPhbEntry(IIII)V

    .line 6598
    goto/16 :goto_e

    .line 6570
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_8e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_130

    move v2, v3

    .line 6571
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_130
    if-eq v2, v3, :cond_131

    .line 6572
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6574
    goto/16 :goto_e

    .line 6575
    :cond_131
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6578
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;-><init>()V

    .line 6579
    .local v1, "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6580
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;)V

    .line 6581
    goto/16 :goto_e

    .line 6555
    .end local v0    # "serial":I
    .end local v1    # "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V1_0/PhbEntryStructure;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_132

    move v2, v3

    .line 6556
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_132
    if-eq v2, v3, :cond_133

    .line 6557
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6559
    goto/16 :goto_e

    .line 6560
    :cond_133
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6563
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6564
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->queryPhbStorageInfo(II)V

    .line 6565
    goto/16 :goto_e

    .line 6541
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_90
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_134

    move v2, v3

    .line 6542
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_134
    if-eq v2, v3, :cond_135

    .line 6543
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6545
    goto/16 :goto_e

    .line 6546
    :cond_135
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6549
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getEccNum(I)V

    .line 6550
    goto/16 :goto_e

    .line 6525
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_91
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_136

    move v2, v3

    .line 6526
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_136
    if-eq v2, v3, :cond_137

    .line 6527
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6529
    goto/16 :goto_e

    .line 6530
    :cond_137
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6533
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6534
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6535
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 6536
    goto/16 :goto_e

    .line 6510
    .end local v0    # "serial":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_92
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_138

    move v2, v3

    .line 6511
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_138
    if-eq v2, v3, :cond_139

    .line 6512
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6513
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6514
    goto/16 :goto_e

    .line 6515
    :cond_139
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6518
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6519
    .local v1, "status":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setVoicePreferStatus(II)V

    .line 6520
    goto/16 :goto_e

    .line 6495
    .end local v0    # "serial":I
    .end local v1    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_93
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_13a

    move v2, v3

    .line 6496
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_13a
    if-eq v2, v3, :cond_13b

    .line 6497
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6499
    goto/16 :goto_e

    .line 6500
    :cond_13b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6503
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6504
    .local v1, "phoneType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->eccPreferredRat(II)V

    .line 6505
    goto/16 :goto_e

    .line 6477
    .end local v0    # "serial":I
    .end local v1    # "phoneType":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_94
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_13c

    move v2, v3

    :cond_13c
    move v6, v2

    .line 6478
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_13d

    .line 6479
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6481
    goto/16 :goto_e

    .line 6482
    :cond_13d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6485
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6486
    .local v8, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6487
    .local v9, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6488
    .local v10, "airplaneMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6489
    .local v11, "imsReg":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setEccMode(ILjava/lang/String;III)V

    .line 6490
    goto/16 :goto_e

    .line 6459
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "enable":I
    .end local v10    # "airplaneMode":I
    .end local v11    # "imsReg":I
    :pswitch_95
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_13e

    move v2, v3

    :cond_13e
    move v6, v2

    .line 6460
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_13f

    .line 6461
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6463
    goto/16 :goto_e

    .line 6464
    :cond_13f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6467
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6468
    .local v8, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6469
    .local v9, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6470
    .local v10, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6471
    .local v11, "cause":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setCallIndication(IIIII)V

    .line 6472
    goto/16 :goto_e

    .line 6445
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "mode":I
    .end local v9    # "callId":I
    .end local v10    # "seqNumber":I
    .end local v11    # "cause":I
    :pswitch_96
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_140

    move v2, v3

    .line 6446
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_140
    if-eq v2, v3, :cond_141

    .line 6447
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6449
    goto/16 :goto_e

    .line 6450
    :cond_141
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6453
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->hangupAll(I)V

    .line 6454
    goto/16 :goto_e

    .line 6430
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_97
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_142

    move v2, v3

    .line 6431
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_142
    if-eq v2, v3, :cond_143

    .line 6432
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6434
    goto/16 :goto_e

    .line 6435
    :cond_143
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6438
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6439
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 6440
    goto/16 :goto_e

    .line 6416
    .end local v0    # "serial":I
    .end local v1    # "userAgent":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_98
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_144

    move v2, v3

    .line 6417
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_144
    if-eq v2, v3, :cond_145

    .line 6418
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6420
    goto/16 :goto_e

    .line 6421
    :cond_145
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6424
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->resetSuppServ(I)V

    .line 6425
    goto/16 :goto_e

    .line 6402
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_99
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_146

    move v2, v3

    .line 6403
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_146
    if-eq v2, v3, :cond_147

    .line 6404
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6406
    goto/16 :goto_e

    .line 6407
    :cond_147
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6410
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getXcapStatus(I)V

    .line 6411
    goto/16 :goto_e

    .line 6388
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_148

    move v2, v3

    .line 6389
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_148
    if-eq v2, v3, :cond_149

    .line 6390
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6392
    goto/16 :goto_e

    .line 6393
    :cond_149
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6396
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->cancelUssi(I)V

    .line 6397
    goto/16 :goto_e

    .line 6373
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14a

    move v2, v3

    .line 6374
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_14a
    if-eq v2, v3, :cond_14b

    .line 6375
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6377
    goto/16 :goto_e

    .line 6378
    :cond_14b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6381
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6382
    .local v1, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendUssi(ILjava/lang/String;)V

    .line 6383
    goto/16 :goto_e

    .line 6355
    .end local v0    # "serial":I
    .end local v1    # "ussiString":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14c

    move v2, v3

    :cond_14c
    move v6, v2

    .line 6356
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_14d

    .line 6357
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6358
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6359
    goto/16 :goto_e

    .line 6360
    :cond_14d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6362
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6363
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6364
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6365
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6366
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6367
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 6368
    goto/16 :goto_e

    .line 6339
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_9d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14e

    move v2, v3

    .line 6340
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_14e
    if-eq v2, v3, :cond_14f

    .line 6341
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6343
    goto/16 :goto_e

    .line 6344
    :cond_14f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6347
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;-><init>()V

    .line 6348
    .local v1, "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6349
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;)V

    .line 6350
    goto/16 :goto_e

    .line 6323
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    move v2, v3

    .line 6324
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_150
    if-eq v2, v3, :cond_151

    .line 6325
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6327
    goto/16 :goto_e

    .line 6328
    :cond_151
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6331
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;-><init>()V

    .line 6332
    .restart local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6333
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;)V

    .line 6334
    goto/16 :goto_e

    .line 6308
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V1_0/CallForwardInfoEx;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_152

    move v2, v3

    .line 6309
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_152
    if-eq v2, v3, :cond_153

    .line 6310
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6312
    goto/16 :goto_e

    .line 6313
    :cond_153
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6316
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6317
    .local v1, "colrEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setColr(II)V

    .line 6318
    goto/16 :goto_e

    .line 6293
    .end local v0    # "serial":I
    .end local v1    # "colrEnable":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_154

    move v2, v3

    .line 6294
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_154
    if-eq v2, v3, :cond_155

    .line 6295
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6297
    goto/16 :goto_e

    .line 6298
    :cond_155
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6301
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6302
    .local v1, "colpEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setColp(II)V

    .line 6303
    goto/16 :goto_e

    .line 6278
    .end local v0    # "serial":I
    .end local v1    # "colpEnable":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_156

    move v2, v3

    .line 6279
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_156
    if-eq v2, v3, :cond_157

    .line 6280
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6282
    goto/16 :goto_e

    .line 6283
    :cond_157
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6286
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6287
    .local v1, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendCnap(ILjava/lang/String;)V

    .line 6288
    goto/16 :goto_e

    .line 6264
    .end local v0    # "serial":I
    .end local v1    # "cnapssMessage":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_158

    move v2, v3

    .line 6265
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_158
    if-eq v2, v3, :cond_159

    .line 6266
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6268
    goto/16 :goto_e

    .line 6269
    :cond_159
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6272
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getColr(I)V

    .line 6273
    goto/16 :goto_e

    .line 6250
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15a

    move v2, v3

    .line 6251
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_15a
    if-eq v2, v3, :cond_15b

    .line 6252
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6254
    goto/16 :goto_e

    .line 6255
    :cond_15b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6258
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getColp(I)V

    .line 6259
    goto/16 :goto_e

    .line 6235
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15c

    move v2, v3

    .line 6236
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_15c
    if-eq v2, v3, :cond_15d

    .line 6237
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6239
    goto/16 :goto_e

    .line 6240
    :cond_15d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6243
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6244
    .local v1, "clipEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setClip(II)V

    .line 6245
    goto/16 :goto_e

    .line 6217
    .end local v0    # "serial":I
    .end local v1    # "clipEnable":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15e

    move v2, v3

    :cond_15e
    move v6, v2

    .line 6218
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_15f

    .line 6219
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6221
    goto/16 :goto_e

    .line 6222
    :cond_15f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6225
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6226
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6227
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 6228
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6229
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6230
    goto/16 :goto_e

    .line 6202
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_a6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_160

    move v2, v3

    .line 6203
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_160
    if-eq v2, v3, :cond_161

    .line 6204
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6205
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6206
    goto/16 :goto_e

    .line 6207
    :cond_161
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6210
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6211
    .local v1, "phoneId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getRoamingEnable(II)V

    .line 6212
    goto/16 :goto_e

    .line 6187
    .end local v0    # "serial":I
    .end local v1    # "phoneId":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_162

    move v2, v3

    .line 6188
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_162
    if-eq v2, v3, :cond_163

    .line 6189
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6191
    goto/16 :goto_e

    .line 6192
    :cond_163
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6195
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6196
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 6197
    goto/16 :goto_e

    .line 6172
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_164

    move v2, v3

    .line 6173
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_164
    if-eq v2, v3, :cond_165

    .line 6174
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6176
    goto/16 :goto_e

    .line 6177
    :cond_165
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6179
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6180
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6181
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 6182
    goto/16 :goto_e

    .line 6158
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_166

    move v2, v3

    .line 6159
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_166
    if-eq v2, v3, :cond_167

    .line 6160
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6162
    goto/16 :goto_e

    .line 6163
    :cond_167
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6166
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsRegistrationReport(I)V

    .line 6167
    goto/16 :goto_e

    .line 6142
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_aa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_168

    move v2, v3

    .line 6143
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_168
    if-eq v2, v3, :cond_169

    .line 6144
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6145
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6146
    goto/16 :goto_e

    .line 6147
    :cond_169
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6150
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6151
    .local v1, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6152
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 6153
    goto/16 :goto_e

    .line 6125
    .end local v0    # "serial":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "isVideoCall":Z
    :pswitch_ab
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16a

    move v2, v3

    .line 6126
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16a
    if-eq v2, v3, :cond_16b

    .line 6127
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6129
    goto/16 :goto_e

    .line 6130
    :cond_16b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6133
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6134
    .local v1, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6135
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 6136
    .local v4, "timer":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsRtpReport(IIII)V

    .line 6137
    goto/16 :goto_e

    .line 6108
    .end local v0    # "serial":I
    .end local v1    # "pdnId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_ac
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16c

    move v2, v3

    .line 6109
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16c
    if-eq v2, v3, :cond_16d

    .line 6110
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6112
    goto/16 :goto_e

    .line 6113
    :cond_16d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6116
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6117
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6118
    .local v3, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 6119
    .local v4, "status":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->imsBearerStateConfirm(IIII)V

    .line 6120
    goto/16 :goto_e

    .line 6093
    .end local v0    # "serial":I
    .end local v1    # "aid":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "action":I
    .end local v4    # "status":I
    :pswitch_ad
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16e

    move v2, v3

    .line 6094
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16e
    if-eq v2, v3, :cond_16f

    .line 6095
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6097
    goto/16 :goto_e

    .line 6098
    :cond_16f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6101
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6102
    .local v1, "callId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->forceReleaseCall(II)V

    .line 6103
    goto/16 :goto_e

    .line 6077
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_ae
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_170

    move v2, v3

    .line 6078
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_170
    if-eq v2, v3, :cond_171

    .line 6079
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6081
    goto/16 :goto_e

    .line 6082
    :cond_171
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6085
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6086
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6087
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6088
    goto/16 :goto_e

    .line 6062
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_af
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    move v2, v3

    .line 6063
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_172
    if-eq v2, v3, :cond_173

    .line 6064
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6066
    goto/16 :goto_e

    .line 6067
    :cond_173
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6070
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6071
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 6072
    goto/16 :goto_e

    .line 6047
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_174

    move v2, v3

    .line 6048
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_174
    if-eq v2, v3, :cond_175

    .line 6049
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6051
    goto/16 :goto_e

    .line 6052
    :cond_175
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6055
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6056
    .restart local v1    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 6057
    goto/16 :goto_e

    .line 6030
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_176

    move v2, v3

    .line 6031
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_176
    if-eq v2, v3, :cond_177

    .line 6032
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6034
    goto/16 :goto_e

    .line 6035
    :cond_177
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6038
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6039
    .local v1, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6040
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 6041
    .local v4, "type":I
    invoke-virtual {v13, v0, v1, v3, v4}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 6042
    goto/16 :goto_e

    .line 6014
    .end local v0    # "serial":I
    .end local v1    # "keys":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_b2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_178

    move v2, v3

    .line 6015
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_178
    if-eq v2, v3, :cond_179

    .line 6016
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6018
    goto/16 :goto_e

    .line 6019
    :cond_179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6021
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6022
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;-><init>()V

    .line 6023
    .local v1, "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6024
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;)V

    .line 6025
    goto/16 :goto_e

    .line 5999
    .end local v0    # "serial":I
    .end local v1    # "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V1_0/ConferenceDial;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17a

    move v2, v3

    .line 6000
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_17a
    if-eq v2, v3, :cond_17b

    .line 6001
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6003
    goto/16 :goto_e

    .line 6004
    :cond_17b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6007
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6008
    .local v1, "wfcPreference":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setWfcProfile(II)V

    .line 6009
    goto/16 :goto_e

    .line 5981
    .end local v0    # "serial":I
    .end local v1    # "wfcPreference":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17c

    move v2, v3

    :cond_17c
    move v6, v2

    .line 5982
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v3, :cond_17d

    .line 5983
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5985
    goto/16 :goto_e

    .line 5986
    :cond_17d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5988
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5989
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5990
    .local v8, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5991
    .local v9, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 5992
    .local v10, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 5993
    .local v11, "callId":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 5994
    goto/16 :goto_e

    .line 5965
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "controlType":I
    .end local v9    # "confCallId":I
    .end local v10    # "address":Ljava/lang/String;
    .end local v11    # "callId":I
    :pswitch_b5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17e

    move v2, v3

    .line 5966
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v2, v3, :cond_17f

    .line 5967
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5968
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5969
    goto/16 :goto_e

    .line 5970
    :cond_17f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5973
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5974
    .local v1, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5975
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 5976
    goto/16 :goto_e

    .line 5950
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_b6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_180

    move v2, v3

    .line 5951
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_180
    if-eq v2, v3, :cond_181

    .line 5952
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5954
    goto/16 :goto_e

    .line 5955
    :cond_181
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5958
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5959
    .restart local v1    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 5960
    goto/16 :goto_e

    .line 5930
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_182

    move v2, v3

    :cond_182
    move v8, v2

    .line 5931
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v3, :cond_183

    .line 5932
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5934
    goto/16 :goto_e

    .line 5935
    :cond_183
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5938
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 5939
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 5940
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 5941
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5942
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5943
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 5944
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImscfg(IZZZZZZ)V

    .line 5945
    goto/16 :goto_e

    .line 5915
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_b8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_184

    move v2, v3

    .line 5916
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_184
    if-eq v2, v3, :cond_185

    .line 5917
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5918
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5919
    goto/16 :goto_e

    .line 5920
    :cond_185
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5923
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5924
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsVideoEnable(IZ)V

    .line 5925
    goto/16 :goto_e

    .line 5900
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_186

    move v2, v3

    .line 5901
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_186
    if-eq v2, v3, :cond_187

    .line 5902
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5904
    goto/16 :goto_e

    .line 5905
    :cond_187
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5908
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5909
    .restart local v1    # "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setImsEnable(IZ)V

    .line 5910
    goto/16 :goto_e

    .line 5885
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_ba
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_188

    move v2, v3

    .line 5886
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_188
    if-eq v2, v3, :cond_189

    .line 5887
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5889
    goto/16 :goto_e

    .line 5890
    :cond_189
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5893
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5894
    .local v1, "cause":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->imsDeregNotification(II)V

    .line 5895
    goto/16 :goto_e

    .line 5869
    .end local v0    # "serial":I
    .end local v1    # "cause":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_bb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18a

    move v2, v3

    .line 5870
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18a
    if-eq v2, v3, :cond_18b

    .line 5871
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5873
    goto/16 :goto_e

    .line 5874
    :cond_18b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5877
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5878
    .local v1, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5879
    .local v3, "callId":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->controlCall(III)V

    .line 5880
    goto/16 :goto_e

    .line 5853
    .end local v0    # "serial":I
    .end local v1    # "controlType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "callId":I
    :pswitch_bc
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18c

    move v2, v3

    .line 5854
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18c
    if-eq v2, v3, :cond_18d

    .line 5855
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5857
    goto/16 :goto_e

    .line 5858
    :cond_18d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5861
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5862
    .local v1, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5863
    .local v3, "type":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 5864
    goto/16 :goto_e

    .line 5837
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "type":I
    :pswitch_bd
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18e

    move v2, v3

    .line 5838
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18e
    if-eq v2, v3, :cond_18f

    .line 5839
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5841
    goto/16 :goto_e

    .line 5842
    :cond_18f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5845
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5846
    .local v1, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5847
    .local v3, "callId":I
    invoke-virtual {v13, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->videoCallAccept(III)V

    .line 5848
    goto/16 :goto_e

    .line 5821
    .end local v0    # "serial":I
    .end local v1    # "videoMode":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "callId":I
    :pswitch_be
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_190

    goto :goto_7

    :cond_190
    move v3, v2

    .line 5822
    .local v3, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v3, :cond_191

    .line 5823
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5824
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5825
    goto/16 :goto_e

    .line 5826
    :cond_191
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ICapRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/ICapRadioResponse;

    move-result-object v0

    .line 5829
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/ICapRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V1_0/ICapRadioResponse;)V

    .line 5830
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5832
    goto/16 :goto_e

    .line 5805
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/ICapRadioResponse;
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_bf
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_192

    goto :goto_8

    :cond_192
    move v3, v2

    .line 5806
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v3, :cond_193

    .line 5807
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5808
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5809
    goto/16 :goto_e

    .line 5810
    :cond_193
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IAssistRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IAssistRadioResponse;

    move-result-object v0

    .line 5813
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IAssistRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V1_0/IAssistRadioResponse;)V

    .line 5814
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5816
    goto/16 :goto_e

    .line 5788
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IAssistRadioResponse;
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_c0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_194

    goto :goto_9

    :cond_194
    move v3, v2

    .line 5789
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v3, :cond_195

    .line 5790
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5792
    goto/16 :goto_e

    .line 5793
    :cond_195
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioResponse;

    move-result-object v0

    .line 5796
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioIndication;

    move-result-object v1

    .line 5797
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioIndication;)V

    .line 5798
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5800
    goto/16 :goto_e

    .line 5771
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IEmRadioIndication;
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_c1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_196

    goto :goto_a

    :cond_196
    move v3, v2

    .line 5772
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v3, :cond_197

    .line 5773
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5775
    goto/16 :goto_e

    .line 5776
    :cond_197
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioResponse;

    move-result-object v0

    .line 5779
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioIndication;

    move-result-object v1

    .line 5780
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioIndication;)V

    .line 5781
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5783
    goto/16 :goto_e

    .line 5754
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/ISERadioIndication;
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_c2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_198

    goto :goto_b

    :cond_198
    move v3, v2

    .line 5755
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v3, :cond_199

    .line 5756
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5758
    goto/16 :goto_e

    .line 5759
    :cond_199
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioResponse;

    move-result-object v0

    .line 5762
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioIndication;

    move-result-object v1

    .line 5763
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioIndication;)V

    .line 5764
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5765
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5766
    goto/16 :goto_e

    .line 5737
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMwiRadioIndication;
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_c3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_19a

    goto :goto_c

    :cond_19a
    move v3, v2

    .line 5738
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v3, :cond_19b

    .line 5739
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5741
    goto :goto_e

    .line 5742
    :cond_19b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 5745
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;

    move-result-object v1

    .line 5746
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;)V

    .line 5747
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5749
    goto :goto_e

    .line 5720
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IImsRadioIndication;
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_c4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_19c

    goto :goto_d

    :cond_19c
    move v3, v2

    .line 5721
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v3, :cond_19d

    .line 5722
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5724
    goto :goto_e

    .line 5725
    :cond_19d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse;

    move-result-object v0

    .line 5728
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication;

    move-result-object v1

    .line 5729
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication;)V

    .line 5730
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5732
    goto :goto_e

    .line 5707
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication;
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_c5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_19e

    move v2, v3

    .line 5708
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_19e
    if-eq v2, v3, :cond_19f

    .line 5709
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5711
    goto :goto_e

    .line 5712
    :cond_19f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5714
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->responseAcknowledgementMtk()V

    .line 5715
    nop

    .line 8967
    .end local v2    # "_hidl_is_oneway":Z
    :cond_1a0
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 5658
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5686
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5687
    return-object p0

    .line 5689
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

    .line 5693
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->registerService(Ljava/lang/String;)V

    .line 5694
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5648
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5680
    const/4 v0, 0x1

    return v0
.end method
