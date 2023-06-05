.class public abstract Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_6/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_6/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5846
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5849
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

    .line 5869
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5913
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5914
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5915
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5916
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5917
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

    .line 5881
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
        -0x6bt
        -0x9t
        0x58t
        -0x57t
        0x69t
        -0x18t
        0x4dt
        -0x30t
        -0x7ct
        -0x70t
        0x26t
        0x6ct
        -0x47t
        -0x2ct
        -0x71t
        -0x57t
        0x49t
        -0x3bt
        0x64t
        -0x5et
        0x40t
        0x1et
        -0x74t
        0x4et
        -0x3et
        -0x3at
        0x37t
        0x55t
        0x2ft
        -0x66t
        -0x39t
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        -0x7t
        -0x3dt
        -0x45t
        -0x7dt
        -0x5at
        -0x42t
        0x31t
        -0x6ct
        0x52t
        -0x50t
        0x1bt
        -0x49t
        0x68t
        -0x20t
        0x3bt
        -0x24t
        -0x54t
        0x17t
        0x66t
        -0x2ft
        -0x28t
        -0xct
        0x63t
        0x7t
        -0x5ct
        0x5dt
        -0x38t
        -0x5at
        -0x38t
        -0x3ct
        0x64t
        0x11t
    .end array-data

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    .line 5854
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.6::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v5, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v6, "android.hardware.radio@1.2::IRadio"

    const-string v7, "android.hardware.radio@1.1::IRadio"

    const-string v8, "android.hardware.radio@1.0::IRadio"

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

    .line 5875
    const-string v0, "vendor.mediatek.hardware.radio@3.6::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5901
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5923
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5925
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

    .line 5953
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hardware.radio@1.0::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_c

    .line 11036
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    move v0, v6

    .line 11037
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 11038
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11040
    goto/16 :goto_c

    .line 11023
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v6, v7

    :cond_1
    move v1, v6

    .line 11024
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_2

    .line 11025
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11027
    goto/16 :goto_c

    .line 11028
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11030
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->notifySyspropsChanged()V

    .line 11031
    goto/16 :goto_c

    .line 11007
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v1, v7

    .line 11008
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 11009
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11011
    goto/16 :goto_c

    .line 11012
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11014
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 11015
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11016
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 11017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11018
    goto/16 :goto_c

    .line 10992
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

    .line 10993
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 10994
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10996
    goto/16 :goto_c

    .line 10997
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10999
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->ping()V

    .line 11000
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11002
    goto/16 :goto_c

    .line 10982
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    :cond_7
    move v0, v6

    .line 10983
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 10984
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10986
    goto/16 :goto_c

    .line 10969
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v6, v7

    :cond_8
    move v1, v6

    .line 10970
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_9

    .line 10971
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10973
    goto/16 :goto_c

    .line 10974
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10976
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setHALInstrumentation()V

    .line 10977
    goto/16 :goto_c

    .line 10930
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v1, v7

    .line 10931
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 10932
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10934
    goto/16 :goto_c

    .line 10935
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10937
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10938
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10940
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 10942
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 10943
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10944
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10945
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 10946
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 10948
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 10949
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 10951
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 10955
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10956
    nop

    .line 10946
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10952
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 10959
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10961
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10963
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10964
    goto/16 :goto_c

    .line 10914
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

    .line 10915
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 10916
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10918
    goto/16 :goto_c

    .line 10919
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10921
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10922
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10923
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10925
    goto/16 :goto_c

    .line 10897
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

    .line 10898
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 10899
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10901
    goto/16 :goto_c

    .line 10902
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 10905
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10906
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 10907
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10908
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10909
    goto/16 :goto_c

    .line 10881
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

    .line 10882
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 10883
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10885
    goto/16 :goto_c

    .line 10886
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10888
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10889
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10890
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10892
    goto/16 :goto_c

    .line 10865
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v6, v7

    :cond_14
    move v1, v6

    .line 10866
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_15

    .line 10867
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10868
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10869
    goto/16 :goto_c

    .line 10870
    :cond_15
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10873
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10874
    .local v2, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10875
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 10876
    goto/16 :goto_c

    .line 10850
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reqType":I
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_16

    move v6, v7

    :cond_16
    move v1, v6

    .line 10851
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_17

    .line 10852
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10853
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10854
    goto/16 :goto_c

    .line 10855
    :cond_17
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10857
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;

    move-result-object v0

    .line 10858
    .local v0, "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;

    move-result-object v2

    .line 10859
    .local v2, "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V

    .line 10860
    goto/16 :goto_c

    .line 10834
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v6, v7

    :cond_18
    move v0, v6

    .line 10835
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19

    .line 10836
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10838
    goto/16 :goto_c

    .line 10839
    :cond_19
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10841
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10842
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10843
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10844
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupWithReason(III)V

    .line 10845
    goto/16 :goto_c

    .line 10819
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    .end local v3    # "reason":I
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v6, v7

    :cond_1a
    move v0, v6

    .line 10820
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b

    .line 10821
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10823
    goto/16 :goto_c

    .line 10824
    :cond_1b
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10826
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10827
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10828
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10829
    goto/16 :goto_c

    .line 10804
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v6, v7

    :cond_1c
    move v0, v6

    .line 10805
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d

    .line 10806
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10808
    goto/16 :goto_c

    .line 10809
    :cond_1d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10812
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10813
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10814
    goto/16 :goto_c

    .line 10789
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v6, v7

    :cond_1e
    move v0, v6

    .line 10790
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f

    .line 10791
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10793
    goto/16 :goto_c

    .line 10794
    :cond_1f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10797
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10798
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10799
    goto/16 :goto_c

    .line 10773
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    move v0, v6

    .line 10774
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21

    .line 10775
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10777
    goto/16 :goto_c

    .line 10778
    :cond_21
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10781
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10782
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10783
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10784
    goto/16 :goto_c

    .line 10757
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v6, v7

    :cond_22
    move v0, v6

    .line 10758
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23

    .line 10759
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10761
    goto/16 :goto_c

    .line 10762
    :cond_23
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10765
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10766
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10767
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10768
    goto/16 :goto_c

    .line 10742
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v6, v7

    :cond_24
    move v0, v6

    .line 10743
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25

    .line 10744
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10746
    goto/16 :goto_c

    .line 10747
    :cond_25
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10750
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10751
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10752
    goto/16 :goto_c

    .line 10727
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v6, v7

    :cond_26
    move v0, v6

    .line 10728
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27

    .line 10729
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10731
    goto/16 :goto_c

    .line 10732
    :cond_27
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10735
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10736
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10737
    goto/16 :goto_c

    .line 10712
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v6, v7

    :cond_28
    move v0, v6

    .line 10713
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_29

    .line 10714
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10715
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10716
    goto/16 :goto_c

    .line 10717
    :cond_29
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10719
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10720
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10721
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSilentReboot(II)V

    .line 10722
    goto/16 :goto_c

    .line 10697
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v6, v7

    :cond_2a
    move v0, v6

    .line 10698
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2b

    .line 10699
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10701
    goto/16 :goto_c

    .line 10702
    :cond_2b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10705
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10706
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportSimMode(II)V

    .line 10707
    goto/16 :goto_c

    .line 10682
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v6, v7

    :cond_2c
    move v0, v6

    .line 10683
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2d

    .line 10684
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10686
    goto/16 :goto_c

    .line 10687
    :cond_2d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10690
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10691
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10692
    goto/16 :goto_c

    .line 10668
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v6, v7

    :cond_2e
    move v0, v6

    .line 10669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2f

    .line 10670
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10672
    goto/16 :goto_c

    .line 10673
    :cond_2f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10676
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10677
    goto/16 :goto_c

    .line 10653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v6, v7

    :cond_30
    move v0, v6

    .line 10654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_31

    .line 10655
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10657
    goto/16 :goto_c

    .line 10658
    :cond_31
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10661
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10662
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10663
    goto/16 :goto_c

    .line 10639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v6, v7

    :cond_32
    move v0, v6

    .line 10640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_33

    .line 10641
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10643
    goto/16 :goto_c

    .line 10644
    :cond_33
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10647
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetAllConnections(I)V

    .line 10648
    goto/16 :goto_c

    .line 10624
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v6, v7

    :cond_34
    move v0, v6

    .line 10625
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_35

    .line 10626
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10628
    goto/16 :goto_c

    .line 10629
    :cond_35
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10632
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10633
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10634
    goto/16 :goto_c

    .line 10609
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v6, v7

    :cond_36
    move v0, v6

    .line 10610
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_37

    .line 10611
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10612
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10613
    goto/16 :goto_c

    .line 10614
    :cond_37
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10617
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10618
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10619
    goto/16 :goto_c

    .line 10594
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v6, v7

    :cond_38
    move v0, v6

    .line 10595
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_39

    .line 10596
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10597
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10598
    goto/16 :goto_c

    .line 10599
    :cond_39
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10602
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10603
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10604
    goto/16 :goto_c

    .line 10578
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v6, v7

    :cond_3a
    move v0, v6

    .line 10579
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3b

    .line 10580
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10582
    goto/16 :goto_c

    .line 10583
    :cond_3b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10586
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10587
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10588
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10589
    goto/16 :goto_c

    .line 10563
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v6, v7

    :cond_3c
    move v0, v6

    .line 10564
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3d

    .line 10565
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10567
    goto/16 :goto_c

    .line 10568
    :cond_3d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10571
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10572
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10573
    goto/16 :goto_c

    .line 10547
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v6, v7

    :cond_3e
    move v0, v6

    .line 10548
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3f

    .line 10549
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10551
    goto/16 :goto_c

    .line 10552
    :cond_3f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10555
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10556
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10557
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10558
    goto/16 :goto_c

    .line 10531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v6, v7

    :cond_40
    move v0, v6

    .line 10532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_41

    .line 10533
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10535
    goto/16 :goto_c

    .line 10536
    :cond_41
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10539
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10540
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10541
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10542
    goto/16 :goto_c

    .line 10513
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v6, v7

    .line 10514
    .local v6, "_hidl_is_oneway":Z
    :cond_42
    if-eq v6, v7, :cond_43

    .line 10515
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10517
    goto/16 :goto_c

    .line 10518
    :cond_43
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10521
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10522
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10523
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10524
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10525
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10526
    goto/16 :goto_c

    .line 10498
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v6, v7

    :cond_44
    move v0, v6

    .line 10499
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_45

    .line 10500
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10502
    goto/16 :goto_c

    .line 10503
    :cond_45
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10506
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10507
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10508
    goto/16 :goto_c

    .line 10484
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v6, v7

    :cond_46
    move v0, v6

    .line 10485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_47

    .line 10486
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10488
    goto/16 :goto_c

    .line 10489
    :cond_47
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10492
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getApcInfo(I)V

    .line 10493
    goto/16 :goto_c

    .line 10467
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v6, v7

    :cond_48
    move v0, v6

    .line 10468
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_49

    .line 10469
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10471
    goto/16 :goto_c

    .line 10472
    :cond_49
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10475
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10476
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10477
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10478
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setApcMode(IIII)V

    .line 10479
    goto/16 :goto_c

    .line 10450
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v6, v7

    :cond_4a
    move v0, v6

    .line 10451
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4b

    .line 10452
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10454
    goto/16 :goto_c

    .line 10455
    :cond_4b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10458
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10459
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10460
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10461
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10462
    goto/16 :goto_c

    .line 10430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v6, v7

    :cond_4c
    move v8, v6

    .line 10431
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_4d

    .line 10432
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10434
    goto/16 :goto_c

    .line 10435
    :cond_4d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10438
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10439
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10440
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10441
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10442
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10443
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10444
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10445
    goto/16 :goto_c

    .line 10415
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v12    # "srcIp":Ljava/lang/String;
    .end local v16    # "srcPort":I
    .end local v17    # "dstIp":Ljava/lang/String;
    .end local v18    # "dstPort":I
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v6, v7

    :cond_4e
    move v0, v6

    .line 10416
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4f

    .line 10417
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10419
    goto/16 :goto_c

    .line 10420
    :cond_4f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10423
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10424
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10425
    goto/16 :goto_c

    .line 10390
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v6, v7

    :cond_50
    move v12, v6

    .line 10391
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v7, :cond_51

    .line 10392
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10394
    goto/16 :goto_c

    .line 10395
    :cond_51
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10398
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10399
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10400
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10401
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10402
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10403
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10404
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10405
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10406
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10407
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10408
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10409
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10410
    goto/16 :goto_c

    .line 10373
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
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v6, v7

    :cond_52
    move v0, v6

    .line 10374
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_53

    .line 10375
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10377
    goto/16 :goto_c

    .line 10378
    :cond_53
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10381
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10382
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10383
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10384
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10385
    goto/16 :goto_c

    .line 10357
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v6, v7

    :cond_54
    move v0, v6

    .line 10358
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_55

    .line 10359
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10361
    goto/16 :goto_c

    .line 10362
    :cond_55
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10365
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10366
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10367
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10368
    goto/16 :goto_c

    .line 10339
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v6, v7

    .line 10340
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v6, v7, :cond_57

    .line 10341
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10343
    goto/16 :goto_c

    .line 10344
    :cond_57
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10347
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10348
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10349
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10350
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10351
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10352
    goto/16 :goto_c

    .line 10322
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v6, v7

    :cond_58
    move v0, v6

    .line 10323
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_59

    .line 10324
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10326
    goto/16 :goto_c

    .line 10327
    :cond_59
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10330
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10331
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10332
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10333
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10334
    goto/16 :goto_c

    .line 10307
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v6, v7

    :cond_5a
    move v0, v6

    .line 10308
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5b

    .line 10309
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10311
    goto/16 :goto_c

    .line 10312
    :cond_5b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10314
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10315
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10316
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10317
    goto/16 :goto_c

    .line 10292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v6, v7

    :cond_5c
    move v0, v6

    .line 10293
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5d

    .line 10294
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10296
    goto/16 :goto_c

    .line 10297
    :cond_5d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10300
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10301
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setE911State(II)V

    .line 10302
    goto/16 :goto_c

    .line 10276
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v6, v7

    :cond_5e
    move v0, v6

    .line 10277
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5f

    .line 10278
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10280
    goto/16 :goto_c

    .line 10281
    :cond_5f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10284
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10285
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10286
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10287
    goto/16 :goto_c

    .line 10261
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v6, v7

    :cond_60
    move v0, v6

    .line 10262
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_61

    .line 10263
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10264
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10265
    goto/16 :goto_c

    .line 10266
    :cond_61
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10269
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10270
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10271
    goto/16 :goto_c

    .line 10246
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v6, v7

    :cond_62
    move v0, v6

    .line 10247
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_63

    .line 10248
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10249
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10250
    goto/16 :goto_c

    .line 10251
    :cond_63
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10253
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10254
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10255
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10256
    goto/16 :goto_c

    .line 10231
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v6, v7

    :cond_64
    move v0, v6

    .line 10232
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_65

    .line 10233
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10234
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10235
    goto/16 :goto_c

    .line 10236
    :cond_65
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10239
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10240
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10241
    goto/16 :goto_c

    .line 10216
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v6, v7

    :cond_66
    move v0, v6

    .line 10217
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_67

    .line 10218
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10219
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10220
    goto/16 :goto_c

    .line 10221
    :cond_67
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10223
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10224
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10225
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10226
    goto/16 :goto_c

    .line 10202
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v6, v7

    :cond_68
    move v0, v6

    .line 10203
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_69

    .line 10204
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10205
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10206
    goto/16 :goto_c

    .line 10207
    :cond_69
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10210
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->restartRILD(I)V

    .line 10211
    goto/16 :goto_c

    .line 10188
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v6, v7

    :cond_6a
    move v0, v6

    .line 10189
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6b

    .line 10190
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10192
    goto/16 :goto_c

    .line 10193
    :cond_6b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10196
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetRadio(I)V

    .line 10197
    goto/16 :goto_c

    .line 10173
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v6, v7

    :cond_6c
    move v0, v6

    .line 10174
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6d

    .line 10175
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10177
    goto/16 :goto_c

    .line 10178
    :cond_6d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10181
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10182
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10183
    goto/16 :goto_c

    .line 10158
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v6, v7

    :cond_6e
    move v0, v6

    .line 10159
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6f

    .line 10160
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10162
    goto/16 :goto_c

    .line 10163
    :cond_6f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 10166
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10167
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10168
    goto/16 :goto_c

    .line 10143
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v6, v7

    :cond_70
    move v0, v6

    .line 10144
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_71

    .line 10145
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10147
    goto/16 :goto_c

    .line 10148
    :cond_71
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10151
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10152
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10153
    goto/16 :goto_c

    .line 10128
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v6, v7

    :cond_72
    move v0, v6

    .line 10129
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_73

    .line 10130
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10132
    goto/16 :goto_c

    .line 10133
    :cond_73
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10136
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10137
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10138
    goto/16 :goto_c

    .line 10113
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v6, v7

    :cond_74
    move v0, v6

    .line 10114
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_75

    .line 10115
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10117
    goto/16 :goto_c

    .line 10118
    :cond_75
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10121
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10122
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10123
    goto/16 :goto_c

    .line 10098
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v6, v7

    :cond_76
    move v0, v6

    .line 10099
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_77

    .line 10100
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10102
    goto/16 :goto_c

    .line 10103
    :cond_77
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10106
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10107
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10108
    goto/16 :goto_c

    .line 10083
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v6, v7

    :cond_78
    move v0, v6

    .line 10084
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_79

    .line 10085
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10087
    goto/16 :goto_c

    .line 10088
    :cond_79
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10091
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10092
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setTrm(II)V

    .line 10093
    goto/16 :goto_c

    .line 10066
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v6, v7

    :cond_7a
    move v0, v6

    .line 10067
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7b

    .line 10068
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10070
    goto/16 :goto_c

    .line 10071
    :cond_7b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10074
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10075
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10076
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10077
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setFdMode(IIII)V

    .line 10078
    goto/16 :goto_c

    .line 10049
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v6, v7

    :cond_7c
    move v0, v6

    .line 10050
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7d

    .line 10051
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10053
    goto/16 :goto_c

    .line 10054
    :cond_7d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10057
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10058
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10059
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10060
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10061
    goto/16 :goto_c

    .line 10035
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v6, v7

    :cond_7e
    move v0, v6

    .line 10036
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7f

    .line 10037
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10038
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10039
    goto/16 :goto_c

    .line 10040
    :cond_7f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10043
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCurrentPOLList(I)V

    .line 10044
    goto/16 :goto_c

    .line 10021
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v6, v7

    :cond_80
    move v0, v6

    .line 10022
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_81

    .line 10023
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10025
    goto/16 :goto_c

    .line 10026
    :cond_81
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10029
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPOLCapability(I)V

    .line 10030
    goto/16 :goto_c

    .line 10006
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v6, v7

    :cond_82
    move v0, v6

    .line 10007
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_83

    .line 10008
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10010
    goto/16 :goto_c

    .line 10011
    :cond_83
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10014
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10015
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getRxTestResult(II)V

    .line 10016
    goto/16 :goto_c

    .line 9991
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v6, v7

    :cond_84
    move v0, v6

    .line 9992
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_85

    .line 9993
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9995
    goto/16 :goto_c

    .line 9996
    :cond_85
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9999
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10000
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRxTestConfig(II)V

    .line 10001
    goto/16 :goto_c

    .line 9971
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v6, v7

    :cond_86
    move v8, v6

    .line 9972
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_87

    .line 9973
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9975
    goto/16 :goto_c

    .line 9976
    :cond_87
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9979
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9980
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9981
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9982
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9983
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9984
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9985
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9986
    goto/16 :goto_c

    .line 9956
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v6, v7

    :cond_88
    move v0, v6

    .line 9957
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_89

    .line 9958
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9959
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9960
    goto/16 :goto_c

    .line 9961
    :cond_89
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9963
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9964
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9965
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9966
    goto/16 :goto_c

    .line 9942
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v6, v7

    :cond_8a
    move v0, v6

    .line 9943
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8b

    .line 9944
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9945
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9946
    goto/16 :goto_c

    .line 9947
    :cond_8b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9950
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9951
    goto/16 :goto_c

    .line 9925
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v6, v7

    :cond_8c
    move v0, v6

    .line 9926
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8d

    .line 9927
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9928
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9929
    goto/16 :goto_c

    .line 9930
    :cond_8d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9933
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9934
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9935
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9936
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9937
    goto/16 :goto_c

    .line 9911
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v6, v7

    :cond_8e
    move v0, v6

    .line 9912
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8f

    .line 9913
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9915
    goto/16 :goto_c

    .line 9916
    :cond_8f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9919
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->abortFemtocellList(I)V

    .line 9920
    goto/16 :goto_c

    .line 9897
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v6, v7

    :cond_90
    move v0, v6

    .line 9898
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_91

    .line 9899
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9901
    goto/16 :goto_c

    .line 9902
    :cond_91
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9905
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getFemtocellList(I)V

    .line 9906
    goto/16 :goto_c

    .line 9883
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v6, v7

    :cond_92
    move v0, v6

    .line 9884
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_93

    .line 9885
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9887
    goto/16 :goto_c

    .line 9888
    :cond_93
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9891
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9892
    goto/16 :goto_c

    .line 9869
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v6, v7

    :cond_94
    move v0, v6

    .line 9870
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_95

    .line 9871
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9873
    goto/16 :goto_c

    .line 9874
    :cond_95
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9877
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9878
    goto/16 :goto_c

    .line 9855
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v6, v7

    :cond_96
    move v0, v6

    .line 9856
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_97

    .line 9857
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9859
    goto/16 :goto_c

    .line 9860
    :cond_97
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9863
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9864
    goto/16 :goto_c

    .line 9838
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v6, v7

    :cond_98
    move v0, v6

    .line 9839
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_99

    .line 9840
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9842
    goto/16 :goto_c

    .line 9843
    :cond_99
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9846
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9847
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9848
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9849
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9850
    goto/16 :goto_c

    .line 9824
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v6, v7

    :cond_9a
    move v0, v6

    .line 9825
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9b

    .line 9826
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9827
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9828
    goto/16 :goto_c

    .line 9829
    :cond_9b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9832
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9833
    goto/16 :goto_c

    .line 9809
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v6, v7

    :cond_9c
    move v0, v6

    .line 9810
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9d

    .line 9811
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9812
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9813
    goto/16 :goto_c

    .line 9814
    :cond_9d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9817
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9818
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reloadModemType(II)V

    .line 9819
    goto/16 :goto_c

    .line 9794
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v6, v7

    :cond_9e
    move v0, v6

    .line 9795
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9f

    .line 9796
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9798
    goto/16 :goto_c

    .line 9799
    :cond_9f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9802
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9803
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->storeModemType(II)V

    .line 9804
    goto/16 :goto_c

    .line 9779
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v6, v7

    :cond_a0
    move v0, v6

    .line 9780
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a1

    .line 9781
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9783
    goto/16 :goto_c

    .line 9784
    :cond_a1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9787
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9788
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResumeRegistration(II)V

    .line 9789
    goto/16 :goto_c

    .line 9764
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v6, v7

    :cond_a2
    move v0, v6

    .line 9765
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a3

    .line 9766
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9767
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9768
    goto/16 :goto_c

    .line 9769
    :cond_a3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9772
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9773
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9774
    goto/16 :goto_c

    .line 9749
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v6, v7

    :cond_a4
    move v0, v6

    .line 9750
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a5

    .line 9751
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9753
    goto/16 :goto_c

    .line 9754
    :cond_a5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9757
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9758
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9759
    goto/16 :goto_c

    .line 9733
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v6, v7

    :cond_a6
    move v0, v6

    .line 9734
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a7

    .line 9735
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9737
    goto/16 :goto_c

    .line 9738
    :cond_a7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9741
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9742
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9743
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9744
    goto/16 :goto_c

    .line 9717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v6, v7

    :cond_a8
    move v0, v6

    .line 9718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a9

    .line 9719
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9721
    goto/16 :goto_c

    .line 9722
    :cond_a9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9725
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9726
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9727
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9728
    goto/16 :goto_c

    .line 9703
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v6, v7

    :cond_aa
    move v0, v6

    .line 9704
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ab

    .line 9705
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9707
    goto/16 :goto_c

    .line 9708
    :cond_ab
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9711
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9712
    goto/16 :goto_c

    .line 9687
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v6, v7

    :cond_ac
    move v0, v6

    .line 9688
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ad

    .line 9689
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9691
    goto/16 :goto_c

    .line 9692
    :cond_ad
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9695
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9696
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9697
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9698
    goto/16 :goto_c

    .line 9673
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v6, v7

    :cond_ae
    move v0, v6

    .line 9674
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_af

    .line 9675
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9677
    goto/16 :goto_c

    .line 9678
    :cond_af
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9681
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9682
    goto/16 :goto_c

    .line 9659
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v6, v7

    :cond_b0
    move v0, v6

    .line 9660
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b1

    .line 9661
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9663
    goto/16 :goto_c

    .line 9664
    :cond_b1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9667
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9668
    goto/16 :goto_c

    .line 9644
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v6, v7

    :cond_b2
    move v0, v6

    .line 9645
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b3

    .line 9646
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9648
    goto/16 :goto_c

    .line 9649
    :cond_b3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9652
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9653
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9654
    goto/16 :goto_c

    .line 9628
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v6, v7

    :cond_b4
    move v0, v6

    .line 9629
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b5

    .line 9630
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9632
    goto/16 :goto_c

    .line 9633
    :cond_b5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9636
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9637
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9638
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->removeCbMsg(III)V

    .line 9639
    goto/16 :goto_c

    .line 9613
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v6, v7

    :cond_b6
    move v0, v6

    .line 9614
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b7

    .line 9615
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9617
    goto/16 :goto_c

    .line 9618
    :cond_b7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9621
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9622
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEtws(II)V

    .line 9623
    goto/16 :goto_c

    .line 9599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v6, v7

    :cond_b8
    move v0, v6

    .line 9600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b9

    .line 9601
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9603
    goto/16 :goto_c

    .line 9604
    :cond_b9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9607
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9608
    goto/16 :goto_c

    .line 9583
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v6, v7

    :cond_ba
    move v0, v6

    .line 9584
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bb

    .line 9585
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9587
    goto/16 :goto_c

    .line 9588
    :cond_bb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9591
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9592
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9593
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9594
    goto/16 :goto_c

    .line 9569
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v6, v7

    :cond_bc
    move v0, v6

    .line 9570
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bd

    .line 9571
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9573
    goto/16 :goto_c

    .line 9574
    :cond_bd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9577
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmsParameters(I)V

    .line 9578
    goto/16 :goto_c

    .line 9550
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v6, v7

    :cond_be
    move v8, v6

    .line 9551
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_bf

    .line 9552
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9554
    goto/16 :goto_c

    .line 9555
    :cond_bf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 9558
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9559
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9560
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9561
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9562
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9563
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9564
    goto/16 :goto_c

    .line 9533
    .end local v7    # "serial":I
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v6, v7

    :cond_c0
    move v0, v6

    .line 9534
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c1

    .line 9535
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9537
    goto/16 :goto_c

    .line 9538
    :cond_c1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9541
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9542
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9543
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9544
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9545
    goto/16 :goto_c

    .line 9517
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v6, v7

    :cond_c2
    move v0, v6

    .line 9518
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c3

    .line 9519
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9521
    goto/16 :goto_c

    .line 9522
    :cond_c3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9525
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9526
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9527
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9528
    goto/16 :goto_c

    .line 9497
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v6, v7

    :cond_c4
    move v8, v6

    .line 9498
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_c5

    .line 9499
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9501
    goto/16 :goto_c

    .line 9502
    :cond_c5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9505
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9506
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9507
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9508
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9509
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9510
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9511
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9512
    goto/16 :goto_c

    .line 9482
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v6, v7

    :cond_c6
    move v0, v6

    .line 9483
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c7

    .line 9484
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9486
    goto/16 :goto_c

    .line 9487
    :cond_c7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9490
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9491
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryNetworkLock(II)V

    .line 9492
    goto/16 :goto_c

    .line 9466
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v6, v7

    :cond_c8
    move v0, v6

    .line 9467
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c9

    .line 9468
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9470
    goto/16 :goto_c

    .line 9471
    :cond_c9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9474
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9475
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9476
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9477
    goto/16 :goto_c

    .line 9451
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v6, v7

    :cond_ca
    move v0, v6

    .line 9452
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cb

    .line 9453
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9454
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9455
    goto/16 :goto_c

    .line 9456
    :cond_cb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9459
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9460
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSimPower(II)V

    .line 9461
    goto/16 :goto_c

    .line 9437
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v6, v7

    :cond_cc
    move v0, v6

    .line 9438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cd

    .line 9439
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9441
    goto/16 :goto_c

    .line 9442
    :cond_cd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9445
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getIccid(I)V

    .line 9446
    goto/16 :goto_c

    .line 9423
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v6, v7

    :cond_ce
    move v0, v6

    .line 9424
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cf

    .line 9425
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9427
    goto/16 :goto_c

    .line 9428
    :cond_cf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9431
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getATR(I)V

    .line 9432
    goto/16 :goto_c

    .line 9408
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v6, v7

    :cond_d0
    move v0, v6

    .line 9409
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d1

    .line 9410
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9412
    goto/16 :goto_c

    .line 9413
    :cond_d1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9416
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9417
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9418
    goto/16 :goto_c

    .line 9393
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v6, v7

    :cond_d2
    move v0, v6

    .line 9394
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d3

    .line 9395
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9397
    goto/16 :goto_c

    .line 9398
    :cond_d3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9401
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9402
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setModemPower(IZ)V

    .line 9403
    goto/16 :goto_c

    .line 9378
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v6, v7

    :cond_d4
    move v0, v6

    .line 9379
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d5

    .line 9380
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9381
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9382
    goto/16 :goto_c

    .line 9383
    :cond_d5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9386
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9387
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPhonebookReady(II)V

    .line 9388
    goto/16 :goto_c

    .line 9362
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v6, v7

    :cond_d6
    move v0, v6

    .line 9363
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d7

    .line 9364
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9366
    goto/16 :goto_c

    .line 9367
    :cond_d7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9370
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9371
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9372
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBAasList(III)V

    .line 9373
    goto/16 :goto_c

    .line 9346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v6, v7

    :cond_d8
    move v0, v6

    .line 9347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d9

    .line 9348
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9350
    goto/16 :goto_c

    .line 9351
    :cond_d9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9354
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9355
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9356
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9357
    goto/16 :goto_c

    .line 9330
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v6, v7

    :cond_da
    move v0, v6

    .line 9331
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_db

    .line 9332
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9334
    goto/16 :goto_c

    .line 9335
    :cond_db
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9338
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9339
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9340
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9341
    goto/16 :goto_c

    .line 9314
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v6, v7

    :cond_dc
    move v0, v6

    .line 9315
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_dd

    .line 9316
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9318
    goto/16 :goto_c

    .line 9319
    :cond_dd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9322
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9323
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9324
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9325
    goto/16 :goto_c

    .line 9298
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v6, v7

    :cond_de
    move v0, v6

    .line 9299
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_df

    .line 9300
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9302
    goto/16 :goto_c

    .line 9303
    :cond_df
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9306
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9307
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9308
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9309
    goto/16 :goto_c

    .line 9282
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v6, v7

    :cond_e0
    move v0, v6

    .line 9283
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e1

    .line 9284
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9286
    goto/16 :goto_c

    .line 9287
    :cond_e1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9289
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9290
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9291
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9292
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9293
    goto/16 :goto_c

    .line 9266
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v6, v7

    :cond_e2
    move v0, v6

    .line 9267
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e3

    .line 9268
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9270
    goto/16 :goto_c

    .line 9271
    :cond_e3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9273
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9274
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9275
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9276
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9277
    goto/16 :goto_c

    .line 9250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v6, v7

    :cond_e4
    move v0, v6

    .line 9251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e5

    .line 9252
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9254
    goto/16 :goto_c

    .line 9255
    :cond_e5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9258
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9259
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9260
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9261
    goto/16 :goto_c

    .line 9236
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v6, v7

    :cond_e6
    move v0, v6

    .line 9237
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e7

    .line 9238
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9240
    goto/16 :goto_c

    .line 9241
    :cond_e7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9244
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9245
    goto/16 :goto_c

    .line 9222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v6, v7

    :cond_e8
    move v0, v6

    .line 9223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e9

    .line 9224
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9226
    goto/16 :goto_c

    .line 9227
    :cond_e9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9230
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9231
    goto/16 :goto_c

    .line 9206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v6, v7

    :cond_ea
    move v0, v6

    .line 9207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_eb

    .line 9208
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9210
    goto/16 :goto_c

    .line 9211
    :cond_eb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9214
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9215
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9216
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9217
    goto/16 :goto_c

    .line 9191
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v6, v7

    :cond_ec
    move v0, v6

    .line 9192
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ed

    .line 9193
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9194
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9195
    goto/16 :goto_c

    .line 9196
    :cond_ed
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9199
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9200
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9201
    goto/16 :goto_c

    .line 9175
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v6, v7

    :cond_ee
    move v0, v6

    .line 9176
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ef

    .line 9177
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9179
    goto/16 :goto_c

    .line 9180
    :cond_ef
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9183
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9184
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9185
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBGasList(III)V

    .line 9186
    goto/16 :goto_c

    .line 9158
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v6, v7

    :cond_f0
    move v0, v6

    .line 9159
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f1

    .line 9160
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9162
    goto/16 :goto_c

    .line 9163
    :cond_f1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9166
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9167
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9168
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9169
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9170
    goto/16 :goto_c

    .line 9143
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v6, v7

    :cond_f2
    move v0, v6

    .line 9144
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f3

    .line 9145
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9147
    goto/16 :goto_c

    .line 9148
    :cond_f3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9151
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9152
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9153
    goto/16 :goto_c

    .line 9129
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v6, v7

    :cond_f4
    move v0, v6

    .line 9130
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f5

    .line 9131
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9133
    goto/16 :goto_c

    .line 9134
    :cond_f5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9137
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryUPBCapability(I)V

    .line 9138
    goto/16 :goto_c

    .line 9112
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v6, v7

    :cond_f6
    move v0, v6

    .line 9113
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f7

    .line 9114
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9116
    goto/16 :goto_c

    .line 9117
    :cond_f7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9120
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9121
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9122
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9123
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9124
    goto/16 :goto_c

    .line 9096
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v6, v7

    :cond_f8
    move v0, v6

    .line 9097
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f9

    .line 9098
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9100
    goto/16 :goto_c

    .line 9101
    :cond_f9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9104
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9105
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9106
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9107
    goto/16 :goto_c

    .line 9081
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v6, v7

    :cond_fa
    move v0, v6

    .line 9082
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fb

    .line 9083
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9085
    goto/16 :goto_c

    .line 9086
    :cond_fb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9089
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9090
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9091
    goto/16 :goto_c

    .line 9067
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v6, v7

    :cond_fc
    move v0, v6

    .line 9068
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fd

    .line 9069
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9071
    goto/16 :goto_c

    .line 9072
    :cond_fd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9075
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getEccNum(I)V

    .line 9076
    goto/16 :goto_c

    .line 9051
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v6, v7

    :cond_fe
    move v0, v6

    .line 9052
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ff

    .line 9053
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9054
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9055
    goto/16 :goto_c

    .line 9056
    :cond_ff
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9059
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9060
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9061
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9062
    goto/16 :goto_c

    .line 9036
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v6, v7

    :cond_100
    move v0, v6

    .line 9037
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_101

    .line 9038
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9040
    goto/16 :goto_c

    .line 9041
    :cond_101
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9044
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9045
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 9046
    goto/16 :goto_c

    .line 9021
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v6, v7

    :cond_102
    move v0, v6

    .line 9022
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_103

    .line 9023
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9025
    goto/16 :goto_c

    .line 9026
    :cond_103
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9029
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9030
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->eccPreferredRat(II)V

    .line 9031
    goto/16 :goto_c

    .line 9005
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v6, v7

    :cond_104
    move v0, v6

    .line 9006
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_105

    .line 9007
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9009
    goto/16 :goto_c

    .line 9010
    :cond_105
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9013
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9014
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9015
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->currentStatus(III)V

    .line 9016
    goto/16 :goto_c

    .line 8989
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v6, v7

    :cond_106
    move v0, v6

    .line 8990
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_107

    .line 8991
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8993
    goto/16 :goto_c

    .line 8994
    :cond_107
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8997
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8998
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8999
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 9000
    goto/16 :goto_c

    .line 8974
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v6, v7

    :cond_108
    move v0, v6

    .line 8975
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_109

    .line 8976
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8977
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8978
    goto/16 :goto_c

    .line 8979
    :cond_109
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8982
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8983
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8984
    goto/16 :goto_c

    .line 8958
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v6, v7

    :cond_10a
    move v0, v6

    .line 8959
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10b

    .line 8960
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8962
    goto/16 :goto_c

    .line 8963
    :cond_10b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8966
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8967
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8968
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8969
    goto/16 :goto_c

    .line 8941
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v6, v7

    :cond_10c
    move v0, v6

    .line 8942
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10d

    .line 8943
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8944
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8945
    goto/16 :goto_c

    .line 8946
    :cond_10d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8948
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8949
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8950
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8951
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8952
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallIndication(IIII)V

    .line 8953
    goto/16 :goto_c

    .line 8927
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v6, v7

    :cond_10e
    move v0, v6

    .line 8928
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10f

    .line 8929
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8931
    goto/16 :goto_c

    .line 8932
    :cond_10f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8935
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupAll(I)V

    .line 8936
    goto/16 :goto_c

    .line 8912
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v6, v7

    :cond_110
    move v0, v6

    .line 8913
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_111

    .line 8914
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8915
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8916
    goto/16 :goto_c

    .line 8917
    :cond_111
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8920
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8921
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8922
    goto/16 :goto_c

    .line 8898
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v6, v7

    :cond_112
    move v0, v6

    .line 8899
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_113

    .line 8900
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8902
    goto/16 :goto_c

    .line 8903
    :cond_113
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8905
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8906
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetSuppServ(I)V

    .line 8907
    goto/16 :goto_c

    .line 8884
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v6, v7

    :cond_114
    move v0, v6

    .line 8885
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_115

    .line 8886
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8887
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8888
    goto/16 :goto_c

    .line 8889
    :cond_115
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8892
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getXcapStatus(I)V

    .line 8893
    goto/16 :goto_c

    .line 8870
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v6, v7

    :cond_116
    move v0, v6

    .line 8871
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_117

    .line 8872
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8874
    goto/16 :goto_c

    .line 8875
    :cond_117
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8878
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->cancelUssi(I)V

    .line 8879
    goto/16 :goto_c

    .line 8854
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v6, v7

    :cond_118
    move v0, v6

    .line 8855
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_119

    .line 8856
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8857
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8858
    goto/16 :goto_c

    .line 8859
    :cond_119
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8862
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8863
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8864
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8865
    goto/16 :goto_c

    .line 8836
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v6, v7

    .line 8837
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v6, v7, :cond_11b

    .line 8838
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8840
    goto/16 :goto_c

    .line 8841
    :cond_11b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8844
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8845
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8846
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8847
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8848
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8849
    goto/16 :goto_c

    .line 8820
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v6, v7

    :cond_11c
    move v0, v6

    .line 8821
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11d

    .line 8822
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8823
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8824
    goto/16 :goto_c

    .line 8825
    :cond_11d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8828
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8829
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8830
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8831
    goto/16 :goto_c

    .line 8804
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v6, v7

    :cond_11e
    move v0, v6

    .line 8805
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11f

    .line 8806
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8808
    goto/16 :goto_c

    .line 8809
    :cond_11f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8812
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8813
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8814
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8815
    goto/16 :goto_c

    .line 8789
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v6, v7

    :cond_120
    move v0, v6

    .line 8790
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_121

    .line 8791
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8793
    goto/16 :goto_c

    .line 8794
    :cond_121
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8797
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8798
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setColr(II)V

    .line 8799
    goto/16 :goto_c

    .line 8774
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v6, v7

    :cond_122
    move v0, v6

    .line 8775
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_123

    .line 8776
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8778
    goto/16 :goto_c

    .line 8779
    :cond_123
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8782
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8783
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setColp(II)V

    .line 8784
    goto/16 :goto_c

    .line 8759
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v6, v7

    :cond_124
    move v0, v6

    .line 8760
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_125

    .line 8761
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8763
    goto/16 :goto_c

    .line 8764
    :cond_125
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8767
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8768
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8769
    goto/16 :goto_c

    .line 8745
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v6, v7

    :cond_126
    move v0, v6

    .line 8746
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_127

    .line 8747
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8749
    goto/16 :goto_c

    .line 8750
    :cond_127
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8753
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getColr(I)V

    .line 8754
    goto/16 :goto_c

    .line 8731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v6, v7

    :cond_128
    move v0, v6

    .line 8732
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_129

    .line 8733
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8735
    goto/16 :goto_c

    .line 8736
    :cond_129
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8739
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getColp(I)V

    .line 8740
    goto/16 :goto_c

    .line 8716
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v6, v7

    :cond_12a
    move v0, v6

    .line 8717
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12b

    .line 8718
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8720
    goto/16 :goto_c

    .line 8721
    :cond_12b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8724
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8725
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setClip(II)V

    .line 8726
    goto/16 :goto_c

    .line 8698
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v6, v7

    .line 8699
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v6, v7, :cond_12d

    .line 8700
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8701
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8702
    goto/16 :goto_c

    .line 8703
    :cond_12d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8706
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8707
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8708
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8709
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8710
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8711
    goto/16 :goto_c

    .line 8683
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v6, v7

    :cond_12e
    move v0, v6

    .line 8684
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12f

    .line 8685
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8687
    goto/16 :goto_c

    .line 8688
    :cond_12f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8691
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8692
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getRoamingEnable(II)V

    .line 8693
    goto/16 :goto_c

    .line 8668
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v6, v7

    :cond_130
    move v0, v6

    .line 8669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_131

    .line 8670
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8672
    goto/16 :goto_c

    .line 8673
    :cond_131
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8676
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8677
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8678
    goto/16 :goto_c

    .line 8653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v6, v7

    :cond_132
    move v0, v6

    .line 8654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_133

    .line 8655
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8657
    goto/16 :goto_c

    .line 8658
    :cond_133
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8661
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8662
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8663
    goto/16 :goto_c

    .line 8639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v6, v7

    :cond_134
    move v0, v6

    .line 8640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_135

    .line 8641
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8643
    goto/16 :goto_c

    .line 8644
    :cond_135
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8647
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8648
    goto/16 :goto_c

    .line 8623
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v6, v7

    :cond_136
    move v0, v6

    .line 8624
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_137

    .line 8625
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8627
    goto/16 :goto_c

    .line 8628
    :cond_137
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8631
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8632
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8633
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8634
    goto/16 :goto_c

    .line 8606
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v6, v7

    :cond_138
    move v0, v6

    .line 8607
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_139

    .line 8608
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8610
    goto/16 :goto_c

    .line 8611
    :cond_139
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8614
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8615
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8616
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8617
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8618
    goto/16 :goto_c

    .line 8590
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v6, v7

    :cond_13a
    move v0, v6

    .line 8591
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13b

    .line 8592
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8594
    goto/16 :goto_c

    .line 8595
    :cond_13b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8598
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8599
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8600
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8601
    goto/16 :goto_c

    .line 8574
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v6, v7

    :cond_13c
    move v0, v6

    .line 8575
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13d

    .line 8576
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8577
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8578
    goto/16 :goto_c

    .line 8579
    :cond_13d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8582
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8583
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8584
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8585
    goto/16 :goto_c

    .line 8559
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v6, v7

    :cond_13e
    move v0, v6

    .line 8560
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13f

    .line 8561
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8563
    goto/16 :goto_c

    .line 8564
    :cond_13f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8567
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8568
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->forceReleaseCall(II)V

    .line 8569
    goto/16 :goto_c

    .line 8543
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v6, v7

    :cond_140
    move v0, v6

    .line 8544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_141

    .line 8545
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8547
    goto/16 :goto_c

    .line 8548
    :cond_141
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8551
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8552
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8553
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8554
    goto/16 :goto_c

    .line 8528
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v6, v7

    :cond_142
    move v0, v6

    .line 8529
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_143

    .line 8530
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8532
    goto/16 :goto_c

    .line 8533
    :cond_143
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8536
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8537
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8538
    goto/16 :goto_c

    .line 8513
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v6, v7

    :cond_144
    move v0, v6

    .line 8514
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_145

    .line 8515
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8517
    goto/16 :goto_c

    .line 8518
    :cond_145
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8521
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8522
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8523
    goto/16 :goto_c

    .line 8496
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v6, v7

    :cond_146
    move v0, v6

    .line 8497
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_147

    .line 8498
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8499
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8500
    goto/16 :goto_c

    .line 8501
    :cond_147
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8504
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8505
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8506
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8507
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8508
    goto/16 :goto_c

    .line 8480
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v6, v7

    :cond_148
    move v0, v6

    .line 8481
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_149

    .line 8482
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8484
    goto/16 :goto_c

    .line 8485
    :cond_149
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8488
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8489
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8490
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8491
    goto/16 :goto_c

    .line 8465
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v6, v7

    :cond_14a
    move v0, v6

    .line 8466
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14b

    .line 8467
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8468
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8469
    goto/16 :goto_c

    .line 8470
    :cond_14b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8473
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8474
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWfcProfile(II)V

    .line 8475
    goto/16 :goto_c

    .line 8448
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v6, v7

    :cond_14c
    move v0, v6

    .line 8449
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14d

    .line 8450
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8452
    goto/16 :goto_c

    .line 8453
    :cond_14d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8456
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8457
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8458
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8459
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8460
    goto/16 :goto_c

    .line 8431
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v6, v7

    :cond_14e
    move v0, v6

    .line 8432
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14f

    .line 8433
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8434
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8435
    goto/16 :goto_c

    .line 8436
    :cond_14f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8439
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8440
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8441
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8442
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8443
    goto/16 :goto_c

    .line 8415
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_150

    move v6, v7

    :cond_150
    move v0, v6

    .line 8416
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_151

    .line 8417
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8419
    goto/16 :goto_c

    .line 8420
    :cond_151
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8423
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8424
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8425
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8426
    goto/16 :goto_c

    .line 8400
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v6, v7

    :cond_152
    move v0, v6

    .line 8401
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_153

    .line 8402
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8403
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8404
    goto/16 :goto_c

    .line 8405
    :cond_153
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8408
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8409
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8410
    goto/16 :goto_c

    .line 8380
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v6, v7

    :cond_154
    move v8, v6

    .line 8381
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_155

    .line 8382
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8383
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8384
    goto/16 :goto_c

    .line 8385
    :cond_155
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8387
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8388
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8389
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8390
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8391
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8392
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8393
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8394
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8395
    goto/16 :goto_c

    .line 8365
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_a1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_156

    move v6, v7

    :cond_156
    move v0, v6

    .line 8366
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_157

    .line 8367
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8369
    goto/16 :goto_c

    .line 8370
    :cond_157
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8373
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8374
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8375
    goto/16 :goto_c

    .line 8350
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v6, v7

    :cond_158
    move v0, v6

    .line 8351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_159

    .line 8352
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8354
    goto/16 :goto_c

    .line 8355
    :cond_159
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8358
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8359
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8360
    goto/16 :goto_c

    .line 8335
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v6, v7

    :cond_15a
    move v0, v6

    .line 8336
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15b

    .line 8337
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8339
    goto/16 :goto_c

    .line 8340
    :cond_15b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8342
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8343
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8344
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8345
    goto/16 :goto_c

    .line 8320
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v6, v7

    :cond_15c
    move v0, v6

    .line 8321
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15d

    .line 8322
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8323
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8324
    goto/16 :goto_c

    .line 8325
    :cond_15d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8327
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8328
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8329
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8330
    goto/16 :goto_c

    .line 8305
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v6, v7

    :cond_15e
    move v0, v6

    .line 8306
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15f

    .line 8307
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8308
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8309
    goto/16 :goto_c

    .line 8310
    :cond_15f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8313
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8314
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8315
    goto/16 :goto_c

    .line 8290
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v6, v7

    :cond_160
    move v0, v6

    .line 8291
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_161

    .line 8292
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8294
    goto/16 :goto_c

    .line 8295
    :cond_161
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8298
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8299
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8300
    goto/16 :goto_c

    .line 8275
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v6, v7

    :cond_162
    move v0, v6

    .line 8276
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_163

    .line 8277
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8279
    goto/16 :goto_c

    .line 8280
    :cond_163
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8283
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8284
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8285
    goto/16 :goto_c

    .line 8260
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v6, v7

    :cond_164
    move v0, v6

    .line 8261
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_165

    .line 8262
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8264
    goto/16 :goto_c

    .line 8265
    :cond_165
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8268
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8269
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsEnable(IZ)V

    .line 8270
    goto/16 :goto_c

    .line 8245
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v6, v7

    :cond_166
    move v0, v6

    .line 8246
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_167

    .line 8247
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8249
    goto/16 :goto_c

    .line 8250
    :cond_167
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8253
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8254
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsDeregNotification(II)V

    .line 8255
    goto/16 :goto_c

    .line 8230
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v6, v7

    :cond_168
    move v0, v6

    .line 8231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_169

    .line 8232
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8234
    goto/16 :goto_c

    .line 8235
    :cond_169
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8238
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8239
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resumeCall(II)V

    .line 8240
    goto/16 :goto_c

    .line 8215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v6, v7

    :cond_16a
    move v0, v6

    .line 8216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16b

    .line 8217
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8219
    goto/16 :goto_c

    .line 8220
    :cond_16b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8223
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8224
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->holdCall(II)V

    .line 8225
    goto/16 :goto_c

    .line 8199
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    move v6, v7

    :cond_16c
    move v0, v6

    .line 8200
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16d

    .line 8201
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8203
    goto/16 :goto_c

    .line 8204
    :cond_16d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8207
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8208
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8209
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8210
    goto/16 :goto_c

    .line 8183
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_ad
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    move v6, v7

    :cond_16e
    move v0, v6

    .line 8184
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16f

    .line 8185
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8187
    goto/16 :goto_c

    .line 8188
    :cond_16f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8191
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8192
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8193
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->videoCallAccept(III)V

    .line 8194
    goto/16 :goto_c

    .line 8166
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_ae
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_170

    goto :goto_7

    :cond_170
    move v7, v6

    :goto_7
    move v0, v7

    .line 8167
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_171

    .line 8168
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8170
    goto/16 :goto_c

    .line 8171
    :cond_171
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 8174
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 8175
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8176
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8178
    goto/16 :goto_c

    .line 8149
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_af
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_172

    goto :goto_8

    :cond_172
    move v7, v6

    :goto_8
    move v0, v7

    .line 8150
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_173

    .line 8151
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8153
    goto/16 :goto_c

    .line 8154
    :cond_173
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 8157
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 8158
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8159
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8161
    goto/16 :goto_c

    .line 8132
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_b0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_174

    goto :goto_9

    :cond_174
    move v7, v6

    :goto_9
    move v0, v7

    .line 8133
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_175

    .line 8134
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8136
    goto/16 :goto_c

    .line 8137
    :cond_175
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 8140
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 8141
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8142
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8143
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8144
    goto/16 :goto_c

    .line 8115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_b1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_176

    goto :goto_a

    :cond_176
    move v7, v6

    :goto_a
    move v0, v7

    .line 8116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_177

    .line 8117
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8119
    goto/16 :goto_c

    .line 8120
    :cond_177
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 8123
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 8124
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8125
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8127
    goto/16 :goto_c

    .line 8099
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_178

    move v6, v7

    :cond_178
    move v0, v6

    .line 8100
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_179

    .line 8101
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8103
    goto/16 :goto_c

    .line 8104
    :cond_179
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8107
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8108
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8109
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8110
    goto/16 :goto_c

    .line 8076
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_b3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17a

    move v6, v7

    :cond_17a
    move v10, v6

    .line 8077
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v7, :cond_17b

    .line 8078
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8079
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8080
    goto/16 :goto_c

    .line 8081
    :cond_17b
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8083
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8084
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8085
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8086
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8088
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8089
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8090
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8091
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8092
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8093
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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8094
    goto/16 :goto_c

    .line 8056
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
    :pswitch_b4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17c

    move v6, v7

    :cond_17c
    move v8, v6

    .line 8057
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_17d

    .line 8058
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8059
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8060
    goto/16 :goto_c

    .line 8061
    :cond_17d
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8063
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8064
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8065
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8066
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8067
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8068
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8069
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8070
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8071
    goto/16 :goto_c

    .line 8038
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17e

    move v6, v7

    .line 8039
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v6, v7, :cond_17f

    .line 8040
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8042
    goto/16 :goto_c

    .line 8043
    :cond_17f
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8046
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8047
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8048
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8049
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8050
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 8051
    goto/16 :goto_c

    .line 8023
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_180

    move v6, v7

    :cond_180
    move v0, v6

    .line 8024
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_181

    .line 8025
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8027
    goto/16 :goto_c

    .line 8028
    :cond_181
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8031
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8032
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 8033
    goto/16 :goto_c

    .line 8007
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v6, v7

    :cond_182
    move v0, v6

    .line 8008
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_183

    .line 8009
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8011
    goto/16 :goto_c

    .line 8012
    :cond_183
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8015
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 8016
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8017
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 8018
    goto/16 :goto_c

    .line 7992
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v6, v7

    :cond_184
    move v0, v6

    .line 7993
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_185

    .line 7994
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7996
    goto/16 :goto_c

    .line 7997
    :cond_185
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7999
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8000
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8001
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopKeepalive(II)V

    .line 8002
    goto/16 :goto_c

    .line 7976
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v6, v7

    :cond_186
    move v0, v6

    .line 7977
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_187

    .line 7978
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7980
    goto/16 :goto_c

    .line 7981
    :cond_187
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7984
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7985
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7986
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7987
    goto/16 :goto_c

    .line 7962
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v6, v7

    :cond_188
    move v0, v6

    .line 7963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_189

    .line 7964
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7966
    goto/16 :goto_c

    .line 7967
    :cond_189
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7970
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopNetworkScan(I)V

    .line 7971
    goto/16 :goto_c

    .line 7946
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v6, v7

    :cond_18a
    move v0, v6

    .line 7947
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18b

    .line 7948
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7950
    goto/16 :goto_c

    .line 7951
    :cond_18b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7954
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7955
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7956
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7957
    goto/16 :goto_c

    .line 7931
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v6, v7

    :cond_18c
    move v0, v6

    .line 7932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18d

    .line 7933
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7934
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7935
    goto/16 :goto_c

    .line 7936
    :cond_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7938
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7939
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7940
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7941
    goto/16 :goto_c

    .line 7915
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v6, v7

    :cond_18e
    move v0, v6

    .line 7916
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18f

    .line 7917
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7918
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7919
    goto/16 :goto_c

    .line 7920
    :cond_18f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7923
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7924
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7925
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7926
    goto/16 :goto_c

    .line 7902
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v6, v7

    :cond_190
    move v0, v6

    .line 7903
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_191

    .line 7904
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7906
    goto/16 :goto_c

    .line 7907
    :cond_191
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7909
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->responseAcknowledgement()V

    .line 7910
    goto/16 :goto_c

    .line 7887
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v6, v7

    :cond_192
    move v0, v6

    .line 7888
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_193

    .line 7889
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7891
    goto/16 :goto_c

    .line 7892
    :cond_193
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7895
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7896
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7897
    goto/16 :goto_c

    .line 7872
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v6, v7

    :cond_194
    move v0, v6

    .line 7873
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_195

    .line 7874
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7876
    goto/16 :goto_c

    .line 7877
    :cond_195
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7880
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7881
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setIndicationFilter(II)V

    .line 7882
    goto/16 :goto_c

    .line 7856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v6, v7

    :cond_196
    move v0, v6

    .line 7857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_197

    .line 7858
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7860
    goto/16 :goto_c

    .line 7861
    :cond_197
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7864
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7865
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7866
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7867
    goto/16 :goto_c

    .line 7842
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_c2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_198

    move v6, v7

    :cond_198
    move v0, v6

    .line 7843
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_199

    .line 7844
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7846
    goto/16 :goto_c

    .line 7847
    :cond_199
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7850
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7851
    goto/16 :goto_c

    .line 7825
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v6, v7

    :cond_19a
    move v0, v6

    .line 7826
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19b

    .line 7827
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7829
    goto/16 :goto_c

    .line 7830
    :cond_19b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7833
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7834
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7835
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7836
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7837
    goto/16 :goto_c

    .line 7811
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19c

    move v6, v7

    :cond_19c
    move v0, v6

    .line 7812
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19d

    .line 7813
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7814
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7815
    goto/16 :goto_c

    .line 7816
    :cond_19d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7819
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7820
    goto/16 :goto_c

    .line 7797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v6, v7

    :cond_19e
    move v0, v6

    .line 7798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19f

    .line 7799
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7801
    goto/16 :goto_c

    .line 7802
    :cond_19f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7805
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->pullLceData(I)V

    .line 7806
    goto/16 :goto_c

    .line 7783
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v6, v7

    :cond_1a0
    move v0, v6

    .line 7784
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a1

    .line 7785
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7787
    goto/16 :goto_c

    .line 7788
    :cond_1a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7791
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopLceService(I)V

    .line 7792
    goto/16 :goto_c

    .line 7767
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v6, v7

    :cond_1a2
    move v0, v6

    .line 7768
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a3

    .line 7769
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7771
    goto/16 :goto_c

    .line 7772
    :cond_1a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7775
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7776
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7777
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startLceService(IIZ)V

    .line 7778
    goto/16 :goto_c

    .line 7751
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a4

    move v6, v7

    :cond_1a4
    move v0, v6

    .line 7752
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a5

    .line 7753
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7755
    goto/16 :goto_c

    .line 7756
    :cond_1a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7759
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7760
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7761
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7762
    goto/16 :goto_c

    .line 7737
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v6, v7

    :cond_1a6
    move v0, v6

    .line 7738
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a7

    .line 7739
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7741
    goto/16 :goto_c

    .line 7742
    :cond_1a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7745
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getRadioCapability(I)V

    .line 7746
    goto/16 :goto_c

    .line 7723
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v6, v7

    :cond_1a8
    move v0, v6

    .line 7724
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a9

    .line 7725
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7727
    goto/16 :goto_c

    .line 7728
    :cond_1a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7731
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->requestShutdown(I)V

    .line 7732
    goto/16 :goto_c

    .line 7707
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v6, v7

    :cond_1aa
    move v0, v6

    .line 7708
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ab

    .line 7709
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7711
    goto/16 :goto_c

    .line 7712
    :cond_1ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7715
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7716
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7717
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7718
    goto/16 :goto_c

    .line 7690
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_cc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ac

    move v6, v7

    :cond_1ac
    move v0, v6

    .line 7691
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ad

    .line 7692
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7694
    goto/16 :goto_c

    .line 7695
    :cond_1ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7697
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7698
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7699
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7700
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7701
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7702
    goto/16 :goto_c

    .line 7676
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_cd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ae

    move v6, v7

    :cond_1ae
    move v0, v6

    .line 7677
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1af

    .line 7678
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7679
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7680
    goto/16 :goto_c

    .line 7681
    :cond_1af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7684
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getHardwareConfig(I)V

    .line 7685
    goto/16 :goto_c

    .line 7661
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v6, v7

    :cond_1b0
    move v0, v6

    .line 7662
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b1

    .line 7663
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7665
    goto/16 :goto_c

    .line 7666
    :cond_1b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7669
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7670
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7671
    goto/16 :goto_c

    .line 7645
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v6, v7

    :cond_1b2
    move v0, v6

    .line 7646
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b3

    .line 7647
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7649
    goto/16 :goto_c

    .line 7650
    :cond_1b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7653
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7654
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7655
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7656
    goto/16 :goto_c

    .line 7630
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v6, v7

    :cond_1b4
    move v0, v6

    .line 7631
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b5

    .line 7632
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7634
    goto/16 :goto_c

    .line 7635
    :cond_1b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7638
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7639
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvResetConfig(II)V

    .line 7640
    goto/16 :goto_c

    .line 7615
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v6, v7

    :cond_1b6
    move v0, v6

    .line 7616
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b7

    .line 7617
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7619
    goto/16 :goto_c

    .line 7620
    :cond_1b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7623
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7624
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7625
    goto/16 :goto_c

    .line 7599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v6, v7

    :cond_1b8
    move v0, v6

    .line 7600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b9

    .line 7601
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7603
    goto/16 :goto_c

    .line 7604
    :cond_1b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7607
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7608
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7609
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7610
    goto/16 :goto_c

    .line 7584
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v6, v7

    :cond_1ba
    move v0, v6

    .line 7585
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bb

    .line 7586
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7588
    goto/16 :goto_c

    .line 7589
    :cond_1bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7592
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7593
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvReadItem(II)V

    .line 7594
    goto/16 :goto_c

    .line 7568
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v6, v7

    :cond_1bc
    move v0, v6

    .line 7569
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bd

    .line 7570
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7572
    goto/16 :goto_c

    .line 7573
    :cond_1bd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7576
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7577
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7578
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7579
    goto/16 :goto_c

    .line 7553
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v6, v7

    :cond_1be
    move v0, v6

    .line 7554
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bf

    .line 7555
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7557
    goto/16 :goto_c

    .line 7558
    :cond_1bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7561
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7562
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7563
    goto/16 :goto_c

    .line 7537
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v6, v7

    :cond_1c0
    move v0, v6

    .line 7538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c1

    .line 7539
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7541
    goto/16 :goto_c

    .line 7542
    :cond_1c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7545
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7546
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7547
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7548
    goto/16 :goto_c

    .line 7521
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c2

    move v6, v7

    :cond_1c2
    move v0, v6

    .line 7522
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c3

    .line 7523
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7525
    goto/16 :goto_c

    .line 7526
    :cond_1c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7529
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7530
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7531
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7532
    goto/16 :goto_c

    .line 7505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v6, v7

    :cond_1c4
    move v0, v6

    .line 7506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c5

    .line 7507
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7509
    goto/16 :goto_c

    .line 7510
    :cond_1c5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7513
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7514
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7515
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7516
    goto/16 :goto_c

    .line 7491
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v6, v7

    :cond_1c6
    move v0, v6

    .line 7492
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c7

    .line 7493
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7495
    goto/16 :goto_c

    .line 7496
    :cond_1c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7499
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7500
    goto/16 :goto_c

    .line 7473
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v6, v7

    :cond_1c8
    move v0, v6

    .line 7474
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c9

    .line 7475
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7477
    goto/16 :goto_c

    .line 7478
    :cond_1c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7481
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7482
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7484
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7485
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7486
    goto/16 :goto_c

    .line 7458
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_db
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ca

    move v6, v7

    :cond_1ca
    move v0, v6

    .line 7459
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cb

    .line 7460
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7462
    goto/16 :goto_c

    .line 7463
    :cond_1cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7466
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7467
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7468
    goto/16 :goto_c

    .line 7444
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v6, v7

    :cond_1cc
    move v0, v6

    .line 7445
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cd

    .line 7446
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7448
    goto/16 :goto_c

    .line 7449
    :cond_1cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7452
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCellInfoList(I)V

    .line 7453
    goto/16 :goto_c

    .line 7430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v6, v7

    :cond_1ce
    move v0, v6

    .line 7431
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cf

    .line 7432
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7434
    goto/16 :goto_c

    .line 7435
    :cond_1cf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7438
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7439
    goto/16 :goto_c

    .line 7415
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v6, v7

    :cond_1d0
    move v0, v6

    .line 7416
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d1

    .line 7417
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7419
    goto/16 :goto_c

    .line 7420
    :cond_1d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7423
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7424
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7425
    goto/16 :goto_c

    .line 7399
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v6, v7

    :cond_1d2
    move v0, v6

    .line 7400
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d3

    .line 7401
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7403
    goto/16 :goto_c

    .line 7404
    :cond_1d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7407
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7408
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7409
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7410
    goto/16 :goto_c

    .line 7384
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_e0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d4

    move v6, v7

    :cond_1d4
    move v0, v6

    .line 7385
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d5

    .line 7386
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7388
    goto/16 :goto_c

    .line 7389
    :cond_1d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7392
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7393
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7394
    goto/16 :goto_c

    .line 7370
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v6, v7

    :cond_1d6
    move v0, v6

    .line 7371
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d7

    .line 7372
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7374
    goto/16 :goto_c

    .line 7375
    :cond_1d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7378
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7379
    goto/16 :goto_c

    .line 7356
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v6, v7

    :cond_1d8
    move v0, v6

    .line 7357
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d9

    .line 7358
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7360
    goto/16 :goto_c

    .line 7361
    :cond_1d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7364
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7365
    goto/16 :goto_c

    .line 7341
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v6, v7

    :cond_1da
    move v0, v6

    .line 7342
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1db

    .line 7343
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7345
    goto/16 :goto_c

    .line 7346
    :cond_1db
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7349
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7350
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7351
    goto/16 :goto_c

    .line 7326
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v6, v7

    :cond_1dc
    move v0, v6

    .line 7327
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1dd

    .line 7328
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7330
    goto/16 :goto_c

    .line 7331
    :cond_1dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7334
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7335
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7336
    goto/16 :goto_c

    .line 7312
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v6, v7

    :cond_1de
    move v0, v6

    .line 7313
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1df

    .line 7314
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7316
    goto/16 :goto_c

    .line 7317
    :cond_1df
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7320
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmscAddress(I)V

    .line 7321
    goto/16 :goto_c

    .line 7298
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v6, v7

    :cond_1e0
    move v0, v6

    .line 7299
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e1

    .line 7300
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7302
    goto/16 :goto_c

    .line 7303
    :cond_1e1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7306
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7307
    goto/16 :goto_c

    .line 7284
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v6, v7

    :cond_1e2
    move v0, v6

    .line 7285
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e3

    .line 7286
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7288
    goto/16 :goto_c

    .line 7289
    :cond_1e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7292
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7293
    goto/16 :goto_c

    .line 7269
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v6, v7

    :cond_1e4
    move v0, v6

    .line 7270
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e5

    .line 7271
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7272
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7273
    goto/16 :goto_c

    .line 7274
    :cond_1e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7277
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7278
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7279
    goto/16 :goto_c

    .line 7253
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v6, v7

    :cond_1e6
    move v0, v6

    .line 7254
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e7

    .line 7255
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7257
    goto/16 :goto_c

    .line 7258
    :cond_1e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7261
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7262
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7263
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7264
    goto/16 :goto_c

    .line 7239
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v6, v7

    :cond_1e8
    move v0, v6

    .line 7240
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e9

    .line 7241
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7243
    goto/16 :goto_c

    .line 7244
    :cond_1e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7247
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCDMASubscription(I)V

    .line 7248
    goto/16 :goto_c

    .line 7224
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v6, v7

    :cond_1ea
    move v0, v6

    .line 7225
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1eb

    .line 7226
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7228
    goto/16 :goto_c

    .line 7229
    :cond_1eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7232
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7233
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7234
    goto/16 :goto_c

    .line 7209
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v6, v7

    :cond_1ec
    move v0, v6

    .line 7210
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ed

    .line 7211
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7212
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7213
    goto/16 :goto_c

    .line 7214
    :cond_1ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7217
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7218
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7219
    goto/16 :goto_c

    .line 7195
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v6, v7

    :cond_1ee
    move v0, v6

    .line 7196
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ef

    .line 7197
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7199
    goto/16 :goto_c

    .line 7200
    :cond_1ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7203
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7204
    goto/16 :goto_c

    .line 7180
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v6, v7

    :cond_1f0
    move v0, v6

    .line 7181
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f1

    .line 7182
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7184
    goto/16 :goto_c

    .line 7185
    :cond_1f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7188
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7189
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7190
    goto/16 :goto_c

    .line 7165
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v6, v7

    :cond_1f2
    move v0, v6

    .line 7166
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f3

    .line 7167
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7169
    goto/16 :goto_c

    .line 7170
    :cond_1f3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7173
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7174
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7175
    goto/16 :goto_c

    .line 7151
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v6, v7

    :cond_1f4
    move v0, v6

    .line 7152
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f5

    .line 7153
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7155
    goto/16 :goto_c

    .line 7156
    :cond_1f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7159
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7160
    goto/16 :goto_c

    .line 7135
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v6, v7

    :cond_1f6
    move v0, v6

    .line 7136
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f7

    .line 7137
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7139
    goto/16 :goto_c

    .line 7140
    :cond_1f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7143
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7144
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7145
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7146
    goto/16 :goto_c

    .line 7119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v6, v7

    :cond_1f8
    move v0, v6

    .line 7120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f9

    .line 7121
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7123
    goto/16 :goto_c

    .line 7124
    :cond_1f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7127
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7128
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7129
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7130
    goto/16 :goto_c

    .line 7102
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v6, v7

    :cond_1fa
    move v0, v6

    .line 7103
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fb

    .line 7104
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7106
    goto/16 :goto_c

    .line 7107
    :cond_1fb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7110
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7111
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7112
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7113
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7114
    goto/16 :goto_c

    .line 7087
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fc

    move v6, v7

    :cond_1fc
    move v0, v6

    .line 7088
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fd

    .line 7089
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7091
    goto/16 :goto_c

    .line 7092
    :cond_1fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7095
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7096
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7097
    goto/16 :goto_c

    .line 7073
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v6, v7

    :cond_1fe
    move v0, v6

    .line 7074
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ff

    .line 7075
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7076
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7077
    goto/16 :goto_c

    .line 7078
    :cond_1ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7081
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7082
    goto/16 :goto_c

    .line 7058
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v6, v7

    :cond_200
    move v0, v6

    .line 7059
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_201

    .line 7060
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7062
    goto/16 :goto_c

    .line 7063
    :cond_201
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7066
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7067
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7068
    goto/16 :goto_c

    .line 7044
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v6, v7

    :cond_202
    move v0, v6

    .line 7045
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_203

    .line 7046
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7048
    goto/16 :goto_c

    .line 7049
    :cond_203
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7052
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getTTYMode(I)V

    .line 7053
    goto/16 :goto_c

    .line 7029
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v6, v7

    :cond_204
    move v0, v6

    .line 7030
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_205

    .line 7031
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7033
    goto/16 :goto_c

    .line 7034
    :cond_205
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7037
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7038
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setTTYMode(II)V

    .line 7039
    goto/16 :goto_c

    .line 7015
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v6, v7

    :cond_206
    move v0, v6

    .line 7016
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_207

    .line 7017
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7019
    goto/16 :goto_c

    .line 7020
    :cond_207
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7023
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 7024
    goto/16 :goto_c

    .line 7000
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v6, v7

    :cond_208
    move v0, v6

    .line 7001
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_209

    .line 7002
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7004
    goto/16 :goto_c

    .line 7005
    :cond_209
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7008
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7009
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 7010
    goto/16 :goto_c

    .line 6985
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v6, v7

    :cond_20a
    move v0, v6

    .line 6986
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20b

    .line 6987
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6989
    goto/16 :goto_c

    .line 6990
    :cond_20b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6993
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6994
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6995
    goto/16 :goto_c

    .line 6970
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v6, v7

    :cond_20c
    move v0, v6

    .line 6971
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20d

    .line 6972
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6974
    goto/16 :goto_c

    .line 6975
    :cond_20d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6978
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6979
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6980
    goto/16 :goto_c

    .line 6956
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v6, v7

    :cond_20e
    move v0, v6

    .line 6957
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20f

    .line 6958
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6959
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6960
    goto/16 :goto_c

    .line 6961
    :cond_20f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6963
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6964
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getNeighboringCids(I)V

    .line 6965
    goto/16 :goto_c

    .line 6942
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v6, v7

    :cond_210
    move v0, v6

    .line 6943
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_211

    .line 6944
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6945
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6946
    goto/16 :goto_c

    .line 6947
    :cond_211
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6950
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6951
    goto/16 :goto_c

    .line 6927
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v6, v7

    :cond_212
    move v0, v6

    .line 6928
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_213

    .line 6929
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6931
    goto/16 :goto_c

    .line 6932
    :cond_213
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6935
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6936
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6937
    goto/16 :goto_c

    .line 6913
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v6, v7

    :cond_214
    move v0, v6

    .line 6914
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_215

    .line 6915
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6916
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6917
    goto/16 :goto_c

    .line 6918
    :cond_215
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6920
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6921
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6922
    goto/16 :goto_c

    .line 6898
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v6, v7

    :cond_216
    move v0, v6

    .line 6899
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_217

    .line 6900
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6902
    goto/16 :goto_c

    .line 6903
    :cond_217
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6905
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6906
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6907
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6908
    goto/16 :goto_c

    .line 6883
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v6, v7

    :cond_218
    move v0, v6

    .line 6884
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_219

    .line 6885
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6887
    goto/16 :goto_c

    .line 6888
    :cond_219
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6891
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6892
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6893
    goto/16 :goto_c

    .line 6868
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v6, v7

    :cond_21a
    move v0, v6

    .line 6869
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21b

    .line 6870
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6872
    goto/16 :goto_c

    .line 6873
    :cond_21b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6875
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6876
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6877
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6878
    goto/16 :goto_c

    .line 6854
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v6, v7

    :cond_21c
    move v0, v6

    .line 6855
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21d

    .line 6856
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6857
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6858
    goto/16 :goto_c

    .line 6859
    :cond_21d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6862
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6863
    goto/16 :goto_c

    .line 6839
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v6, v7

    :cond_21e
    move v0, v6

    .line 6840
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21f

    .line 6841
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6842
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6843
    goto/16 :goto_c

    .line 6844
    :cond_21f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6846
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6847
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6848
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setBandMode(II)V

    .line 6849
    goto/16 :goto_c

    .line 6824
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v6, v7

    :cond_220
    move v0, v6

    .line 6825
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_221

    .line 6826
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6827
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6828
    goto/16 :goto_c

    .line 6829
    :cond_221
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6832
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6833
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6834
    goto/16 :goto_c

    .line 6808
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v6, v7

    :cond_222
    move v0, v6

    .line 6809
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_223

    .line 6810
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6812
    goto/16 :goto_c

    .line 6813
    :cond_223
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6816
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6817
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6818
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6819
    goto/16 :goto_c

    .line 6793
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v6, v7

    :cond_224
    move v0, v6

    .line 6794
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_225

    .line 6795
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6797
    goto/16 :goto_c

    .line 6798
    :cond_225
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6801
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6802
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6803
    goto/16 :goto_c

    .line 6779
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v6, v7

    :cond_226
    move v0, v6

    .line 6780
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_227

    .line 6781
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6783
    goto/16 :goto_c

    .line 6784
    :cond_227
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6787
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDataCallList(I)V

    .line 6788
    goto/16 :goto_c

    .line 6765
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v6, v7

    :cond_228
    move v0, v6

    .line 6766
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_229

    .line 6767
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6769
    goto/16 :goto_c

    .line 6770
    :cond_229
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6773
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getClip(I)V

    .line 6774
    goto/16 :goto_c

    .line 6751
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v6, v7

    :cond_22a
    move v0, v6

    .line 6752
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22b

    .line 6753
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6755
    goto/16 :goto_c

    .line 6756
    :cond_22b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6759
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getMute(I)V

    .line 6760
    goto/16 :goto_c

    .line 6736
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v6, v7

    :cond_22c
    move v0, v6

    .line 6737
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22d

    .line 6738
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6740
    goto/16 :goto_c

    .line 6741
    :cond_22d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6744
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6745
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setMute(IZ)V

    .line 6746
    goto/16 :goto_c

    .line 6721
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v6, v7

    :cond_22e
    move v0, v6

    .line 6722
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22f

    .line 6723
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6725
    goto/16 :goto_c

    .line 6726
    :cond_22f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6729
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6730
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->separateConnection(II)V

    .line 6731
    goto/16 :goto_c

    .line 6707
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v6, v7

    :cond_230
    move v0, v6

    .line 6708
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_231

    .line 6709
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6711
    goto/16 :goto_c

    .line 6712
    :cond_231
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6715
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getBasebandVersion(I)V

    .line 6716
    goto/16 :goto_c

    .line 6693
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v6, v7

    :cond_232
    move v0, v6

    .line 6694
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_233

    .line 6695
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6697
    goto/16 :goto_c

    .line 6698
    :cond_233
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6701
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopDtmf(I)V

    .line 6702
    goto/16 :goto_c

    .line 6678
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v6, v7

    :cond_234
    move v0, v6

    .line 6679
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_235

    .line 6680
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6682
    goto/16 :goto_c

    .line 6683
    :cond_235
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6686
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6687
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6688
    goto/16 :goto_c

    .line 6664
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v6, v7

    :cond_236
    move v0, v6

    .line 6665
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_237

    .line 6666
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6668
    goto/16 :goto_c

    .line 6669
    :cond_237
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6672
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6673
    goto/16 :goto_c

    .line 6649
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v6, v7

    :cond_238
    move v0, v6

    .line 6650
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_239

    .line 6651
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6653
    goto/16 :goto_c

    .line 6654
    :cond_239
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6657
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6658
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6659
    goto/16 :goto_c

    .line 6635
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v6, v7

    :cond_23a
    move v0, v6

    .line 6636
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23b

    .line 6637
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6639
    goto/16 :goto_c

    .line 6640
    :cond_23b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6642
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6643
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6644
    goto/16 :goto_c

    .line 6621
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v6, v7

    :cond_23c
    move v0, v6

    .line 6622
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23d

    .line 6623
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6625
    goto/16 :goto_c

    .line 6626
    :cond_23d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6629
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6630
    goto/16 :goto_c

    .line 6604
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v6, v7

    :cond_23e
    move v0, v6

    .line 6605
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23f

    .line 6606
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6608
    goto/16 :goto_c

    .line 6609
    :cond_23f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6612
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6613
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6614
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6615
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6616
    goto/16 :goto_c

    .line 6585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_116
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_240

    move v6, v7

    :cond_240
    move v8, v6

    .line 6586
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_241

    .line 6587
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6589
    goto/16 :goto_c

    .line 6590
    :cond_241
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6593
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6594
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6595
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6596
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6597
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6598
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6599
    goto/16 :goto_c

    .line 6567
    .end local v7    # "serial":I
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_117
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_242

    move v6, v7

    .line 6568
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_242
    if-eq v6, v7, :cond_243

    .line 6569
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6571
    goto/16 :goto_c

    .line 6572
    :cond_243
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6575
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6576
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6577
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6578
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6579
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6580
    goto/16 :goto_c

    .line 6551
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_118
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_244

    move v6, v7

    :cond_244
    move v0, v6

    .line 6552
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_245

    .line 6553
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6555
    goto/16 :goto_c

    .line 6556
    :cond_245
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6559
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6560
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6561
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6562
    goto/16 :goto_c

    .line 6537
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_119
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_246

    move v6, v7

    :cond_246
    move v0, v6

    .line 6538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_247

    .line 6539
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6541
    goto/16 :goto_c

    .line 6542
    :cond_247
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6545
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acceptCall(I)V

    .line 6546
    goto/16 :goto_c

    .line 6521
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v6, v7

    :cond_248
    move v0, v6

    .line 6522
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_249

    .line 6523
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6525
    goto/16 :goto_c

    .line 6526
    :cond_249
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6529
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6530
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6531
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6532
    goto/16 :goto_c

    .line 6505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_11b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24a

    move v6, v7

    :cond_24a
    move v0, v6

    .line 6506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24b

    .line 6507
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6509
    goto/16 :goto_c

    .line 6510
    :cond_24b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6513
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6514
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6515
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6516
    goto/16 :goto_c

    .line 6490
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_11c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24c

    move v6, v7

    :cond_24c
    move v0, v6

    .line 6491
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24d

    .line 6492
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6494
    goto/16 :goto_c

    .line 6495
    :cond_24d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6498
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6499
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCallWaiting(II)V

    .line 6500
    goto/16 :goto_c

    .line 6474
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v6, v7

    :cond_24e
    move v0, v6

    .line 6475
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24f

    .line 6476
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6477
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6478
    goto/16 :goto_c

    .line 6479
    :cond_24f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6482
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6483
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6484
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6485
    goto/16 :goto_c

    .line 6458
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v6, v7

    :cond_250
    move v0, v6

    .line 6459
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_251

    .line 6460
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6462
    goto/16 :goto_c

    .line 6463
    :cond_251
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6466
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6467
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6468
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6469
    goto/16 :goto_c

    .line 6443
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v6, v7

    :cond_252
    move v0, v6

    .line 6444
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_253

    .line 6445
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6447
    goto/16 :goto_c

    .line 6448
    :cond_253
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6451
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6452
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setClir(II)V

    .line 6453
    goto/16 :goto_c

    .line 6429
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v6, v7

    :cond_254
    move v0, v6

    .line 6430
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_255

    .line 6431
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6433
    goto/16 :goto_c

    .line 6434
    :cond_255
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6437
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getClir(I)V

    .line 6438
    goto/16 :goto_c

    .line 6415
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v6, v7

    :cond_256
    move v0, v6

    .line 6416
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_257

    .line 6417
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6419
    goto/16 :goto_c

    .line 6420
    :cond_257
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6423
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6424
    goto/16 :goto_c

    .line 6400
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v6, v7

    :cond_258
    move v0, v6

    .line 6401
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_259

    .line 6402
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6403
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6404
    goto/16 :goto_c

    .line 6405
    :cond_259
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6408
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6409
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6410
    goto/16 :goto_c

    .line 6384
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v6, v7

    :cond_25a
    move v0, v6

    .line 6385
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25b

    .line 6386
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6388
    goto/16 :goto_c

    .line 6389
    :cond_25b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6392
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6393
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6394
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6395
    goto/16 :goto_c

    .line 6364
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v6, v7

    :cond_25c
    move v8, v6

    .line 6365
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_25d

    .line 6366
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6367
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6368
    goto/16 :goto_c

    .line 6369
    :cond_25d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6372
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6373
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6374
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6376
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6377
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6378
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6379
    goto/16 :goto_c

    .line 6348
    .end local v7    # "serial":I
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_125
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25e

    move v6, v7

    :cond_25e
    move v0, v6

    .line 6349
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25f

    .line 6350
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6351
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6352
    goto/16 :goto_c

    .line 6353
    :cond_25f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6356
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6357
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6358
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6359
    goto/16 :goto_c

    .line 6332
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v6, v7

    :cond_260
    move v0, v6

    .line 6333
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_261

    .line 6334
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6336
    goto/16 :goto_c

    .line 6337
    :cond_261
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6340
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6341
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6342
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6343
    goto/16 :goto_c

    .line 6317
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v6, v7

    :cond_262
    move v0, v6

    .line 6318
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_263

    .line 6319
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6320
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6321
    goto/16 :goto_c

    .line 6322
    :cond_263
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6325
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6326
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6327
    goto/16 :goto_c

    .line 6302
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v6, v7

    :cond_264
    move v0, v6

    .line 6303
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_265

    .line 6304
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6306
    goto/16 :goto_c

    .line 6307
    :cond_265
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6310
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6311
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRadioPower(IZ)V

    .line 6312
    goto/16 :goto_c

    .line 6288
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v6, v7

    :cond_266
    move v0, v6

    .line 6289
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_267

    .line 6290
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6292
    goto/16 :goto_c

    .line 6293
    :cond_267
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6296
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getOperator(I)V

    .line 6297
    goto/16 :goto_c

    .line 6274
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v6, v7

    :cond_268
    move v0, v6

    .line 6275
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_269

    .line 6276
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6278
    goto/16 :goto_c

    .line 6279
    :cond_269
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6282
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6283
    goto/16 :goto_c

    .line 6260
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v6, v7

    :cond_26a
    move v0, v6

    .line 6261
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26b

    .line 6262
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6264
    goto/16 :goto_c

    .line 6265
    :cond_26b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6268
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6269
    goto/16 :goto_c

    .line 6246
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v6, v7

    :cond_26c
    move v0, v6

    .line 6247
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26d

    .line 6248
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6249
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6250
    goto/16 :goto_c

    .line 6251
    :cond_26d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6253
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6254
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSignalStrength(I)V

    .line 6255
    goto/16 :goto_c

    .line 6232
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v6, v7

    :cond_26e
    move v0, v6

    .line 6233
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26f

    .line 6234
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6236
    goto/16 :goto_c

    .line 6237
    :cond_26f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6240
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6241
    goto/16 :goto_c

    .line 6218
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v6, v7

    :cond_270
    move v0, v6

    .line 6219
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_271

    .line 6220
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6222
    goto/16 :goto_c

    .line 6223
    :cond_271
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6226
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->rejectCall(I)V

    .line 6227
    goto/16 :goto_c

    .line 6204
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v6, v7

    :cond_272
    move v0, v6

    .line 6205
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_273

    .line 6206
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6208
    goto/16 :goto_c

    .line 6209
    :cond_273
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6212
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->conference(I)V

    .line 6213
    goto/16 :goto_c

    .line 6190
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v6, v7

    :cond_274
    move v0, v6

    .line 6191
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_275

    .line 6192
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6194
    goto/16 :goto_c

    .line 6195
    :cond_275
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6198
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6199
    goto/16 :goto_c

    .line 6176
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v6, v7

    :cond_276
    move v0, v6

    .line 6177
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_277

    .line 6178
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6180
    goto/16 :goto_c

    .line 6181
    :cond_277
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6184
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6185
    goto/16 :goto_c

    .line 6162
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v6, v7

    :cond_278
    move v0, v6

    .line 6163
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_279

    .line 6164
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6166
    goto/16 :goto_c

    .line 6167
    :cond_279
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6170
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6171
    goto/16 :goto_c

    .line 6147
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v6, v7

    :cond_27a
    move v0, v6

    .line 6148
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27b

    .line 6149
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6151
    goto/16 :goto_c

    .line 6152
    :cond_27b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6155
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6156
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangup(II)V

    .line 6157
    goto/16 :goto_c

    .line 6132
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v6, v7

    :cond_27c
    move v0, v6

    .line 6133
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27d

    .line 6134
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6136
    goto/16 :goto_c

    .line 6137
    :cond_27d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6140
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6141
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6142
    goto/16 :goto_c

    .line 6116
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v6, v7

    :cond_27e
    move v0, v6

    .line 6117
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27f

    .line 6118
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6119
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6120
    goto/16 :goto_c

    .line 6121
    :cond_27f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6124
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6125
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6126
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6127
    goto/16 :goto_c

    .line 6102
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v6, v7

    :cond_280
    move v0, v6

    .line 6103
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_281

    .line 6104
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6106
    goto/16 :goto_c

    .line 6107
    :cond_281
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6110
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCurrentCalls(I)V

    .line 6111
    goto/16 :goto_c

    .line 6087
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v6, v7

    :cond_282
    move v0, v6

    .line 6088
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_283

    .line 6089
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6091
    goto/16 :goto_c

    .line 6092
    :cond_283
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6095
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6096
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6097
    goto/16 :goto_c

    .line 6070
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v6, v7

    :cond_284
    move v0, v6

    .line 6071
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_285

    .line 6072
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6074
    goto/16 :goto_c

    .line 6075
    :cond_285
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6078
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6079
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6080
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6081
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6082
    goto/16 :goto_c

    .line 6053
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_139
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_286

    move v6, v7

    :cond_286
    move v0, v6

    .line 6054
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_287

    .line 6055
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6057
    goto/16 :goto_c

    .line 6058
    :cond_287
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6061
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6062
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6063
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6064
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6065
    goto/16 :goto_c

    .line 6036
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_288

    move v6, v7

    :cond_288
    move v0, v6

    .line 6037
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_289

    .line 6038
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6040
    goto/16 :goto_c

    .line 6041
    :cond_289
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6044
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6045
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6046
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6047
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6048
    goto/16 :goto_c

    .line 6020
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28a

    move v6, v7

    :cond_28a
    move v0, v6

    .line 6021
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28b

    .line 6022
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6023
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6024
    goto/16 :goto_c

    .line 6025
    :cond_28b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6028
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6029
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6030
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6031
    goto/16 :goto_c

    .line 6003
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28c

    move v6, v7

    :cond_28c
    move v0, v6

    .line 6004
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28d

    .line 6005
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6006
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6007
    goto/16 :goto_c

    .line 6008
    :cond_28d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6011
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6012
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6013
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6014
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6015
    goto/16 :goto_c

    .line 5987
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28e

    move v6, v7

    :cond_28e
    move v0, v6

    .line 5988
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28f

    .line 5989
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5991
    goto :goto_c

    .line 5992
    :cond_28f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5995
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5996
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5997
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5998
    goto :goto_c

    .line 5973
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_290

    move v6, v7

    :cond_290
    move v0, v6

    .line 5974
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_291

    .line 5975
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5977
    goto :goto_c

    .line 5978
    :cond_291
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5981
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getIccCardStatus(I)V

    .line 5982
    goto :goto_c

    .line 5956
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_13f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_292

    goto :goto_b

    :cond_292
    move v7, v6

    :goto_b
    move v0, v7

    .line 5957
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_293

    .line 5958
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5959
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5960
    goto :goto_c

    .line 5961
    :cond_293
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5963
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 5964
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 5965
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5966
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5968
    nop

    .line 11045
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_294
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_13e
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

    .line 5907
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5935
    const-string v0, "vendor.mediatek.hardware.radio@3.6::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5936
    return-object p0

    .line 5938
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

    .line 5942
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5943
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5897
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5929
    const/4 v0, 0x1

    return v0
.end method
