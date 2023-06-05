.class public abstract Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_7/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_7/IRadio;
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

    .line 5870
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5915
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5916
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5917
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5918
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5919
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

    .line 5882
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

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

    new-array v3, v2, [B

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x30t
        -0x2et
        -0x49t
        0x28t
        0x10t
        0x6at
        0x6dt
        0x22t
        0x49t
        0xdt
        0x20t
        0x3bt
        -0x70t
        0x3ct
        0x19t
        -0xet
        -0x2t
        -0x20t
        -0x6at
        0x7ct
        0x45t
        0x4ct
        0x46t
        -0x69t
        0x4at
        0x11t
        -0x7ft
        0x54t
        0x1at
        -0x4dt
        -0x55t
        0x43t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    :array_9
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
    .locals 11
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

    const-string v1, "vendor.mediatek.hardware.radio@3.7::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.6::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v5, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v6, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v7, "android.hardware.radio@1.2::IRadio"

    const-string v8, "android.hardware.radio@1.1::IRadio"

    const-string v9, "android.hardware.radio@1.0::IRadio"

    const-string v10, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 5876
    const-string v0, "vendor.mediatek.hardware.radio@3.7::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5903
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5925
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5927
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

    .line 5955
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

    .line 11038
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    move v0, v6

    .line 11039
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 11040
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11042
    goto/16 :goto_c

    .line 11025
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v6, v7

    :cond_1
    move v1, v6

    .line 11026
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_2

    .line 11027
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11029
    goto/16 :goto_c

    .line 11030
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11032
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->notifySyspropsChanged()V

    .line 11033
    goto/16 :goto_c

    .line 11009
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v1, v7

    .line 11010
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 11011
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11013
    goto/16 :goto_c

    .line 11014
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11016
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 11017
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11018
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 11019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11020
    goto/16 :goto_c

    .line 10994
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

    .line 10995
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 10996
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10997
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10998
    goto/16 :goto_c

    .line 10999
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11001
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->ping()V

    .line 11002
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11004
    goto/16 :goto_c

    .line 10984
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    :cond_7
    move v0, v6

    .line 10985
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 10986
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10987
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10988
    goto/16 :goto_c

    .line 10971
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v6, v7

    :cond_8
    move v1, v6

    .line 10972
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_9

    .line 10973
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10975
    goto/16 :goto_c

    .line 10976
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10978
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setHALInstrumentation()V

    .line 10979
    goto/16 :goto_c

    .line 10932
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v1, v7

    .line 10933
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 10934
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10936
    goto/16 :goto_c

    .line 10937
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10939
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10940
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10942
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 10944
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 10945
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10946
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10947
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 10948
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 10950
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 10951
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 10953
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 10957
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10958
    nop

    .line 10948
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10954
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 10961
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10963
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10965
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10966
    goto/16 :goto_c

    .line 10916
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

    .line 10917
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 10918
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10920
    goto/16 :goto_c

    .line 10921
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10923
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10924
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10925
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10927
    goto/16 :goto_c

    .line 10899
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

    .line 10900
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 10901
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10903
    goto/16 :goto_c

    .line 10904
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 10907
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10908
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 10909
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10910
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10911
    goto/16 :goto_c

    .line 10883
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

    .line 10884
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 10885
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10887
    goto/16 :goto_c

    .line 10888
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10890
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10891
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10892
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10893
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10894
    goto/16 :goto_c

    .line 10867
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v6, v7

    :cond_14
    move v1, v6

    .line 10868
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_15

    .line 10869
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10870
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10871
    goto/16 :goto_c

    .line 10872
    :cond_15
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10874
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10875
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10876
    .local v2, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10877
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 10878
    goto/16 :goto_c

    .line 10852
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

    .line 10853
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_17

    .line 10854
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10855
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10856
    goto/16 :goto_c

    .line 10857
    :cond_17
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;

    move-result-object v0

    .line 10860
    .local v0, "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;

    move-result-object v2

    .line 10861
    .local v2, "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V

    .line 10862
    goto/16 :goto_c

    .line 10836
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v6, v7

    :cond_18
    move v0, v6

    .line 10837
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19

    .line 10838
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10840
    goto/16 :goto_c

    .line 10841
    :cond_19
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10844
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10845
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10846
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->hangupWithReason(III)V

    .line 10847
    goto/16 :goto_c

    .line 10821
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

    .line 10822
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b

    .line 10823
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10824
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10825
    goto/16 :goto_c

    .line 10826
    :cond_1b
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10829
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10830
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10831
    goto/16 :goto_c

    .line 10806
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v6, v7

    :cond_1c
    move v0, v6

    .line 10807
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d

    .line 10808
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10810
    goto/16 :goto_c

    .line 10811
    :cond_1d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10814
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10815
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10816
    goto/16 :goto_c

    .line 10791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v6, v7

    :cond_1e
    move v0, v6

    .line 10792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f

    .line 10793
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10795
    goto/16 :goto_c

    .line 10796
    :cond_1f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10799
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10800
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10801
    goto/16 :goto_c

    .line 10775
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    move v0, v6

    .line 10776
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21

    .line 10777
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10779
    goto/16 :goto_c

    .line 10780
    :cond_21
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10783
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10784
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10785
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10786
    goto/16 :goto_c

    .line 10759
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

    .line 10760
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23

    .line 10761
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10763
    goto/16 :goto_c

    .line 10764
    :cond_23
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10767
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10768
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10769
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10770
    goto/16 :goto_c

    .line 10744
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

    .line 10745
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25

    .line 10746
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10748
    goto/16 :goto_c

    .line 10749
    :cond_25
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10752
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10753
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10754
    goto/16 :goto_c

    .line 10729
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v6, v7

    :cond_26
    move v0, v6

    .line 10730
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27

    .line 10731
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10733
    goto/16 :goto_c

    .line 10734
    :cond_27
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10737
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10738
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10739
    goto/16 :goto_c

    .line 10714
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v6, v7

    :cond_28
    move v0, v6

    .line 10715
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_29

    .line 10716
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10718
    goto/16 :goto_c

    .line 10719
    :cond_29
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10721
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10722
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10723
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSilentReboot(II)V

    .line 10724
    goto/16 :goto_c

    .line 10699
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v6, v7

    :cond_2a
    move v0, v6

    .line 10700
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2b

    .line 10701
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10703
    goto/16 :goto_c

    .line 10704
    :cond_2b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10707
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10708
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->reportSimMode(II)V

    .line 10709
    goto/16 :goto_c

    .line 10684
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v6, v7

    :cond_2c
    move v0, v6

    .line 10685
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2d

    .line 10686
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10688
    goto/16 :goto_c

    .line 10689
    :cond_2d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10692
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10693
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10694
    goto/16 :goto_c

    .line 10670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v6, v7

    :cond_2e
    move v0, v6

    .line 10671
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2f

    .line 10672
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10674
    goto/16 :goto_c

    .line 10675
    :cond_2f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10678
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10679
    goto/16 :goto_c

    .line 10655
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v6, v7

    :cond_30
    move v0, v6

    .line 10656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_31

    .line 10657
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10659
    goto/16 :goto_c

    .line 10660
    :cond_31
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10663
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10664
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10665
    goto/16 :goto_c

    .line 10641
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v6, v7

    :cond_32
    move v0, v6

    .line 10642
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_33

    .line 10643
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10645
    goto/16 :goto_c

    .line 10646
    :cond_33
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10649
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->resetAllConnections(I)V

    .line 10650
    goto/16 :goto_c

    .line 10626
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v6, v7

    :cond_34
    move v0, v6

    .line 10627
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_35

    .line 10628
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10629
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10630
    goto/16 :goto_c

    .line 10631
    :cond_35
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10633
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10634
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10635
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10636
    goto/16 :goto_c

    .line 10611
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v6, v7

    :cond_36
    move v0, v6

    .line 10612
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_37

    .line 10613
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10615
    goto/16 :goto_c

    .line 10616
    :cond_37
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10619
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10620
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10621
    goto/16 :goto_c

    .line 10596
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v6, v7

    :cond_38
    move v0, v6

    .line 10597
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_39

    .line 10598
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10600
    goto/16 :goto_c

    .line 10601
    :cond_39
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10604
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10605
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10606
    goto/16 :goto_c

    .line 10580
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v6, v7

    :cond_3a
    move v0, v6

    .line 10581
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3b

    .line 10582
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10584
    goto/16 :goto_c

    .line 10585
    :cond_3b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10588
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10589
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10590
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10591
    goto/16 :goto_c

    .line 10565
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

    .line 10566
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3d

    .line 10567
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10569
    goto/16 :goto_c

    .line 10570
    :cond_3d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10573
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10574
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10575
    goto/16 :goto_c

    .line 10549
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v6, v7

    :cond_3e
    move v0, v6

    .line 10550
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3f

    .line 10551
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10552
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10553
    goto/16 :goto_c

    .line 10554
    :cond_3f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10556
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10557
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10558
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10559
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10560
    goto/16 :goto_c

    .line 10533
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

    .line 10534
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_41

    .line 10535
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10537
    goto/16 :goto_c

    .line 10538
    :cond_41
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10541
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10542
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10543
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10544
    goto/16 :goto_c

    .line 10515
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v6, v7

    .line 10516
    .local v6, "_hidl_is_oneway":Z
    :cond_42
    if-eq v6, v7, :cond_43

    .line 10517
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10519
    goto/16 :goto_c

    .line 10520
    :cond_43
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10523
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10524
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10525
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10526
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10527
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10528
    goto/16 :goto_c

    .line 10500
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

    .line 10501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_45

    .line 10502
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10504
    goto/16 :goto_c

    .line 10505
    :cond_45
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10508
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10509
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10510
    goto/16 :goto_c

    .line 10486
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v6, v7

    :cond_46
    move v0, v6

    .line 10487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_47

    .line 10488
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10490
    goto/16 :goto_c

    .line 10491
    :cond_47
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10494
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getApcInfo(I)V

    .line 10495
    goto/16 :goto_c

    .line 10469
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v6, v7

    :cond_48
    move v0, v6

    .line 10470
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_49

    .line 10471
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10473
    goto/16 :goto_c

    .line 10474
    :cond_49
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10477
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10478
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10479
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10480
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setApcMode(IIII)V

    .line 10481
    goto/16 :goto_c

    .line 10452
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

    .line 10453
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4b

    .line 10454
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10456
    goto/16 :goto_c

    .line 10457
    :cond_4b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10460
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10461
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10462
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10463
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10464
    goto/16 :goto_c

    .line 10432
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

    .line 10433
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_4d

    .line 10434
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10435
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10436
    goto/16 :goto_c

    .line 10437
    :cond_4d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10440
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10441
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10442
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10443
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10444
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10445
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10446
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10447
    goto/16 :goto_c

    .line 10417
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

    .line 10418
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4f

    .line 10419
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10421
    goto/16 :goto_c

    .line 10422
    :cond_4f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10425
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10426
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10427
    goto/16 :goto_c

    .line 10392
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v6, v7

    :cond_50
    move v12, v6

    .line 10393
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v7, :cond_51

    .line 10394
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10396
    goto/16 :goto_c

    .line 10397
    :cond_51
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10400
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10401
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10402
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10403
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10404
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10405
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10406
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10407
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10408
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10409
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10410
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10411
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10412
    goto/16 :goto_c

    .line 10375
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

    .line 10376
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_53

    .line 10377
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10379
    goto/16 :goto_c

    .line 10380
    :cond_53
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10383
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10384
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10385
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10386
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10387
    goto/16 :goto_c

    .line 10359
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

    .line 10360
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_55

    .line 10361
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10362
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10363
    goto/16 :goto_c

    .line 10364
    :cond_55
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10367
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10368
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10369
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10370
    goto/16 :goto_c

    .line 10341
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v6, v7

    .line 10342
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v6, v7, :cond_57

    .line 10343
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10345
    goto/16 :goto_c

    .line 10346
    :cond_57
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10349
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10350
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10351
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10352
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10353
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10354
    goto/16 :goto_c

    .line 10324
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

    .line 10325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_59

    .line 10326
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10328
    goto/16 :goto_c

    .line 10329
    :cond_59
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10332
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10333
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10334
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10335
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10336
    goto/16 :goto_c

    .line 10309
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

    .line 10310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5b

    .line 10311
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10313
    goto/16 :goto_c

    .line 10314
    :cond_5b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10317
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10318
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10319
    goto/16 :goto_c

    .line 10294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v6, v7

    :cond_5c
    move v0, v6

    .line 10295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5d

    .line 10296
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10298
    goto/16 :goto_c

    .line 10299
    :cond_5d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10302
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10303
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setE911State(II)V

    .line 10304
    goto/16 :goto_c

    .line 10278
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v6, v7

    :cond_5e
    move v0, v6

    .line 10279
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5f

    .line 10280
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10282
    goto/16 :goto_c

    .line 10283
    :cond_5f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10286
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10287
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10288
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10289
    goto/16 :goto_c

    .line 10263
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

    .line 10264
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_61

    .line 10265
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10267
    goto/16 :goto_c

    .line 10268
    :cond_61
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10270
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10271
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10272
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10273
    goto/16 :goto_c

    .line 10248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v6, v7

    :cond_62
    move v0, v6

    .line 10249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_63

    .line 10250
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10252
    goto/16 :goto_c

    .line 10253
    :cond_63
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10256
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10257
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10258
    goto/16 :goto_c

    .line 10233
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v6, v7

    :cond_64
    move v0, v6

    .line 10234
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_65

    .line 10235
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10237
    goto/16 :goto_c

    .line 10238
    :cond_65
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10241
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10242
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10243
    goto/16 :goto_c

    .line 10218
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v6, v7

    :cond_66
    move v0, v6

    .line 10219
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_67

    .line 10220
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10222
    goto/16 :goto_c

    .line 10223
    :cond_67
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10226
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10227
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10228
    goto/16 :goto_c

    .line 10204
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v6, v7

    :cond_68
    move v0, v6

    .line 10205
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_69

    .line 10206
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10208
    goto/16 :goto_c

    .line 10209
    :cond_69
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10212
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->restartRILD(I)V

    .line 10213
    goto/16 :goto_c

    .line 10190
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v6, v7

    :cond_6a
    move v0, v6

    .line 10191
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6b

    .line 10192
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10194
    goto/16 :goto_c

    .line 10195
    :cond_6b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10198
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->resetRadio(I)V

    .line 10199
    goto/16 :goto_c

    .line 10175
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v6, v7

    :cond_6c
    move v0, v6

    .line 10176
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6d

    .line 10177
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10179
    goto/16 :goto_c

    .line 10180
    :cond_6d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10183
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10184
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10185
    goto/16 :goto_c

    .line 10160
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v6, v7

    :cond_6e
    move v0, v6

    .line 10161
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6f

    .line 10162
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10164
    goto/16 :goto_c

    .line 10165
    :cond_6f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 10168
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10169
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10170
    goto/16 :goto_c

    .line 10145
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v6, v7

    :cond_70
    move v0, v6

    .line 10146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_71

    .line 10147
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10149
    goto/16 :goto_c

    .line 10150
    :cond_71
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10153
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10154
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10155
    goto/16 :goto_c

    .line 10130
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v6, v7

    :cond_72
    move v0, v6

    .line 10131
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_73

    .line 10132
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10134
    goto/16 :goto_c

    .line 10135
    :cond_73
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10138
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10139
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10140
    goto/16 :goto_c

    .line 10115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v6, v7

    :cond_74
    move v0, v6

    .line 10116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_75

    .line 10117
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10119
    goto/16 :goto_c

    .line 10120
    :cond_75
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10123
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10124
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10125
    goto/16 :goto_c

    .line 10100
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v6, v7

    :cond_76
    move v0, v6

    .line 10101
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_77

    .line 10102
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10104
    goto/16 :goto_c

    .line 10105
    :cond_77
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10108
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10109
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10110
    goto/16 :goto_c

    .line 10085
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v6, v7

    :cond_78
    move v0, v6

    .line 10086
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_79

    .line 10087
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10089
    goto/16 :goto_c

    .line 10090
    :cond_79
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10093
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10094
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setTrm(II)V

    .line 10095
    goto/16 :goto_c

    .line 10068
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v6, v7

    :cond_7a
    move v0, v6

    .line 10069
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7b

    .line 10070
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10071
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10072
    goto/16 :goto_c

    .line 10073
    :cond_7b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10076
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10077
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10078
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10079
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setFdMode(IIII)V

    .line 10080
    goto/16 :goto_c

    .line 10051
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

    .line 10052
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7d

    .line 10053
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10054
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10055
    goto/16 :goto_c

    .line 10056
    :cond_7d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10059
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10060
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10061
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10062
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10063
    goto/16 :goto_c

    .line 10037
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

    .line 10038
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7f

    .line 10039
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10040
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10041
    goto/16 :goto_c

    .line 10042
    :cond_7f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10045
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCurrentPOLList(I)V

    .line 10046
    goto/16 :goto_c

    .line 10023
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v6, v7

    :cond_80
    move v0, v6

    .line 10024
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_81

    .line 10025
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10027
    goto/16 :goto_c

    .line 10028
    :cond_81
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10031
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getPOLCapability(I)V

    .line 10032
    goto/16 :goto_c

    .line 10008
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v6, v7

    :cond_82
    move v0, v6

    .line 10009
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_83

    .line 10010
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10012
    goto/16 :goto_c

    .line 10013
    :cond_83
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10016
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10017
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getRxTestResult(II)V

    .line 10018
    goto/16 :goto_c

    .line 9993
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v6, v7

    :cond_84
    move v0, v6

    .line 9994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_85

    .line 9995
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9997
    goto/16 :goto_c

    .line 9998
    :cond_85
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10001
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10002
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setRxTestConfig(II)V

    .line 10003
    goto/16 :goto_c

    .line 9973
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v6, v7

    :cond_86
    move v8, v6

    .line 9974
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_87

    .line 9975
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9977
    goto/16 :goto_c

    .line 9978
    :cond_87
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9981
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9982
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9983
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9984
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9985
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9986
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9987
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9988
    goto/16 :goto_c

    .line 9958
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

    .line 9959
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_89

    .line 9960
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9962
    goto/16 :goto_c

    .line 9963
    :cond_89
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9966
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9967
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9968
    goto/16 :goto_c

    .line 9944
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v6, v7

    :cond_8a
    move v0, v6

    .line 9945
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8b

    .line 9946
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9947
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9948
    goto/16 :goto_c

    .line 9949
    :cond_8b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9952
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9953
    goto/16 :goto_c

    .line 9927
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v6, v7

    :cond_8c
    move v0, v6

    .line 9928
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8d

    .line 9929
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9931
    goto/16 :goto_c

    .line 9932
    :cond_8d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9935
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9936
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9937
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9938
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9939
    goto/16 :goto_c

    .line 9913
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

    .line 9914
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8f

    .line 9915
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9916
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9917
    goto/16 :goto_c

    .line 9918
    :cond_8f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9920
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9921
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->abortFemtocellList(I)V

    .line 9922
    goto/16 :goto_c

    .line 9899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v6, v7

    :cond_90
    move v0, v6

    .line 9900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_91

    .line 9901
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9903
    goto/16 :goto_c

    .line 9904
    :cond_91
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9907
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getFemtocellList(I)V

    .line 9908
    goto/16 :goto_c

    .line 9885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v6, v7

    :cond_92
    move v0, v6

    .line 9886
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_93

    .line 9887
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9889
    goto/16 :goto_c

    .line 9890
    :cond_93
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9893
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9894
    goto/16 :goto_c

    .line 9871
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v6, v7

    :cond_94
    move v0, v6

    .line 9872
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_95

    .line 9873
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9875
    goto/16 :goto_c

    .line 9876
    :cond_95
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9879
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9880
    goto/16 :goto_c

    .line 9857
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v6, v7

    :cond_96
    move v0, v6

    .line 9858
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_97

    .line 9859
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9861
    goto/16 :goto_c

    .line 9862
    :cond_97
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9865
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9866
    goto/16 :goto_c

    .line 9840
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v6, v7

    :cond_98
    move v0, v6

    .line 9841
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_99

    .line 9842
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9844
    goto/16 :goto_c

    .line 9845
    :cond_99
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9848
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9849
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9850
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9851
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9852
    goto/16 :goto_c

    .line 9826
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

    .line 9827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9b

    .line 9828
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9830
    goto/16 :goto_c

    .line 9831
    :cond_9b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9834
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9835
    goto/16 :goto_c

    .line 9811
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v6, v7

    :cond_9c
    move v0, v6

    .line 9812
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9d

    .line 9813
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9814
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9815
    goto/16 :goto_c

    .line 9816
    :cond_9d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9819
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9820
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->reloadModemType(II)V

    .line 9821
    goto/16 :goto_c

    .line 9796
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v6, v7

    :cond_9e
    move v0, v6

    .line 9797
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9f

    .line 9798
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9800
    goto/16 :goto_c

    .line 9801
    :cond_9f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9804
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9805
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->storeModemType(II)V

    .line 9806
    goto/16 :goto_c

    .line 9781
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v6, v7

    :cond_a0
    move v0, v6

    .line 9782
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a1

    .line 9783
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9785
    goto/16 :goto_c

    .line 9786
    :cond_a1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9789
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9790
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResumeRegistration(II)V

    .line 9791
    goto/16 :goto_c

    .line 9766
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v6, v7

    :cond_a2
    move v0, v6

    .line 9767
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a3

    .line 9768
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9770
    goto/16 :goto_c

    .line 9771
    :cond_a3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9774
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9775
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9776
    goto/16 :goto_c

    .line 9751
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v6, v7

    :cond_a4
    move v0, v6

    .line 9752
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a5

    .line 9753
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9755
    goto/16 :goto_c

    .line 9756
    :cond_a5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9759
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9760
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9761
    goto/16 :goto_c

    .line 9735
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v6, v7

    :cond_a6
    move v0, v6

    .line 9736
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a7

    .line 9737
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9739
    goto/16 :goto_c

    .line 9740
    :cond_a7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9743
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9744
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9745
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9746
    goto/16 :goto_c

    .line 9719
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v6, v7

    :cond_a8
    move v0, v6

    .line 9720
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a9

    .line 9721
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9723
    goto/16 :goto_c

    .line 9724
    :cond_a9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9727
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9728
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9729
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9730
    goto/16 :goto_c

    .line 9705
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

    .line 9706
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ab

    .line 9707
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9709
    goto/16 :goto_c

    .line 9710
    :cond_ab
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9713
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9714
    goto/16 :goto_c

    .line 9689
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v6, v7

    :cond_ac
    move v0, v6

    .line 9690
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ad

    .line 9691
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9692
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9693
    goto/16 :goto_c

    .line 9694
    :cond_ad
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9697
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9698
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9699
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9700
    goto/16 :goto_c

    .line 9675
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v6, v7

    :cond_ae
    move v0, v6

    .line 9676
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_af

    .line 9677
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9679
    goto/16 :goto_c

    .line 9680
    :cond_af
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9683
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9684
    goto/16 :goto_c

    .line 9661
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v6, v7

    :cond_b0
    move v0, v6

    .line 9662
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b1

    .line 9663
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9665
    goto/16 :goto_c

    .line 9666
    :cond_b1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9669
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9670
    goto/16 :goto_c

    .line 9646
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v6, v7

    :cond_b2
    move v0, v6

    .line 9647
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b3

    .line 9648
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9649
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9650
    goto/16 :goto_c

    .line 9651
    :cond_b3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9654
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9655
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9656
    goto/16 :goto_c

    .line 9630
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v6, v7

    :cond_b4
    move v0, v6

    .line 9631
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b5

    .line 9632
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9634
    goto/16 :goto_c

    .line 9635
    :cond_b5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9638
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9639
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9640
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->removeCbMsg(III)V

    .line 9641
    goto/16 :goto_c

    .line 9615
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

    .line 9616
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b7

    .line 9617
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9619
    goto/16 :goto_c

    .line 9620
    :cond_b7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9623
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9624
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setEtws(II)V

    .line 9625
    goto/16 :goto_c

    .line 9601
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v6, v7

    :cond_b8
    move v0, v6

    .line 9602
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b9

    .line 9603
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9605
    goto/16 :goto_c

    .line 9606
    :cond_b9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9609
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9610
    goto/16 :goto_c

    .line 9585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v6, v7

    :cond_ba
    move v0, v6

    .line 9586
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bb

    .line 9587
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9589
    goto/16 :goto_c

    .line 9590
    :cond_bb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9593
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9594
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9595
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9596
    goto/16 :goto_c

    .line 9571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v6, v7

    :cond_bc
    move v0, v6

    .line 9572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bd

    .line 9573
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9575
    goto/16 :goto_c

    .line 9576
    :cond_bd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9579
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getSmsParameters(I)V

    .line 9580
    goto/16 :goto_c

    .line 9552
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v6, v7

    :cond_be
    move v8, v6

    .line 9553
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_bf

    .line 9554
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9556
    goto/16 :goto_c

    .line 9557
    :cond_bf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 9560
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9561
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9562
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9563
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9564
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9565
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9566
    goto/16 :goto_c

    .line 9535
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

    .line 9536
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c1

    .line 9537
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9539
    goto/16 :goto_c

    .line 9540
    :cond_c1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9543
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9544
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9545
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9546
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9547
    goto/16 :goto_c

    .line 9519
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

    .line 9520
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c3

    .line 9521
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9523
    goto/16 :goto_c

    .line 9524
    :cond_c3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9527
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9528
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9529
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9530
    goto/16 :goto_c

    .line 9499
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

    .line 9500
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_c5

    .line 9501
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9503
    goto/16 :goto_c

    .line 9504
    :cond_c5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9507
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9508
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9509
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9510
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9511
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9512
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9513
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9514
    goto/16 :goto_c

    .line 9484
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

    .line 9485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c7

    .line 9486
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9488
    goto/16 :goto_c

    .line 9489
    :cond_c7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9492
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9493
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->queryNetworkLock(II)V

    .line 9494
    goto/16 :goto_c

    .line 9468
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v6, v7

    :cond_c8
    move v0, v6

    .line 9469
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c9

    .line 9470
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9472
    goto/16 :goto_c

    .line 9473
    :cond_c9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9476
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9477
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9478
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9479
    goto/16 :goto_c

    .line 9453
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v6, v7

    :cond_ca
    move v0, v6

    .line 9454
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cb

    .line 9455
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9457
    goto/16 :goto_c

    .line 9458
    :cond_cb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9461
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9462
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSimPower(II)V

    .line 9463
    goto/16 :goto_c

    .line 9439
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v6, v7

    :cond_cc
    move v0, v6

    .line 9440
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cd

    .line 9441
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9443
    goto/16 :goto_c

    .line 9444
    :cond_cd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9447
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getIccid(I)V

    .line 9448
    goto/16 :goto_c

    .line 9425
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v6, v7

    :cond_ce
    move v0, v6

    .line 9426
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cf

    .line 9427
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9429
    goto/16 :goto_c

    .line 9430
    :cond_cf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9433
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getATR(I)V

    .line 9434
    goto/16 :goto_c

    .line 9410
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v6, v7

    :cond_d0
    move v0, v6

    .line 9411
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d1

    .line 9412
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9414
    goto/16 :goto_c

    .line 9415
    :cond_d1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9417
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9418
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9419
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9420
    goto/16 :goto_c

    .line 9395
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v6, v7

    :cond_d2
    move v0, v6

    .line 9396
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d3

    .line 9397
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9399
    goto/16 :goto_c

    .line 9400
    :cond_d3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9403
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9404
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setModemPower(IZ)V

    .line 9405
    goto/16 :goto_c

    .line 9380
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v6, v7

    :cond_d4
    move v0, v6

    .line 9381
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d5

    .line 9382
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9383
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9384
    goto/16 :goto_c

    .line 9385
    :cond_d5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9387
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9388
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9389
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPhonebookReady(II)V

    .line 9390
    goto/16 :goto_c

    .line 9364
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v6, v7

    :cond_d6
    move v0, v6

    .line 9365
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d7

    .line 9366
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9367
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9368
    goto/16 :goto_c

    .line 9369
    :cond_d7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9372
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9373
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9374
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readUPBAasList(III)V

    .line 9375
    goto/16 :goto_c

    .line 9348
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

    .line 9349
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d9

    .line 9350
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9351
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9352
    goto/16 :goto_c

    .line 9353
    :cond_d9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9356
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9357
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9358
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9359
    goto/16 :goto_c

    .line 9332
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

    .line 9333
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_db

    .line 9334
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9336
    goto/16 :goto_c

    .line 9337
    :cond_db
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9340
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9341
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9342
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9343
    goto/16 :goto_c

    .line 9316
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

    .line 9317
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_dd

    .line 9318
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9320
    goto/16 :goto_c

    .line 9321
    :cond_dd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9324
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9325
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9326
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9327
    goto/16 :goto_c

    .line 9300
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

    .line 9301
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_df

    .line 9302
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9303
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9304
    goto/16 :goto_c

    .line 9305
    :cond_df
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9308
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9309
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9310
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9311
    goto/16 :goto_c

    .line 9284
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

    .line 9285
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e1

    .line 9286
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9288
    goto/16 :goto_c

    .line 9289
    :cond_e1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9292
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9293
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9294
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9295
    goto/16 :goto_c

    .line 9268
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v6, v7

    :cond_e2
    move v0, v6

    .line 9269
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e3

    .line 9270
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9271
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9272
    goto/16 :goto_c

    .line 9273
    :cond_e3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9276
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9277
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9278
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9279
    goto/16 :goto_c

    .line 9252
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

    .line 9253
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e5

    .line 9254
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9256
    goto/16 :goto_c

    .line 9257
    :cond_e5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9260
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9261
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9262
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9263
    goto/16 :goto_c

    .line 9238
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

    .line 9239
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e7

    .line 9240
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9241
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9242
    goto/16 :goto_c

    .line 9243
    :cond_e7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9246
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9247
    goto/16 :goto_c

    .line 9224
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v6, v7

    :cond_e8
    move v0, v6

    .line 9225
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e9

    .line 9226
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9228
    goto/16 :goto_c

    .line 9229
    :cond_e9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9232
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9233
    goto/16 :goto_c

    .line 9208
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v6, v7

    :cond_ea
    move v0, v6

    .line 9209
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_eb

    .line 9210
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9212
    goto/16 :goto_c

    .line 9213
    :cond_eb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9216
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9217
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9218
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9219
    goto/16 :goto_c

    .line 9193
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

    .line 9194
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ed

    .line 9195
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9196
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9197
    goto/16 :goto_c

    .line 9198
    :cond_ed
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9201
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9202
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9203
    goto/16 :goto_c

    .line 9177
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v6, v7

    :cond_ee
    move v0, v6

    .line 9178
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ef

    .line 9179
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9181
    goto/16 :goto_c

    .line 9182
    :cond_ef
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9185
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9186
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9187
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readUPBGasList(III)V

    .line 9188
    goto/16 :goto_c

    .line 9160
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

    .line 9161
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f1

    .line 9162
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9164
    goto/16 :goto_c

    .line 9165
    :cond_f1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9168
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9169
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9170
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9171
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9172
    goto/16 :goto_c

    .line 9145
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

    .line 9146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f3

    .line 9147
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9149
    goto/16 :goto_c

    .line 9150
    :cond_f3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9153
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9154
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9155
    goto/16 :goto_c

    .line 9131
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v6, v7

    :cond_f4
    move v0, v6

    .line 9132
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f5

    .line 9133
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9134
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9135
    goto/16 :goto_c

    .line 9136
    :cond_f5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9138
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9139
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->queryUPBCapability(I)V

    .line 9140
    goto/16 :goto_c

    .line 9114
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v6, v7

    :cond_f6
    move v0, v6

    .line 9115
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f7

    .line 9116
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9118
    goto/16 :goto_c

    .line 9119
    :cond_f7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9122
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9123
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9124
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9125
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9126
    goto/16 :goto_c

    .line 9098
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

    .line 9099
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f9

    .line 9100
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9102
    goto/16 :goto_c

    .line 9103
    :cond_f9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9106
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9107
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9108
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9109
    goto/16 :goto_c

    .line 9083
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v6, v7

    :cond_fa
    move v0, v6

    .line 9084
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fb

    .line 9085
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9087
    goto/16 :goto_c

    .line 9088
    :cond_fb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9091
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9092
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9093
    goto/16 :goto_c

    .line 9069
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v6, v7

    :cond_fc
    move v0, v6

    .line 9070
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fd

    .line 9071
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9073
    goto/16 :goto_c

    .line 9074
    :cond_fd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9077
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getEccNum(I)V

    .line 9078
    goto/16 :goto_c

    .line 9053
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v6, v7

    :cond_fe
    move v0, v6

    .line 9054
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ff

    .line 9055
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9057
    goto/16 :goto_c

    .line 9058
    :cond_ff
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9061
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9062
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9063
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9064
    goto/16 :goto_c

    .line 9038
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

    .line 9039
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_101

    .line 9040
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9042
    goto/16 :goto_c

    .line 9043
    :cond_101
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9046
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9047
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 9048
    goto/16 :goto_c

    .line 9023
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v6, v7

    :cond_102
    move v0, v6

    .line 9024
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_103

    .line 9025
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9027
    goto/16 :goto_c

    .line 9028
    :cond_103
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9031
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9032
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->eccPreferredRat(II)V

    .line 9033
    goto/16 :goto_c

    .line 9007
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v6, v7

    :cond_104
    move v0, v6

    .line 9008
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_105

    .line 9009
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9011
    goto/16 :goto_c

    .line 9012
    :cond_105
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9015
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9016
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9017
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->currentStatus(III)V

    .line 9018
    goto/16 :goto_c

    .line 8991
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

    .line 8992
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_107

    .line 8993
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8995
    goto/16 :goto_c

    .line 8996
    :cond_107
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8999
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9000
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9001
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 9002
    goto/16 :goto_c

    .line 8976
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

    .line 8977
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_109

    .line 8978
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8980
    goto/16 :goto_c

    .line 8981
    :cond_109
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8984
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8985
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8986
    goto/16 :goto_c

    .line 8960
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v6, v7

    :cond_10a
    move v0, v6

    .line 8961
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10b

    .line 8962
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8964
    goto/16 :goto_c

    .line 8965
    :cond_10b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8968
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8969
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8970
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8971
    goto/16 :goto_c

    .line 8943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v6, v7

    :cond_10c
    move v0, v6

    .line 8944
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10d

    .line 8945
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8947
    goto/16 :goto_c

    .line 8948
    :cond_10d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8951
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8952
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8953
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8954
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCallIndication(IIII)V

    .line 8955
    goto/16 :goto_c

    .line 8929
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

    .line 8930
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10f

    .line 8931
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8933
    goto/16 :goto_c

    .line 8934
    :cond_10f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8937
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->hangupAll(I)V

    .line 8938
    goto/16 :goto_c

    .line 8914
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v6, v7

    :cond_110
    move v0, v6

    .line 8915
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_111

    .line 8916
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8918
    goto/16 :goto_c

    .line 8919
    :cond_111
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8922
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8923
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8924
    goto/16 :goto_c

    .line 8900
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v6, v7

    :cond_112
    move v0, v6

    .line 8901
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_113

    .line 8902
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8904
    goto/16 :goto_c

    .line 8905
    :cond_113
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8908
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->resetSuppServ(I)V

    .line 8909
    goto/16 :goto_c

    .line 8886
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v6, v7

    :cond_114
    move v0, v6

    .line 8887
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_115

    .line 8888
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8889
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8890
    goto/16 :goto_c

    .line 8891
    :cond_115
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8894
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getXcapStatus(I)V

    .line 8895
    goto/16 :goto_c

    .line 8872
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v6, v7

    :cond_116
    move v0, v6

    .line 8873
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_117

    .line 8874
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8876
    goto/16 :goto_c

    .line 8877
    :cond_117
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8880
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->cancelUssi(I)V

    .line 8881
    goto/16 :goto_c

    .line 8856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v6, v7

    :cond_118
    move v0, v6

    .line 8857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_119

    .line 8858
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8860
    goto/16 :goto_c

    .line 8861
    :cond_119
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8864
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8865
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8866
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8867
    goto/16 :goto_c

    .line 8838
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v6, v7

    .line 8839
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v6, v7, :cond_11b

    .line 8840
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8842
    goto/16 :goto_c

    .line 8843
    :cond_11b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8846
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8847
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8848
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8849
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8850
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8851
    goto/16 :goto_c

    .line 8822
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

    .line 8823
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11d

    .line 8824
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8826
    goto/16 :goto_c

    .line 8827
    :cond_11d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8830
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8831
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8832
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8833
    goto/16 :goto_c

    .line 8806
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v6, v7

    :cond_11e
    move v0, v6

    .line 8807
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11f

    .line 8808
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8810
    goto/16 :goto_c

    .line 8811
    :cond_11f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8814
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8815
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8816
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8817
    goto/16 :goto_c

    .line 8791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v6, v7

    :cond_120
    move v0, v6

    .line 8792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_121

    .line 8793
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8795
    goto/16 :goto_c

    .line 8796
    :cond_121
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8799
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8800
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setColr(II)V

    .line 8801
    goto/16 :goto_c

    .line 8776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v6, v7

    :cond_122
    move v0, v6

    .line 8777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_123

    .line 8778
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8780
    goto/16 :goto_c

    .line 8781
    :cond_123
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8784
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8785
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setColp(II)V

    .line 8786
    goto/16 :goto_c

    .line 8761
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v6, v7

    :cond_124
    move v0, v6

    .line 8762
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_125

    .line 8763
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8765
    goto/16 :goto_c

    .line 8766
    :cond_125
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8769
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8770
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8771
    goto/16 :goto_c

    .line 8747
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v6, v7

    :cond_126
    move v0, v6

    .line 8748
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_127

    .line 8749
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8751
    goto/16 :goto_c

    .line 8752
    :cond_127
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8755
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getColr(I)V

    .line 8756
    goto/16 :goto_c

    .line 8733
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v6, v7

    :cond_128
    move v0, v6

    .line 8734
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_129

    .line 8735
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8737
    goto/16 :goto_c

    .line 8738
    :cond_129
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8741
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getColp(I)V

    .line 8742
    goto/16 :goto_c

    .line 8718
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v6, v7

    :cond_12a
    move v0, v6

    .line 8719
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12b

    .line 8720
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8721
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8722
    goto/16 :goto_c

    .line 8723
    :cond_12b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8726
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8727
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setClip(II)V

    .line 8728
    goto/16 :goto_c

    .line 8700
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v6, v7

    .line 8701
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v6, v7, :cond_12d

    .line 8702
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8703
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8704
    goto/16 :goto_c

    .line 8705
    :cond_12d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8708
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8709
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8710
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8711
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8712
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8713
    goto/16 :goto_c

    .line 8685
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

    .line 8686
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12f

    .line 8687
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8688
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8689
    goto/16 :goto_c

    .line 8690
    :cond_12f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8693
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8694
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getRoamingEnable(II)V

    .line 8695
    goto/16 :goto_c

    .line 8670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v6, v7

    :cond_130
    move v0, v6

    .line 8671
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_131

    .line 8672
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8674
    goto/16 :goto_c

    .line 8675
    :cond_131
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8678
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8679
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8680
    goto/16 :goto_c

    .line 8655
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v6, v7

    :cond_132
    move v0, v6

    .line 8656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_133

    .line 8657
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8659
    goto/16 :goto_c

    .line 8660
    :cond_133
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8663
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8664
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8665
    goto/16 :goto_c

    .line 8641
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v6, v7

    :cond_134
    move v0, v6

    .line 8642
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_135

    .line 8643
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8645
    goto/16 :goto_c

    .line 8646
    :cond_135
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8649
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8650
    goto/16 :goto_c

    .line 8625
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v6, v7

    :cond_136
    move v0, v6

    .line 8626
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_137

    .line 8627
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8629
    goto/16 :goto_c

    .line 8630
    :cond_137
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8633
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8634
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8635
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8636
    goto/16 :goto_c

    .line 8608
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

    .line 8609
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_139

    .line 8610
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8612
    goto/16 :goto_c

    .line 8613
    :cond_139
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8616
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8617
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8618
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8619
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8620
    goto/16 :goto_c

    .line 8592
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

    .line 8593
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13b

    .line 8594
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8596
    goto/16 :goto_c

    .line 8597
    :cond_13b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8600
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8601
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8602
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8603
    goto/16 :goto_c

    .line 8576
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

    .line 8577
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13d

    .line 8578
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8580
    goto/16 :goto_c

    .line 8581
    :cond_13d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8584
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8585
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8586
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8587
    goto/16 :goto_c

    .line 8561
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

    .line 8562
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13f

    .line 8563
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8564
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8565
    goto/16 :goto_c

    .line 8566
    :cond_13f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8569
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8570
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->forceReleaseCall(II)V

    .line 8571
    goto/16 :goto_c

    .line 8545
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v6, v7

    :cond_140
    move v0, v6

    .line 8546
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_141

    .line 8547
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8549
    goto/16 :goto_c

    .line 8550
    :cond_141
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8553
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8554
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8555
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8556
    goto/16 :goto_c

    .line 8530
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v6, v7

    :cond_142
    move v0, v6

    .line 8531
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_143

    .line 8532
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8534
    goto/16 :goto_c

    .line 8535
    :cond_143
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8538
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8539
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8540
    goto/16 :goto_c

    .line 8515
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v6, v7

    :cond_144
    move v0, v6

    .line 8516
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_145

    .line 8517
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8519
    goto/16 :goto_c

    .line 8520
    :cond_145
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8523
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8524
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8525
    goto/16 :goto_c

    .line 8498
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v6, v7

    :cond_146
    move v0, v6

    .line 8499
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_147

    .line 8500
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8502
    goto/16 :goto_c

    .line 8503
    :cond_147
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8506
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8507
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8508
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8509
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8510
    goto/16 :goto_c

    .line 8482
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

    .line 8483
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_149

    .line 8484
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8486
    goto/16 :goto_c

    .line 8487
    :cond_149
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8490
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8491
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8492
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8493
    goto/16 :goto_c

    .line 8467
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v6, v7

    :cond_14a
    move v0, v6

    .line 8468
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14b

    .line 8469
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8471
    goto/16 :goto_c

    .line 8472
    :cond_14b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8475
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8476
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setWfcProfile(II)V

    .line 8477
    goto/16 :goto_c

    .line 8450
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v6, v7

    :cond_14c
    move v0, v6

    .line 8451
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14d

    .line 8452
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8454
    goto/16 :goto_c

    .line 8455
    :cond_14d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8458
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8459
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8460
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8461
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8462
    goto/16 :goto_c

    .line 8433
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

    .line 8434
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14f

    .line 8435
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8437
    goto/16 :goto_c

    .line 8438
    :cond_14f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8441
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8442
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8443
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8444
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8445
    goto/16 :goto_c

    .line 8417
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

    .line 8418
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_151

    .line 8419
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8421
    goto/16 :goto_c

    .line 8422
    :cond_151
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8425
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8426
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8427
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8428
    goto/16 :goto_c

    .line 8402
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

    .line 8403
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_153

    .line 8404
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8406
    goto/16 :goto_c

    .line 8407
    :cond_153
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8410
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8411
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8412
    goto/16 :goto_c

    .line 8382
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v6, v7

    :cond_154
    move v8, v6

    .line 8383
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_155

    .line 8384
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8386
    goto/16 :goto_c

    .line 8387
    :cond_155
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8390
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8391
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8392
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8393
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8394
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8395
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8396
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8397
    goto/16 :goto_c

    .line 8367
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

    .line 8368
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_157

    .line 8369
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8371
    goto/16 :goto_c

    .line 8372
    :cond_157
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8375
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8376
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8377
    goto/16 :goto_c

    .line 8352
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v6, v7

    :cond_158
    move v0, v6

    .line 8353
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_159

    .line 8354
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8356
    goto/16 :goto_c

    .line 8357
    :cond_159
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8360
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8361
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8362
    goto/16 :goto_c

    .line 8337
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v6, v7

    :cond_15a
    move v0, v6

    .line 8338
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15b

    .line 8339
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8341
    goto/16 :goto_c

    .line 8342
    :cond_15b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8345
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8346
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8347
    goto/16 :goto_c

    .line 8322
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v6, v7

    :cond_15c
    move v0, v6

    .line 8323
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15d

    .line 8324
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8326
    goto/16 :goto_c

    .line 8327
    :cond_15d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8330
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8331
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8332
    goto/16 :goto_c

    .line 8307
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v6, v7

    :cond_15e
    move v0, v6

    .line 8308
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15f

    .line 8309
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8311
    goto/16 :goto_c

    .line 8312
    :cond_15f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8314
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8315
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8316
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8317
    goto/16 :goto_c

    .line 8292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v6, v7

    :cond_160
    move v0, v6

    .line 8293
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_161

    .line 8294
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8296
    goto/16 :goto_c

    .line 8297
    :cond_161
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8300
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8301
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8302
    goto/16 :goto_c

    .line 8277
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v6, v7

    :cond_162
    move v0, v6

    .line 8278
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_163

    .line 8279
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8281
    goto/16 :goto_c

    .line 8282
    :cond_163
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8285
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8286
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8287
    goto/16 :goto_c

    .line 8262
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v6, v7

    :cond_164
    move v0, v6

    .line 8263
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_165

    .line 8264
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8266
    goto/16 :goto_c

    .line 8267
    :cond_165
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8270
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8271
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setImsEnable(IZ)V

    .line 8272
    goto/16 :goto_c

    .line 8247
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v6, v7

    :cond_166
    move v0, v6

    .line 8248
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_167

    .line 8249
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8251
    goto/16 :goto_c

    .line 8252
    :cond_167
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8255
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8256
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->imsDeregNotification(II)V

    .line 8257
    goto/16 :goto_c

    .line 8232
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v6, v7

    :cond_168
    move v0, v6

    .line 8233
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_169

    .line 8234
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8236
    goto/16 :goto_c

    .line 8237
    :cond_169
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8240
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8241
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->resumeCall(II)V

    .line 8242
    goto/16 :goto_c

    .line 8217
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v6, v7

    :cond_16a
    move v0, v6

    .line 8218
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16b

    .line 8219
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8221
    goto/16 :goto_c

    .line 8222
    :cond_16b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8225
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8226
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->holdCall(II)V

    .line 8227
    goto/16 :goto_c

    .line 8201
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    move v6, v7

    :cond_16c
    move v0, v6

    .line 8202
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16d

    .line 8203
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8205
    goto/16 :goto_c

    .line 8206
    :cond_16d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8209
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8210
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8211
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8212
    goto/16 :goto_c

    .line 8185
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

    .line 8186
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16f

    .line 8187
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8188
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8189
    goto/16 :goto_c

    .line 8190
    :cond_16f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8193
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8194
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8195
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->videoCallAccept(III)V

    .line 8196
    goto/16 :goto_c

    .line 8168
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

    .line 8169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_171

    .line 8170
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8172
    goto/16 :goto_c

    .line 8173
    :cond_171
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 8176
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 8177
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8178
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8180
    goto/16 :goto_c

    .line 8151
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

    .line 8152
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_173

    .line 8153
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8155
    goto/16 :goto_c

    .line 8156
    :cond_173
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 8159
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 8160
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8161
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8163
    goto/16 :goto_c

    .line 8134
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

    .line 8135
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_175

    .line 8136
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8138
    goto/16 :goto_c

    .line 8139
    :cond_175
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 8142
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 8143
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8144
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8145
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8146
    goto/16 :goto_c

    .line 8117
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

    .line 8118
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_177

    .line 8119
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8121
    goto/16 :goto_c

    .line 8122
    :cond_177
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 8125
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 8126
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8127
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8129
    goto/16 :goto_c

    .line 8101
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_178

    move v6, v7

    :cond_178
    move v0, v6

    .line 8102
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_179

    .line 8103
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8105
    goto/16 :goto_c

    .line 8106
    :cond_179
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8109
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8110
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8111
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8112
    goto/16 :goto_c

    .line 8078
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

    .line 8079
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v7, :cond_17b

    .line 8080
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8082
    goto/16 :goto_c

    .line 8083
    :cond_17b
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8086
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8087
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8088
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8090
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8091
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8092
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8093
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8094
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8095
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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8096
    goto/16 :goto_c

    .line 8058
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

    .line 8059
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_17d

    .line 8060
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8062
    goto/16 :goto_c

    .line 8063
    :cond_17d
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8066
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8067
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8068
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8069
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8070
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8071
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8072
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8073
    goto/16 :goto_c

    .line 8040
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

    .line 8041
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v6, v7, :cond_17f

    .line 8042
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8044
    goto/16 :goto_c

    .line 8045
    :cond_17f
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8048
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8049
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8050
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8051
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8052
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 8053
    goto/16 :goto_c

    .line 8025
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

    .line 8026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_181

    .line 8027
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8029
    goto/16 :goto_c

    .line 8030
    :cond_181
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8033
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8034
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 8035
    goto/16 :goto_c

    .line 8009
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v6, v7

    :cond_182
    move v0, v6

    .line 8010
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_183

    .line 8011
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8013
    goto/16 :goto_c

    .line 8014
    :cond_183
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8017
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 8018
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8019
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 8020
    goto/16 :goto_c

    .line 7994
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v6, v7

    :cond_184
    move v0, v6

    .line 7995
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_185

    .line 7996
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7997
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7998
    goto/16 :goto_c

    .line 7999
    :cond_185
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8002
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8003
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->stopKeepalive(II)V

    .line 8004
    goto/16 :goto_c

    .line 7978
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v6, v7

    :cond_186
    move v0, v6

    .line 7979
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_187

    .line 7980
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7981
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7982
    goto/16 :goto_c

    .line 7983
    :cond_187
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7986
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7987
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7988
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7989
    goto/16 :goto_c

    .line 7964
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v6, v7

    :cond_188
    move v0, v6

    .line 7965
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_189

    .line 7966
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7968
    goto/16 :goto_c

    .line 7969
    :cond_189
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7972
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->stopNetworkScan(I)V

    .line 7973
    goto/16 :goto_c

    .line 7948
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v6, v7

    :cond_18a
    move v0, v6

    .line 7949
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18b

    .line 7950
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7952
    goto/16 :goto_c

    .line 7953
    :cond_18b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7956
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7957
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7958
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7959
    goto/16 :goto_c

    .line 7933
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v6, v7

    :cond_18c
    move v0, v6

    .line 7934
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18d

    .line 7935
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7937
    goto/16 :goto_c

    .line 7938
    :cond_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7941
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7942
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7943
    goto/16 :goto_c

    .line 7917
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v6, v7

    :cond_18e
    move v0, v6

    .line 7918
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18f

    .line 7919
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7921
    goto/16 :goto_c

    .line 7922
    :cond_18f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7925
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7926
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7927
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7928
    goto/16 :goto_c

    .line 7904
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v6, v7

    :cond_190
    move v0, v6

    .line 7905
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_191

    .line 7906
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7908
    goto/16 :goto_c

    .line 7909
    :cond_191
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7911
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->responseAcknowledgement()V

    .line 7912
    goto/16 :goto_c

    .line 7889
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v6, v7

    :cond_192
    move v0, v6

    .line 7890
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_193

    .line 7891
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7893
    goto/16 :goto_c

    .line 7894
    :cond_193
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7897
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7898
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7899
    goto/16 :goto_c

    .line 7874
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v6, v7

    :cond_194
    move v0, v6

    .line 7875
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_195

    .line 7876
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7878
    goto/16 :goto_c

    .line 7879
    :cond_195
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7882
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7883
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setIndicationFilter(II)V

    .line 7884
    goto/16 :goto_c

    .line 7858
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v6, v7

    :cond_196
    move v0, v6

    .line 7859
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_197

    .line 7860
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7862
    goto/16 :goto_c

    .line 7863
    :cond_197
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7866
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7867
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7868
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7869
    goto/16 :goto_c

    .line 7844
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

    .line 7845
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_199

    .line 7846
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7848
    goto/16 :goto_c

    .line 7849
    :cond_199
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7852
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7853
    goto/16 :goto_c

    .line 7827
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v6, v7

    :cond_19a
    move v0, v6

    .line 7828
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19b

    .line 7829
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7831
    goto/16 :goto_c

    .line 7832
    :cond_19b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7835
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7836
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7837
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7838
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7839
    goto/16 :goto_c

    .line 7813
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

    .line 7814
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19d

    .line 7815
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7817
    goto/16 :goto_c

    .line 7818
    :cond_19d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7821
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7822
    goto/16 :goto_c

    .line 7799
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v6, v7

    :cond_19e
    move v0, v6

    .line 7800
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19f

    .line 7801
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7802
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7803
    goto/16 :goto_c

    .line 7804
    :cond_19f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7807
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->pullLceData(I)V

    .line 7808
    goto/16 :goto_c

    .line 7785
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v6, v7

    :cond_1a0
    move v0, v6

    .line 7786
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a1

    .line 7787
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7789
    goto/16 :goto_c

    .line 7790
    :cond_1a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7793
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->stopLceService(I)V

    .line 7794
    goto/16 :goto_c

    .line 7769
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v6, v7

    :cond_1a2
    move v0, v6

    .line 7770
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a3

    .line 7771
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7773
    goto/16 :goto_c

    .line 7774
    :cond_1a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7777
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7778
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7779
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->startLceService(IIZ)V

    .line 7780
    goto/16 :goto_c

    .line 7753
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

    .line 7754
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a5

    .line 7755
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7757
    goto/16 :goto_c

    .line 7758
    :cond_1a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7761
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7762
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7763
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7764
    goto/16 :goto_c

    .line 7739
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v6, v7

    :cond_1a6
    move v0, v6

    .line 7740
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a7

    .line 7741
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7743
    goto/16 :goto_c

    .line 7744
    :cond_1a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7747
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getRadioCapability(I)V

    .line 7748
    goto/16 :goto_c

    .line 7725
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v6, v7

    :cond_1a8
    move v0, v6

    .line 7726
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a9

    .line 7727
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7729
    goto/16 :goto_c

    .line 7730
    :cond_1a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7733
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->requestShutdown(I)V

    .line 7734
    goto/16 :goto_c

    .line 7709
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v6, v7

    :cond_1aa
    move v0, v6

    .line 7710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ab

    .line 7711
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7713
    goto/16 :goto_c

    .line 7714
    :cond_1ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7717
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7718
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7719
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7720
    goto/16 :goto_c

    .line 7692
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

    .line 7693
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ad

    .line 7694
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7695
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7696
    goto/16 :goto_c

    .line 7697
    :cond_1ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7700
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7701
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7702
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7703
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7704
    goto/16 :goto_c

    .line 7678
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

    .line 7679
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1af

    .line 7680
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7682
    goto/16 :goto_c

    .line 7683
    :cond_1af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7686
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getHardwareConfig(I)V

    .line 7687
    goto/16 :goto_c

    .line 7663
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v6, v7

    :cond_1b0
    move v0, v6

    .line 7664
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b1

    .line 7665
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7667
    goto/16 :goto_c

    .line 7668
    :cond_1b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7670
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7671
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7672
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7673
    goto/16 :goto_c

    .line 7647
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v6, v7

    :cond_1b2
    move v0, v6

    .line 7648
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b3

    .line 7649
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7651
    goto/16 :goto_c

    .line 7652
    :cond_1b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7655
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7656
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7657
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7658
    goto/16 :goto_c

    .line 7632
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v6, v7

    :cond_1b4
    move v0, v6

    .line 7633
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b5

    .line 7634
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7636
    goto/16 :goto_c

    .line 7637
    :cond_1b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7640
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7641
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->nvResetConfig(II)V

    .line 7642
    goto/16 :goto_c

    .line 7617
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v6, v7

    :cond_1b6
    move v0, v6

    .line 7618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b7

    .line 7619
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7621
    goto/16 :goto_c

    .line 7622
    :cond_1b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7625
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7626
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7627
    goto/16 :goto_c

    .line 7601
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v6, v7

    :cond_1b8
    move v0, v6

    .line 7602
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b9

    .line 7603
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7605
    goto/16 :goto_c

    .line 7606
    :cond_1b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7609
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7610
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7611
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7612
    goto/16 :goto_c

    .line 7586
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v6, v7

    :cond_1ba
    move v0, v6

    .line 7587
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bb

    .line 7588
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7590
    goto/16 :goto_c

    .line 7591
    :cond_1bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7594
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7595
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->nvReadItem(II)V

    .line 7596
    goto/16 :goto_c

    .line 7570
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v6, v7

    :cond_1bc
    move v0, v6

    .line 7571
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bd

    .line 7572
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7574
    goto/16 :goto_c

    .line 7575
    :cond_1bd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7578
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7579
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7580
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7581
    goto/16 :goto_c

    .line 7555
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v6, v7

    :cond_1be
    move v0, v6

    .line 7556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bf

    .line 7557
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7559
    goto/16 :goto_c

    .line 7560
    :cond_1bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7563
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7564
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7565
    goto/16 :goto_c

    .line 7539
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v6, v7

    :cond_1c0
    move v0, v6

    .line 7540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c1

    .line 7541
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7543
    goto/16 :goto_c

    .line 7544
    :cond_1c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7547
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7548
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7549
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7550
    goto/16 :goto_c

    .line 7523
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

    .line 7524
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c3

    .line 7525
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7527
    goto/16 :goto_c

    .line 7528
    :cond_1c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7531
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7532
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7533
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7534
    goto/16 :goto_c

    .line 7507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v6, v7

    :cond_1c4
    move v0, v6

    .line 7508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c5

    .line 7509
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7511
    goto/16 :goto_c

    .line 7512
    :cond_1c5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7515
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7516
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7517
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7518
    goto/16 :goto_c

    .line 7493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v6, v7

    :cond_1c6
    move v0, v6

    .line 7494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c7

    .line 7495
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7497
    goto/16 :goto_c

    .line 7498
    :cond_1c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7501
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7502
    goto/16 :goto_c

    .line 7475
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v6, v7

    :cond_1c8
    move v0, v6

    .line 7476
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c9

    .line 7477
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7479
    goto/16 :goto_c

    .line 7480
    :cond_1c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7483
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7484
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7486
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7487
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7488
    goto/16 :goto_c

    .line 7460
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

    .line 7461
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cb

    .line 7462
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7464
    goto/16 :goto_c

    .line 7465
    :cond_1cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7468
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7469
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7470
    goto/16 :goto_c

    .line 7446
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v6, v7

    :cond_1cc
    move v0, v6

    .line 7447
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cd

    .line 7448
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7450
    goto/16 :goto_c

    .line 7451
    :cond_1cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7453
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7454
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCellInfoList(I)V

    .line 7455
    goto/16 :goto_c

    .line 7432
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v6, v7

    :cond_1ce
    move v0, v6

    .line 7433
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cf

    .line 7434
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7435
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7436
    goto/16 :goto_c

    .line 7437
    :cond_1cf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7440
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7441
    goto/16 :goto_c

    .line 7417
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v6, v7

    :cond_1d0
    move v0, v6

    .line 7418
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d1

    .line 7419
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7421
    goto/16 :goto_c

    .line 7422
    :cond_1d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7425
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7426
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7427
    goto/16 :goto_c

    .line 7401
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v6, v7

    :cond_1d2
    move v0, v6

    .line 7402
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d3

    .line 7403
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7405
    goto/16 :goto_c

    .line 7406
    :cond_1d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7409
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7410
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7411
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7412
    goto/16 :goto_c

    .line 7386
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

    .line 7387
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d5

    .line 7388
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7389
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7390
    goto/16 :goto_c

    .line 7391
    :cond_1d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7394
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7395
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7396
    goto/16 :goto_c

    .line 7372
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v6, v7

    :cond_1d6
    move v0, v6

    .line 7373
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d7

    .line 7374
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7376
    goto/16 :goto_c

    .line 7377
    :cond_1d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7380
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7381
    goto/16 :goto_c

    .line 7358
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v6, v7

    :cond_1d8
    move v0, v6

    .line 7359
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d9

    .line 7360
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7362
    goto/16 :goto_c

    .line 7363
    :cond_1d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7366
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7367
    goto/16 :goto_c

    .line 7343
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v6, v7

    :cond_1da
    move v0, v6

    .line 7344
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1db

    .line 7345
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7347
    goto/16 :goto_c

    .line 7348
    :cond_1db
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7351
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7352
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7353
    goto/16 :goto_c

    .line 7328
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v6, v7

    :cond_1dc
    move v0, v6

    .line 7329
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1dd

    .line 7330
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7332
    goto/16 :goto_c

    .line 7333
    :cond_1dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7336
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7337
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7338
    goto/16 :goto_c

    .line 7314
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v6, v7

    :cond_1de
    move v0, v6

    .line 7315
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1df

    .line 7316
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7318
    goto/16 :goto_c

    .line 7319
    :cond_1df
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7322
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getSmscAddress(I)V

    .line 7323
    goto/16 :goto_c

    .line 7300
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v6, v7

    :cond_1e0
    move v0, v6

    .line 7301
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e1

    .line 7302
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7303
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7304
    goto/16 :goto_c

    .line 7305
    :cond_1e1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7308
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7309
    goto/16 :goto_c

    .line 7286
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v6, v7

    :cond_1e2
    move v0, v6

    .line 7287
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e3

    .line 7288
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7289
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7290
    goto/16 :goto_c

    .line 7291
    :cond_1e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7294
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7295
    goto/16 :goto_c

    .line 7271
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v6, v7

    :cond_1e4
    move v0, v6

    .line 7272
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e5

    .line 7273
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7275
    goto/16 :goto_c

    .line 7276
    :cond_1e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7279
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7280
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7281
    goto/16 :goto_c

    .line 7255
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v6, v7

    :cond_1e6
    move v0, v6

    .line 7256
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e7

    .line 7257
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7259
    goto/16 :goto_c

    .line 7260
    :cond_1e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7263
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7264
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7265
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7266
    goto/16 :goto_c

    .line 7241
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v6, v7

    :cond_1e8
    move v0, v6

    .line 7242
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e9

    .line 7243
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7245
    goto/16 :goto_c

    .line 7246
    :cond_1e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7248
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7249
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCDMASubscription(I)V

    .line 7250
    goto/16 :goto_c

    .line 7226
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v6, v7

    :cond_1ea
    move v0, v6

    .line 7227
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1eb

    .line 7228
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7230
    goto/16 :goto_c

    .line 7231
    :cond_1eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7234
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7235
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7236
    goto/16 :goto_c

    .line 7211
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v6, v7

    :cond_1ec
    move v0, v6

    .line 7212
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ed

    .line 7213
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7215
    goto/16 :goto_c

    .line 7216
    :cond_1ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7219
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7220
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7221
    goto/16 :goto_c

    .line 7197
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v6, v7

    :cond_1ee
    move v0, v6

    .line 7198
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ef

    .line 7199
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7201
    goto/16 :goto_c

    .line 7202
    :cond_1ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7205
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7206
    goto/16 :goto_c

    .line 7182
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v6, v7

    :cond_1f0
    move v0, v6

    .line 7183
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f1

    .line 7184
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7186
    goto/16 :goto_c

    .line 7187
    :cond_1f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7190
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7191
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7192
    goto/16 :goto_c

    .line 7167
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v6, v7

    :cond_1f2
    move v0, v6

    .line 7168
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f3

    .line 7169
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7171
    goto/16 :goto_c

    .line 7172
    :cond_1f3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7175
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7176
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7177
    goto/16 :goto_c

    .line 7153
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v6, v7

    :cond_1f4
    move v0, v6

    .line 7154
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f5

    .line 7155
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7157
    goto/16 :goto_c

    .line 7158
    :cond_1f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7161
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7162
    goto/16 :goto_c

    .line 7137
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v6, v7

    :cond_1f6
    move v0, v6

    .line 7138
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f7

    .line 7139
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7141
    goto/16 :goto_c

    .line 7142
    :cond_1f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7145
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7146
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7147
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7148
    goto/16 :goto_c

    .line 7121
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v6, v7

    :cond_1f8
    move v0, v6

    .line 7122
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f9

    .line 7123
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7125
    goto/16 :goto_c

    .line 7126
    :cond_1f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7129
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7130
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7131
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7132
    goto/16 :goto_c

    .line 7104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v6, v7

    :cond_1fa
    move v0, v6

    .line 7105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fb

    .line 7106
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7108
    goto/16 :goto_c

    .line 7109
    :cond_1fb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7112
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7113
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7114
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7115
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7116
    goto/16 :goto_c

    .line 7089
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

    .line 7090
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fd

    .line 7091
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7093
    goto/16 :goto_c

    .line 7094
    :cond_1fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7097
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7098
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7099
    goto/16 :goto_c

    .line 7075
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v6, v7

    :cond_1fe
    move v0, v6

    .line 7076
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ff

    .line 7077
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7079
    goto/16 :goto_c

    .line 7080
    :cond_1ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7083
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7084
    goto/16 :goto_c

    .line 7060
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v6, v7

    :cond_200
    move v0, v6

    .line 7061
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_201

    .line 7062
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7064
    goto/16 :goto_c

    .line 7065
    :cond_201
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7068
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7069
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7070
    goto/16 :goto_c

    .line 7046
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v6, v7

    :cond_202
    move v0, v6

    .line 7047
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_203

    .line 7048
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7049
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7050
    goto/16 :goto_c

    .line 7051
    :cond_203
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7054
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getTTYMode(I)V

    .line 7055
    goto/16 :goto_c

    .line 7031
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v6, v7

    :cond_204
    move v0, v6

    .line 7032
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_205

    .line 7033
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7035
    goto/16 :goto_c

    .line 7036
    :cond_205
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7039
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7040
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setTTYMode(II)V

    .line 7041
    goto/16 :goto_c

    .line 7017
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v6, v7

    :cond_206
    move v0, v6

    .line 7018
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_207

    .line 7019
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7021
    goto/16 :goto_c

    .line 7022
    :cond_207
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7025
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 7026
    goto/16 :goto_c

    .line 7002
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v6, v7

    :cond_208
    move v0, v6

    .line 7003
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_209

    .line 7004
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7005
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7006
    goto/16 :goto_c

    .line 7007
    :cond_209
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7010
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7011
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 7012
    goto/16 :goto_c

    .line 6987
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v6, v7

    :cond_20a
    move v0, v6

    .line 6988
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20b

    .line 6989
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6991
    goto/16 :goto_c

    .line 6992
    :cond_20b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6995
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6996
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6997
    goto/16 :goto_c

    .line 6972
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v6, v7

    :cond_20c
    move v0, v6

    .line 6973
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20d

    .line 6974
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6976
    goto/16 :goto_c

    .line 6977
    :cond_20d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6979
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6980
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6981
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6982
    goto/16 :goto_c

    .line 6958
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v6, v7

    :cond_20e
    move v0, v6

    .line 6959
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20f

    .line 6960
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6962
    goto/16 :goto_c

    .line 6963
    :cond_20f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6966
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getNeighboringCids(I)V

    .line 6967
    goto/16 :goto_c

    .line 6944
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v6, v7

    :cond_210
    move v0, v6

    .line 6945
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_211

    .line 6946
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6947
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6948
    goto/16 :goto_c

    .line 6949
    :cond_211
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6952
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6953
    goto/16 :goto_c

    .line 6929
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v6, v7

    :cond_212
    move v0, v6

    .line 6930
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_213

    .line 6931
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6933
    goto/16 :goto_c

    .line 6934
    :cond_213
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6937
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6938
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6939
    goto/16 :goto_c

    .line 6915
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v6, v7

    :cond_214
    move v0, v6

    .line 6916
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_215

    .line 6917
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6918
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6919
    goto/16 :goto_c

    .line 6920
    :cond_215
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6923
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6924
    goto/16 :goto_c

    .line 6900
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v6, v7

    :cond_216
    move v0, v6

    .line 6901
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_217

    .line 6902
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6904
    goto/16 :goto_c

    .line 6905
    :cond_217
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6908
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6909
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6910
    goto/16 :goto_c

    .line 6885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v6, v7

    :cond_218
    move v0, v6

    .line 6886
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_219

    .line 6887
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6889
    goto/16 :goto_c

    .line 6890
    :cond_219
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6893
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6894
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6895
    goto/16 :goto_c

    .line 6870
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v6, v7

    :cond_21a
    move v0, v6

    .line 6871
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21b

    .line 6872
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6874
    goto/16 :goto_c

    .line 6875
    :cond_21b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6878
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6879
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6880
    goto/16 :goto_c

    .line 6856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v6, v7

    :cond_21c
    move v0, v6

    .line 6857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21d

    .line 6858
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6860
    goto/16 :goto_c

    .line 6861
    :cond_21d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6864
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6865
    goto/16 :goto_c

    .line 6841
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v6, v7

    :cond_21e
    move v0, v6

    .line 6842
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21f

    .line 6843
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6845
    goto/16 :goto_c

    .line 6846
    :cond_21f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6849
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6850
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setBandMode(II)V

    .line 6851
    goto/16 :goto_c

    .line 6826
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v6, v7

    :cond_220
    move v0, v6

    .line 6827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_221

    .line 6828
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6830
    goto/16 :goto_c

    .line 6831
    :cond_221
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6834
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6835
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6836
    goto/16 :goto_c

    .line 6810
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v6, v7

    :cond_222
    move v0, v6

    .line 6811
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_223

    .line 6812
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6814
    goto/16 :goto_c

    .line 6815
    :cond_223
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6818
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6819
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6820
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6821
    goto/16 :goto_c

    .line 6795
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v6, v7

    :cond_224
    move v0, v6

    .line 6796
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_225

    .line 6797
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6799
    goto/16 :goto_c

    .line 6800
    :cond_225
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6803
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6804
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6805
    goto/16 :goto_c

    .line 6781
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v6, v7

    :cond_226
    move v0, v6

    .line 6782
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_227

    .line 6783
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6785
    goto/16 :goto_c

    .line 6786
    :cond_227
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6789
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getDataCallList(I)V

    .line 6790
    goto/16 :goto_c

    .line 6767
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v6, v7

    :cond_228
    move v0, v6

    .line 6768
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_229

    .line 6769
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6771
    goto/16 :goto_c

    .line 6772
    :cond_229
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6775
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getClip(I)V

    .line 6776
    goto/16 :goto_c

    .line 6753
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v6, v7

    :cond_22a
    move v0, v6

    .line 6754
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22b

    .line 6755
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6757
    goto/16 :goto_c

    .line 6758
    :cond_22b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6761
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getMute(I)V

    .line 6762
    goto/16 :goto_c

    .line 6738
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v6, v7

    :cond_22c
    move v0, v6

    .line 6739
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22d

    .line 6740
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6741
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6742
    goto/16 :goto_c

    .line 6743
    :cond_22d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6746
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6747
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setMute(IZ)V

    .line 6748
    goto/16 :goto_c

    .line 6723
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v6, v7

    :cond_22e
    move v0, v6

    .line 6724
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22f

    .line 6725
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6727
    goto/16 :goto_c

    .line 6728
    :cond_22f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6731
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6732
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->separateConnection(II)V

    .line 6733
    goto/16 :goto_c

    .line 6709
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v6, v7

    :cond_230
    move v0, v6

    .line 6710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_231

    .line 6711
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6713
    goto/16 :goto_c

    .line 6714
    :cond_231
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6717
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getBasebandVersion(I)V

    .line 6718
    goto/16 :goto_c

    .line 6695
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v6, v7

    :cond_232
    move v0, v6

    .line 6696
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_233

    .line 6697
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6699
    goto/16 :goto_c

    .line 6700
    :cond_233
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6703
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->stopDtmf(I)V

    .line 6704
    goto/16 :goto_c

    .line 6680
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v6, v7

    :cond_234
    move v0, v6

    .line 6681
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_235

    .line 6682
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6684
    goto/16 :goto_c

    .line 6685
    :cond_235
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6688
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6689
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6690
    goto/16 :goto_c

    .line 6666
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v6, v7

    :cond_236
    move v0, v6

    .line 6667
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_237

    .line 6668
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6670
    goto/16 :goto_c

    .line 6671
    :cond_237
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6674
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6675
    goto/16 :goto_c

    .line 6651
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v6, v7

    :cond_238
    move v0, v6

    .line 6652
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_239

    .line 6653
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6655
    goto/16 :goto_c

    .line 6656
    :cond_239
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6659
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6660
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6661
    goto/16 :goto_c

    .line 6637
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v6, v7

    :cond_23a
    move v0, v6

    .line 6638
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23b

    .line 6639
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6640
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6641
    goto/16 :goto_c

    .line 6642
    :cond_23b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6644
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6645
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6646
    goto/16 :goto_c

    .line 6623
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v6, v7

    :cond_23c
    move v0, v6

    .line 6624
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23d

    .line 6625
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6627
    goto/16 :goto_c

    .line 6628
    :cond_23d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6631
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6632
    goto/16 :goto_c

    .line 6606
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v6, v7

    :cond_23e
    move v0, v6

    .line 6607
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23f

    .line 6608
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6610
    goto/16 :goto_c

    .line 6611
    :cond_23f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6614
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6615
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6616
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6617
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6618
    goto/16 :goto_c

    .line 6587
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

    .line 6588
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_241

    .line 6589
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6591
    goto/16 :goto_c

    .line 6592
    :cond_241
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6595
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6596
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6597
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6598
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6599
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6600
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6601
    goto/16 :goto_c

    .line 6569
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

    .line 6570
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_242
    if-eq v6, v7, :cond_243

    .line 6571
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6573
    goto/16 :goto_c

    .line 6574
    :cond_243
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6577
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6578
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6579
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6580
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6581
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6582
    goto/16 :goto_c

    .line 6553
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

    .line 6554
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_245

    .line 6555
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6557
    goto/16 :goto_c

    .line 6558
    :cond_245
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6561
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6562
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6563
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6564
    goto/16 :goto_c

    .line 6539
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

    .line 6540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_247

    .line 6541
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6543
    goto/16 :goto_c

    .line 6544
    :cond_247
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6547
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->acceptCall(I)V

    .line 6548
    goto/16 :goto_c

    .line 6523
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v6, v7

    :cond_248
    move v0, v6

    .line 6524
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_249

    .line 6525
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6527
    goto/16 :goto_c

    .line 6528
    :cond_249
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6531
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6532
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6533
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6534
    goto/16 :goto_c

    .line 6507
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

    .line 6508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24b

    .line 6509
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6511
    goto/16 :goto_c

    .line 6512
    :cond_24b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6515
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6516
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6517
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6518
    goto/16 :goto_c

    .line 6492
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

    .line 6493
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24d

    .line 6494
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6496
    goto/16 :goto_c

    .line 6497
    :cond_24d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6500
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6501
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCallWaiting(II)V

    .line 6502
    goto/16 :goto_c

    .line 6476
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v6, v7

    :cond_24e
    move v0, v6

    .line 6477
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24f

    .line 6478
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6480
    goto/16 :goto_c

    .line 6481
    :cond_24f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6484
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6485
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6486
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6487
    goto/16 :goto_c

    .line 6460
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v6, v7

    :cond_250
    move v0, v6

    .line 6461
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_251

    .line 6462
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6464
    goto/16 :goto_c

    .line 6465
    :cond_251
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6468
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6469
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6470
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6471
    goto/16 :goto_c

    .line 6445
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v6, v7

    :cond_252
    move v0, v6

    .line 6446
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_253

    .line 6447
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6449
    goto/16 :goto_c

    .line 6450
    :cond_253
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6453
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6454
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setClir(II)V

    .line 6455
    goto/16 :goto_c

    .line 6431
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v6, v7

    :cond_254
    move v0, v6

    .line 6432
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_255

    .line 6433
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6434
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6435
    goto/16 :goto_c

    .line 6436
    :cond_255
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6439
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getClir(I)V

    .line 6440
    goto/16 :goto_c

    .line 6417
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v6, v7

    :cond_256
    move v0, v6

    .line 6418
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_257

    .line 6419
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6421
    goto/16 :goto_c

    .line 6422
    :cond_257
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6425
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6426
    goto/16 :goto_c

    .line 6402
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v6, v7

    :cond_258
    move v0, v6

    .line 6403
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_259

    .line 6404
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6406
    goto/16 :goto_c

    .line 6407
    :cond_259
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6410
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6411
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6412
    goto/16 :goto_c

    .line 6386
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v6, v7

    :cond_25a
    move v0, v6

    .line 6387
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25b

    .line 6388
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6389
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6390
    goto/16 :goto_c

    .line 6391
    :cond_25b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6394
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6395
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6396
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6397
    goto/16 :goto_c

    .line 6366
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v6, v7

    :cond_25c
    move v8, v6

    .line 6367
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_25d

    .line 6368
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6369
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6370
    goto/16 :goto_c

    .line 6371
    :cond_25d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6374
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6375
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6376
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6378
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6379
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6380
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6381
    goto/16 :goto_c

    .line 6350
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

    .line 6351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25f

    .line 6352
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6354
    goto/16 :goto_c

    .line 6355
    :cond_25f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6358
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6359
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6360
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6361
    goto/16 :goto_c

    .line 6334
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v6, v7

    :cond_260
    move v0, v6

    .line 6335
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_261

    .line 6336
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6338
    goto/16 :goto_c

    .line 6339
    :cond_261
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6342
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6343
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6344
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6345
    goto/16 :goto_c

    .line 6319
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v6, v7

    :cond_262
    move v0, v6

    .line 6320
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_263

    .line 6321
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6323
    goto/16 :goto_c

    .line 6324
    :cond_263
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6326
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6327
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6328
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6329
    goto/16 :goto_c

    .line 6304
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v6, v7

    :cond_264
    move v0, v6

    .line 6305
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_265

    .line 6306
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6308
    goto/16 :goto_c

    .line 6309
    :cond_265
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6312
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6313
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setRadioPower(IZ)V

    .line 6314
    goto/16 :goto_c

    .line 6290
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v6, v7

    :cond_266
    move v0, v6

    .line 6291
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_267

    .line 6292
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6294
    goto/16 :goto_c

    .line 6295
    :cond_267
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6298
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getOperator(I)V

    .line 6299
    goto/16 :goto_c

    .line 6276
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v6, v7

    :cond_268
    move v0, v6

    .line 6277
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_269

    .line 6278
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6280
    goto/16 :goto_c

    .line 6281
    :cond_269
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6284
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6285
    goto/16 :goto_c

    .line 6262
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v6, v7

    :cond_26a
    move v0, v6

    .line 6263
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26b

    .line 6264
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6266
    goto/16 :goto_c

    .line 6267
    :cond_26b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6270
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6271
    goto/16 :goto_c

    .line 6248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v6, v7

    :cond_26c
    move v0, v6

    .line 6249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26d

    .line 6250
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6252
    goto/16 :goto_c

    .line 6253
    :cond_26d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6256
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getSignalStrength(I)V

    .line 6257
    goto/16 :goto_c

    .line 6234
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v6, v7

    :cond_26e
    move v0, v6

    .line 6235
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26f

    .line 6236
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6238
    goto/16 :goto_c

    .line 6239
    :cond_26f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6242
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6243
    goto/16 :goto_c

    .line 6220
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v6, v7

    :cond_270
    move v0, v6

    .line 6221
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_271

    .line 6222
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6224
    goto/16 :goto_c

    .line 6225
    :cond_271
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6228
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->rejectCall(I)V

    .line 6229
    goto/16 :goto_c

    .line 6206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v6, v7

    :cond_272
    move v0, v6

    .line 6207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_273

    .line 6208
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6210
    goto/16 :goto_c

    .line 6211
    :cond_273
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6214
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->conference(I)V

    .line 6215
    goto/16 :goto_c

    .line 6192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v6, v7

    :cond_274
    move v0, v6

    .line 6193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_275

    .line 6194
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6196
    goto/16 :goto_c

    .line 6197
    :cond_275
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6200
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6201
    goto/16 :goto_c

    .line 6178
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v6, v7

    :cond_276
    move v0, v6

    .line 6179
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_277

    .line 6180
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6182
    goto/16 :goto_c

    .line 6183
    :cond_277
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6186
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6187
    goto/16 :goto_c

    .line 6164
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v6, v7

    :cond_278
    move v0, v6

    .line 6165
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_279

    .line 6166
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6168
    goto/16 :goto_c

    .line 6169
    :cond_279
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6172
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6173
    goto/16 :goto_c

    .line 6149
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v6, v7

    :cond_27a
    move v0, v6

    .line 6150
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27b

    .line 6151
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6153
    goto/16 :goto_c

    .line 6154
    :cond_27b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6157
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6158
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->hangup(II)V

    .line 6159
    goto/16 :goto_c

    .line 6134
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v6, v7

    :cond_27c
    move v0, v6

    .line 6135
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27d

    .line 6136
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6138
    goto/16 :goto_c

    .line 6139
    :cond_27d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6142
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6143
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6144
    goto/16 :goto_c

    .line 6118
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v6, v7

    :cond_27e
    move v0, v6

    .line 6119
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27f

    .line 6120
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6121
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6122
    goto/16 :goto_c

    .line 6123
    :cond_27f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6125
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6126
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6127
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6128
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6129
    goto/16 :goto_c

    .line 6104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v6, v7

    :cond_280
    move v0, v6

    .line 6105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_281

    .line 6106
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6108
    goto/16 :goto_c

    .line 6109
    :cond_281
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6112
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getCurrentCalls(I)V

    .line 6113
    goto/16 :goto_c

    .line 6089
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v6, v7

    :cond_282
    move v0, v6

    .line 6090
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_283

    .line 6091
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6093
    goto/16 :goto_c

    .line 6094
    :cond_283
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6097
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6098
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6099
    goto/16 :goto_c

    .line 6072
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v6, v7

    :cond_284
    move v0, v6

    .line 6073
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_285

    .line 6074
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6075
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6076
    goto/16 :goto_c

    .line 6077
    :cond_285
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6079
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6080
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6081
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6082
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6083
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6084
    goto/16 :goto_c

    .line 6055
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

    .line 6056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_287

    .line 6057
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6059
    goto/16 :goto_c

    .line 6060
    :cond_287
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6063
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6064
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6065
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6066
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6067
    goto/16 :goto_c

    .line 6038
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

    .line 6039
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_289

    .line 6040
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6042
    goto/16 :goto_c

    .line 6043
    :cond_289
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6046
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6047
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6048
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6049
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6050
    goto/16 :goto_c

    .line 6022
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

    .line 6023
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28b

    .line 6024
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6025
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6026
    goto/16 :goto_c

    .line 6027
    :cond_28b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6030
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6031
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6032
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6033
    goto/16 :goto_c

    .line 6005
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

    .line 6006
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28d

    .line 6007
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6009
    goto/16 :goto_c

    .line 6010
    :cond_28d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6013
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6014
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6015
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6016
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6017
    goto/16 :goto_c

    .line 5989
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

    .line 5990
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28f

    .line 5991
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5993
    goto :goto_c

    .line 5994
    :cond_28f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5997
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5998
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5999
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6000
    goto :goto_c

    .line 5975
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

    .line 5976
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_291

    .line 5977
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5979
    goto :goto_c

    .line 5980
    :cond_291
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5983
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->getIccCardStatus(I)V

    .line 5984
    goto :goto_c

    .line 5958
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

    .line 5959
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_293

    .line 5960
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5962
    goto :goto_c

    .line 5963
    :cond_293
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 5966
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 5967
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5968
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5970
    nop

    .line 11047
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

    .line 5909
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5937
    const-string v0, "vendor.mediatek.hardware.radio@3.7::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5938
    return-object p0

    .line 5940
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

    .line 5944
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5945
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5899
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_7/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5931
    const/4 v0, 0x1

    return v0
.end method
