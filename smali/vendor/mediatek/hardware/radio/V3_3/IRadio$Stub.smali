.class public abstract Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_3/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_3/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5798
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5801
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

    .line 5818
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5859
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5860
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5861
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5862
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5863
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

    .line 5830
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
        0x55t
        -0x62t
        0xat
        -0x1at
        -0x2dt
        -0x1et
        -0xet
        -0x7bt
        -0x7ft
        0xct
        -0x2at
        -0xct
        -0x4ct
        0xct
        0x1ft
        -0x64t
        -0x1at
        -0x72t
        -0x36t
        -0x1at
        -0x19t
        0x60t
        -0xet
        -0xft
        -0x34t
        0x24t
        -0x32t
        -0x56t
        0x60t
        -0xat
        -0x77t
        -0x58t
    .end array-data

    :array_1
    .array-data 1
        -0x34t
        -0x9t
        -0x4ct
        -0x37t
        0x58t
        -0x75t
        0x5t
        0x5ft
        0x4at
        0x2t
        -0x56t
        -0x52t
        -0x76t
        0x1t
        0x30t
        -0x60t
        0x7bt
        -0xct
        0x52t
        -0x3bt
        -0x48t
        -0xat
        -0x29t
        -0x63t
        0x3bt
        0x2bt
        0x76t
        0x5et
        -0x15t
        -0x5bt
        0x15t
        -0x49t
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

    .line 5806
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.0::IRadio"

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

    .line 5824
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5847
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5869
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5871
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

    .line 5899
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "android.hardware.radio@1.2::IRadio"

    const-string v1, "android.hardware.radio@1.1::IRadio"

    const-string v2, "android.hardware.radio@1.0::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_c

    .line 10935
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 10936
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_28e

    .line 10937
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10939
    goto/16 :goto_c

    .line 10922
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 10923
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 10924
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10926
    goto/16 :goto_c

    .line 10927
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10929
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->notifySyspropsChanged()V

    .line 10930
    goto/16 :goto_c

    .line 10906
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 10907
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 10908
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10910
    goto/16 :goto_c

    .line 10911
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10913
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 10914
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10915
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 10916
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10917
    goto/16 :goto_c

    .line 10891
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

    .line 10892
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 10893
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10895
    goto/16 :goto_c

    .line 10896
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10898
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->ping()V

    .line 10899
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10901
    goto/16 :goto_c

    .line 10881
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 10882
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_28e

    .line 10883
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10885
    goto/16 :goto_c

    .line 10868
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 10869
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 10870
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10872
    goto/16 :goto_c

    .line 10873
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10875
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setHALInstrumentation()V

    .line 10876
    goto/16 :goto_c

    .line 10829
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 10830
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 10831
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10833
    goto/16 :goto_c

    .line 10834
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10836
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10837
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10839
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 10841
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 10842
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10843
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10844
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 10845
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 10847
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 10848
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 10850
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 10854
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10855
    nop

    .line 10845
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10851
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 10858
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10860
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10862
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10863
    goto/16 :goto_c

    .line 10813
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

    .line 10814
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 10815
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10817
    goto/16 :goto_c

    .line 10818
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10820
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10821
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10822
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10823
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10824
    goto/16 :goto_c

    .line 10796
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

    .line 10797
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 10798
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10800
    goto/16 :goto_c

    .line 10801
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 10804
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10805
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 10806
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10808
    goto/16 :goto_c

    .line 10780
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

    .line 10781
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 10782
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10784
    goto/16 :goto_c

    .line 10785
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10787
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10788
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10789
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10791
    goto/16 :goto_c

    .line 10765
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v0, v5

    .line 10766
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15

    .line 10767
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10769
    goto/16 :goto_c

    .line 10770
    :cond_15
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10773
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10774
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10775
    goto/16 :goto_c

    .line 10750
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 10751
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 10752
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10754
    goto/16 :goto_c

    .line 10755
    :cond_17
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10758
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10759
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10760
    goto/16 :goto_c

    .line 10735
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 10736
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 10737
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10739
    goto/16 :goto_c

    .line 10740
    :cond_19
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10743
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10744
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10745
    goto/16 :goto_c

    .line 10719
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 10720
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 10721
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10723
    goto/16 :goto_c

    .line 10724
    :cond_1b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10727
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10728
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10729
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10730
    goto/16 :goto_c

    .line 10703
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 10704
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 10705
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10707
    goto/16 :goto_c

    .line 10708
    :cond_1d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10711
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10712
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10713
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10714
    goto/16 :goto_c

    .line 10688
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 10689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 10690
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10692
    goto/16 :goto_c

    .line 10693
    :cond_1f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10696
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10697
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10698
    goto/16 :goto_c

    .line 10673
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 10674
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 10675
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10677
    goto/16 :goto_c

    .line 10678
    :cond_21
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10681
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10682
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10683
    goto/16 :goto_c

    .line 10658
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 10659
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 10660
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10662
    goto/16 :goto_c

    .line 10663
    :cond_23
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10666
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10667
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSilentReboot(II)V

    .line 10668
    goto/16 :goto_c

    .line 10643
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 10644
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 10645
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10647
    goto/16 :goto_c

    .line 10648
    :cond_25
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10651
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10652
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportSimMode(II)V

    .line 10653
    goto/16 :goto_c

    .line 10628
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 10629
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 10630
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10632
    goto/16 :goto_c

    .line 10633
    :cond_27
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10636
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10637
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10638
    goto/16 :goto_c

    .line 10614
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 10615
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 10616
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10618
    goto/16 :goto_c

    .line 10619
    :cond_29
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10622
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10623
    goto/16 :goto_c

    .line 10599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 10600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 10601
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10603
    goto/16 :goto_c

    .line 10604
    :cond_2b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10607
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10608
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10609
    goto/16 :goto_c

    .line 10585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 10586
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 10587
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10589
    goto/16 :goto_c

    .line 10590
    :cond_2d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10593
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetAllConnections(I)V

    .line 10594
    goto/16 :goto_c

    .line 10570
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 10571
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 10572
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10574
    goto/16 :goto_c

    .line 10575
    :cond_2f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10578
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10579
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10580
    goto/16 :goto_c

    .line 10555
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 10556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 10557
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10559
    goto/16 :goto_c

    .line 10560
    :cond_31
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10563
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10564
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10565
    goto/16 :goto_c

    .line 10540
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 10541
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 10542
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10544
    goto/16 :goto_c

    .line 10545
    :cond_33
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10548
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10549
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10550
    goto/16 :goto_c

    .line 10524
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 10525
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 10526
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10527
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10528
    goto/16 :goto_c

    .line 10529
    :cond_35
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10532
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10533
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10534
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10535
    goto/16 :goto_c

    .line 10509
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 10510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 10511
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10513
    goto/16 :goto_c

    .line 10514
    :cond_37
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10517
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10518
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10519
    goto/16 :goto_c

    .line 10493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 10494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 10495
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10497
    goto/16 :goto_c

    .line 10498
    :cond_39
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10501
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10502
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10503
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10504
    goto/16 :goto_c

    .line 10477
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 10478
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 10479
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10481
    goto/16 :goto_c

    .line 10482
    :cond_3b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10485
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10486
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10487
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10488
    goto/16 :goto_c

    .line 10459
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v7, v5

    .line 10460
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_3d

    .line 10461
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10463
    goto/16 :goto_c

    .line 10464
    :cond_3d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10467
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10468
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10469
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10470
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10471
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10472
    goto/16 :goto_c

    .line 10444
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 10445
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 10446
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10448
    goto/16 :goto_c

    .line 10449
    :cond_3f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10452
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10453
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10454
    goto/16 :goto_c

    .line 10430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 10431
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 10432
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10434
    goto/16 :goto_c

    .line 10435
    :cond_41
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10438
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getApcInfo(I)V

    .line 10439
    goto/16 :goto_c

    .line 10413
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 10414
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 10415
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10417
    goto/16 :goto_c

    .line 10418
    :cond_43
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10420
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10421
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10422
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10423
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10424
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setApcMode(IIII)V

    .line 10425
    goto/16 :goto_c

    .line 10396
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 10397
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 10398
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10400
    goto/16 :goto_c

    .line 10401
    :cond_45
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10404
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10405
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10406
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10407
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10408
    goto/16 :goto_c

    .line 10376
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v8, v5

    .line 10377
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_47

    .line 10378
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10380
    goto/16 :goto_c

    .line 10381
    :cond_47
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10384
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10385
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10386
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10387
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10388
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10389
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10390
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10391
    goto/16 :goto_c

    .line 10361
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v12    # "srcIp":Ljava/lang/String;
    .end local v16    # "srcPort":I
    .end local v17    # "dstIp":Ljava/lang/String;
    .end local v18    # "dstPort":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v0, v5

    .line 10362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_49

    .line 10363
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10365
    goto/16 :goto_c

    .line 10366
    :cond_49
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10369
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10370
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10371
    goto/16 :goto_c

    .line 10336
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v12, v5

    .line 10337
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_4b

    .line 10338
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10339
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10340
    goto/16 :goto_c

    .line 10341
    :cond_4b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10344
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10345
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10346
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10347
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10348
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10349
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10350
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10351
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10352
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10353
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10354
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10355
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10356
    goto/16 :goto_c

    .line 10319
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
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 10320
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 10321
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10323
    goto/16 :goto_c

    .line 10324
    :cond_4d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10326
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10327
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10328
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10329
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10330
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10331
    goto/16 :goto_c

    .line 10303
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v0, v5

    .line 10304
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4f

    .line 10305
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10306
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10307
    goto/16 :goto_c

    .line 10308
    :cond_4f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10311
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10312
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10313
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10314
    goto/16 :goto_c

    .line 10285
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v7, v5

    .line 10286
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_51

    .line 10287
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10288
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10289
    goto/16 :goto_c

    .line 10290
    :cond_51
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10293
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10294
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10295
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10296
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10297
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10298
    goto/16 :goto_c

    .line 10268
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v0, v5

    .line 10269
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_53

    .line 10270
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10271
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10272
    goto/16 :goto_c

    .line 10273
    :cond_53
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10276
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10277
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10278
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10279
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10280
    goto/16 :goto_c

    .line 10253
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 10254
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 10255
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10257
    goto/16 :goto_c

    .line 10258
    :cond_55
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10261
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10262
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10263
    goto/16 :goto_c

    .line 10238
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 10239
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 10240
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10241
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10242
    goto/16 :goto_c

    .line 10243
    :cond_57
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10246
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10247
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setE911State(II)V

    .line 10248
    goto/16 :goto_c

    .line 10222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v0, v5

    .line 10223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_59

    .line 10224
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10226
    goto/16 :goto_c

    .line 10227
    :cond_59
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10230
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10231
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10232
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10233
    goto/16 :goto_c

    .line 10207
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 10208
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 10209
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10210
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10211
    goto/16 :goto_c

    .line 10212
    :cond_5b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10215
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10216
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10217
    goto/16 :goto_c

    .line 10192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 10193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 10194
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10196
    goto/16 :goto_c

    .line 10197
    :cond_5d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10200
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10201
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10202
    goto/16 :goto_c

    .line 10177
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 10178
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 10179
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10181
    goto/16 :goto_c

    .line 10182
    :cond_5f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10185
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10186
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10187
    goto/16 :goto_c

    .line 10162
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 10163
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 10164
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10166
    goto/16 :goto_c

    .line 10167
    :cond_61
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10170
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10171
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10172
    goto/16 :goto_c

    .line 10148
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 10149
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 10150
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10151
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10152
    goto/16 :goto_c

    .line 10153
    :cond_63
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10156
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->restartRILD(I)V

    .line 10157
    goto/16 :goto_c

    .line 10134
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 10135
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 10136
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10138
    goto/16 :goto_c

    .line 10139
    :cond_65
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10142
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetRadio(I)V

    .line 10143
    goto/16 :goto_c

    .line 10119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 10120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 10121
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10123
    goto/16 :goto_c

    .line 10124
    :cond_67
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10127
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10128
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10129
    goto/16 :goto_c

    .line 10104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 10105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 10106
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10108
    goto/16 :goto_c

    .line 10109
    :cond_69
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 10112
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10113
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10114
    goto/16 :goto_c

    .line 10089
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 10090
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 10091
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10093
    goto/16 :goto_c

    .line 10094
    :cond_6b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10097
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10098
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10099
    goto/16 :goto_c

    .line 10074
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 10075
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 10076
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10078
    goto/16 :goto_c

    .line 10079
    :cond_6d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10082
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10083
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10084
    goto/16 :goto_c

    .line 10059
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 10060
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 10061
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10063
    goto/16 :goto_c

    .line 10064
    :cond_6f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10067
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10068
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10069
    goto/16 :goto_c

    .line 10044
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 10045
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 10046
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10048
    goto/16 :goto_c

    .line 10049
    :cond_71
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10052
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10053
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10054
    goto/16 :goto_c

    .line 10029
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 10030
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 10031
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10033
    goto/16 :goto_c

    .line 10034
    :cond_73
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10037
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10038
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setTrm(II)V

    .line 10039
    goto/16 :goto_c

    .line 10012
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 10013
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 10014
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10015
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10016
    goto/16 :goto_c

    .line 10017
    :cond_75
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10020
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10021
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10022
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10023
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setFdMode(IIII)V

    .line 10024
    goto/16 :goto_c

    .line 9995
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 9996
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 9997
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9998
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9999
    goto/16 :goto_c

    .line 10000
    :cond_77
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10003
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10004
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10005
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10006
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10007
    goto/16 :goto_c

    .line 9981
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 9982
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 9983
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9985
    goto/16 :goto_c

    .line 9986
    :cond_79
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9988
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9989
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCurrentPOLList(I)V

    .line 9990
    goto/16 :goto_c

    .line 9967
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 9968
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 9969
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9971
    goto/16 :goto_c

    .line 9972
    :cond_7b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9975
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPOLCapability(I)V

    .line 9976
    goto/16 :goto_c

    .line 9952
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 9953
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 9954
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9956
    goto/16 :goto_c

    .line 9957
    :cond_7d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9960
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9961
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getRxTestResult(II)V

    .line 9962
    goto/16 :goto_c

    .line 9937
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 9938
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 9939
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9940
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9941
    goto/16 :goto_c

    .line 9942
    :cond_7f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9945
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9946
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRxTestConfig(II)V

    .line 9947
    goto/16 :goto_c

    .line 9917
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v8, v5

    .line 9918
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_81

    .line 9919
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9921
    goto/16 :goto_c

    .line 9922
    :cond_81
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9925
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9926
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9927
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9928
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9929
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9930
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9931
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9932
    goto/16 :goto_c

    .line 9902
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 9903
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 9904
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9906
    goto/16 :goto_c

    .line 9907
    :cond_83
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9910
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9911
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9912
    goto/16 :goto_c

    .line 9888
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 9889
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 9890
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9892
    goto/16 :goto_c

    .line 9893
    :cond_85
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9896
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9897
    goto/16 :goto_c

    .line 9871
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 9872
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 9873
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9875
    goto/16 :goto_c

    .line 9876
    :cond_87
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9879
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9880
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9881
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9882
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9883
    goto/16 :goto_c

    .line 9857
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 9858
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 9859
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9861
    goto/16 :goto_c

    .line 9862
    :cond_89
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9865
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->abortFemtocellList(I)V

    .line 9866
    goto/16 :goto_c

    .line 9843
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 9844
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 9845
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9847
    goto/16 :goto_c

    .line 9848
    :cond_8b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9851
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getFemtocellList(I)V

    .line 9852
    goto/16 :goto_c

    .line 9829
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 9830
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 9831
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9833
    goto/16 :goto_c

    .line 9834
    :cond_8d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9837
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9838
    goto/16 :goto_c

    .line 9815
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 9816
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 9817
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9819
    goto/16 :goto_c

    .line 9820
    :cond_8f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9823
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9824
    goto/16 :goto_c

    .line 9801
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 9802
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 9803
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9805
    goto/16 :goto_c

    .line 9806
    :cond_91
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9809
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9810
    goto/16 :goto_c

    .line 9784
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 9785
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 9786
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9788
    goto/16 :goto_c

    .line 9789
    :cond_93
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9791
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9792
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9793
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9794
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9795
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9796
    goto/16 :goto_c

    .line 9770
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 9771
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 9772
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9774
    goto/16 :goto_c

    .line 9775
    :cond_95
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9778
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9779
    goto/16 :goto_c

    .line 9755
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v0, v5

    .line 9756
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_97

    .line 9757
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9759
    goto/16 :goto_c

    .line 9760
    :cond_97
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9763
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9764
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reloadModemType(II)V

    .line 9765
    goto/16 :goto_c

    .line 9740
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 9741
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 9742
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9743
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9744
    goto/16 :goto_c

    .line 9745
    :cond_99
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9748
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9749
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->storeModemType(II)V

    .line 9750
    goto/16 :goto_c

    .line 9725
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 9726
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 9727
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9729
    goto/16 :goto_c

    .line 9730
    :cond_9b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9733
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9734
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResumeRegistration(II)V

    .line 9735
    goto/16 :goto_c

    .line 9710
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 9711
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 9712
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9714
    goto/16 :goto_c

    .line 9715
    :cond_9d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9718
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9719
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9720
    goto/16 :goto_c

    .line 9695
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 9696
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 9697
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9699
    goto/16 :goto_c

    .line 9700
    :cond_9f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9703
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9704
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9705
    goto/16 :goto_c

    .line 9679
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 9680
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 9681
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9683
    goto/16 :goto_c

    .line 9684
    :cond_a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9687
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9688
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9689
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9690
    goto/16 :goto_c

    .line 9663
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 9664
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 9665
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9667
    goto/16 :goto_c

    .line 9668
    :cond_a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9670
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9671
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9672
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9673
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9674
    goto/16 :goto_c

    .line 9649
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 9650
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 9651
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9653
    goto/16 :goto_c

    .line 9654
    :cond_a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9657
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9658
    goto/16 :goto_c

    .line 9633
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 9634
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 9635
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9637
    goto/16 :goto_c

    .line 9638
    :cond_a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9641
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9642
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9643
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9644
    goto/16 :goto_c

    .line 9619
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 9620
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 9621
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9623
    goto/16 :goto_c

    .line 9624
    :cond_a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9627
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9628
    goto/16 :goto_c

    .line 9605
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 9606
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 9607
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9609
    goto/16 :goto_c

    .line 9610
    :cond_ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9613
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9614
    goto/16 :goto_c

    .line 9590
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 9591
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 9592
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9594
    goto/16 :goto_c

    .line 9595
    :cond_ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9598
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9599
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9600
    goto/16 :goto_c

    .line 9574
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 9575
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 9576
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9577
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9578
    goto/16 :goto_c

    .line 9579
    :cond_af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9582
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9583
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9584
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->removeCbMsg(III)V

    .line 9585
    goto/16 :goto_c

    .line 9559
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 9560
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 9561
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9563
    goto/16 :goto_c

    .line 9564
    :cond_b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9567
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9568
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEtws(II)V

    .line 9569
    goto/16 :goto_c

    .line 9545
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 9546
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 9547
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9549
    goto/16 :goto_c

    .line 9550
    :cond_b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9553
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9554
    goto/16 :goto_c

    .line 9529
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 9530
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 9531
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9533
    goto/16 :goto_c

    .line 9534
    :cond_b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9537
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9538
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9539
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9540
    goto/16 :goto_c

    .line 9515
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 9516
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 9517
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9519
    goto/16 :goto_c

    .line 9520
    :cond_b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9523
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmsParameters(I)V

    .line 9524
    goto/16 :goto_c

    .line 9496
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v7, v5

    .line 9497
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_b9

    .line 9498
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9499
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9500
    goto/16 :goto_c

    .line 9501
    :cond_b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9504
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9505
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9506
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9507
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9508
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9509
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9510
    goto/16 :goto_c

    .line 9479
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 9480
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 9481
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9483
    goto/16 :goto_c

    .line 9484
    :cond_bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9487
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9488
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9489
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9490
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9491
    goto/16 :goto_c

    .line 9463
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 9464
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 9465
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9467
    goto/16 :goto_c

    .line 9468
    :cond_bd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9471
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9472
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9473
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9474
    goto/16 :goto_c

    .line 9443
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v8, v5

    .line 9444
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_bf

    .line 9445
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9447
    goto/16 :goto_c

    .line 9448
    :cond_bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9451
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9452
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9453
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9454
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9455
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9456
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9457
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9458
    goto/16 :goto_c

    .line 9428
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 9429
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 9430
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9432
    goto/16 :goto_c

    .line 9433
    :cond_c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9436
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9437
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryNetworkLock(II)V

    .line 9438
    goto/16 :goto_c

    .line 9412
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 9413
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 9414
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9416
    goto/16 :goto_c

    .line 9417
    :cond_c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9420
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9421
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9422
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9423
    goto/16 :goto_c

    .line 9397
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 9398
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 9399
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9400
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9401
    goto/16 :goto_c

    .line 9402
    :cond_c5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9405
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9406
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSimPower(II)V

    .line 9407
    goto/16 :goto_c

    .line 9383
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 9384
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 9385
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9387
    goto/16 :goto_c

    .line 9388
    :cond_c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9391
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getIccid(I)V

    .line 9392
    goto/16 :goto_c

    .line 9369
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 9370
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 9371
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9372
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9373
    goto/16 :goto_c

    .line 9374
    :cond_c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9377
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getATR(I)V

    .line 9378
    goto/16 :goto_c

    .line 9354
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 9355
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 9356
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9358
    goto/16 :goto_c

    .line 9359
    :cond_cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9362
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9363
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9364
    goto/16 :goto_c

    .line 9339
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 9340
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 9341
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9343
    goto/16 :goto_c

    .line 9344
    :cond_cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9347
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9348
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setModemPower(IZ)V

    .line 9349
    goto/16 :goto_c

    .line 9324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 9325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 9326
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9328
    goto/16 :goto_c

    .line 9329
    :cond_cf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9332
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9333
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPhonebookReady(II)V

    .line 9334
    goto/16 :goto_c

    .line 9308
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move v0, v5

    .line 9309
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d1

    .line 9310
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9312
    goto/16 :goto_c

    .line 9313
    :cond_d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9316
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9317
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9318
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBAasList(III)V

    .line 9319
    goto/16 :goto_c

    .line 9292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v5, v6

    :cond_d2
    move v0, v5

    .line 9293
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d3

    .line 9294
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9296
    goto/16 :goto_c

    .line 9297
    :cond_d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9300
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9301
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9302
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9303
    goto/16 :goto_c

    .line 9276
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v5, v6

    :cond_d4
    move v0, v5

    .line 9277
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d5

    .line 9278
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9280
    goto/16 :goto_c

    .line 9281
    :cond_d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9284
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9285
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9286
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9287
    goto/16 :goto_c

    .line 9260
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v5, v6

    :cond_d6
    move v0, v5

    .line 9261
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d7

    .line 9262
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9264
    goto/16 :goto_c

    .line 9265
    :cond_d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9268
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9269
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9270
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9271
    goto/16 :goto_c

    .line 9244
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v5, v6

    :cond_d8
    move v0, v5

    .line 9245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d9

    .line 9246
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9248
    goto/16 :goto_c

    .line 9249
    :cond_d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9252
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9253
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9254
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9255
    goto/16 :goto_c

    .line 9228
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v5, v6

    :cond_da
    move v0, v5

    .line 9229
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_db

    .line 9230
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9231
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9232
    goto/16 :goto_c

    .line 9233
    :cond_db
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9236
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9237
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9238
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9239
    goto/16 :goto_c

    .line 9212
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v5, v6

    :cond_dc
    move v0, v5

    .line 9213
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_dd

    .line 9214
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9216
    goto/16 :goto_c

    .line 9217
    :cond_dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9220
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9221
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9222
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9223
    goto/16 :goto_c

    .line 9196
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v5, v6

    :cond_de
    move v0, v5

    .line 9197
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_df

    .line 9198
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9200
    goto/16 :goto_c

    .line 9201
    :cond_df
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9204
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9205
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9206
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9207
    goto/16 :goto_c

    .line 9182
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v5, v6

    :cond_e0
    move v0, v5

    .line 9183
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e1

    .line 9184
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9186
    goto/16 :goto_c

    .line 9187
    :cond_e1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9190
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9191
    goto/16 :goto_c

    .line 9168
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v5, v6

    :cond_e2
    move v0, v5

    .line 9169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e3

    .line 9170
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9172
    goto/16 :goto_c

    .line 9173
    :cond_e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9176
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9177
    goto/16 :goto_c

    .line 9152
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v5, v6

    :cond_e4
    move v0, v5

    .line 9153
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e5

    .line 9154
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9156
    goto/16 :goto_c

    .line 9157
    :cond_e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9160
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9161
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9162
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9163
    goto/16 :goto_c

    .line 9137
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v5, v6

    :cond_e6
    move v0, v5

    .line 9138
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e7

    .line 9139
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9141
    goto/16 :goto_c

    .line 9142
    :cond_e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9145
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9146
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9147
    goto/16 :goto_c

    .line 9121
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v5, v6

    :cond_e8
    move v0, v5

    .line 9122
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e9

    .line 9123
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9125
    goto/16 :goto_c

    .line 9126
    :cond_e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9129
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9130
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9131
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBGasList(III)V

    .line 9132
    goto/16 :goto_c

    .line 9104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v5, v6

    :cond_ea
    move v0, v5

    .line 9105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_eb

    .line 9106
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9108
    goto/16 :goto_c

    .line 9109
    :cond_eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9112
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9113
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9114
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9115
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9116
    goto/16 :goto_c

    .line 9089
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    move v0, v5

    .line 9090
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ed

    .line 9091
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9093
    goto/16 :goto_c

    .line 9094
    :cond_ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9097
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9098
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9099
    goto/16 :goto_c

    .line 9075
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v5, v6

    :cond_ee
    move v0, v5

    .line 9076
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ef

    .line 9077
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9079
    goto/16 :goto_c

    .line 9080
    :cond_ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9083
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryUPBCapability(I)V

    .line 9084
    goto/16 :goto_c

    .line 9058
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v5, v6

    :cond_f0
    move v0, v5

    .line 9059
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f1

    .line 9060
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9062
    goto/16 :goto_c

    .line 9063
    :cond_f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9066
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9067
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9068
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9069
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9070
    goto/16 :goto_c

    .line 9042
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v5, v6

    :cond_f2
    move v0, v5

    .line 9043
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f3

    .line 9044
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9046
    goto/16 :goto_c

    .line 9047
    :cond_f3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9050
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9051
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9052
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9053
    goto/16 :goto_c

    .line 9027
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v5, v6

    :cond_f4
    move v0, v5

    .line 9028
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f5

    .line 9029
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9030
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9031
    goto/16 :goto_c

    .line 9032
    :cond_f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9035
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9036
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9037
    goto/16 :goto_c

    .line 9013
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v5, v6

    :cond_f6
    move v0, v5

    .line 9014
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f7

    .line 9015
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9017
    goto/16 :goto_c

    .line 9018
    :cond_f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9021
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getEccNum(I)V

    .line 9022
    goto/16 :goto_c

    .line 8997
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v5, v6

    :cond_f8
    move v0, v5

    .line 8998
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f9

    .line 8999
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9001
    goto/16 :goto_c

    .line 9002
    :cond_f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9005
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9006
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9007
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9008
    goto/16 :goto_c

    .line 8982
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v5, v6

    :cond_fa
    move v0, v5

    .line 8983
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fb

    .line 8984
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8986
    goto/16 :goto_c

    .line 8987
    :cond_fb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8990
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8991
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 8992
    goto/16 :goto_c

    .line 8967
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v5, v6

    :cond_fc
    move v0, v5

    .line 8968
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fd

    .line 8969
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8971
    goto/16 :goto_c

    .line 8972
    :cond_fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8975
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8976
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->eccPreferredRat(II)V

    .line 8977
    goto/16 :goto_c

    .line 8951
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v5, v6

    :cond_fe
    move v0, v5

    .line 8952
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ff

    .line 8953
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8955
    goto/16 :goto_c

    .line 8956
    :cond_ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8959
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8960
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8961
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->currentStatus(III)V

    .line 8962
    goto/16 :goto_c

    .line 8935
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v5, v6

    :cond_100
    move v0, v5

    .line 8936
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_101

    .line 8937
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8939
    goto/16 :goto_c

    .line 8940
    :cond_101
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8943
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8944
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8945
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 8946
    goto/16 :goto_c

    .line 8920
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v5, v6

    :cond_102
    move v0, v5

    .line 8921
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_103

    .line 8922
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8924
    goto/16 :goto_c

    .line 8925
    :cond_103
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8927
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8928
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8929
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8930
    goto/16 :goto_c

    .line 8904
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v5, v6

    :cond_104
    move v0, v5

    .line 8905
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_105

    .line 8906
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8908
    goto/16 :goto_c

    .line 8909
    :cond_105
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8912
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8913
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8914
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8915
    goto/16 :goto_c

    .line 8887
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v5, v6

    :cond_106
    move v0, v5

    .line 8888
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_107

    .line 8889
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8891
    goto/16 :goto_c

    .line 8892
    :cond_107
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8895
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8896
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8897
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8898
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallIndication(IIII)V

    .line 8899
    goto/16 :goto_c

    .line 8873
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v5, v6

    :cond_108
    move v0, v5

    .line 8874
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_109

    .line 8875
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8877
    goto/16 :goto_c

    .line 8878
    :cond_109
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8881
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangupAll(I)V

    .line 8882
    goto/16 :goto_c

    .line 8858
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v5, v6

    :cond_10a
    move v0, v5

    .line 8859
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10b

    .line 8860
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8862
    goto/16 :goto_c

    .line 8863
    :cond_10b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8866
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8867
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8868
    goto/16 :goto_c

    .line 8844
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v5, v6

    :cond_10c
    move v0, v5

    .line 8845
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10d

    .line 8846
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8848
    goto/16 :goto_c

    .line 8849
    :cond_10d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8852
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetSuppServ(I)V

    .line 8853
    goto/16 :goto_c

    .line 8830
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v5, v6

    :cond_10e
    move v0, v5

    .line 8831
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10f

    .line 8832
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8834
    goto/16 :goto_c

    .line 8835
    :cond_10f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8838
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getXcapStatus(I)V

    .line 8839
    goto/16 :goto_c

    .line 8816
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v5, v6

    :cond_110
    move v0, v5

    .line 8817
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_111

    .line 8818
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8820
    goto/16 :goto_c

    .line 8821
    :cond_111
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8824
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->cancelUssi(I)V

    .line 8825
    goto/16 :goto_c

    .line 8800
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v5, v6

    :cond_112
    move v0, v5

    .line 8801
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_113

    .line 8802
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8804
    goto/16 :goto_c

    .line 8805
    :cond_113
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8808
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8809
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8810
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8811
    goto/16 :goto_c

    .line 8782
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v5, v6

    :cond_114
    move v7, v5

    .line 8783
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_115

    .line 8784
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8786
    goto/16 :goto_c

    .line 8787
    :cond_115
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8790
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8791
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8792
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8793
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8794
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8795
    goto/16 :goto_c

    .line 8766
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v5, v6

    :cond_116
    move v0, v5

    .line 8767
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_117

    .line 8768
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8770
    goto/16 :goto_c

    .line 8771
    :cond_117
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8774
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8775
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8776
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8777
    goto/16 :goto_c

    .line 8750
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v5, v6

    :cond_118
    move v0, v5

    .line 8751
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_119

    .line 8752
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8754
    goto/16 :goto_c

    .line 8755
    :cond_119
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8758
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8759
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8760
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8761
    goto/16 :goto_c

    .line 8735
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v5, v6

    :cond_11a
    move v0, v5

    .line 8736
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11b

    .line 8737
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8739
    goto/16 :goto_c

    .line 8740
    :cond_11b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8743
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8744
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setColr(II)V

    .line 8745
    goto/16 :goto_c

    .line 8720
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v5, v6

    :cond_11c
    move v0, v5

    .line 8721
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11d

    .line 8722
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8724
    goto/16 :goto_c

    .line 8725
    :cond_11d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8728
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8729
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setColp(II)V

    .line 8730
    goto/16 :goto_c

    .line 8705
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v5, v6

    :cond_11e
    move v0, v5

    .line 8706
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11f

    .line 8707
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8709
    goto/16 :goto_c

    .line 8710
    :cond_11f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8713
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8714
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8715
    goto/16 :goto_c

    .line 8691
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v5, v6

    :cond_120
    move v0, v5

    .line 8692
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_121

    .line 8693
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8694
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8695
    goto/16 :goto_c

    .line 8696
    :cond_121
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8698
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8699
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getColr(I)V

    .line 8700
    goto/16 :goto_c

    .line 8677
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v5, v6

    :cond_122
    move v0, v5

    .line 8678
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_123

    .line 8679
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8681
    goto/16 :goto_c

    .line 8682
    :cond_123
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8685
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getColp(I)V

    .line 8686
    goto/16 :goto_c

    .line 8662
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v5, v6

    :cond_124
    move v0, v5

    .line 8663
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_125

    .line 8664
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8666
    goto/16 :goto_c

    .line 8667
    :cond_125
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8670
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8671
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setClip(II)V

    .line 8672
    goto/16 :goto_c

    .line 8644
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v5, v6

    :cond_126
    move v7, v5

    .line 8645
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_127

    .line 8646
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8648
    goto/16 :goto_c

    .line 8649
    :cond_127
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8652
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8653
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8654
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8655
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8656
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8657
    goto/16 :goto_c

    .line 8629
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v5, v6

    :cond_128
    move v0, v5

    .line 8630
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_129

    .line 8631
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8632
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8633
    goto/16 :goto_c

    .line 8634
    :cond_129
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8637
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8638
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getRoamingEnable(II)V

    .line 8639
    goto/16 :goto_c

    .line 8614
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v5, v6

    :cond_12a
    move v0, v5

    .line 8615
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12b

    .line 8616
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8618
    goto/16 :goto_c

    .line 8619
    :cond_12b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8622
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8623
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8624
    goto/16 :goto_c

    .line 8599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v5, v6

    :cond_12c
    move v0, v5

    .line 8600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12d

    .line 8601
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8603
    goto/16 :goto_c

    .line 8604
    :cond_12d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8607
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8608
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8609
    goto/16 :goto_c

    .line 8585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v5, v6

    :cond_12e
    move v0, v5

    .line 8586
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12f

    .line 8587
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8589
    goto/16 :goto_c

    .line 8590
    :cond_12f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8593
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8594
    goto/16 :goto_c

    .line 8569
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v5, v6

    :cond_130
    move v0, v5

    .line 8570
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_131

    .line 8571
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8573
    goto/16 :goto_c

    .line 8574
    :cond_131
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8577
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8578
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8579
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8580
    goto/16 :goto_c

    .line 8552
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v5, v6

    :cond_132
    move v0, v5

    .line 8553
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_133

    .line 8554
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8556
    goto/16 :goto_c

    .line 8557
    :cond_133
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8560
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8561
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8562
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8563
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8564
    goto/16 :goto_c

    .line 8536
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v5, v6

    :cond_134
    move v0, v5

    .line 8537
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_135

    .line 8538
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8540
    goto/16 :goto_c

    .line 8541
    :cond_135
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8544
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8545
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8546
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8547
    goto/16 :goto_c

    .line 8520
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v5, v6

    :cond_136
    move v0, v5

    .line 8521
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_137

    .line 8522
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8523
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8524
    goto/16 :goto_c

    .line 8525
    :cond_137
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8528
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8529
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8530
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8531
    goto/16 :goto_c

    .line 8505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v5, v6

    :cond_138
    move v0, v5

    .line 8506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_139

    .line 8507
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8509
    goto/16 :goto_c

    .line 8510
    :cond_139
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8513
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8514
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->forceReleaseCall(II)V

    .line 8515
    goto/16 :goto_c

    .line 8489
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v5, v6

    :cond_13a
    move v0, v5

    .line 8490
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13b

    .line 8491
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8492
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8493
    goto/16 :goto_c

    .line 8494
    :cond_13b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8496
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8497
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8498
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8499
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8500
    goto/16 :goto_c

    .line 8474
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v5, v6

    :cond_13c
    move v0, v5

    .line 8475
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13d

    .line 8476
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8477
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8478
    goto/16 :goto_c

    .line 8479
    :cond_13d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8482
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8483
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8484
    goto/16 :goto_c

    .line 8459
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v5, v6

    :cond_13e
    move v0, v5

    .line 8460
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13f

    .line 8461
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8463
    goto/16 :goto_c

    .line 8464
    :cond_13f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8467
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8468
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8469
    goto/16 :goto_c

    .line 8442
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v5, v6

    :cond_140
    move v0, v5

    .line 8443
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_141

    .line 8444
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8446
    goto/16 :goto_c

    .line 8447
    :cond_141
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8450
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8451
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8452
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8453
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8454
    goto/16 :goto_c

    .line 8426
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v5, v6

    :cond_142
    move v0, v5

    .line 8427
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_143

    .line 8428
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8429
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8430
    goto/16 :goto_c

    .line 8431
    :cond_143
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8434
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8435
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8436
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8437
    goto/16 :goto_c

    .line 8411
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v5, v6

    :cond_144
    move v0, v5

    .line 8412
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_145

    .line 8413
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8414
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8415
    goto/16 :goto_c

    .line 8416
    :cond_145
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8419
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8420
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWfcProfile(II)V

    .line 8421
    goto/16 :goto_c

    .line 8394
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v5, v6

    :cond_146
    move v0, v5

    .line 8395
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_147

    .line 8396
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8398
    goto/16 :goto_c

    .line 8399
    :cond_147
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8402
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8403
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8404
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8405
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8406
    goto/16 :goto_c

    .line 8377
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v5, v6

    :cond_148
    move v0, v5

    .line 8378
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_149

    .line 8379
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8381
    goto/16 :goto_c

    .line 8382
    :cond_149
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8385
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8386
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8387
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8388
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8389
    goto/16 :goto_c

    .line 8361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v5, v6

    :cond_14a
    move v0, v5

    .line 8362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14b

    .line 8363
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8365
    goto/16 :goto_c

    .line 8366
    :cond_14b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8369
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8370
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8371
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8372
    goto/16 :goto_c

    .line 8346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v5, v6

    :cond_14c
    move v0, v5

    .line 8347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14d

    .line 8348
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8350
    goto/16 :goto_c

    .line 8351
    :cond_14d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8354
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8355
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8356
    goto/16 :goto_c

    .line 8326
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v5, v6

    :cond_14e
    move v8, v5

    .line 8327
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_14f

    .line 8328
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8330
    goto/16 :goto_c

    .line 8331
    :cond_14f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8334
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8335
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8336
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8337
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8338
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8339
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8340
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8341
    goto/16 :goto_c

    .line 8311
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_9e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_150

    move v5, v6

    :cond_150
    move v0, v5

    .line 8312
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_151

    .line 8313
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8315
    goto/16 :goto_c

    .line 8316
    :cond_151
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8319
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8320
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8321
    goto/16 :goto_c

    .line 8296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_9f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v5, v6

    :cond_152
    move v0, v5

    .line 8297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_153

    .line 8298
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8300
    goto/16 :goto_c

    .line 8301
    :cond_153
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8304
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8305
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8306
    goto/16 :goto_c

    .line 8281
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v5, v6

    :cond_154
    move v0, v5

    .line 8282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_155

    .line 8283
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8285
    goto/16 :goto_c

    .line 8286
    :cond_155
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8289
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8290
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8291
    goto/16 :goto_c

    .line 8266
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_156

    move v5, v6

    :cond_156
    move v0, v5

    .line 8267
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_157

    .line 8268
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8270
    goto/16 :goto_c

    .line 8271
    :cond_157
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8273
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8274
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8275
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8276
    goto/16 :goto_c

    .line 8251
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v5, v6

    :cond_158
    move v0, v5

    .line 8252
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_159

    .line 8253
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8255
    goto/16 :goto_c

    .line 8256
    :cond_159
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8259
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8260
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8261
    goto/16 :goto_c

    .line 8236
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v5, v6

    :cond_15a
    move v0, v5

    .line 8237
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15b

    .line 8238
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8240
    goto/16 :goto_c

    .line 8241
    :cond_15b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8244
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8245
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8246
    goto/16 :goto_c

    .line 8221
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v5, v6

    :cond_15c
    move v0, v5

    .line 8222
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15d

    .line 8223
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8225
    goto/16 :goto_c

    .line 8226
    :cond_15d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8229
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8230
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8231
    goto/16 :goto_c

    .line 8206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v5, v6

    :cond_15e
    move v0, v5

    .line 8207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15f

    .line 8208
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8210
    goto/16 :goto_c

    .line 8211
    :cond_15f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8214
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8215
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsEnable(IZ)V

    .line 8216
    goto/16 :goto_c

    .line 8191
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v5, v6

    :cond_160
    move v0, v5

    .line 8192
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_161

    .line 8193
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8194
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8195
    goto/16 :goto_c

    .line 8196
    :cond_161
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8199
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8200
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsDeregNotification(II)V

    .line 8201
    goto/16 :goto_c

    .line 8176
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v5, v6

    :cond_162
    move v0, v5

    .line 8177
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_163

    .line 8178
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8180
    goto/16 :goto_c

    .line 8181
    :cond_163
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8184
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8185
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resumeCall(II)V

    .line 8186
    goto/16 :goto_c

    .line 8161
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v5, v6

    :cond_164
    move v0, v5

    .line 8162
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_165

    .line 8163
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8165
    goto/16 :goto_c

    .line 8166
    :cond_165
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8169
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8170
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->holdCall(II)V

    .line 8171
    goto/16 :goto_c

    .line 8145
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v5, v6

    :cond_166
    move v0, v5

    .line 8146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_167

    .line 8147
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8149
    goto/16 :goto_c

    .line 8150
    :cond_167
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8153
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8154
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8155
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8156
    goto/16 :goto_c

    .line 8129
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v5, v6

    :cond_168
    move v0, v5

    .line 8130
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_169

    .line 8131
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8133
    goto/16 :goto_c

    .line 8134
    :cond_169
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8137
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8138
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8139
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->videoCallAccept(III)V

    .line 8140
    goto/16 :goto_c

    .line 8112
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    goto :goto_7

    :cond_16a
    move v6, v5

    :goto_7
    move v0, v6

    .line 8113
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16b

    .line 8114
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8116
    goto/16 :goto_c

    .line 8117
    :cond_16b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 8120
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 8121
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8122
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8124
    goto/16 :goto_c

    .line 8095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    goto :goto_8

    :cond_16c
    move v6, v5

    :goto_8
    move v0, v6

    .line 8096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16d

    .line 8097
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8099
    goto/16 :goto_c

    .line 8100
    :cond_16d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 8103
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 8104
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8105
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8107
    goto/16 :goto_c

    .line 8078
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_ad
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    goto :goto_9

    :cond_16e
    move v6, v5

    :goto_9
    move v0, v6

    .line 8079
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16f

    .line 8080
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8082
    goto/16 :goto_c

    .line 8083
    :cond_16f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 8086
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 8087
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8088
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8089
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8090
    goto/16 :goto_c

    .line 8061
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_ae
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_170

    goto :goto_a

    :cond_170
    move v6, v5

    :goto_a
    move v0, v6

    .line 8062
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_171

    .line 8063
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8064
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8065
    goto/16 :goto_c

    .line 8066
    :cond_171
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 8069
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 8070
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8071
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8073
    goto/16 :goto_c

    .line 8045
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_af
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_172

    move v5, v6

    :cond_172
    move v1, v5

    .line 8046
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_173

    .line 8047
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8049
    goto/16 :goto_c

    .line 8050
    :cond_173
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8053
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8054
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8055
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8056
    goto/16 :goto_c

    .line 8022
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_b0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_174

    move v5, v6

    :cond_174
    move v10, v5

    .line 8023
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v6, :cond_175

    .line 8024
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8025
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8026
    goto/16 :goto_c

    .line 8027
    :cond_175
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8030
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8031
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8032
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8034
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8035
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8036
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8037
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8038
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8039
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8040
    goto/16 :goto_c

    .line 8002
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "serial":I
    .end local v12    # "accessNetwork":I
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    :pswitch_b1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_176

    move v5, v6

    :cond_176
    move v8, v5

    .line 8003
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_177

    .line 8004
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8005
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8006
    goto/16 :goto_c

    .line 8007
    :cond_177
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8010
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8011
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8012
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8013
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8014
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8015
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8016
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8017
    goto/16 :goto_c

    .line 7984
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_178

    move v5, v6

    :cond_178
    move v7, v5

    .line 7985
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_179

    .line 7986
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7987
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7988
    goto/16 :goto_c

    .line 7989
    :cond_179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7992
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7993
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7994
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 7995
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7996
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 7997
    goto/16 :goto_c

    .line 7969
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_17a

    move v5, v6

    :cond_17a
    move v1, v5

    .line 7970
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_17b

    .line 7971
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7973
    goto/16 :goto_c

    .line 7974
    :cond_17b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7977
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7978
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 7979
    goto/16 :goto_c

    .line 7953
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_17c

    move v5, v6

    :cond_17c
    move v1, v5

    .line 7954
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_17d

    .line 7955
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7957
    goto/16 :goto_c

    .line 7958
    :cond_17d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7961
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 7962
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7963
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 7964
    goto/16 :goto_c

    .line 7938
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17e

    move v5, v6

    :cond_17e
    move v0, v5

    .line 7939
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17f

    .line 7940
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7942
    goto/16 :goto_c

    .line 7943
    :cond_17f
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7946
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7947
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopKeepalive(II)V

    .line 7948
    goto/16 :goto_c

    .line 7922
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_b6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_180

    move v5, v6

    :cond_180
    move v0, v5

    .line 7923
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_181

    .line 7924
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7926
    goto/16 :goto_c

    .line 7927
    :cond_181
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7930
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7931
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7932
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7933
    goto/16 :goto_c

    .line 7908
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v5, v6

    :cond_182
    move v0, v5

    .line 7909
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_183

    .line 7910
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7912
    goto/16 :goto_c

    .line 7913
    :cond_183
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7916
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopNetworkScan(I)V

    .line 7917
    goto/16 :goto_c

    .line 7892
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v5, v6

    :cond_184
    move v0, v5

    .line 7893
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_185

    .line 7894
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7896
    goto/16 :goto_c

    .line 7897
    :cond_185
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7899
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7900
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7901
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7902
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7903
    goto/16 :goto_c

    .line 7877
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v5, v6

    :cond_186
    move v0, v5

    .line 7878
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_187

    .line 7879
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7881
    goto/16 :goto_c

    .line 7882
    :cond_187
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7885
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7886
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7887
    goto/16 :goto_c

    .line 7861
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v5, v6

    :cond_188
    move v0, v5

    .line 7862
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_189

    .line 7863
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7864
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7865
    goto/16 :goto_c

    .line 7866
    :cond_189
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7869
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7870
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7871
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7872
    goto/16 :goto_c

    .line 7848
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v5, v6

    :cond_18a
    move v0, v5

    .line 7849
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18b

    .line 7850
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7851
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7852
    goto/16 :goto_c

    .line 7853
    :cond_18b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7855
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->responseAcknowledgement()V

    .line 7856
    goto/16 :goto_c

    .line 7833
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v5, v6

    :cond_18c
    move v0, v5

    .line 7834
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18d

    .line 7835
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7837
    goto/16 :goto_c

    .line 7838
    :cond_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7841
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7842
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7843
    goto/16 :goto_c

    .line 7818
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v5, v6

    :cond_18e
    move v0, v5

    .line 7819
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18f

    .line 7820
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7822
    goto/16 :goto_c

    .line 7823
    :cond_18f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7826
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7827
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setIndicationFilter(II)V

    .line 7828
    goto/16 :goto_c

    .line 7802
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v5, v6

    :cond_190
    move v0, v5

    .line 7803
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_191

    .line 7804
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7806
    goto/16 :goto_c

    .line 7807
    :cond_191
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7810
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7811
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7812
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7813
    goto/16 :goto_c

    .line 7788
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v5, v6

    :cond_192
    move v0, v5

    .line 7789
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_193

    .line 7790
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7792
    goto/16 :goto_c

    .line 7793
    :cond_193
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7796
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7797
    goto/16 :goto_c

    .line 7771
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v5, v6

    :cond_194
    move v0, v5

    .line 7772
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_195

    .line 7773
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7775
    goto/16 :goto_c

    .line 7776
    :cond_195
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7779
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7780
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7781
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7782
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7783
    goto/16 :goto_c

    .line 7757
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v5, v6

    :cond_196
    move v0, v5

    .line 7758
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_197

    .line 7759
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7761
    goto/16 :goto_c

    .line 7762
    :cond_197
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7765
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7766
    goto/16 :goto_c

    .line 7743
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_198

    move v5, v6

    :cond_198
    move v0, v5

    .line 7744
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_199

    .line 7745
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7747
    goto/16 :goto_c

    .line 7748
    :cond_199
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7751
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->pullLceData(I)V

    .line 7752
    goto/16 :goto_c

    .line 7729
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v5, v6

    :cond_19a
    move v0, v5

    .line 7730
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19b

    .line 7731
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7733
    goto/16 :goto_c

    .line 7734
    :cond_19b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7737
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopLceService(I)V

    .line 7738
    goto/16 :goto_c

    .line 7713
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19c

    move v5, v6

    :cond_19c
    move v0, v5

    .line 7714
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19d

    .line 7715
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7717
    goto/16 :goto_c

    .line 7718
    :cond_19d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7721
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7722
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7723
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startLceService(IIZ)V

    .line 7724
    goto/16 :goto_c

    .line 7697
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v5, v6

    :cond_19e
    move v0, v5

    .line 7698
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19f

    .line 7699
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7701
    goto/16 :goto_c

    .line 7702
    :cond_19f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7705
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7706
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7707
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7708
    goto/16 :goto_c

    .line 7683
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v5, v6

    :cond_1a0
    move v0, v5

    .line 7684
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a1

    .line 7685
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7687
    goto/16 :goto_c

    .line 7688
    :cond_1a1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7691
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getRadioCapability(I)V

    .line 7692
    goto/16 :goto_c

    .line 7669
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v5, v6

    :cond_1a2
    move v0, v5

    .line 7670
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a3

    .line 7671
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7673
    goto/16 :goto_c

    .line 7674
    :cond_1a3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7677
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->requestShutdown(I)V

    .line 7678
    goto/16 :goto_c

    .line 7653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a4

    move v5, v6

    :cond_1a4
    move v0, v5

    .line 7654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a5

    .line 7655
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7657
    goto/16 :goto_c

    .line 7658
    :cond_1a5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7661
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7662
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7663
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7664
    goto/16 :goto_c

    .line 7636
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v5, v6

    :cond_1a6
    move v0, v5

    .line 7637
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a7

    .line 7638
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7640
    goto/16 :goto_c

    .line 7641
    :cond_1a7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7644
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7645
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7646
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7647
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7648
    goto/16 :goto_c

    .line 7622
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v5, v6

    :cond_1a8
    move v0, v5

    .line 7623
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a9

    .line 7624
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7626
    goto/16 :goto_c

    .line 7627
    :cond_1a9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7629
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7630
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getHardwareConfig(I)V

    .line 7631
    goto/16 :goto_c

    .line 7607
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v5, v6

    :cond_1aa
    move v0, v5

    .line 7608
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ab

    .line 7609
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7611
    goto/16 :goto_c

    .line 7612
    :cond_1ab
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7615
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7616
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7617
    goto/16 :goto_c

    .line 7591
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_cc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ac

    move v5, v6

    :cond_1ac
    move v0, v5

    .line 7592
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ad

    .line 7593
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7594
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7595
    goto/16 :goto_c

    .line 7596
    :cond_1ad
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7599
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7600
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7601
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7602
    goto/16 :goto_c

    .line 7576
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_cd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ae

    move v5, v6

    :cond_1ae
    move v0, v5

    .line 7577
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1af

    .line 7578
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7580
    goto/16 :goto_c

    .line 7581
    :cond_1af
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7584
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7585
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvResetConfig(II)V

    .line 7586
    goto/16 :goto_c

    .line 7561
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v5, v6

    :cond_1b0
    move v0, v5

    .line 7562
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b1

    .line 7563
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7564
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7565
    goto/16 :goto_c

    .line 7566
    :cond_1b1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7569
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7570
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7571
    goto/16 :goto_c

    .line 7545
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v5, v6

    :cond_1b2
    move v0, v5

    .line 7546
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b3

    .line 7547
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7549
    goto/16 :goto_c

    .line 7550
    :cond_1b3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7553
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7554
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7555
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7556
    goto/16 :goto_c

    .line 7530
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v5, v6

    :cond_1b4
    move v0, v5

    .line 7531
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b5

    .line 7532
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7534
    goto/16 :goto_c

    .line 7535
    :cond_1b5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7538
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7539
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvReadItem(II)V

    .line 7540
    goto/16 :goto_c

    .line 7514
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v5, v6

    :cond_1b6
    move v0, v5

    .line 7515
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b7

    .line 7516
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7518
    goto/16 :goto_c

    .line 7519
    :cond_1b7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7522
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7523
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7524
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7525
    goto/16 :goto_c

    .line 7499
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v5, v6

    :cond_1b8
    move v0, v5

    .line 7500
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b9

    .line 7501
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7503
    goto/16 :goto_c

    .line 7504
    :cond_1b9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7507
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7508
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7509
    goto/16 :goto_c

    .line 7483
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v5, v6

    :cond_1ba
    move v0, v5

    .line 7484
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bb

    .line 7485
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7487
    goto/16 :goto_c

    .line 7488
    :cond_1bb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7491
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7492
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7493
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7494
    goto/16 :goto_c

    .line 7467
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v5, v6

    :cond_1bc
    move v0, v5

    .line 7468
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bd

    .line 7469
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7471
    goto/16 :goto_c

    .line 7472
    :cond_1bd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7475
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7476
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7477
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7478
    goto/16 :goto_c

    .line 7451
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v5, v6

    :cond_1be
    move v0, v5

    .line 7452
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bf

    .line 7453
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7454
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7455
    goto/16 :goto_c

    .line 7456
    :cond_1bf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7459
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7460
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7461
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7462
    goto/16 :goto_c

    .line 7437
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v5, v6

    :cond_1c0
    move v0, v5

    .line 7438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c1

    .line 7439
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7441
    goto/16 :goto_c

    .line 7442
    :cond_1c1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7445
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7446
    goto/16 :goto_c

    .line 7419
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_d7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c2

    move v5, v6

    :cond_1c2
    move v0, v5

    .line 7420
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c3

    .line 7421
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7423
    goto/16 :goto_c

    .line 7424
    :cond_1c3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7427
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7428
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7430
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7431
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7432
    goto/16 :goto_c

    .line 7404
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v5, v6

    :cond_1c4
    move v0, v5

    .line 7405
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c5

    .line 7406
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7408
    goto/16 :goto_c

    .line 7409
    :cond_1c5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7412
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7413
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7414
    goto/16 :goto_c

    .line 7390
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v5, v6

    :cond_1c6
    move v0, v5

    .line 7391
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c7

    .line 7392
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7394
    goto/16 :goto_c

    .line 7395
    :cond_1c7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7398
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCellInfoList(I)V

    .line 7399
    goto/16 :goto_c

    .line 7376
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v5, v6

    :cond_1c8
    move v0, v5

    .line 7377
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c9

    .line 7378
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7380
    goto/16 :goto_c

    .line 7381
    :cond_1c9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7384
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7385
    goto/16 :goto_c

    .line 7361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_db
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ca

    move v5, v6

    :cond_1ca
    move v0, v5

    .line 7362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cb

    .line 7363
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7365
    goto/16 :goto_c

    .line 7366
    :cond_1cb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7369
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7370
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7371
    goto/16 :goto_c

    .line 7345
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v5, v6

    :cond_1cc
    move v0, v5

    .line 7346
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cd

    .line 7347
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7349
    goto/16 :goto_c

    .line 7350
    :cond_1cd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7353
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7354
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7355
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7356
    goto/16 :goto_c

    .line 7330
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v5, v6

    :cond_1ce
    move v0, v5

    .line 7331
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cf

    .line 7332
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7334
    goto/16 :goto_c

    .line 7335
    :cond_1cf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7338
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7339
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7340
    goto/16 :goto_c

    .line 7316
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v5, v6

    :cond_1d0
    move v0, v5

    .line 7317
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d1

    .line 7318
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7320
    goto/16 :goto_c

    .line 7321
    :cond_1d1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7324
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7325
    goto/16 :goto_c

    .line 7302
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v5, v6

    :cond_1d2
    move v0, v5

    .line 7303
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d3

    .line 7304
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7306
    goto/16 :goto_c

    .line 7307
    :cond_1d3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7310
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7311
    goto/16 :goto_c

    .line 7287
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d4

    move v5, v6

    :cond_1d4
    move v0, v5

    .line 7288
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d5

    .line 7289
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7291
    goto/16 :goto_c

    .line 7292
    :cond_1d5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7294
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7295
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7296
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7297
    goto/16 :goto_c

    .line 7272
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v5, v6

    :cond_1d6
    move v0, v5

    .line 7273
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d7

    .line 7274
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7276
    goto/16 :goto_c

    .line 7277
    :cond_1d7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7280
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7281
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7282
    goto/16 :goto_c

    .line 7258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v5, v6

    :cond_1d8
    move v0, v5

    .line 7259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d9

    .line 7260
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7262
    goto/16 :goto_c

    .line 7263
    :cond_1d9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7266
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmscAddress(I)V

    .line 7267
    goto/16 :goto_c

    .line 7244
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v5, v6

    :cond_1da
    move v0, v5

    .line 7245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1db

    .line 7246
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7248
    goto/16 :goto_c

    .line 7249
    :cond_1db
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7252
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7253
    goto/16 :goto_c

    .line 7230
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v5, v6

    :cond_1dc
    move v0, v5

    .line 7231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1dd

    .line 7232
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7234
    goto/16 :goto_c

    .line 7235
    :cond_1dd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7238
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7239
    goto/16 :goto_c

    .line 7215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v5, v6

    :cond_1de
    move v0, v5

    .line 7216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1df

    .line 7217
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7219
    goto/16 :goto_c

    .line 7220
    :cond_1df
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7223
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7224
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7225
    goto/16 :goto_c

    .line 7199
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v5, v6

    :cond_1e0
    move v0, v5

    .line 7200
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e1

    .line 7201
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7203
    goto/16 :goto_c

    .line 7204
    :cond_1e1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7207
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7208
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7209
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7210
    goto/16 :goto_c

    .line 7185
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v5, v6

    :cond_1e2
    move v0, v5

    .line 7186
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e3

    .line 7187
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7188
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7189
    goto/16 :goto_c

    .line 7190
    :cond_1e3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7193
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCDMASubscription(I)V

    .line 7194
    goto/16 :goto_c

    .line 7170
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v5, v6

    :cond_1e4
    move v0, v5

    .line 7171
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e5

    .line 7172
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7174
    goto/16 :goto_c

    .line 7175
    :cond_1e5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7178
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7179
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7180
    goto/16 :goto_c

    .line 7155
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v5, v6

    :cond_1e6
    move v0, v5

    .line 7156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e7

    .line 7157
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7159
    goto/16 :goto_c

    .line 7160
    :cond_1e7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7163
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7164
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7165
    goto/16 :goto_c

    .line 7141
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v5, v6

    :cond_1e8
    move v0, v5

    .line 7142
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e9

    .line 7143
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7145
    goto/16 :goto_c

    .line 7146
    :cond_1e9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7149
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7150
    goto/16 :goto_c

    .line 7126
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v5, v6

    :cond_1ea
    move v0, v5

    .line 7127
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1eb

    .line 7128
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7129
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7130
    goto/16 :goto_c

    .line 7131
    :cond_1eb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7134
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7135
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7136
    goto/16 :goto_c

    .line 7111
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v5, v6

    :cond_1ec
    move v0, v5

    .line 7112
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ed

    .line 7113
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7114
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7115
    goto/16 :goto_c

    .line 7116
    :cond_1ed
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7119
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7120
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7121
    goto/16 :goto_c

    .line 7097
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v5, v6

    :cond_1ee
    move v0, v5

    .line 7098
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ef

    .line 7099
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7101
    goto/16 :goto_c

    .line 7102
    :cond_1ef
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7105
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7106
    goto/16 :goto_c

    .line 7081
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v5, v6

    :cond_1f0
    move v0, v5

    .line 7082
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f1

    .line 7083
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7085
    goto/16 :goto_c

    .line 7086
    :cond_1f1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7089
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7090
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7091
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7092
    goto/16 :goto_c

    .line 7065
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v5, v6

    :cond_1f2
    move v0, v5

    .line 7066
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f3

    .line 7067
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7069
    goto/16 :goto_c

    .line 7070
    :cond_1f3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7072
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7073
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7074
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7075
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7076
    goto/16 :goto_c

    .line 7048
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v5, v6

    :cond_1f4
    move v0, v5

    .line 7049
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f5

    .line 7050
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7052
    goto/16 :goto_c

    .line 7053
    :cond_1f5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7056
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7057
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7058
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7059
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7060
    goto/16 :goto_c

    .line 7033
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v5, v6

    :cond_1f6
    move v0, v5

    .line 7034
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f7

    .line 7035
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7037
    goto/16 :goto_c

    .line 7038
    :cond_1f7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7041
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7042
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7043
    goto/16 :goto_c

    .line 7019
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v5, v6

    :cond_1f8
    move v0, v5

    .line 7020
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f9

    .line 7021
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7023
    goto/16 :goto_c

    .line 7024
    :cond_1f9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7027
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7028
    goto/16 :goto_c

    .line 7004
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v5, v6

    :cond_1fa
    move v0, v5

    .line 7005
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fb

    .line 7006
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7008
    goto/16 :goto_c

    .line 7009
    :cond_1fb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7012
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7013
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7014
    goto/16 :goto_c

    .line 6990
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fc

    move v5, v6

    :cond_1fc
    move v0, v5

    .line 6991
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fd

    .line 6992
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6994
    goto/16 :goto_c

    .line 6995
    :cond_1fd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6998
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getTTYMode(I)V

    .line 6999
    goto/16 :goto_c

    .line 6975
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v5, v6

    :cond_1fe
    move v0, v5

    .line 6976
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ff

    .line 6977
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6979
    goto/16 :goto_c

    .line 6980
    :cond_1ff
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6983
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6984
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setTTYMode(II)V

    .line 6985
    goto/16 :goto_c

    .line 6961
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v5, v6

    :cond_200
    move v0, v5

    .line 6962
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_201

    .line 6963
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6965
    goto/16 :goto_c

    .line 6966
    :cond_201
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6969
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 6970
    goto/16 :goto_c

    .line 6946
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v5, v6

    :cond_202
    move v0, v5

    .line 6947
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_203

    .line 6948
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6950
    goto/16 :goto_c

    .line 6951
    :cond_203
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6954
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6955
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 6956
    goto/16 :goto_c

    .line 6931
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v5, v6

    :cond_204
    move v0, v5

    .line 6932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_205

    .line 6933
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6934
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6935
    goto/16 :goto_c

    .line 6936
    :cond_205
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6938
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6939
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6940
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6941
    goto/16 :goto_c

    .line 6916
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v5, v6

    :cond_206
    move v0, v5

    .line 6917
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_207

    .line 6918
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6920
    goto/16 :goto_c

    .line 6921
    :cond_207
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6924
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6925
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6926
    goto/16 :goto_c

    .line 6902
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v5, v6

    :cond_208
    move v0, v5

    .line 6903
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_209

    .line 6904
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6906
    goto/16 :goto_c

    .line 6907
    :cond_209
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6910
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getNeighboringCids(I)V

    .line 6911
    goto/16 :goto_c

    .line 6888
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v5, v6

    :cond_20a
    move v0, v5

    .line 6889
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20b

    .line 6890
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6892
    goto/16 :goto_c

    .line 6893
    :cond_20b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6896
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6897
    goto/16 :goto_c

    .line 6873
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v5, v6

    :cond_20c
    move v0, v5

    .line 6874
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20d

    .line 6875
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6877
    goto/16 :goto_c

    .line 6878
    :cond_20d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6881
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6882
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6883
    goto/16 :goto_c

    .line 6859
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v5, v6

    :cond_20e
    move v0, v5

    .line 6860
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20f

    .line 6861
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6863
    goto/16 :goto_c

    .line 6864
    :cond_20f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6867
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6868
    goto/16 :goto_c

    .line 6844
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v5, v6

    :cond_210
    move v0, v5

    .line 6845
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_211

    .line 6846
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6848
    goto/16 :goto_c

    .line 6849
    :cond_211
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6852
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6853
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6854
    goto/16 :goto_c

    .line 6829
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v5, v6

    :cond_212
    move v0, v5

    .line 6830
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_213

    .line 6831
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6833
    goto/16 :goto_c

    .line 6834
    :cond_213
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6837
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6838
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6839
    goto/16 :goto_c

    .line 6814
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v5, v6

    :cond_214
    move v0, v5

    .line 6815
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_215

    .line 6816
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6818
    goto/16 :goto_c

    .line 6819
    :cond_215
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6822
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6823
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6824
    goto/16 :goto_c

    .line 6800
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v5, v6

    :cond_216
    move v0, v5

    .line 6801
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_217

    .line 6802
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6804
    goto/16 :goto_c

    .line 6805
    :cond_217
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6808
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6809
    goto/16 :goto_c

    .line 6785
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v5, v6

    :cond_218
    move v0, v5

    .line 6786
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_219

    .line 6787
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6789
    goto/16 :goto_c

    .line 6790
    :cond_219
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6793
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6794
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setBandMode(II)V

    .line 6795
    goto/16 :goto_c

    .line 6770
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v5, v6

    :cond_21a
    move v0, v5

    .line 6771
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21b

    .line 6772
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6774
    goto/16 :goto_c

    .line 6775
    :cond_21b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6778
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6779
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6780
    goto/16 :goto_c

    .line 6754
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v5, v6

    :cond_21c
    move v0, v5

    .line 6755
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21d

    .line 6756
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6758
    goto/16 :goto_c

    .line 6759
    :cond_21d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6762
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6763
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6764
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6765
    goto/16 :goto_c

    .line 6739
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v5, v6

    :cond_21e
    move v0, v5

    .line 6740
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21f

    .line 6741
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6743
    goto/16 :goto_c

    .line 6744
    :cond_21f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6747
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6748
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6749
    goto/16 :goto_c

    .line 6725
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v5, v6

    :cond_220
    move v0, v5

    .line 6726
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_221

    .line 6727
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6729
    goto/16 :goto_c

    .line 6730
    :cond_221
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6733
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDataCallList(I)V

    .line 6734
    goto/16 :goto_c

    .line 6711
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v5, v6

    :cond_222
    move v0, v5

    .line 6712
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_223

    .line 6713
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6715
    goto/16 :goto_c

    .line 6716
    :cond_223
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6719
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getClip(I)V

    .line 6720
    goto/16 :goto_c

    .line 6697
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v5, v6

    :cond_224
    move v0, v5

    .line 6698
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_225

    .line 6699
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6701
    goto/16 :goto_c

    .line 6702
    :cond_225
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6705
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getMute(I)V

    .line 6706
    goto/16 :goto_c

    .line 6682
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v5, v6

    :cond_226
    move v0, v5

    .line 6683
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_227

    .line 6684
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6686
    goto/16 :goto_c

    .line 6687
    :cond_227
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6690
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6691
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setMute(IZ)V

    .line 6692
    goto/16 :goto_c

    .line 6667
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v5, v6

    :cond_228
    move v0, v5

    .line 6668
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_229

    .line 6669
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6670
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6671
    goto/16 :goto_c

    .line 6672
    :cond_229
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6675
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6676
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->separateConnection(II)V

    .line 6677
    goto/16 :goto_c

    .line 6653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v5, v6

    :cond_22a
    move v0, v5

    .line 6654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22b

    .line 6655
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6657
    goto/16 :goto_c

    .line 6658
    :cond_22b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6661
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getBasebandVersion(I)V

    .line 6662
    goto/16 :goto_c

    .line 6639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v5, v6

    :cond_22c
    move v0, v5

    .line 6640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22d

    .line 6641
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6643
    goto/16 :goto_c

    .line 6644
    :cond_22d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6647
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopDtmf(I)V

    .line 6648
    goto/16 :goto_c

    .line 6624
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v5, v6

    :cond_22e
    move v0, v5

    .line 6625
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22f

    .line 6626
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6628
    goto/16 :goto_c

    .line 6629
    :cond_22f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6632
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6633
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6634
    goto/16 :goto_c

    .line 6610
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v5, v6

    :cond_230
    move v0, v5

    .line 6611
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_231

    .line 6612
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6614
    goto/16 :goto_c

    .line 6615
    :cond_231
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6618
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6619
    goto/16 :goto_c

    .line 6595
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v5, v6

    :cond_232
    move v0, v5

    .line 6596
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_233

    .line 6597
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6599
    goto/16 :goto_c

    .line 6600
    :cond_233
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6603
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6604
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6605
    goto/16 :goto_c

    .line 6581
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v5, v6

    :cond_234
    move v0, v5

    .line 6582
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_235

    .line 6583
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6585
    goto/16 :goto_c

    .line 6586
    :cond_235
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6589
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6590
    goto/16 :goto_c

    .line 6567
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v5, v6

    :cond_236
    move v0, v5

    .line 6568
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_237

    .line 6569
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6571
    goto/16 :goto_c

    .line 6572
    :cond_237
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6575
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6576
    goto/16 :goto_c

    .line 6550
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v5, v6

    :cond_238
    move v0, v5

    .line 6551
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_239

    .line 6552
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6554
    goto/16 :goto_c

    .line 6555
    :cond_239
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6558
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6559
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6560
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6561
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6562
    goto/16 :goto_c

    .line 6531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v5, v6

    :cond_23a
    move v7, v5

    .line 6532
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_23b

    .line 6533
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6535
    goto/16 :goto_c

    .line 6536
    :cond_23b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6539
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6540
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6541
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6542
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6543
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6544
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6545
    goto/16 :goto_c

    .line 6513
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v5, v6

    :cond_23c
    move v7, v5

    .line 6514
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_23d

    .line 6515
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6517
    goto/16 :goto_c

    .line 6518
    :cond_23d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6521
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6522
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6523
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6524
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6525
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6526
    goto/16 :goto_c

    .line 6497
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v5, v6

    :cond_23e
    move v0, v5

    .line 6498
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23f

    .line 6499
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6501
    goto/16 :goto_c

    .line 6502
    :cond_23f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6505
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6506
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6507
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6508
    goto/16 :goto_c

    .line 6483
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_116
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_240

    move v5, v6

    :cond_240
    move v0, v5

    .line 6484
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_241

    .line 6485
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6487
    goto/16 :goto_c

    .line 6488
    :cond_241
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6491
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acceptCall(I)V

    .line 6492
    goto/16 :goto_c

    .line 6467
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_117
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_242

    move v5, v6

    :cond_242
    move v0, v5

    .line 6468
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_243

    .line 6469
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6471
    goto/16 :goto_c

    .line 6472
    :cond_243
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6475
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6476
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6477
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6478
    goto/16 :goto_c

    .line 6451
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_118
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_244

    move v5, v6

    :cond_244
    move v0, v5

    .line 6452
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_245

    .line 6453
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6454
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6455
    goto/16 :goto_c

    .line 6456
    :cond_245
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6459
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6460
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6461
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6462
    goto/16 :goto_c

    .line 6436
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_119
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_246

    move v5, v6

    :cond_246
    move v0, v5

    .line 6437
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_247

    .line 6438
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6440
    goto/16 :goto_c

    .line 6441
    :cond_247
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6444
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6445
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCallWaiting(II)V

    .line 6446
    goto/16 :goto_c

    .line 6420
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v5, v6

    :cond_248
    move v0, v5

    .line 6421
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_249

    .line 6422
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6424
    goto/16 :goto_c

    .line 6425
    :cond_249
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6428
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6429
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6430
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6431
    goto/16 :goto_c

    .line 6404
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24a

    move v5, v6

    :cond_24a
    move v0, v5

    .line 6405
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24b

    .line 6406
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6408
    goto/16 :goto_c

    .line 6409
    :cond_24b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6412
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6413
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6414
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6415
    goto/16 :goto_c

    .line 6389
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24c

    move v5, v6

    :cond_24c
    move v0, v5

    .line 6390
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24d

    .line 6391
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6392
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6393
    goto/16 :goto_c

    .line 6394
    :cond_24d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6397
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6398
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setClir(II)V

    .line 6399
    goto/16 :goto_c

    .line 6375
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v5, v6

    :cond_24e
    move v0, v5

    .line 6376
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24f

    .line 6377
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6379
    goto/16 :goto_c

    .line 6380
    :cond_24f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6383
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getClir(I)V

    .line 6384
    goto/16 :goto_c

    .line 6361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v5, v6

    :cond_250
    move v0, v5

    .line 6362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_251

    .line 6363
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6365
    goto/16 :goto_c

    .line 6366
    :cond_251
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6369
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6370
    goto/16 :goto_c

    .line 6346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v5, v6

    :cond_252
    move v0, v5

    .line 6347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_253

    .line 6348
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6350
    goto/16 :goto_c

    .line 6351
    :cond_253
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6354
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6355
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6356
    goto/16 :goto_c

    .line 6330
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v5, v6

    :cond_254
    move v0, v5

    .line 6331
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_255

    .line 6332
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6334
    goto/16 :goto_c

    .line 6335
    :cond_255
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6338
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6339
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6340
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6341
    goto/16 :goto_c

    .line 6310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v5, v6

    :cond_256
    move v7, v5

    .line 6311
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_257

    .line 6312
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6314
    goto/16 :goto_c

    .line 6315
    :cond_257
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6318
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6319
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6320
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6322
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6323
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6324
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6325
    goto/16 :goto_c

    .line 6294
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v5, v6

    :cond_258
    move v0, v5

    .line 6295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_259

    .line 6296
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6298
    goto/16 :goto_c

    .line 6299
    :cond_259
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6302
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6303
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6304
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6305
    goto/16 :goto_c

    .line 6278
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v5, v6

    :cond_25a
    move v0, v5

    .line 6279
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25b

    .line 6280
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6282
    goto/16 :goto_c

    .line 6283
    :cond_25b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6286
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6287
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6288
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6289
    goto/16 :goto_c

    .line 6263
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v5, v6

    :cond_25c
    move v0, v5

    .line 6264
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25d

    .line 6265
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6267
    goto/16 :goto_c

    .line 6268
    :cond_25d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6270
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6271
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6272
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6273
    goto/16 :goto_c

    .line 6248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_125
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25e

    move v5, v6

    :cond_25e
    move v0, v5

    .line 6249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25f

    .line 6250
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6252
    goto/16 :goto_c

    .line 6253
    :cond_25f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6256
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6257
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRadioPower(IZ)V

    .line 6258
    goto/16 :goto_c

    .line 6234
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v5, v6

    :cond_260
    move v0, v5

    .line 6235
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_261

    .line 6236
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6238
    goto/16 :goto_c

    .line 6239
    :cond_261
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6242
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getOperator(I)V

    .line 6243
    goto/16 :goto_c

    .line 6220
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v5, v6

    :cond_262
    move v0, v5

    .line 6221
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_263

    .line 6222
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6224
    goto/16 :goto_c

    .line 6225
    :cond_263
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6228
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6229
    goto/16 :goto_c

    .line 6206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v5, v6

    :cond_264
    move v0, v5

    .line 6207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_265

    .line 6208
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6210
    goto/16 :goto_c

    .line 6211
    :cond_265
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6214
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6215
    goto/16 :goto_c

    .line 6192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v5, v6

    :cond_266
    move v0, v5

    .line 6193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_267

    .line 6194
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6196
    goto/16 :goto_c

    .line 6197
    :cond_267
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6200
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSignalStrength(I)V

    .line 6201
    goto/16 :goto_c

    .line 6178
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v5, v6

    :cond_268
    move v0, v5

    .line 6179
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_269

    .line 6180
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6182
    goto/16 :goto_c

    .line 6183
    :cond_269
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6186
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6187
    goto/16 :goto_c

    .line 6164
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v5, v6

    :cond_26a
    move v0, v5

    .line 6165
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26b

    .line 6166
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6168
    goto/16 :goto_c

    .line 6169
    :cond_26b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6172
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->rejectCall(I)V

    .line 6173
    goto/16 :goto_c

    .line 6150
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v5, v6

    :cond_26c
    move v0, v5

    .line 6151
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26d

    .line 6152
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6154
    goto/16 :goto_c

    .line 6155
    :cond_26d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6157
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6158
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->conference(I)V

    .line 6159
    goto/16 :goto_c

    .line 6136
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v5, v6

    :cond_26e
    move v0, v5

    .line 6137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26f

    .line 6138
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6140
    goto/16 :goto_c

    .line 6141
    :cond_26f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6144
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6145
    goto/16 :goto_c

    .line 6122
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v5, v6

    :cond_270
    move v0, v5

    .line 6123
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_271

    .line 6124
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6126
    goto/16 :goto_c

    .line 6127
    :cond_271
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6130
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6131
    goto/16 :goto_c

    .line 6108
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v5, v6

    :cond_272
    move v0, v5

    .line 6109
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_273

    .line 6110
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6112
    goto/16 :goto_c

    .line 6113
    :cond_273
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6116
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6117
    goto/16 :goto_c

    .line 6093
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v5, v6

    :cond_274
    move v0, v5

    .line 6094
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_275

    .line 6095
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6097
    goto/16 :goto_c

    .line 6098
    :cond_275
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6101
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6102
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangup(II)V

    .line 6103
    goto/16 :goto_c

    .line 6078
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v5, v6

    :cond_276
    move v0, v5

    .line 6079
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_277

    .line 6080
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6082
    goto/16 :goto_c

    .line 6083
    :cond_277
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6086
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6087
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6088
    goto/16 :goto_c

    .line 6062
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v5, v6

    :cond_278
    move v0, v5

    .line 6063
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_279

    .line 6064
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6066
    goto/16 :goto_c

    .line 6067
    :cond_279
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6070
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6071
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6072
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6073
    goto/16 :goto_c

    .line 6048
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v5, v6

    :cond_27a
    move v0, v5

    .line 6049
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27b

    .line 6050
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6052
    goto/16 :goto_c

    .line 6053
    :cond_27b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6056
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCurrentCalls(I)V

    .line 6057
    goto/16 :goto_c

    .line 6033
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v5, v6

    :cond_27c
    move v0, v5

    .line 6034
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27d

    .line 6035
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6037
    goto/16 :goto_c

    .line 6038
    :cond_27d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6041
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6042
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6043
    goto/16 :goto_c

    .line 6016
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v5, v6

    :cond_27e
    move v0, v5

    .line 6017
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27f

    .line 6018
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6020
    goto/16 :goto_c

    .line 6021
    :cond_27f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6024
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6025
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6026
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6027
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6028
    goto/16 :goto_c

    .line 5999
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v5, v6

    :cond_280
    move v0, v5

    .line 6000
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_281

    .line 6001
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6003
    goto/16 :goto_c

    .line 6004
    :cond_281
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6007
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6008
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6009
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6010
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6011
    goto/16 :goto_c

    .line 5982
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v5, v6

    :cond_282
    move v0, v5

    .line 5983
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_283

    .line 5984
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5986
    goto/16 :goto_c

    .line 5987
    :cond_283
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5990
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5991
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5992
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5993
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5994
    goto/16 :goto_c

    .line 5966
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v5, v6

    :cond_284
    move v0, v5

    .line 5967
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_285

    .line 5968
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5970
    goto/16 :goto_c

    .line 5971
    :cond_285
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5974
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5975
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5976
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5977
    goto/16 :goto_c

    .line 5949
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_139
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_286

    move v5, v6

    :cond_286
    move v0, v5

    .line 5950
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_287

    .line 5951
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5953
    goto/16 :goto_c

    .line 5954
    :cond_287
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5957
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5958
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5959
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5960
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5961
    goto/16 :goto_c

    .line 5933
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_288

    move v5, v6

    :cond_288
    move v0, v5

    .line 5934
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_289

    .line 5935
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5937
    goto :goto_c

    .line 5938
    :cond_289
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5941
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5942
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5943
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5944
    goto :goto_c

    .line 5919
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28a

    move v5, v6

    :cond_28a
    move v0, v5

    .line 5920
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_28b

    .line 5921
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5923
    goto :goto_c

    .line 5924
    :cond_28b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5927
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getIccCardStatus(I)V

    .line 5928
    goto :goto_c

    .line 5902
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_13c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28c

    goto :goto_b

    :cond_28c
    move v6, v5

    :goto_b
    move v0, v6

    .line 5903
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28d

    .line 5904
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5906
    goto :goto_c

    .line 5907
    :cond_28d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 5910
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 5911
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5912
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5914
    nop

    .line 10944
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_28e
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
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

    .line 5853
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5881
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5882
    return-object p0

    .line 5884
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

    .line 5888
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5889
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5843
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5875
    const/4 v0, 0x1

    return v0
.end method
