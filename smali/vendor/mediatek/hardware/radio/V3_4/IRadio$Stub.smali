.class public abstract Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_4/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_4/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5822
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5825
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

    .line 5843
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5885
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5886
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5887
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5888
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5889
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

    .line 5855
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
        -0x77t
        -0x2at
        0x61t
        -0x1ct
        -0x26t
        -0x1bt
        0x60t
        0x14t
        -0x53t
        -0x14t
        0x56t
        -0x43t
        0x4ft
        0x55t
        -0x69t
        -0x22t
        0x63t
        -0x3et
        0x66t
        -0x2et
        0x14t
        0x20t
        0x1ft
        0x5ft
        0x6et
        -0x56t
        -0x44t
        0x29t
        0x3et
        0x19t
        -0x4bt
        0x49t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    .line 5830
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    const-string v6, "android.hardware.radio@1.0::IRadio"

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

    .line 5849
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5873
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5895
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5897
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

    .line 5925
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

    .line 10977
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 10978
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_290

    .line 10979
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10981
    goto/16 :goto_c

    .line 10964
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 10965
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 10966
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10968
    goto/16 :goto_c

    .line 10969
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10971
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->notifySyspropsChanged()V

    .line 10972
    goto/16 :goto_c

    .line 10948
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 10949
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 10950
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10952
    goto/16 :goto_c

    .line 10953
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10955
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 10956
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10957
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 10958
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10959
    goto/16 :goto_c

    .line 10933
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

    .line 10934
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 10935
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10937
    goto/16 :goto_c

    .line 10938
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10940
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->ping()V

    .line 10941
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10942
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10943
    goto/16 :goto_c

    .line 10923
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 10924
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_290

    .line 10925
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10927
    goto/16 :goto_c

    .line 10910
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 10911
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 10912
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10914
    goto/16 :goto_c

    .line 10915
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10917
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setHALInstrumentation()V

    .line 10918
    goto/16 :goto_c

    .line 10871
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 10872
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 10873
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10875
    goto/16 :goto_c

    .line 10876
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10878
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10879
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10881
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 10883
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 10884
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10885
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10886
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 10887
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 10889
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 10890
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 10892
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 10896
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10897
    nop

    .line 10887
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10893
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 10900
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10902
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10904
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10905
    goto/16 :goto_c

    .line 10855
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

    .line 10856
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 10857
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10859
    goto/16 :goto_c

    .line 10860
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10862
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10863
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10864
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10865
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10866
    goto/16 :goto_c

    .line 10838
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

    .line 10839
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 10840
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10842
    goto/16 :goto_c

    .line 10843
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 10846
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10847
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 10848
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10850
    goto/16 :goto_c

    .line 10822
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

    .line 10823
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 10824
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10826
    goto/16 :goto_c

    .line 10827
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10829
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10830
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10831
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10833
    goto/16 :goto_c

    .line 10806
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v0, v5

    .line 10807
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15

    .line 10808
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10810
    goto/16 :goto_c

    .line 10811
    :cond_15
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10814
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10815
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10816
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupWithReason(III)V

    .line 10817
    goto/16 :goto_c

    .line 10791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    .end local v3    # "reason":I
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 10792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 10793
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10795
    goto/16 :goto_c

    .line 10796
    :cond_17
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10799
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10800
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10801
    goto/16 :goto_c

    .line 10776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 10777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 10778
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10780
    goto/16 :goto_c

    .line 10781
    :cond_19
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10784
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10785
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10786
    goto/16 :goto_c

    .line 10761
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 10762
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 10763
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10765
    goto/16 :goto_c

    .line 10766
    :cond_1b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10769
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10770
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10771
    goto/16 :goto_c

    .line 10745
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 10746
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 10747
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10749
    goto/16 :goto_c

    .line 10750
    :cond_1d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10753
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10754
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10755
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10756
    goto/16 :goto_c

    .line 10729
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 10730
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 10731
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10733
    goto/16 :goto_c

    .line 10734
    :cond_1f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10737
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10738
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10739
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10740
    goto/16 :goto_c

    .line 10714
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 10715
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 10716
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10718
    goto/16 :goto_c

    .line 10719
    :cond_21
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10721
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10722
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10723
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10724
    goto/16 :goto_c

    .line 10699
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 10700
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 10701
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10703
    goto/16 :goto_c

    .line 10704
    :cond_23
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10707
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10708
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10709
    goto/16 :goto_c

    .line 10684
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 10685
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 10686
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10688
    goto/16 :goto_c

    .line 10689
    :cond_25
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10692
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10693
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSilentReboot(II)V

    .line 10694
    goto/16 :goto_c

    .line 10669
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 10670
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 10671
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10673
    goto/16 :goto_c

    .line 10674
    :cond_27
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10677
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10678
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportSimMode(II)V

    .line 10679
    goto/16 :goto_c

    .line 10654
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 10655
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 10656
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10658
    goto/16 :goto_c

    .line 10659
    :cond_29
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10662
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10663
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10664
    goto/16 :goto_c

    .line 10640
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 10641
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 10642
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10644
    goto/16 :goto_c

    .line 10645
    :cond_2b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10648
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10649
    goto/16 :goto_c

    .line 10625
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 10626
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 10627
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10629
    goto/16 :goto_c

    .line 10630
    :cond_2d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10633
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10634
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10635
    goto/16 :goto_c

    .line 10611
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 10612
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 10613
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10615
    goto/16 :goto_c

    .line 10616
    :cond_2f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10619
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetAllConnections(I)V

    .line 10620
    goto/16 :goto_c

    .line 10596
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 10597
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 10598
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10600
    goto/16 :goto_c

    .line 10601
    :cond_31
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10604
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10605
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10606
    goto/16 :goto_c

    .line 10581
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 10582
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 10583
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10585
    goto/16 :goto_c

    .line 10586
    :cond_33
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10589
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10590
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10591
    goto/16 :goto_c

    .line 10566
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 10567
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 10568
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10570
    goto/16 :goto_c

    .line 10571
    :cond_35
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10574
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10575
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10576
    goto/16 :goto_c

    .line 10550
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 10551
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 10552
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10554
    goto/16 :goto_c

    .line 10555
    :cond_37
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10558
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10559
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10560
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10561
    goto/16 :goto_c

    .line 10535
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 10536
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 10537
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10539
    goto/16 :goto_c

    .line 10540
    :cond_39
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10543
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10544
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10545
    goto/16 :goto_c

    .line 10519
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 10520
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 10521
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10523
    goto/16 :goto_c

    .line 10524
    :cond_3b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10527
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10528
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10529
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10530
    goto/16 :goto_c

    .line 10503
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 10504
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 10505
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10507
    goto/16 :goto_c

    .line 10508
    :cond_3d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10511
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10512
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10513
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10514
    goto/16 :goto_c

    .line 10485
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v7, v5

    .line 10486
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_3f

    .line 10487
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10489
    goto/16 :goto_c

    .line 10490
    :cond_3f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10493
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10494
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10495
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10496
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10497
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10498
    goto/16 :goto_c

    .line 10470
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 10471
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 10472
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10473
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10474
    goto/16 :goto_c

    .line 10475
    :cond_41
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10478
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10479
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10480
    goto/16 :goto_c

    .line 10456
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 10457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 10458
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10460
    goto/16 :goto_c

    .line 10461
    :cond_43
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10464
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getApcInfo(I)V

    .line 10465
    goto/16 :goto_c

    .line 10439
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 10440
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 10441
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10443
    goto/16 :goto_c

    .line 10444
    :cond_45
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10447
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10448
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10449
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10450
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setApcMode(IIII)V

    .line 10451
    goto/16 :goto_c

    .line 10422
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 10423
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 10424
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10426
    goto/16 :goto_c

    .line 10427
    :cond_47
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10430
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10431
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10432
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10433
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10434
    goto/16 :goto_c

    .line 10402
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v8, v5

    .line 10403
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_49

    .line 10404
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10406
    goto/16 :goto_c

    .line 10407
    :cond_49
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10410
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10411
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10412
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10413
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10414
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10415
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10416
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10417
    goto/16 :goto_c

    .line 10387
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v12    # "srcIp":Ljava/lang/String;
    .end local v16    # "srcPort":I
    .end local v17    # "dstIp":Ljava/lang/String;
    .end local v18    # "dstPort":I
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 10388
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 10389
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10391
    goto/16 :goto_c

    .line 10392
    :cond_4b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10395
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10396
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10397
    goto/16 :goto_c

    .line 10362
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v12, v5

    .line 10363
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_4d

    .line 10364
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10366
    goto/16 :goto_c

    .line 10367
    :cond_4d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10370
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10371
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10372
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10373
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10374
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10375
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10376
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10377
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10378
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10379
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10380
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10381
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10382
    goto/16 :goto_c

    .line 10345
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
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v0, v5

    .line 10346
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4f

    .line 10347
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10349
    goto/16 :goto_c

    .line 10350
    :cond_4f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10353
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10354
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10355
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10356
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10357
    goto/16 :goto_c

    .line 10329
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 10330
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 10331
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10332
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10333
    goto/16 :goto_c

    .line 10334
    :cond_51
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10336
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10337
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10338
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10339
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10340
    goto/16 :goto_c

    .line 10311
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v7, v5

    .line 10312
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_53

    .line 10313
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10315
    goto/16 :goto_c

    .line 10316
    :cond_53
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10319
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10320
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10321
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10322
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10323
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10324
    goto/16 :goto_c

    .line 10294
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 10295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 10296
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10298
    goto/16 :goto_c

    .line 10299
    :cond_55
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10302
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10303
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10304
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10305
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10306
    goto/16 :goto_c

    .line 10279
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 10280
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 10281
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10283
    goto/16 :goto_c

    .line 10284
    :cond_57
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10287
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10288
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10289
    goto/16 :goto_c

    .line 10264
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v0, v5

    .line 10265
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_59

    .line 10266
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10268
    goto/16 :goto_c

    .line 10269
    :cond_59
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10272
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10273
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setE911State(II)V

    .line 10274
    goto/16 :goto_c

    .line 10248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 10249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 10250
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10252
    goto/16 :goto_c

    .line 10253
    :cond_5b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10256
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10257
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10258
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10259
    goto/16 :goto_c

    .line 10233
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 10234
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 10235
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10237
    goto/16 :goto_c

    .line 10238
    :cond_5d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10241
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10242
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10243
    goto/16 :goto_c

    .line 10218
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 10219
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 10220
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10222
    goto/16 :goto_c

    .line 10223
    :cond_5f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10226
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10227
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10228
    goto/16 :goto_c

    .line 10203
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 10204
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 10205
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10207
    goto/16 :goto_c

    .line 10208
    :cond_61
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10211
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10212
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10213
    goto/16 :goto_c

    .line 10188
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 10189
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 10190
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10192
    goto/16 :goto_c

    .line 10193
    :cond_63
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10196
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10197
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10198
    goto/16 :goto_c

    .line 10174
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 10175
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 10176
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10178
    goto/16 :goto_c

    .line 10179
    :cond_65
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10182
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->restartRILD(I)V

    .line 10183
    goto/16 :goto_c

    .line 10160
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 10161
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 10162
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10164
    goto/16 :goto_c

    .line 10165
    :cond_67
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10168
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetRadio(I)V

    .line 10169
    goto/16 :goto_c

    .line 10145
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 10146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 10147
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10149
    goto/16 :goto_c

    .line 10150
    :cond_69
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10153
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10154
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10155
    goto/16 :goto_c

    .line 10130
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 10131
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 10132
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10134
    goto/16 :goto_c

    .line 10135
    :cond_6b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 10138
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10139
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10140
    goto/16 :goto_c

    .line 10115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 10116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 10117
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10119
    goto/16 :goto_c

    .line 10120
    :cond_6d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10123
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10124
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10125
    goto/16 :goto_c

    .line 10100
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 10101
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 10102
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10104
    goto/16 :goto_c

    .line 10105
    :cond_6f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10108
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10109
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10110
    goto/16 :goto_c

    .line 10085
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 10086
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 10087
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10089
    goto/16 :goto_c

    .line 10090
    :cond_71
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10093
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10094
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10095
    goto/16 :goto_c

    .line 10070
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 10071
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 10072
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10074
    goto/16 :goto_c

    .line 10075
    :cond_73
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10078
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10079
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10080
    goto/16 :goto_c

    .line 10055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 10056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 10057
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10059
    goto/16 :goto_c

    .line 10060
    :cond_75
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10063
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10064
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setTrm(II)V

    .line 10065
    goto/16 :goto_c

    .line 10038
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 10039
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 10040
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10042
    goto/16 :goto_c

    .line 10043
    :cond_77
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10046
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10047
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10048
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10049
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setFdMode(IIII)V

    .line 10050
    goto/16 :goto_c

    .line 10021
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 10022
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 10023
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10025
    goto/16 :goto_c

    .line 10026
    :cond_79
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10029
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10030
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10031
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10032
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10033
    goto/16 :goto_c

    .line 10007
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 10008
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 10009
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10011
    goto/16 :goto_c

    .line 10012
    :cond_7b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10015
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCurrentPOLList(I)V

    .line 10016
    goto/16 :goto_c

    .line 9993
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 9994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 9995
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9997
    goto/16 :goto_c

    .line 9998
    :cond_7d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10001
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPOLCapability(I)V

    .line 10002
    goto/16 :goto_c

    .line 9978
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 9979
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 9980
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9981
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9982
    goto/16 :goto_c

    .line 9983
    :cond_7f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9986
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9987
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getRxTestResult(II)V

    .line 9988
    goto/16 :goto_c

    .line 9963
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 9964
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 9965
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9966
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9967
    goto/16 :goto_c

    .line 9968
    :cond_81
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9971
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9972
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRxTestConfig(II)V

    .line 9973
    goto/16 :goto_c

    .line 9943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v8, v5

    .line 9944
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_83

    .line 9945
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9947
    goto/16 :goto_c

    .line 9948
    :cond_83
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9951
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9952
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9953
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9954
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9955
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9956
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9957
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9958
    goto/16 :goto_c

    .line 9928
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 9929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 9930
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9932
    goto/16 :goto_c

    .line 9933
    :cond_85
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9936
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9937
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9938
    goto/16 :goto_c

    .line 9914
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 9915
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 9916
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9918
    goto/16 :goto_c

    .line 9919
    :cond_87
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9922
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9923
    goto/16 :goto_c

    .line 9897
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 9898
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 9899
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9901
    goto/16 :goto_c

    .line 9902
    :cond_89
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9905
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9906
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9907
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9908
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9909
    goto/16 :goto_c

    .line 9883
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 9884
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 9885
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9887
    goto/16 :goto_c

    .line 9888
    :cond_8b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9891
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->abortFemtocellList(I)V

    .line 9892
    goto/16 :goto_c

    .line 9869
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 9870
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 9871
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9873
    goto/16 :goto_c

    .line 9874
    :cond_8d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9877
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getFemtocellList(I)V

    .line 9878
    goto/16 :goto_c

    .line 9855
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 9856
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 9857
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9859
    goto/16 :goto_c

    .line 9860
    :cond_8f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9863
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9864
    goto/16 :goto_c

    .line 9841
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 9842
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 9843
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9845
    goto/16 :goto_c

    .line 9846
    :cond_91
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9849
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9850
    goto/16 :goto_c

    .line 9827
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 9828
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 9829
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9831
    goto/16 :goto_c

    .line 9832
    :cond_93
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9835
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9836
    goto/16 :goto_c

    .line 9810
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 9811
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 9812
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9814
    goto/16 :goto_c

    .line 9815
    :cond_95
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9818
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9819
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9820
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9821
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9822
    goto/16 :goto_c

    .line 9796
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v0, v5

    .line 9797
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_97

    .line 9798
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9800
    goto/16 :goto_c

    .line 9801
    :cond_97
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9804
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9805
    goto/16 :goto_c

    .line 9781
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 9782
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 9783
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9785
    goto/16 :goto_c

    .line 9786
    :cond_99
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9789
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9790
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reloadModemType(II)V

    .line 9791
    goto/16 :goto_c

    .line 9766
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 9767
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 9768
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9770
    goto/16 :goto_c

    .line 9771
    :cond_9b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9774
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9775
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->storeModemType(II)V

    .line 9776
    goto/16 :goto_c

    .line 9751
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 9752
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 9753
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9755
    goto/16 :goto_c

    .line 9756
    :cond_9d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9759
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9760
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResumeRegistration(II)V

    .line 9761
    goto/16 :goto_c

    .line 9736
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 9737
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 9738
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9740
    goto/16 :goto_c

    .line 9741
    :cond_9f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9744
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9745
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9746
    goto/16 :goto_c

    .line 9721
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 9722
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 9723
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9725
    goto/16 :goto_c

    .line 9726
    :cond_a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9729
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9730
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9731
    goto/16 :goto_c

    .line 9705
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 9706
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 9707
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9709
    goto/16 :goto_c

    .line 9710
    :cond_a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9713
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9714
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9715
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9716
    goto/16 :goto_c

    .line 9689
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 9690
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 9691
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9692
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9693
    goto/16 :goto_c

    .line 9694
    :cond_a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9697
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9698
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9699
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9700
    goto/16 :goto_c

    .line 9675
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 9676
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 9677
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9679
    goto/16 :goto_c

    .line 9680
    :cond_a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9683
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9684
    goto/16 :goto_c

    .line 9659
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 9660
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 9661
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9663
    goto/16 :goto_c

    .line 9664
    :cond_a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9667
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9668
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9669
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9670
    goto/16 :goto_c

    .line 9645
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 9646
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 9647
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9649
    goto/16 :goto_c

    .line 9650
    :cond_ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9653
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9654
    goto/16 :goto_c

    .line 9631
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 9632
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 9633
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9635
    goto/16 :goto_c

    .line 9636
    :cond_ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9639
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9640
    goto/16 :goto_c

    .line 9616
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 9617
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 9618
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9619
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9620
    goto/16 :goto_c

    .line 9621
    :cond_af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9624
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9625
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9626
    goto/16 :goto_c

    .line 9600
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 9601
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 9602
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9604
    goto/16 :goto_c

    .line 9605
    :cond_b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9608
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9609
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9610
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->removeCbMsg(III)V

    .line 9611
    goto/16 :goto_c

    .line 9585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 9586
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 9587
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9589
    goto/16 :goto_c

    .line 9590
    :cond_b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9593
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9594
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEtws(II)V

    .line 9595
    goto/16 :goto_c

    .line 9571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 9572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 9573
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9575
    goto/16 :goto_c

    .line 9576
    :cond_b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9579
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9580
    goto/16 :goto_c

    .line 9555
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 9556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 9557
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9559
    goto/16 :goto_c

    .line 9560
    :cond_b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9563
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9564
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9565
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9566
    goto/16 :goto_c

    .line 9541
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 9542
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 9543
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9545
    goto/16 :goto_c

    .line 9546
    :cond_b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9549
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmsParameters(I)V

    .line 9550
    goto/16 :goto_c

    .line 9522
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v7, v5

    .line 9523
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_bb

    .line 9524
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9526
    goto/16 :goto_c

    .line 9527
    :cond_bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9529
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9530
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9531
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9532
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9533
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9534
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9535
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9536
    goto/16 :goto_c

    .line 9505
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 9506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 9507
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9509
    goto/16 :goto_c

    .line 9510
    :cond_bd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9513
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9514
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9515
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9516
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9517
    goto/16 :goto_c

    .line 9489
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 9490
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 9491
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9492
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9493
    goto/16 :goto_c

    .line 9494
    :cond_bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9496
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9497
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9498
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9499
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9500
    goto/16 :goto_c

    .line 9469
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v8, v5

    .line 9470
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_c1

    .line 9471
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9473
    goto/16 :goto_c

    .line 9474
    :cond_c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9477
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9478
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9479
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9480
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9481
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9482
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9483
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9484
    goto/16 :goto_c

    .line 9454
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 9455
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 9456
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9458
    goto/16 :goto_c

    .line 9459
    :cond_c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9462
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9463
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryNetworkLock(II)V

    .line 9464
    goto/16 :goto_c

    .line 9438
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 9439
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 9440
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9442
    goto/16 :goto_c

    .line 9443
    :cond_c5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9446
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9447
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9448
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9449
    goto/16 :goto_c

    .line 9423
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 9424
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 9425
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9427
    goto/16 :goto_c

    .line 9428
    :cond_c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9431
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9432
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSimPower(II)V

    .line 9433
    goto/16 :goto_c

    .line 9409
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 9410
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 9411
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9413
    goto/16 :goto_c

    .line 9414
    :cond_c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9417
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getIccid(I)V

    .line 9418
    goto/16 :goto_c

    .line 9395
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 9396
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 9397
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9399
    goto/16 :goto_c

    .line 9400
    :cond_cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9403
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getATR(I)V

    .line 9404
    goto/16 :goto_c

    .line 9380
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 9381
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 9382
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9383
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9384
    goto/16 :goto_c

    .line 9385
    :cond_cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9387
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9388
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9389
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9390
    goto/16 :goto_c

    .line 9365
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 9366
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 9367
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9369
    goto/16 :goto_c

    .line 9370
    :cond_cf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9373
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9374
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setModemPower(IZ)V

    .line 9375
    goto/16 :goto_c

    .line 9350
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move v0, v5

    .line 9351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d1

    .line 9352
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9354
    goto/16 :goto_c

    .line 9355
    :cond_d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9358
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9359
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPhonebookReady(II)V

    .line 9360
    goto/16 :goto_c

    .line 9334
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v5, v6

    :cond_d2
    move v0, v5

    .line 9335
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d3

    .line 9336
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9338
    goto/16 :goto_c

    .line 9339
    :cond_d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9342
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9343
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9344
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBAasList(III)V

    .line 9345
    goto/16 :goto_c

    .line 9318
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v5, v6

    :cond_d4
    move v0, v5

    .line 9319
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d5

    .line 9320
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9322
    goto/16 :goto_c

    .line 9323
    :cond_d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9326
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9327
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9328
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9329
    goto/16 :goto_c

    .line 9302
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

    .line 9303
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d7

    .line 9304
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9306
    goto/16 :goto_c

    .line 9307
    :cond_d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9310
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9311
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9312
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9313
    goto/16 :goto_c

    .line 9286
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

    .line 9287
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d9

    .line 9288
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9289
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9290
    goto/16 :goto_c

    .line 9291
    :cond_d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9294
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9295
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9296
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9297
    goto/16 :goto_c

    .line 9270
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v5, v6

    :cond_da
    move v0, v5

    .line 9271
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_db

    .line 9272
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9274
    goto/16 :goto_c

    .line 9275
    :cond_db
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9278
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9279
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9280
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9281
    goto/16 :goto_c

    .line 9254
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v5, v6

    :cond_dc
    move v0, v5

    .line 9255
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_dd

    .line 9256
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9257
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9258
    goto/16 :goto_c

    .line 9259
    :cond_dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9262
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9263
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9264
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9265
    goto/16 :goto_c

    .line 9238
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v5, v6

    :cond_de
    move v0, v5

    .line 9239
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_df

    .line 9240
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9241
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9242
    goto/16 :goto_c

    .line 9243
    :cond_df
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9246
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9247
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9248
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9249
    goto/16 :goto_c

    .line 9222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v5, v6

    :cond_e0
    move v0, v5

    .line 9223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e1

    .line 9224
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9226
    goto/16 :goto_c

    .line 9227
    :cond_e1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9230
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9231
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9232
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9233
    goto/16 :goto_c

    .line 9208
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v5, v6

    :cond_e2
    move v0, v5

    .line 9209
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e3

    .line 9210
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9212
    goto/16 :goto_c

    .line 9213
    :cond_e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9216
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9217
    goto/16 :goto_c

    .line 9194
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v5, v6

    :cond_e4
    move v0, v5

    .line 9195
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e5

    .line 9196
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9198
    goto/16 :goto_c

    .line 9199
    :cond_e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9202
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9203
    goto/16 :goto_c

    .line 9178
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v5, v6

    :cond_e6
    move v0, v5

    .line 9179
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e7

    .line 9180
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9182
    goto/16 :goto_c

    .line 9183
    :cond_e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9186
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9187
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9188
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9189
    goto/16 :goto_c

    .line 9163
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v5, v6

    :cond_e8
    move v0, v5

    .line 9164
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e9

    .line 9165
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9167
    goto/16 :goto_c

    .line 9168
    :cond_e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9171
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9172
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9173
    goto/16 :goto_c

    .line 9147
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v5, v6

    :cond_ea
    move v0, v5

    .line 9148
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_eb

    .line 9149
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9151
    goto/16 :goto_c

    .line 9152
    :cond_eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9155
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9156
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9157
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBGasList(III)V

    .line 9158
    goto/16 :goto_c

    .line 9130
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    move v0, v5

    .line 9131
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ed

    .line 9132
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9134
    goto/16 :goto_c

    .line 9135
    :cond_ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9138
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9139
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9140
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9141
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9142
    goto/16 :goto_c

    .line 9115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v5, v6

    :cond_ee
    move v0, v5

    .line 9116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ef

    .line 9117
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9119
    goto/16 :goto_c

    .line 9120
    :cond_ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9123
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9124
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9125
    goto/16 :goto_c

    .line 9101
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v5, v6

    :cond_f0
    move v0, v5

    .line 9102
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f1

    .line 9103
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9105
    goto/16 :goto_c

    .line 9106
    :cond_f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9109
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryUPBCapability(I)V

    .line 9110
    goto/16 :goto_c

    .line 9084
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v5, v6

    :cond_f2
    move v0, v5

    .line 9085
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f3

    .line 9086
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9088
    goto/16 :goto_c

    .line 9089
    :cond_f3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9092
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9093
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9094
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9095
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9096
    goto/16 :goto_c

    .line 9068
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v5, v6

    :cond_f4
    move v0, v5

    .line 9069
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f5

    .line 9070
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9071
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9072
    goto/16 :goto_c

    .line 9073
    :cond_f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9076
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9077
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9078
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9079
    goto/16 :goto_c

    .line 9053
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v5, v6

    :cond_f6
    move v0, v5

    .line 9054
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f7

    .line 9055
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9057
    goto/16 :goto_c

    .line 9058
    :cond_f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9061
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9062
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9063
    goto/16 :goto_c

    .line 9039
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v5, v6

    :cond_f8
    move v0, v5

    .line 9040
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f9

    .line 9041
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9042
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9043
    goto/16 :goto_c

    .line 9044
    :cond_f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9047
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getEccNum(I)V

    .line 9048
    goto/16 :goto_c

    .line 9023
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v5, v6

    :cond_fa
    move v0, v5

    .line 9024
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fb

    .line 9025
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9027
    goto/16 :goto_c

    .line 9028
    :cond_fb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9031
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9032
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9033
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9034
    goto/16 :goto_c

    .line 9008
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v5, v6

    :cond_fc
    move v0, v5

    .line 9009
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fd

    .line 9010
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9012
    goto/16 :goto_c

    .line 9013
    :cond_fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9016
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9017
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 9018
    goto/16 :goto_c

    .line 8993
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v5, v6

    :cond_fe
    move v0, v5

    .line 8994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ff

    .line 8995
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8997
    goto/16 :goto_c

    .line 8998
    :cond_ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9001
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9002
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->eccPreferredRat(II)V

    .line 9003
    goto/16 :goto_c

    .line 8977
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v5, v6

    :cond_100
    move v0, v5

    .line 8978
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_101

    .line 8979
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8981
    goto/16 :goto_c

    .line 8982
    :cond_101
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8985
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8986
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8987
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->currentStatus(III)V

    .line 8988
    goto/16 :goto_c

    .line 8961
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v5, v6

    :cond_102
    move v0, v5

    .line 8962
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_103

    .line 8963
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8965
    goto/16 :goto_c

    .line 8966
    :cond_103
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8969
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8970
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8971
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 8972
    goto/16 :goto_c

    .line 8946
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v5, v6

    :cond_104
    move v0, v5

    .line 8947
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_105

    .line 8948
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8950
    goto/16 :goto_c

    .line 8951
    :cond_105
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8954
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8955
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8956
    goto/16 :goto_c

    .line 8930
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v5, v6

    :cond_106
    move v0, v5

    .line 8931
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_107

    .line 8932
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8934
    goto/16 :goto_c

    .line 8935
    :cond_107
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8938
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8939
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8940
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8941
    goto/16 :goto_c

    .line 8913
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v5, v6

    :cond_108
    move v0, v5

    .line 8914
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_109

    .line 8915
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8916
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8917
    goto/16 :goto_c

    .line 8918
    :cond_109
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8920
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8921
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8922
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8923
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8924
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallIndication(IIII)V

    .line 8925
    goto/16 :goto_c

    .line 8899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v5, v6

    :cond_10a
    move v0, v5

    .line 8900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10b

    .line 8901
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8903
    goto/16 :goto_c

    .line 8904
    :cond_10b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8907
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupAll(I)V

    .line 8908
    goto/16 :goto_c

    .line 8884
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v5, v6

    :cond_10c
    move v0, v5

    .line 8885
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10d

    .line 8886
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8887
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8888
    goto/16 :goto_c

    .line 8889
    :cond_10d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8892
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8893
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8894
    goto/16 :goto_c

    .line 8870
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v5, v6

    :cond_10e
    move v0, v5

    .line 8871
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10f

    .line 8872
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8874
    goto/16 :goto_c

    .line 8875
    :cond_10f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8878
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetSuppServ(I)V

    .line 8879
    goto/16 :goto_c

    .line 8856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v5, v6

    :cond_110
    move v0, v5

    .line 8857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_111

    .line 8858
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8860
    goto/16 :goto_c

    .line 8861
    :cond_111
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8864
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getXcapStatus(I)V

    .line 8865
    goto/16 :goto_c

    .line 8842
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v5, v6

    :cond_112
    move v0, v5

    .line 8843
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_113

    .line 8844
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8846
    goto/16 :goto_c

    .line 8847
    :cond_113
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8850
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->cancelUssi(I)V

    .line 8851
    goto/16 :goto_c

    .line 8826
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v5, v6

    :cond_114
    move v0, v5

    .line 8827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_115

    .line 8828
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8830
    goto/16 :goto_c

    .line 8831
    :cond_115
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8834
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8835
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8836
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8837
    goto/16 :goto_c

    .line 8808
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v5, v6

    :cond_116
    move v7, v5

    .line 8809
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_117

    .line 8810
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8812
    goto/16 :goto_c

    .line 8813
    :cond_117
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8816
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8817
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8818
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8819
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8820
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8821
    goto/16 :goto_c

    .line 8792
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v5, v6

    :cond_118
    move v0, v5

    .line 8793
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_119

    .line 8794
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8795
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8796
    goto/16 :goto_c

    .line 8797
    :cond_119
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8799
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8800
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8801
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8802
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8803
    goto/16 :goto_c

    .line 8776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v5, v6

    :cond_11a
    move v0, v5

    .line 8777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11b

    .line 8778
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8780
    goto/16 :goto_c

    .line 8781
    :cond_11b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8784
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8785
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8786
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8787
    goto/16 :goto_c

    .line 8761
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v5, v6

    :cond_11c
    move v0, v5

    .line 8762
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11d

    .line 8763
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8765
    goto/16 :goto_c

    .line 8766
    :cond_11d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8769
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8770
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setColr(II)V

    .line 8771
    goto/16 :goto_c

    .line 8746
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v5, v6

    :cond_11e
    move v0, v5

    .line 8747
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11f

    .line 8748
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8750
    goto/16 :goto_c

    .line 8751
    :cond_11f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8754
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8755
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setColp(II)V

    .line 8756
    goto/16 :goto_c

    .line 8731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v5, v6

    :cond_120
    move v0, v5

    .line 8732
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_121

    .line 8733
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8735
    goto/16 :goto_c

    .line 8736
    :cond_121
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8739
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8740
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8741
    goto/16 :goto_c

    .line 8717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v5, v6

    :cond_122
    move v0, v5

    .line 8718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_123

    .line 8719
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8721
    goto/16 :goto_c

    .line 8722
    :cond_123
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8725
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getColr(I)V

    .line 8726
    goto/16 :goto_c

    .line 8703
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v5, v6

    :cond_124
    move v0, v5

    .line 8704
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_125

    .line 8705
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8707
    goto/16 :goto_c

    .line 8708
    :cond_125
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8711
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getColp(I)V

    .line 8712
    goto/16 :goto_c

    .line 8688
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v5, v6

    :cond_126
    move v0, v5

    .line 8689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_127

    .line 8690
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8692
    goto/16 :goto_c

    .line 8693
    :cond_127
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8696
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8697
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setClip(II)V

    .line 8698
    goto/16 :goto_c

    .line 8670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v5, v6

    :cond_128
    move v7, v5

    .line 8671
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_129

    .line 8672
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8674
    goto/16 :goto_c

    .line 8675
    :cond_129
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8678
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8679
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8680
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8681
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8682
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8683
    goto/16 :goto_c

    .line 8655
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v5, v6

    :cond_12a
    move v0, v5

    .line 8656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12b

    .line 8657
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8659
    goto/16 :goto_c

    .line 8660
    :cond_12b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8663
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8664
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getRoamingEnable(II)V

    .line 8665
    goto/16 :goto_c

    .line 8640
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v5, v6

    :cond_12c
    move v0, v5

    .line 8641
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12d

    .line 8642
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8644
    goto/16 :goto_c

    .line 8645
    :cond_12d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8648
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8649
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8650
    goto/16 :goto_c

    .line 8625
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v5, v6

    :cond_12e
    move v0, v5

    .line 8626
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12f

    .line 8627
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8629
    goto/16 :goto_c

    .line 8630
    :cond_12f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8633
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8634
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8635
    goto/16 :goto_c

    .line 8611
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v5, v6

    :cond_130
    move v0, v5

    .line 8612
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_131

    .line 8613
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8615
    goto/16 :goto_c

    .line 8616
    :cond_131
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8619
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8620
    goto/16 :goto_c

    .line 8595
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v5, v6

    :cond_132
    move v0, v5

    .line 8596
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_133

    .line 8597
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8599
    goto/16 :goto_c

    .line 8600
    :cond_133
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8603
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8604
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8605
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8606
    goto/16 :goto_c

    .line 8578
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v5, v6

    :cond_134
    move v0, v5

    .line 8579
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_135

    .line 8580
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8582
    goto/16 :goto_c

    .line 8583
    :cond_135
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8586
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8587
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8588
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8589
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8590
    goto/16 :goto_c

    .line 8562
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v5, v6

    :cond_136
    move v0, v5

    .line 8563
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_137

    .line 8564
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8566
    goto/16 :goto_c

    .line 8567
    :cond_137
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8570
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8571
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8572
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8573
    goto/16 :goto_c

    .line 8546
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

    .line 8547
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_139

    .line 8548
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8549
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8550
    goto/16 :goto_c

    .line 8551
    :cond_139
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8553
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8554
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8555
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8556
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8557
    goto/16 :goto_c

    .line 8531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v5, v6

    :cond_13a
    move v0, v5

    .line 8532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13b

    .line 8533
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8535
    goto/16 :goto_c

    .line 8536
    :cond_13b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8539
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8540
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->forceReleaseCall(II)V

    .line 8541
    goto/16 :goto_c

    .line 8515
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v5, v6

    :cond_13c
    move v0, v5

    .line 8516
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13d

    .line 8517
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8519
    goto/16 :goto_c

    .line 8520
    :cond_13d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8523
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8524
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8525
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8526
    goto/16 :goto_c

    .line 8500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v5, v6

    :cond_13e
    move v0, v5

    .line 8501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13f

    .line 8502
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8504
    goto/16 :goto_c

    .line 8505
    :cond_13f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8508
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8509
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8510
    goto/16 :goto_c

    .line 8485
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v5, v6

    :cond_140
    move v0, v5

    .line 8486
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_141

    .line 8487
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8489
    goto/16 :goto_c

    .line 8490
    :cond_141
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8493
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8494
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8495
    goto/16 :goto_c

    .line 8468
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v5, v6

    :cond_142
    move v0, v5

    .line 8469
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_143

    .line 8470
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8472
    goto/16 :goto_c

    .line 8473
    :cond_143
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8476
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8477
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8478
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8479
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8480
    goto/16 :goto_c

    .line 8452
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v5, v6

    :cond_144
    move v0, v5

    .line 8453
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_145

    .line 8454
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8456
    goto/16 :goto_c

    .line 8457
    :cond_145
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8460
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8461
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8462
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8463
    goto/16 :goto_c

    .line 8437
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v5, v6

    :cond_146
    move v0, v5

    .line 8438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_147

    .line 8439
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8441
    goto/16 :goto_c

    .line 8442
    :cond_147
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8445
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8446
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWfcProfile(II)V

    .line 8447
    goto/16 :goto_c

    .line 8420
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v5, v6

    :cond_148
    move v0, v5

    .line 8421
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_149

    .line 8422
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8424
    goto/16 :goto_c

    .line 8425
    :cond_149
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8428
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8429
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8430
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8431
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8432
    goto/16 :goto_c

    .line 8403
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v5, v6

    :cond_14a
    move v0, v5

    .line 8404
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14b

    .line 8405
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8407
    goto/16 :goto_c

    .line 8408
    :cond_14b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8410
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8411
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8412
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8413
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8414
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8415
    goto/16 :goto_c

    .line 8387
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v5, v6

    :cond_14c
    move v0, v5

    .line 8388
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14d

    .line 8389
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8391
    goto/16 :goto_c

    .line 8392
    :cond_14d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8395
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8396
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8397
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8398
    goto/16 :goto_c

    .line 8372
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v5, v6

    :cond_14e
    move v0, v5

    .line 8373
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14f

    .line 8374
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8376
    goto/16 :goto_c

    .line 8377
    :cond_14f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8380
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8381
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8382
    goto/16 :goto_c

    .line 8352
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_9e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_150

    move v5, v6

    :cond_150
    move v8, v5

    .line 8353
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_151

    .line 8354
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8356
    goto/16 :goto_c

    .line 8357
    :cond_151
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8360
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8361
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8362
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8363
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8364
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8365
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8366
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8367
    goto/16 :goto_c

    .line 8337
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_9f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v5, v6

    :cond_152
    move v0, v5

    .line 8338
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_153

    .line 8339
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8341
    goto/16 :goto_c

    .line 8342
    :cond_153
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8345
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8346
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8347
    goto/16 :goto_c

    .line 8322
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v5, v6

    :cond_154
    move v0, v5

    .line 8323
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_155

    .line 8324
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8326
    goto/16 :goto_c

    .line 8327
    :cond_155
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8330
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8331
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8332
    goto/16 :goto_c

    .line 8307
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_156

    move v5, v6

    :cond_156
    move v0, v5

    .line 8308
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_157

    .line 8309
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8311
    goto/16 :goto_c

    .line 8312
    :cond_157
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8314
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8315
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8316
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8317
    goto/16 :goto_c

    .line 8292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v5, v6

    :cond_158
    move v0, v5

    .line 8293
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_159

    .line 8294
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8296
    goto/16 :goto_c

    .line 8297
    :cond_159
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8300
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8301
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8302
    goto/16 :goto_c

    .line 8277
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v5, v6

    :cond_15a
    move v0, v5

    .line 8278
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15b

    .line 8279
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8281
    goto/16 :goto_c

    .line 8282
    :cond_15b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8285
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8286
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8287
    goto/16 :goto_c

    .line 8262
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v5, v6

    :cond_15c
    move v0, v5

    .line 8263
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15d

    .line 8264
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8266
    goto/16 :goto_c

    .line 8267
    :cond_15d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8270
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8271
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8272
    goto/16 :goto_c

    .line 8247
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v5, v6

    :cond_15e
    move v0, v5

    .line 8248
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15f

    .line 8249
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8251
    goto/16 :goto_c

    .line 8252
    :cond_15f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8255
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8256
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8257
    goto/16 :goto_c

    .line 8232
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v5, v6

    :cond_160
    move v0, v5

    .line 8233
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_161

    .line 8234
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8236
    goto/16 :goto_c

    .line 8237
    :cond_161
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8240
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8241
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsEnable(IZ)V

    .line 8242
    goto/16 :goto_c

    .line 8217
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v5, v6

    :cond_162
    move v0, v5

    .line 8218
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_163

    .line 8219
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8221
    goto/16 :goto_c

    .line 8222
    :cond_163
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8225
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8226
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsDeregNotification(II)V

    .line 8227
    goto/16 :goto_c

    .line 8202
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v5, v6

    :cond_164
    move v0, v5

    .line 8203
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_165

    .line 8204
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8205
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8206
    goto/16 :goto_c

    .line 8207
    :cond_165
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8210
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8211
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resumeCall(II)V

    .line 8212
    goto/16 :goto_c

    .line 8187
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v5, v6

    :cond_166
    move v0, v5

    .line 8188
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_167

    .line 8189
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8191
    goto/16 :goto_c

    .line 8192
    :cond_167
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8195
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8196
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->holdCall(II)V

    .line 8197
    goto/16 :goto_c

    .line 8171
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v5, v6

    :cond_168
    move v0, v5

    .line 8172
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_169

    .line 8173
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8174
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8175
    goto/16 :goto_c

    .line 8176
    :cond_169
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8179
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8180
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8181
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8182
    goto/16 :goto_c

    .line 8155
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v5, v6

    :cond_16a
    move v0, v5

    .line 8156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_16b

    .line 8157
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8159
    goto/16 :goto_c

    .line 8160
    :cond_16b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8163
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8164
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8165
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->videoCallAccept(III)V

    .line 8166
    goto/16 :goto_c

    .line 8138
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    goto :goto_7

    :cond_16c
    move v6, v5

    :goto_7
    move v0, v6

    .line 8139
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16d

    .line 8140
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8142
    goto/16 :goto_c

    .line 8143
    :cond_16d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 8146
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 8147
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8148
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8149
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8150
    goto/16 :goto_c

    .line 8121
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_ad
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    goto :goto_8

    :cond_16e
    move v6, v5

    :goto_8
    move v0, v6

    .line 8122
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16f

    .line 8123
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8125
    goto/16 :goto_c

    .line 8126
    :cond_16f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 8129
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 8130
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8131
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8133
    goto/16 :goto_c

    .line 8104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_ae
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_170

    goto :goto_9

    :cond_170
    move v6, v5

    :goto_9
    move v0, v6

    .line 8105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_171

    .line 8106
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8108
    goto/16 :goto_c

    .line 8109
    :cond_171
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 8112
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 8113
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8114
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8116
    goto/16 :goto_c

    .line 8087
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_af
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_172

    goto :goto_a

    :cond_172
    move v6, v5

    :goto_a
    move v0, v6

    .line 8088
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_173

    .line 8089
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8091
    goto/16 :goto_c

    .line 8092
    :cond_173
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 8095
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 8096
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8097
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8099
    goto/16 :goto_c

    .line 8071
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_174

    move v5, v6

    :cond_174
    move v1, v5

    .line 8072
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_175

    .line 8073
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8074
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8075
    goto/16 :goto_c

    .line 8076
    :cond_175
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8079
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8080
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8081
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8082
    goto/16 :goto_c

    .line 8048
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_b1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_176

    move v5, v6

    :cond_176
    move v10, v5

    .line 8049
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v6, :cond_177

    .line 8050
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8052
    goto/16 :goto_c

    .line 8053
    :cond_177
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8056
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8057
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8058
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8060
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8061
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8062
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8063
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8064
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8065
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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8066
    goto/16 :goto_c

    .line 8028
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
    :pswitch_b2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_178

    move v5, v6

    :cond_178
    move v8, v5

    .line 8029
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_179

    .line 8030
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8031
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8032
    goto/16 :goto_c

    .line 8033
    :cond_179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8035
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8036
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8037
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8038
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8039
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8040
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8041
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8042
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8043
    goto/16 :goto_c

    .line 8010
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_17a

    move v5, v6

    :cond_17a
    move v7, v5

    .line 8011
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_17b

    .line 8012
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8014
    goto/16 :goto_c

    .line 8015
    :cond_17b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8018
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8019
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8020
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8021
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8022
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 8023
    goto/16 :goto_c

    .line 7995
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_17c

    move v5, v6

    :cond_17c
    move v1, v5

    .line 7996
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_17d

    .line 7997
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7998
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7999
    goto/16 :goto_c

    .line 8000
    :cond_17d
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8003
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8004
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 8005
    goto/16 :goto_c

    .line 7979
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_17e

    move v5, v6

    :cond_17e
    move v1, v5

    .line 7980
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_17f

    .line 7981
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7983
    goto/16 :goto_c

    .line 7984
    :cond_17f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7987
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 7988
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7989
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 7990
    goto/16 :goto_c

    .line 7964
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_180

    move v5, v6

    :cond_180
    move v0, v5

    .line 7965
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_181

    .line 7966
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7968
    goto/16 :goto_c

    .line 7969
    :cond_181
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7972
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7973
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopKeepalive(II)V

    .line 7974
    goto/16 :goto_c

    .line 7948
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v5, v6

    :cond_182
    move v0, v5

    .line 7949
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_183

    .line 7950
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7952
    goto/16 :goto_c

    .line 7953
    :cond_183
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7956
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7957
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7958
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7959
    goto/16 :goto_c

    .line 7934
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v5, v6

    :cond_184
    move v0, v5

    .line 7935
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_185

    .line 7936
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7938
    goto/16 :goto_c

    .line 7939
    :cond_185
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7941
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7942
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopNetworkScan(I)V

    .line 7943
    goto/16 :goto_c

    .line 7918
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v5, v6

    :cond_186
    move v0, v5

    .line 7919
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_187

    .line 7920
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7922
    goto/16 :goto_c

    .line 7923
    :cond_187
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7926
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7927
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7928
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7929
    goto/16 :goto_c

    .line 7903
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v5, v6

    :cond_188
    move v0, v5

    .line 7904
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_189

    .line 7905
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7907
    goto/16 :goto_c

    .line 7908
    :cond_189
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7911
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7912
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7913
    goto/16 :goto_c

    .line 7887
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v5, v6

    :cond_18a
    move v0, v5

    .line 7888
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18b

    .line 7889
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7891
    goto/16 :goto_c

    .line 7892
    :cond_18b
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7895
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7896
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7897
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7898
    goto/16 :goto_c

    .line 7874
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v5, v6

    :cond_18c
    move v0, v5

    .line 7875
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18d

    .line 7876
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7878
    goto/16 :goto_c

    .line 7879
    :cond_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7881
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->responseAcknowledgement()V

    .line 7882
    goto/16 :goto_c

    .line 7859
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v5, v6

    :cond_18e
    move v0, v5

    .line 7860
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18f

    .line 7861
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7863
    goto/16 :goto_c

    .line 7864
    :cond_18f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7867
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7868
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7869
    goto/16 :goto_c

    .line 7844
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v5, v6

    :cond_190
    move v0, v5

    .line 7845
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_191

    .line 7846
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7848
    goto/16 :goto_c

    .line 7849
    :cond_191
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7852
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7853
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setIndicationFilter(II)V

    .line 7854
    goto/16 :goto_c

    .line 7828
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v5, v6

    :cond_192
    move v0, v5

    .line 7829
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_193

    .line 7830
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7832
    goto/16 :goto_c

    .line 7833
    :cond_193
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7836
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7837
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7838
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7839
    goto/16 :goto_c

    .line 7814
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v5, v6

    :cond_194
    move v0, v5

    .line 7815
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_195

    .line 7816
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7818
    goto/16 :goto_c

    .line 7819
    :cond_195
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7822
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7823
    goto/16 :goto_c

    .line 7797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v5, v6

    :cond_196
    move v0, v5

    .line 7798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_197

    .line 7799
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7801
    goto/16 :goto_c

    .line 7802
    :cond_197
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7805
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7806
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7807
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7808
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7809
    goto/16 :goto_c

    .line 7783
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_198

    move v5, v6

    :cond_198
    move v0, v5

    .line 7784
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_199

    .line 7785
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7787
    goto/16 :goto_c

    .line 7788
    :cond_199
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7791
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7792
    goto/16 :goto_c

    .line 7769
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v5, v6

    :cond_19a
    move v0, v5

    .line 7770
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19b

    .line 7771
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7773
    goto/16 :goto_c

    .line 7774
    :cond_19b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7777
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->pullLceData(I)V

    .line 7778
    goto/16 :goto_c

    .line 7755
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19c

    move v5, v6

    :cond_19c
    move v0, v5

    .line 7756
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19d

    .line 7757
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7759
    goto/16 :goto_c

    .line 7760
    :cond_19d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7763
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopLceService(I)V

    .line 7764
    goto/16 :goto_c

    .line 7739
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v5, v6

    :cond_19e
    move v0, v5

    .line 7740
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19f

    .line 7741
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7743
    goto/16 :goto_c

    .line 7744
    :cond_19f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7747
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7748
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7749
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startLceService(IIZ)V

    .line 7750
    goto/16 :goto_c

    .line 7723
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v5, v6

    :cond_1a0
    move v0, v5

    .line 7724
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a1

    .line 7725
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7727
    goto/16 :goto_c

    .line 7728
    :cond_1a1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7731
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7732
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7733
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7734
    goto/16 :goto_c

    .line 7709
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v5, v6

    :cond_1a2
    move v0, v5

    .line 7710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a3

    .line 7711
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7713
    goto/16 :goto_c

    .line 7714
    :cond_1a3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7717
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getRadioCapability(I)V

    .line 7718
    goto/16 :goto_c

    .line 7695
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a4

    move v5, v6

    :cond_1a4
    move v0, v5

    .line 7696
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a5

    .line 7697
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7699
    goto/16 :goto_c

    .line 7700
    :cond_1a5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7703
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->requestShutdown(I)V

    .line 7704
    goto/16 :goto_c

    .line 7679
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v5, v6

    :cond_1a6
    move v0, v5

    .line 7680
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a7

    .line 7681
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7683
    goto/16 :goto_c

    .line 7684
    :cond_1a7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7687
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7688
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7689
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7690
    goto/16 :goto_c

    .line 7662
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v5, v6

    :cond_1a8
    move v0, v5

    .line 7663
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a9

    .line 7664
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7666
    goto/16 :goto_c

    .line 7667
    :cond_1a9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7670
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7671
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7672
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7673
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7674
    goto/16 :goto_c

    .line 7648
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v5, v6

    :cond_1aa
    move v0, v5

    .line 7649
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ab

    .line 7650
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7652
    goto/16 :goto_c

    .line 7653
    :cond_1ab
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7656
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getHardwareConfig(I)V

    .line 7657
    goto/16 :goto_c

    .line 7633
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ac

    move v5, v6

    :cond_1ac
    move v0, v5

    .line 7634
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ad

    .line 7635
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7637
    goto/16 :goto_c

    .line 7638
    :cond_1ad
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7641
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7642
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7643
    goto/16 :goto_c

    .line 7617
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_cd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ae

    move v5, v6

    :cond_1ae
    move v0, v5

    .line 7618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1af

    .line 7619
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7621
    goto/16 :goto_c

    .line 7622
    :cond_1af
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7625
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7626
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7627
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7628
    goto/16 :goto_c

    .line 7602
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v5, v6

    :cond_1b0
    move v0, v5

    .line 7603
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b1

    .line 7604
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7605
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7606
    goto/16 :goto_c

    .line 7607
    :cond_1b1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7610
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7611
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvResetConfig(II)V

    .line 7612
    goto/16 :goto_c

    .line 7587
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v5, v6

    :cond_1b2
    move v0, v5

    .line 7588
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b3

    .line 7589
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7591
    goto/16 :goto_c

    .line 7592
    :cond_1b3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7595
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7596
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7597
    goto/16 :goto_c

    .line 7571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v5, v6

    :cond_1b4
    move v0, v5

    .line 7572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b5

    .line 7573
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7575
    goto/16 :goto_c

    .line 7576
    :cond_1b5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7579
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7580
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7581
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7582
    goto/16 :goto_c

    .line 7556
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v5, v6

    :cond_1b6
    move v0, v5

    .line 7557
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b7

    .line 7558
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7560
    goto/16 :goto_c

    .line 7561
    :cond_1b7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7564
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7565
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvReadItem(II)V

    .line 7566
    goto/16 :goto_c

    .line 7540
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v5, v6

    :cond_1b8
    move v0, v5

    .line 7541
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b9

    .line 7542
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7544
    goto/16 :goto_c

    .line 7545
    :cond_1b9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7548
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7549
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7550
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7551
    goto/16 :goto_c

    .line 7525
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v5, v6

    :cond_1ba
    move v0, v5

    .line 7526
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bb

    .line 7527
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7529
    goto/16 :goto_c

    .line 7530
    :cond_1bb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7533
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7534
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7535
    goto/16 :goto_c

    .line 7509
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v5, v6

    :cond_1bc
    move v0, v5

    .line 7510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bd

    .line 7511
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7513
    goto/16 :goto_c

    .line 7514
    :cond_1bd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7517
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7518
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7519
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7520
    goto/16 :goto_c

    .line 7493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v5, v6

    :cond_1be
    move v0, v5

    .line 7494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bf

    .line 7495
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7497
    goto/16 :goto_c

    .line 7498
    :cond_1bf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7501
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7502
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7503
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7504
    goto/16 :goto_c

    .line 7477
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v5, v6

    :cond_1c0
    move v0, v5

    .line 7478
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c1

    .line 7479
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7481
    goto/16 :goto_c

    .line 7482
    :cond_1c1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7485
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7486
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7487
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7488
    goto/16 :goto_c

    .line 7463
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c2

    move v5, v6

    :cond_1c2
    move v0, v5

    .line 7464
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c3

    .line 7465
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7467
    goto/16 :goto_c

    .line 7468
    :cond_1c3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7471
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7472
    goto/16 :goto_c

    .line 7445
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v5, v6

    :cond_1c4
    move v0, v5

    .line 7446
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c5

    .line 7447
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7449
    goto/16 :goto_c

    .line 7450
    :cond_1c5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7453
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7454
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7456
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7457
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7458
    goto/16 :goto_c

    .line 7430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v5, v6

    :cond_1c6
    move v0, v5

    .line 7431
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c7

    .line 7432
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7434
    goto/16 :goto_c

    .line 7435
    :cond_1c7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7438
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7439
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7440
    goto/16 :goto_c

    .line 7416
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v5, v6

    :cond_1c8
    move v0, v5

    .line 7417
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c9

    .line 7418
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7420
    goto/16 :goto_c

    .line 7421
    :cond_1c9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7424
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCellInfoList(I)V

    .line 7425
    goto/16 :goto_c

    .line 7402
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_db
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ca

    move v5, v6

    :cond_1ca
    move v0, v5

    .line 7403
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cb

    .line 7404
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7406
    goto/16 :goto_c

    .line 7407
    :cond_1cb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7410
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7411
    goto/16 :goto_c

    .line 7387
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v5, v6

    :cond_1cc
    move v0, v5

    .line 7388
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cd

    .line 7389
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7391
    goto/16 :goto_c

    .line 7392
    :cond_1cd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7395
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7396
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7397
    goto/16 :goto_c

    .line 7371
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v5, v6

    :cond_1ce
    move v0, v5

    .line 7372
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cf

    .line 7373
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7375
    goto/16 :goto_c

    .line 7376
    :cond_1cf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7379
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7380
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7381
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7382
    goto/16 :goto_c

    .line 7356
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v5, v6

    :cond_1d0
    move v0, v5

    .line 7357
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d1

    .line 7358
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7360
    goto/16 :goto_c

    .line 7361
    :cond_1d1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7364
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7365
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7366
    goto/16 :goto_c

    .line 7342
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v5, v6

    :cond_1d2
    move v0, v5

    .line 7343
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d3

    .line 7344
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7346
    goto/16 :goto_c

    .line 7347
    :cond_1d3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7350
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7351
    goto/16 :goto_c

    .line 7328
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d4

    move v5, v6

    :cond_1d4
    move v0, v5

    .line 7329
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d5

    .line 7330
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7332
    goto/16 :goto_c

    .line 7333
    :cond_1d5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7336
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7337
    goto/16 :goto_c

    .line 7313
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v5, v6

    :cond_1d6
    move v0, v5

    .line 7314
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d7

    .line 7315
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7316
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7317
    goto/16 :goto_c

    .line 7318
    :cond_1d7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7321
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7322
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7323
    goto/16 :goto_c

    .line 7298
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v5, v6

    :cond_1d8
    move v0, v5

    .line 7299
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d9

    .line 7300
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7302
    goto/16 :goto_c

    .line 7303
    :cond_1d9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7306
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7307
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7308
    goto/16 :goto_c

    .line 7284
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v5, v6

    :cond_1da
    move v0, v5

    .line 7285
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1db

    .line 7286
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7288
    goto/16 :goto_c

    .line 7289
    :cond_1db
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7292
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmscAddress(I)V

    .line 7293
    goto/16 :goto_c

    .line 7270
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v5, v6

    :cond_1dc
    move v0, v5

    .line 7271
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1dd

    .line 7272
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7274
    goto/16 :goto_c

    .line 7275
    :cond_1dd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7278
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7279
    goto/16 :goto_c

    .line 7256
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v5, v6

    :cond_1de
    move v0, v5

    .line 7257
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1df

    .line 7258
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7260
    goto/16 :goto_c

    .line 7261
    :cond_1df
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7264
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7265
    goto/16 :goto_c

    .line 7241
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v5, v6

    :cond_1e0
    move v0, v5

    .line 7242
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e1

    .line 7243
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7245
    goto/16 :goto_c

    .line 7246
    :cond_1e1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7248
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7249
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7250
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7251
    goto/16 :goto_c

    .line 7225
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v5, v6

    :cond_1e2
    move v0, v5

    .line 7226
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e3

    .line 7227
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7229
    goto/16 :goto_c

    .line 7230
    :cond_1e3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7233
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7234
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7235
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7236
    goto/16 :goto_c

    .line 7211
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v5, v6

    :cond_1e4
    move v0, v5

    .line 7212
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e5

    .line 7213
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7215
    goto/16 :goto_c

    .line 7216
    :cond_1e5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7219
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCDMASubscription(I)V

    .line 7220
    goto/16 :goto_c

    .line 7196
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v5, v6

    :cond_1e6
    move v0, v5

    .line 7197
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e7

    .line 7198
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7200
    goto/16 :goto_c

    .line 7201
    :cond_1e7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7204
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7205
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7206
    goto/16 :goto_c

    .line 7181
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v5, v6

    :cond_1e8
    move v0, v5

    .line 7182
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e9

    .line 7183
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7185
    goto/16 :goto_c

    .line 7186
    :cond_1e9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7189
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7190
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7191
    goto/16 :goto_c

    .line 7167
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v5, v6

    :cond_1ea
    move v0, v5

    .line 7168
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1eb

    .line 7169
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7171
    goto/16 :goto_c

    .line 7172
    :cond_1eb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7175
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7176
    goto/16 :goto_c

    .line 7152
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v5, v6

    :cond_1ec
    move v0, v5

    .line 7153
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ed

    .line 7154
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7156
    goto/16 :goto_c

    .line 7157
    :cond_1ed
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7160
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7161
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7162
    goto/16 :goto_c

    .line 7137
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v5, v6

    :cond_1ee
    move v0, v5

    .line 7138
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ef

    .line 7139
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7141
    goto/16 :goto_c

    .line 7142
    :cond_1ef
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7145
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7146
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7147
    goto/16 :goto_c

    .line 7123
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v5, v6

    :cond_1f0
    move v0, v5

    .line 7124
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f1

    .line 7125
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7127
    goto/16 :goto_c

    .line 7128
    :cond_1f1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7131
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7132
    goto/16 :goto_c

    .line 7107
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v5, v6

    :cond_1f2
    move v0, v5

    .line 7108
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f3

    .line 7109
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7111
    goto/16 :goto_c

    .line 7112
    :cond_1f3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7115
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7116
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7117
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7118
    goto/16 :goto_c

    .line 7091
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v5, v6

    :cond_1f4
    move v0, v5

    .line 7092
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f5

    .line 7093
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7095
    goto/16 :goto_c

    .line 7096
    :cond_1f5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7099
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7100
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7101
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7102
    goto/16 :goto_c

    .line 7074
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v5, v6

    :cond_1f6
    move v0, v5

    .line 7075
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f7

    .line 7076
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7078
    goto/16 :goto_c

    .line 7079
    :cond_1f7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7082
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7083
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7084
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7085
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7086
    goto/16 :goto_c

    .line 7059
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v5, v6

    :cond_1f8
    move v0, v5

    .line 7060
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f9

    .line 7061
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7063
    goto/16 :goto_c

    .line 7064
    :cond_1f9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7067
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7068
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7069
    goto/16 :goto_c

    .line 7045
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v5, v6

    :cond_1fa
    move v0, v5

    .line 7046
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fb

    .line 7047
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7049
    goto/16 :goto_c

    .line 7050
    :cond_1fb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7053
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7054
    goto/16 :goto_c

    .line 7030
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fc

    move v5, v6

    :cond_1fc
    move v0, v5

    .line 7031
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fd

    .line 7032
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7034
    goto/16 :goto_c

    .line 7035
    :cond_1fd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7038
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7039
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7040
    goto/16 :goto_c

    .line 7016
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v5, v6

    :cond_1fe
    move v0, v5

    .line 7017
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ff

    .line 7018
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7020
    goto/16 :goto_c

    .line 7021
    :cond_1ff
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7024
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getTTYMode(I)V

    .line 7025
    goto/16 :goto_c

    .line 7001
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v5, v6

    :cond_200
    move v0, v5

    .line 7002
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_201

    .line 7003
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7005
    goto/16 :goto_c

    .line 7006
    :cond_201
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7009
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7010
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setTTYMode(II)V

    .line 7011
    goto/16 :goto_c

    .line 6987
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v5, v6

    :cond_202
    move v0, v5

    .line 6988
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_203

    .line 6989
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6991
    goto/16 :goto_c

    .line 6992
    :cond_203
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6995
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 6996
    goto/16 :goto_c

    .line 6972
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v5, v6

    :cond_204
    move v0, v5

    .line 6973
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_205

    .line 6974
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6976
    goto/16 :goto_c

    .line 6977
    :cond_205
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6979
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6980
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6981
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 6982
    goto/16 :goto_c

    .line 6957
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v5, v6

    :cond_206
    move v0, v5

    .line 6958
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_207

    .line 6959
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6960
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6961
    goto/16 :goto_c

    .line 6962
    :cond_207
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6965
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6966
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6967
    goto/16 :goto_c

    .line 6942
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v5, v6

    :cond_208
    move v0, v5

    .line 6943
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_209

    .line 6944
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6945
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6946
    goto/16 :goto_c

    .line 6947
    :cond_209
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6950
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6951
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6952
    goto/16 :goto_c

    .line 6928
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v5, v6

    :cond_20a
    move v0, v5

    .line 6929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20b

    .line 6930
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6932
    goto/16 :goto_c

    .line 6933
    :cond_20b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6936
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getNeighboringCids(I)V

    .line 6937
    goto/16 :goto_c

    .line 6914
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v5, v6

    :cond_20c
    move v0, v5

    .line 6915
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20d

    .line 6916
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6918
    goto/16 :goto_c

    .line 6919
    :cond_20d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6922
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6923
    goto/16 :goto_c

    .line 6899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v5, v6

    :cond_20e
    move v0, v5

    .line 6900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20f

    .line 6901
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6903
    goto/16 :goto_c

    .line 6904
    :cond_20f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6907
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6908
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6909
    goto/16 :goto_c

    .line 6885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v5, v6

    :cond_210
    move v0, v5

    .line 6886
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_211

    .line 6887
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6889
    goto/16 :goto_c

    .line 6890
    :cond_211
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6893
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6894
    goto/16 :goto_c

    .line 6870
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v5, v6

    :cond_212
    move v0, v5

    .line 6871
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_213

    .line 6872
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6874
    goto/16 :goto_c

    .line 6875
    :cond_213
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6878
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6879
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6880
    goto/16 :goto_c

    .line 6855
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v5, v6

    :cond_214
    move v0, v5

    .line 6856
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_215

    .line 6857
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6859
    goto/16 :goto_c

    .line 6860
    :cond_215
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6863
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6864
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6865
    goto/16 :goto_c

    .line 6840
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v5, v6

    :cond_216
    move v0, v5

    .line 6841
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_217

    .line 6842
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6844
    goto/16 :goto_c

    .line 6845
    :cond_217
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6848
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6849
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6850
    goto/16 :goto_c

    .line 6826
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v5, v6

    :cond_218
    move v0, v5

    .line 6827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_219

    .line 6828
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6830
    goto/16 :goto_c

    .line 6831
    :cond_219
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6834
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6835
    goto/16 :goto_c

    .line 6811
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v5, v6

    :cond_21a
    move v0, v5

    .line 6812
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21b

    .line 6813
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6814
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6815
    goto/16 :goto_c

    .line 6816
    :cond_21b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6819
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6820
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setBandMode(II)V

    .line 6821
    goto/16 :goto_c

    .line 6796
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v5, v6

    :cond_21c
    move v0, v5

    .line 6797
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21d

    .line 6798
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6800
    goto/16 :goto_c

    .line 6801
    :cond_21d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6804
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6805
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6806
    goto/16 :goto_c

    .line 6780
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v5, v6

    :cond_21e
    move v0, v5

    .line 6781
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21f

    .line 6782
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6784
    goto/16 :goto_c

    .line 6785
    :cond_21f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6787
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6788
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6789
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6790
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6791
    goto/16 :goto_c

    .line 6765
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v5, v6

    :cond_220
    move v0, v5

    .line 6766
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_221

    .line 6767
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6769
    goto/16 :goto_c

    .line 6770
    :cond_221
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6773
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6774
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6775
    goto/16 :goto_c

    .line 6751
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v5, v6

    :cond_222
    move v0, v5

    .line 6752
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_223

    .line 6753
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6755
    goto/16 :goto_c

    .line 6756
    :cond_223
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6759
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDataCallList(I)V

    .line 6760
    goto/16 :goto_c

    .line 6737
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v5, v6

    :cond_224
    move v0, v5

    .line 6738
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_225

    .line 6739
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6741
    goto/16 :goto_c

    .line 6742
    :cond_225
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6745
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getClip(I)V

    .line 6746
    goto/16 :goto_c

    .line 6723
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v5, v6

    :cond_226
    move v0, v5

    .line 6724
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_227

    .line 6725
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6727
    goto/16 :goto_c

    .line 6728
    :cond_227
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6731
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getMute(I)V

    .line 6732
    goto/16 :goto_c

    .line 6708
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v5, v6

    :cond_228
    move v0, v5

    .line 6709
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_229

    .line 6710
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6712
    goto/16 :goto_c

    .line 6713
    :cond_229
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6716
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6717
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setMute(IZ)V

    .line 6718
    goto/16 :goto_c

    .line 6693
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v5, v6

    :cond_22a
    move v0, v5

    .line 6694
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22b

    .line 6695
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6697
    goto/16 :goto_c

    .line 6698
    :cond_22b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6701
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6702
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->separateConnection(II)V

    .line 6703
    goto/16 :goto_c

    .line 6679
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v5, v6

    :cond_22c
    move v0, v5

    .line 6680
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22d

    .line 6681
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6683
    goto/16 :goto_c

    .line 6684
    :cond_22d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6687
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getBasebandVersion(I)V

    .line 6688
    goto/16 :goto_c

    .line 6665
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v5, v6

    :cond_22e
    move v0, v5

    .line 6666
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22f

    .line 6667
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6669
    goto/16 :goto_c

    .line 6670
    :cond_22f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6673
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopDtmf(I)V

    .line 6674
    goto/16 :goto_c

    .line 6650
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v5, v6

    :cond_230
    move v0, v5

    .line 6651
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_231

    .line 6652
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6654
    goto/16 :goto_c

    .line 6655
    :cond_231
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6658
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6659
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6660
    goto/16 :goto_c

    .line 6636
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v5, v6

    :cond_232
    move v0, v5

    .line 6637
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_233

    .line 6638
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6640
    goto/16 :goto_c

    .line 6641
    :cond_233
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6644
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6645
    goto/16 :goto_c

    .line 6621
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v5, v6

    :cond_234
    move v0, v5

    .line 6622
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_235

    .line 6623
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6625
    goto/16 :goto_c

    .line 6626
    :cond_235
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6629
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6630
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6631
    goto/16 :goto_c

    .line 6607
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v5, v6

    :cond_236
    move v0, v5

    .line 6608
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_237

    .line 6609
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6611
    goto/16 :goto_c

    .line 6612
    :cond_237
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6615
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6616
    goto/16 :goto_c

    .line 6593
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v5, v6

    :cond_238
    move v0, v5

    .line 6594
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_239

    .line 6595
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6596
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6597
    goto/16 :goto_c

    .line 6598
    :cond_239
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6600
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6601
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6602
    goto/16 :goto_c

    .line 6576
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v5, v6

    :cond_23a
    move v0, v5

    .line 6577
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23b

    .line 6578
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6580
    goto/16 :goto_c

    .line 6581
    :cond_23b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6584
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6585
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6586
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6587
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6588
    goto/16 :goto_c

    .line 6557
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v5, v6

    :cond_23c
    move v7, v5

    .line 6558
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_23d

    .line 6559
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6560
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6561
    goto/16 :goto_c

    .line 6562
    :cond_23d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6565
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6566
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6567
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6568
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6569
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6570
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6571
    goto/16 :goto_c

    .line 6539
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v5, v6

    :cond_23e
    move v7, v5

    .line 6540
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_23f

    .line 6541
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6543
    goto/16 :goto_c

    .line 6544
    :cond_23f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6547
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6548
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6549
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6550
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6551
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6552
    goto/16 :goto_c

    .line 6523
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_116
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_240

    move v5, v6

    :cond_240
    move v0, v5

    .line 6524
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_241

    .line 6525
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6527
    goto/16 :goto_c

    .line 6528
    :cond_241
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6531
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6532
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6533
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6534
    goto/16 :goto_c

    .line 6509
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_117
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_242

    move v5, v6

    :cond_242
    move v0, v5

    .line 6510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_243

    .line 6511
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6513
    goto/16 :goto_c

    .line 6514
    :cond_243
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6517
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acceptCall(I)V

    .line 6518
    goto/16 :goto_c

    .line 6493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_118
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_244

    move v5, v6

    :cond_244
    move v0, v5

    .line 6494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_245

    .line 6495
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6497
    goto/16 :goto_c

    .line 6498
    :cond_245
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6501
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6502
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6503
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6504
    goto/16 :goto_c

    .line 6477
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_119
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_246

    move v5, v6

    :cond_246
    move v0, v5

    .line 6478
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_247

    .line 6479
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6481
    goto/16 :goto_c

    .line 6482
    :cond_247
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6485
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6486
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6487
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6488
    goto/16 :goto_c

    .line 6462
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v5, v6

    :cond_248
    move v0, v5

    .line 6463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_249

    .line 6464
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6466
    goto/16 :goto_c

    .line 6467
    :cond_249
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6470
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6471
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCallWaiting(II)V

    .line 6472
    goto/16 :goto_c

    .line 6446
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_11b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24a

    move v5, v6

    :cond_24a
    move v0, v5

    .line 6447
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24b

    .line 6448
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6450
    goto/16 :goto_c

    .line 6451
    :cond_24b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6453
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6454
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6455
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6456
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6457
    goto/16 :goto_c

    .line 6430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24c

    move v5, v6

    :cond_24c
    move v0, v5

    .line 6431
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24d

    .line 6432
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6434
    goto/16 :goto_c

    .line 6435
    :cond_24d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6438
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6439
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6440
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6441
    goto/16 :goto_c

    .line 6415
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v5, v6

    :cond_24e
    move v0, v5

    .line 6416
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24f

    .line 6417
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6419
    goto/16 :goto_c

    .line 6420
    :cond_24f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6423
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6424
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setClir(II)V

    .line 6425
    goto/16 :goto_c

    .line 6401
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v5, v6

    :cond_250
    move v0, v5

    .line 6402
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_251

    .line 6403
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6405
    goto/16 :goto_c

    .line 6406
    :cond_251
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6409
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getClir(I)V

    .line 6410
    goto/16 :goto_c

    .line 6387
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v5, v6

    :cond_252
    move v0, v5

    .line 6388
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_253

    .line 6389
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6391
    goto/16 :goto_c

    .line 6392
    :cond_253
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6395
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6396
    goto/16 :goto_c

    .line 6372
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v5, v6

    :cond_254
    move v0, v5

    .line 6373
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_255

    .line 6374
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6376
    goto/16 :goto_c

    .line 6377
    :cond_255
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6380
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6381
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6382
    goto/16 :goto_c

    .line 6356
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v5, v6

    :cond_256
    move v0, v5

    .line 6357
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_257

    .line 6358
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6360
    goto/16 :goto_c

    .line 6361
    :cond_257
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6364
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6365
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6366
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6367
    goto/16 :goto_c

    .line 6336
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v5, v6

    :cond_258
    move v7, v5

    .line 6337
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_259

    .line 6338
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6339
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6340
    goto/16 :goto_c

    .line 6341
    :cond_259
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6344
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6345
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6346
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6348
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6349
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6350
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6351
    goto/16 :goto_c

    .line 6320
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v5, v6

    :cond_25a
    move v0, v5

    .line 6321
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25b

    .line 6322
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6323
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6324
    goto/16 :goto_c

    .line 6325
    :cond_25b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6327
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6328
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6329
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6330
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6331
    goto/16 :goto_c

    .line 6304
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v5, v6

    :cond_25c
    move v0, v5

    .line 6305
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25d

    .line 6306
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6308
    goto/16 :goto_c

    .line 6309
    :cond_25d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6312
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6313
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6314
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6315
    goto/16 :goto_c

    .line 6289
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_125
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25e

    move v5, v6

    :cond_25e
    move v0, v5

    .line 6290
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25f

    .line 6291
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6292
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6293
    goto/16 :goto_c

    .line 6294
    :cond_25f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6297
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6298
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6299
    goto/16 :goto_c

    .line 6274
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v5, v6

    :cond_260
    move v0, v5

    .line 6275
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_261

    .line 6276
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6278
    goto/16 :goto_c

    .line 6279
    :cond_261
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6282
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6283
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRadioPower(IZ)V

    .line 6284
    goto/16 :goto_c

    .line 6260
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v5, v6

    :cond_262
    move v0, v5

    .line 6261
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_263

    .line 6262
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6264
    goto/16 :goto_c

    .line 6265
    :cond_263
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6268
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getOperator(I)V

    .line 6269
    goto/16 :goto_c

    .line 6246
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v5, v6

    :cond_264
    move v0, v5

    .line 6247
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_265

    .line 6248
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6249
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6250
    goto/16 :goto_c

    .line 6251
    :cond_265
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6253
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6254
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6255
    goto/16 :goto_c

    .line 6232
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v5, v6

    :cond_266
    move v0, v5

    .line 6233
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_267

    .line 6234
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6236
    goto/16 :goto_c

    .line 6237
    :cond_267
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6240
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6241
    goto/16 :goto_c

    .line 6218
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v5, v6

    :cond_268
    move v0, v5

    .line 6219
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_269

    .line 6220
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6222
    goto/16 :goto_c

    .line 6223
    :cond_269
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6226
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSignalStrength(I)V

    .line 6227
    goto/16 :goto_c

    .line 6204
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v5, v6

    :cond_26a
    move v0, v5

    .line 6205
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26b

    .line 6206
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6208
    goto/16 :goto_c

    .line 6209
    :cond_26b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6212
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6213
    goto/16 :goto_c

    .line 6190
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v5, v6

    :cond_26c
    move v0, v5

    .line 6191
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26d

    .line 6192
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6194
    goto/16 :goto_c

    .line 6195
    :cond_26d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6198
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->rejectCall(I)V

    .line 6199
    goto/16 :goto_c

    .line 6176
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v5, v6

    :cond_26e
    move v0, v5

    .line 6177
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26f

    .line 6178
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6180
    goto/16 :goto_c

    .line 6181
    :cond_26f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6184
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->conference(I)V

    .line 6185
    goto/16 :goto_c

    .line 6162
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v5, v6

    :cond_270
    move v0, v5

    .line 6163
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_271

    .line 6164
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6166
    goto/16 :goto_c

    .line 6167
    :cond_271
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6170
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6171
    goto/16 :goto_c

    .line 6148
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v5, v6

    :cond_272
    move v0, v5

    .line 6149
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_273

    .line 6150
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6151
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6152
    goto/16 :goto_c

    .line 6153
    :cond_273
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6156
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6157
    goto/16 :goto_c

    .line 6134
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v5, v6

    :cond_274
    move v0, v5

    .line 6135
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_275

    .line 6136
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6138
    goto/16 :goto_c

    .line 6139
    :cond_275
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6142
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6143
    goto/16 :goto_c

    .line 6119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v5, v6

    :cond_276
    move v0, v5

    .line 6120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_277

    .line 6121
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6123
    goto/16 :goto_c

    .line 6124
    :cond_277
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6127
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6128
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangup(II)V

    .line 6129
    goto/16 :goto_c

    .line 6104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v5, v6

    :cond_278
    move v0, v5

    .line 6105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_279

    .line 6106
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6108
    goto/16 :goto_c

    .line 6109
    :cond_279
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6112
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6113
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6114
    goto/16 :goto_c

    .line 6088
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v5, v6

    :cond_27a
    move v0, v5

    .line 6089
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27b

    .line 6090
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6091
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6092
    goto/16 :goto_c

    .line 6093
    :cond_27b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6095
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6096
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6097
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6098
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6099
    goto/16 :goto_c

    .line 6074
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v5, v6

    :cond_27c
    move v0, v5

    .line 6075
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27d

    .line 6076
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6078
    goto/16 :goto_c

    .line 6079
    :cond_27d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6082
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCurrentCalls(I)V

    .line 6083
    goto/16 :goto_c

    .line 6059
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v5, v6

    :cond_27e
    move v0, v5

    .line 6060
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27f

    .line 6061
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6063
    goto/16 :goto_c

    .line 6064
    :cond_27f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6067
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6068
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6069
    goto/16 :goto_c

    .line 6042
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v5, v6

    :cond_280
    move v0, v5

    .line 6043
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_281

    .line 6044
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6046
    goto/16 :goto_c

    .line 6047
    :cond_281
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6050
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6051
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6052
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6053
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6054
    goto/16 :goto_c

    .line 6025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v5, v6

    :cond_282
    move v0, v5

    .line 6026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_283

    .line 6027
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6029
    goto/16 :goto_c

    .line 6030
    :cond_283
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6033
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6034
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6035
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6036
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6037
    goto/16 :goto_c

    .line 6008
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v5, v6

    :cond_284
    move v0, v5

    .line 6009
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_285

    .line 6010
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6012
    goto/16 :goto_c

    .line 6013
    :cond_285
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6016
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6017
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6018
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6019
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6020
    goto/16 :goto_c

    .line 5992
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_139
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_286

    move v5, v6

    :cond_286
    move v0, v5

    .line 5993
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_287

    .line 5994
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5996
    goto/16 :goto_c

    .line 5997
    :cond_287
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5999
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6000
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6001
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6002
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6003
    goto/16 :goto_c

    .line 5975
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_288

    move v5, v6

    :cond_288
    move v0, v5

    .line 5976
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_289

    .line 5977
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5979
    goto/16 :goto_c

    .line 5980
    :cond_289
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5983
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5984
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5985
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5986
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5987
    goto/16 :goto_c

    .line 5959
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28a

    move v5, v6

    :cond_28a
    move v0, v5

    .line 5960
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_28b

    .line 5961
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5962
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5963
    goto :goto_c

    .line 5964
    :cond_28b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5966
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5967
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5968
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5969
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5970
    goto :goto_c

    .line 5945
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28c

    move v5, v6

    :cond_28c
    move v0, v5

    .line 5946
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_28d

    .line 5947
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5949
    goto :goto_c

    .line 5950
    :cond_28d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5953
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getIccCardStatus(I)V

    .line 5954
    goto :goto_c

    .line 5928
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_13d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28e

    goto :goto_b

    :cond_28e
    move v6, v5

    :goto_b
    move v0, v6

    .line 5929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28f

    .line 5930
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5932
    goto :goto_c

    .line 5933
    :cond_28f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 5936
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 5937
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5938
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5940
    nop

    .line 10986
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_290
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13d
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

    .line 5879
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5907
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5908
    return-object p0

    .line 5910
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

    .line 5914
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5915
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5869
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5901
    const/4 v0, 0x1

    return v0
.end method
