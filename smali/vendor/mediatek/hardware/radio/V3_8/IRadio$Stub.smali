.class public abstract Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_8/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_8/IRadio;
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

    .line 5871
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5917
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5918
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5919
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5920
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5921
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

    .line 5883
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

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

    new-array v3, v2, [B

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x5et
        0x15t
        0x29t
        -0x3at
        0x55t
        0x7at
        0x7ft
        -0x37t
        -0x44t
        -0x59t
        -0x1t
        0x5et
        -0x2et
        0x25t
        -0x33t
        0x28t
        -0x2bt
        0x42t
        -0x62t
        0x0t
        0x66t
        0x68t
        -0x32t
        0x2ct
        0x14t
        0x6t
        -0x13t
        -0x3ct
        -0x64t
        0x55t
        0x70t
        -0x4ft
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    :array_9
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

    :array_a
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
    .locals 12
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

    const-string v1, "vendor.mediatek.hardware.radio@3.8::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.7::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.6::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v5, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v6, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v7, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v8, "android.hardware.radio@1.2::IRadio"

    const-string v9, "android.hardware.radio@1.1::IRadio"

    const-string v10, "android.hardware.radio@1.0::IRadio"

    const-string v11, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 5877
    const-string v0, "vendor.mediatek.hardware.radio@3.8::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5905
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5927
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5929
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

    .line 5957
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

    .line 11040
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    move v0, v6

    .line 11041
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 11042
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11044
    goto/16 :goto_c

    .line 11027
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v6, v7

    :cond_1
    move v1, v6

    .line 11028
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_2

    .line 11029
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11030
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11031
    goto/16 :goto_c

    .line 11032
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11034
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->notifySyspropsChanged()V

    .line 11035
    goto/16 :goto_c

    .line 11011
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v1, v7

    .line 11012
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 11013
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11015
    goto/16 :goto_c

    .line 11016
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11018
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 11019
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11020
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 11021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11022
    goto/16 :goto_c

    .line 10996
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

    .line 10997
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 10998
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11000
    goto/16 :goto_c

    .line 11001
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11003
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->ping()V

    .line 11004
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11005
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11006
    goto/16 :goto_c

    .line 10986
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    :cond_7
    move v0, v6

    .line 10987
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 10988
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10989
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10990
    goto/16 :goto_c

    .line 10973
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v6, v7

    :cond_8
    move v1, v6

    .line 10974
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_9

    .line 10975
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10977
    goto/16 :goto_c

    .line 10978
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10980
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setHALInstrumentation()V

    .line 10981
    goto/16 :goto_c

    .line 10934
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v1, v7

    .line 10935
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 10936
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10938
    goto/16 :goto_c

    .line 10939
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10941
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10942
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10944
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 10946
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 10947
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10948
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10949
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 10950
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 10952
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 10953
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 10955
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 10959
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10960
    nop

    .line 10950
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10956
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 10963
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10965
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10967
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10968
    goto/16 :goto_c

    .line 10918
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

    .line 10919
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 10920
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10922
    goto/16 :goto_c

    .line 10923
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10925
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10926
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10927
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10928
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10929
    goto/16 :goto_c

    .line 10901
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

    .line 10902
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 10903
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10905
    goto/16 :goto_c

    .line 10906
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 10909
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10910
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 10911
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10913
    goto/16 :goto_c

    .line 10885
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

    .line 10886
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 10887
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10889
    goto/16 :goto_c

    .line 10890
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10892
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10893
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10894
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10896
    goto/16 :goto_c

    .line 10869
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v6, v7

    :cond_14
    move v1, v6

    .line 10870
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_15

    .line 10871
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10873
    goto/16 :goto_c

    .line 10874
    :cond_15
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10877
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10878
    .local v2, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10879
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 10880
    goto/16 :goto_c

    .line 10854
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

    .line 10855
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_17

    .line 10856
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10857
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10858
    goto/16 :goto_c

    .line 10859
    :cond_17
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;

    move-result-object v0

    .line 10862
    .local v0, "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;

    move-result-object v2

    .line 10863
    .local v2, "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V

    .line 10864
    goto/16 :goto_c

    .line 10838
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v6, v7

    :cond_18
    move v0, v6

    .line 10839
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19

    .line 10840
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10842
    goto/16 :goto_c

    .line 10843
    :cond_19
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10846
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10847
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10848
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->hangupWithReason(III)V

    .line 10849
    goto/16 :goto_c

    .line 10823
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

    .line 10824
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b

    .line 10825
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10827
    goto/16 :goto_c

    .line 10828
    :cond_1b
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10831
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10832
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10833
    goto/16 :goto_c

    .line 10808
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v6, v7

    :cond_1c
    move v0, v6

    .line 10809
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d

    .line 10810
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10812
    goto/16 :goto_c

    .line 10813
    :cond_1d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10816
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10817
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10818
    goto/16 :goto_c

    .line 10793
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v6, v7

    :cond_1e
    move v0, v6

    .line 10794
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f

    .line 10795
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10797
    goto/16 :goto_c

    .line 10798
    :cond_1f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10801
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10802
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10803
    goto/16 :goto_c

    .line 10777
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    move v0, v6

    .line 10778
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21

    .line 10779
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10780
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10781
    goto/16 :goto_c

    .line 10782
    :cond_21
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10785
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10786
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10787
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10788
    goto/16 :goto_c

    .line 10761
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

    .line 10762
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23

    .line 10763
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10765
    goto/16 :goto_c

    .line 10766
    :cond_23
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10769
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10770
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10771
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10772
    goto/16 :goto_c

    .line 10746
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

    .line 10747
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25

    .line 10748
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10750
    goto/16 :goto_c

    .line 10751
    :cond_25
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10754
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10755
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10756
    goto/16 :goto_c

    .line 10731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v6, v7

    :cond_26
    move v0, v6

    .line 10732
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27

    .line 10733
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10735
    goto/16 :goto_c

    .line 10736
    :cond_27
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10739
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10740
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10741
    goto/16 :goto_c

    .line 10716
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v6, v7

    :cond_28
    move v0, v6

    .line 10717
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_29

    .line 10718
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10720
    goto/16 :goto_c

    .line 10721
    :cond_29
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10724
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10725
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSilentReboot(II)V

    .line 10726
    goto/16 :goto_c

    .line 10701
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v6, v7

    :cond_2a
    move v0, v6

    .line 10702
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2b

    .line 10703
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10704
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10705
    goto/16 :goto_c

    .line 10706
    :cond_2b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10709
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10710
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->reportSimMode(II)V

    .line 10711
    goto/16 :goto_c

    .line 10686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v6, v7

    :cond_2c
    move v0, v6

    .line 10687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2d

    .line 10688
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10690
    goto/16 :goto_c

    .line 10691
    :cond_2d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10694
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10695
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10696
    goto/16 :goto_c

    .line 10672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v6, v7

    :cond_2e
    move v0, v6

    .line 10673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2f

    .line 10674
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10676
    goto/16 :goto_c

    .line 10677
    :cond_2f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10680
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10681
    goto/16 :goto_c

    .line 10657
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v6, v7

    :cond_30
    move v0, v6

    .line 10658
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_31

    .line 10659
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10661
    goto/16 :goto_c

    .line 10662
    :cond_31
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10664
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10665
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10666
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10667
    goto/16 :goto_c

    .line 10643
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v6, v7

    :cond_32
    move v0, v6

    .line 10644
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_33

    .line 10645
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10647
    goto/16 :goto_c

    .line 10648
    :cond_33
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10651
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->resetAllConnections(I)V

    .line 10652
    goto/16 :goto_c

    .line 10628
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v6, v7

    :cond_34
    move v0, v6

    .line 10629
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_35

    .line 10630
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10632
    goto/16 :goto_c

    .line 10633
    :cond_35
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10636
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10637
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10638
    goto/16 :goto_c

    .line 10613
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v6, v7

    :cond_36
    move v0, v6

    .line 10614
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_37

    .line 10615
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10617
    goto/16 :goto_c

    .line 10618
    :cond_37
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10621
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10622
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10623
    goto/16 :goto_c

    .line 10598
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v6, v7

    :cond_38
    move v0, v6

    .line 10599
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_39

    .line 10600
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10602
    goto/16 :goto_c

    .line 10603
    :cond_39
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10606
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10607
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10608
    goto/16 :goto_c

    .line 10582
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v6, v7

    :cond_3a
    move v0, v6

    .line 10583
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3b

    .line 10584
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10585
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10586
    goto/16 :goto_c

    .line 10587
    :cond_3b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10589
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10590
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10591
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10592
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10593
    goto/16 :goto_c

    .line 10567
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

    .line 10568
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3d

    .line 10569
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10571
    goto/16 :goto_c

    .line 10572
    :cond_3d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10575
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10576
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10577
    goto/16 :goto_c

    .line 10551
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v6, v7

    :cond_3e
    move v0, v6

    .line 10552
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3f

    .line 10553
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10555
    goto/16 :goto_c

    .line 10556
    :cond_3f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10559
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10560
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10561
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10562
    goto/16 :goto_c

    .line 10535
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

    .line 10536
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_41

    .line 10537
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10539
    goto/16 :goto_c

    .line 10540
    :cond_41
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10543
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10544
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10545
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10546
    goto/16 :goto_c

    .line 10517
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v6, v7

    .line 10518
    .local v6, "_hidl_is_oneway":Z
    :cond_42
    if-eq v6, v7, :cond_43

    .line 10519
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10521
    goto/16 :goto_c

    .line 10522
    :cond_43
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10525
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10526
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10527
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10528
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10529
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10530
    goto/16 :goto_c

    .line 10502
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

    .line 10503
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_45

    .line 10504
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10505
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10506
    goto/16 :goto_c

    .line 10507
    :cond_45
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10510
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10511
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10512
    goto/16 :goto_c

    .line 10488
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v6, v7

    :cond_46
    move v0, v6

    .line 10489
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_47

    .line 10490
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10492
    goto/16 :goto_c

    .line 10493
    :cond_47
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10496
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getApcInfo(I)V

    .line 10497
    goto/16 :goto_c

    .line 10471
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v6, v7

    :cond_48
    move v0, v6

    .line 10472
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_49

    .line 10473
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10474
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10475
    goto/16 :goto_c

    .line 10476
    :cond_49
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10479
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10480
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10481
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10482
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setApcMode(IIII)V

    .line 10483
    goto/16 :goto_c

    .line 10454
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

    .line 10455
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4b

    .line 10456
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10458
    goto/16 :goto_c

    .line 10459
    :cond_4b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10462
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10463
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10464
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10465
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10466
    goto/16 :goto_c

    .line 10434
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

    .line 10435
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_4d

    .line 10436
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10438
    goto/16 :goto_c

    .line 10439
    :cond_4d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10442
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10443
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10444
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10445
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10446
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10447
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10448
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10449
    goto/16 :goto_c

    .line 10419
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

    .line 10420
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4f

    .line 10421
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10423
    goto/16 :goto_c

    .line 10424
    :cond_4f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10427
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10428
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10429
    goto/16 :goto_c

    .line 10394
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v6, v7

    :cond_50
    move v12, v6

    .line 10395
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v7, :cond_51

    .line 10396
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10398
    goto/16 :goto_c

    .line 10399
    :cond_51
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10402
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10403
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10404
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10405
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10406
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10407
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10408
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10409
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10410
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10411
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10412
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10413
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10414
    goto/16 :goto_c

    .line 10377
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

    .line 10378
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_53

    .line 10379
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10381
    goto/16 :goto_c

    .line 10382
    :cond_53
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10385
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10386
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10387
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10388
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10389
    goto/16 :goto_c

    .line 10361
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

    .line 10362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_55

    .line 10363
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10365
    goto/16 :goto_c

    .line 10366
    :cond_55
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10369
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10370
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10371
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10372
    goto/16 :goto_c

    .line 10343
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v6, v7

    .line 10344
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v6, v7, :cond_57

    .line 10345
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10347
    goto/16 :goto_c

    .line 10348
    :cond_57
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10351
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10352
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10353
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10354
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10355
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10356
    goto/16 :goto_c

    .line 10326
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

    .line 10327
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_59

    .line 10328
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10330
    goto/16 :goto_c

    .line 10331
    :cond_59
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10334
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10335
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10336
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10337
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10338
    goto/16 :goto_c

    .line 10311
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

    .line 10312
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5b

    .line 10313
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10315
    goto/16 :goto_c

    .line 10316
    :cond_5b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10319
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10320
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10321
    goto/16 :goto_c

    .line 10296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v6, v7

    :cond_5c
    move v0, v6

    .line 10297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5d

    .line 10298
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10300
    goto/16 :goto_c

    .line 10301
    :cond_5d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10304
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10305
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setE911State(II)V

    .line 10306
    goto/16 :goto_c

    .line 10280
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v6, v7

    :cond_5e
    move v0, v6

    .line 10281
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5f

    .line 10282
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10283
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10284
    goto/16 :goto_c

    .line 10285
    :cond_5f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10288
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10289
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10290
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10291
    goto/16 :goto_c

    .line 10265
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

    .line 10266
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_61

    .line 10267
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10269
    goto/16 :goto_c

    .line 10270
    :cond_61
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10273
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10274
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10275
    goto/16 :goto_c

    .line 10250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v6, v7

    :cond_62
    move v0, v6

    .line 10251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_63

    .line 10252
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10254
    goto/16 :goto_c

    .line 10255
    :cond_63
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10258
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10259
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10260
    goto/16 :goto_c

    .line 10235
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v6, v7

    :cond_64
    move v0, v6

    .line 10236
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_65

    .line 10237
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10239
    goto/16 :goto_c

    .line 10240
    :cond_65
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10243
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10244
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10245
    goto/16 :goto_c

    .line 10220
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v6, v7

    :cond_66
    move v0, v6

    .line 10221
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_67

    .line 10222
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10224
    goto/16 :goto_c

    .line 10225
    :cond_67
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10228
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10229
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10230
    goto/16 :goto_c

    .line 10206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v6, v7

    :cond_68
    move v0, v6

    .line 10207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_69

    .line 10208
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10210
    goto/16 :goto_c

    .line 10211
    :cond_69
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10214
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->restartRILD(I)V

    .line 10215
    goto/16 :goto_c

    .line 10192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v6, v7

    :cond_6a
    move v0, v6

    .line 10193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6b

    .line 10194
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10196
    goto/16 :goto_c

    .line 10197
    :cond_6b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10200
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->resetRadio(I)V

    .line 10201
    goto/16 :goto_c

    .line 10177
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v6, v7

    :cond_6c
    move v0, v6

    .line 10178
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6d

    .line 10179
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10181
    goto/16 :goto_c

    .line 10182
    :cond_6d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10185
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10186
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10187
    goto/16 :goto_c

    .line 10162
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v6, v7

    :cond_6e
    move v0, v6

    .line 10163
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6f

    .line 10164
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10166
    goto/16 :goto_c

    .line 10167
    :cond_6f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 10170
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10171
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10172
    goto/16 :goto_c

    .line 10147
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v6, v7

    :cond_70
    move v0, v6

    .line 10148
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_71

    .line 10149
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10151
    goto/16 :goto_c

    .line 10152
    :cond_71
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10155
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10156
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10157
    goto/16 :goto_c

    .line 10132
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v6, v7

    :cond_72
    move v0, v6

    .line 10133
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_73

    .line 10134
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10136
    goto/16 :goto_c

    .line 10137
    :cond_73
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10140
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10141
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10142
    goto/16 :goto_c

    .line 10117
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v6, v7

    :cond_74
    move v0, v6

    .line 10118
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_75

    .line 10119
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10121
    goto/16 :goto_c

    .line 10122
    :cond_75
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10125
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10126
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10127
    goto/16 :goto_c

    .line 10102
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v6, v7

    :cond_76
    move v0, v6

    .line 10103
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_77

    .line 10104
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10106
    goto/16 :goto_c

    .line 10107
    :cond_77
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10110
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10111
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10112
    goto/16 :goto_c

    .line 10087
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v6, v7

    :cond_78
    move v0, v6

    .line 10088
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_79

    .line 10089
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10091
    goto/16 :goto_c

    .line 10092
    :cond_79
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10095
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10096
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setTrm(II)V

    .line 10097
    goto/16 :goto_c

    .line 10070
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v6, v7

    :cond_7a
    move v0, v6

    .line 10071
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7b

    .line 10072
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10074
    goto/16 :goto_c

    .line 10075
    :cond_7b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10078
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10079
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10080
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10081
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setFdMode(IIII)V

    .line 10082
    goto/16 :goto_c

    .line 10053
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

    .line 10054
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7d

    .line 10055
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10057
    goto/16 :goto_c

    .line 10058
    :cond_7d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10061
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10062
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10063
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10064
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10065
    goto/16 :goto_c

    .line 10039
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

    .line 10040
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7f

    .line 10041
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10042
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10043
    goto/16 :goto_c

    .line 10044
    :cond_7f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10047
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCurrentPOLList(I)V

    .line 10048
    goto/16 :goto_c

    .line 10025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v6, v7

    :cond_80
    move v0, v6

    .line 10026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_81

    .line 10027
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10029
    goto/16 :goto_c

    .line 10030
    :cond_81
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10033
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getPOLCapability(I)V

    .line 10034
    goto/16 :goto_c

    .line 10010
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v6, v7

    :cond_82
    move v0, v6

    .line 10011
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_83

    .line 10012
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10014
    goto/16 :goto_c

    .line 10015
    :cond_83
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10018
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10019
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getRxTestResult(II)V

    .line 10020
    goto/16 :goto_c

    .line 9995
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v6, v7

    :cond_84
    move v0, v6

    .line 9996
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_85

    .line 9997
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9998
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9999
    goto/16 :goto_c

    .line 10000
    :cond_85
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10003
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10004
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setRxTestConfig(II)V

    .line 10005
    goto/16 :goto_c

    .line 9975
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v6, v7

    :cond_86
    move v8, v6

    .line 9976
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_87

    .line 9977
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9979
    goto/16 :goto_c

    .line 9980
    :cond_87
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9983
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9984
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9985
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9986
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9987
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9988
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9989
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9990
    goto/16 :goto_c

    .line 9960
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

    .line 9961
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_89

    .line 9962
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9964
    goto/16 :goto_c

    .line 9965
    :cond_89
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9968
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9969
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9970
    goto/16 :goto_c

    .line 9946
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v6, v7

    :cond_8a
    move v0, v6

    .line 9947
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8b

    .line 9948
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9950
    goto/16 :goto_c

    .line 9951
    :cond_8b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9954
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9955
    goto/16 :goto_c

    .line 9929
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v6, v7

    :cond_8c
    move v0, v6

    .line 9930
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8d

    .line 9931
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9933
    goto/16 :goto_c

    .line 9934
    :cond_8d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9937
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9938
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9939
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9940
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9941
    goto/16 :goto_c

    .line 9915
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

    .line 9916
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8f

    .line 9917
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9918
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9919
    goto/16 :goto_c

    .line 9920
    :cond_8f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9923
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->abortFemtocellList(I)V

    .line 9924
    goto/16 :goto_c

    .line 9901
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v6, v7

    :cond_90
    move v0, v6

    .line 9902
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_91

    .line 9903
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9905
    goto/16 :goto_c

    .line 9906
    :cond_91
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9909
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getFemtocellList(I)V

    .line 9910
    goto/16 :goto_c

    .line 9887
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v6, v7

    :cond_92
    move v0, v6

    .line 9888
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_93

    .line 9889
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9891
    goto/16 :goto_c

    .line 9892
    :cond_93
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9895
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9896
    goto/16 :goto_c

    .line 9873
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v6, v7

    :cond_94
    move v0, v6

    .line 9874
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_95

    .line 9875
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9877
    goto/16 :goto_c

    .line 9878
    :cond_95
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9881
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9882
    goto/16 :goto_c

    .line 9859
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v6, v7

    :cond_96
    move v0, v6

    .line 9860
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_97

    .line 9861
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9863
    goto/16 :goto_c

    .line 9864
    :cond_97
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9867
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9868
    goto/16 :goto_c

    .line 9842
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v6, v7

    :cond_98
    move v0, v6

    .line 9843
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_99

    .line 9844
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9846
    goto/16 :goto_c

    .line 9847
    :cond_99
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9850
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9851
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9852
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9853
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9854
    goto/16 :goto_c

    .line 9828
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

    .line 9829
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9b

    .line 9830
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9832
    goto/16 :goto_c

    .line 9833
    :cond_9b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9836
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9837
    goto/16 :goto_c

    .line 9813
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v6, v7

    :cond_9c
    move v0, v6

    .line 9814
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9d

    .line 9815
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9817
    goto/16 :goto_c

    .line 9818
    :cond_9d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9821
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9822
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->reloadModemType(II)V

    .line 9823
    goto/16 :goto_c

    .line 9798
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v6, v7

    :cond_9e
    move v0, v6

    .line 9799
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9f

    .line 9800
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9801
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9802
    goto/16 :goto_c

    .line 9803
    :cond_9f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9806
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9807
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->storeModemType(II)V

    .line 9808
    goto/16 :goto_c

    .line 9783
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v6, v7

    :cond_a0
    move v0, v6

    .line 9784
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a1

    .line 9785
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9787
    goto/16 :goto_c

    .line 9788
    :cond_a1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9791
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9792
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResumeRegistration(II)V

    .line 9793
    goto/16 :goto_c

    .line 9768
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v6, v7

    :cond_a2
    move v0, v6

    .line 9769
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a3

    .line 9770
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9771
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9772
    goto/16 :goto_c

    .line 9773
    :cond_a3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9776
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9777
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9778
    goto/16 :goto_c

    .line 9753
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v6, v7

    :cond_a4
    move v0, v6

    .line 9754
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a5

    .line 9755
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9757
    goto/16 :goto_c

    .line 9758
    :cond_a5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9761
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9762
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9763
    goto/16 :goto_c

    .line 9737
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v6, v7

    :cond_a6
    move v0, v6

    .line 9738
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a7

    .line 9739
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9741
    goto/16 :goto_c

    .line 9742
    :cond_a7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9745
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9746
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9747
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9748
    goto/16 :goto_c

    .line 9721
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v6, v7

    :cond_a8
    move v0, v6

    .line 9722
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a9

    .line 9723
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9725
    goto/16 :goto_c

    .line 9726
    :cond_a9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9729
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9730
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9731
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9732
    goto/16 :goto_c

    .line 9707
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

    .line 9708
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ab

    .line 9709
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9711
    goto/16 :goto_c

    .line 9712
    :cond_ab
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9715
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9716
    goto/16 :goto_c

    .line 9691
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v6, v7

    :cond_ac
    move v0, v6

    .line 9692
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ad

    .line 9693
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9694
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9695
    goto/16 :goto_c

    .line 9696
    :cond_ad
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9698
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9699
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9700
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9701
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9702
    goto/16 :goto_c

    .line 9677
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v6, v7

    :cond_ae
    move v0, v6

    .line 9678
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_af

    .line 9679
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9681
    goto/16 :goto_c

    .line 9682
    :cond_af
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9685
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9686
    goto/16 :goto_c

    .line 9663
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v6, v7

    :cond_b0
    move v0, v6

    .line 9664
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b1

    .line 9665
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9667
    goto/16 :goto_c

    .line 9668
    :cond_b1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9670
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9671
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9672
    goto/16 :goto_c

    .line 9648
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v6, v7

    :cond_b2
    move v0, v6

    .line 9649
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b3

    .line 9650
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9652
    goto/16 :goto_c

    .line 9653
    :cond_b3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9656
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9657
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9658
    goto/16 :goto_c

    .line 9632
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v6, v7

    :cond_b4
    move v0, v6

    .line 9633
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b5

    .line 9634
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9636
    goto/16 :goto_c

    .line 9637
    :cond_b5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9640
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9641
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9642
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->removeCbMsg(III)V

    .line 9643
    goto/16 :goto_c

    .line 9617
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

    .line 9618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b7

    .line 9619
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9621
    goto/16 :goto_c

    .line 9622
    :cond_b7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9625
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9626
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setEtws(II)V

    .line 9627
    goto/16 :goto_c

    .line 9603
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v6, v7

    :cond_b8
    move v0, v6

    .line 9604
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b9

    .line 9605
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9607
    goto/16 :goto_c

    .line 9608
    :cond_b9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9611
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9612
    goto/16 :goto_c

    .line 9587
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v6, v7

    :cond_ba
    move v0, v6

    .line 9588
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bb

    .line 9589
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9591
    goto/16 :goto_c

    .line 9592
    :cond_bb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9595
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9596
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9597
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9598
    goto/16 :goto_c

    .line 9573
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v6, v7

    :cond_bc
    move v0, v6

    .line 9574
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bd

    .line 9575
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9577
    goto/16 :goto_c

    .line 9578
    :cond_bd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9580
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9581
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getSmsParameters(I)V

    .line 9582
    goto/16 :goto_c

    .line 9554
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v6, v7

    :cond_be
    move v8, v6

    .line 9555
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_bf

    .line 9556
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9558
    goto/16 :goto_c

    .line 9559
    :cond_bf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 9562
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9563
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9564
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9565
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9566
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9567
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9568
    goto/16 :goto_c

    .line 9537
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

    .line 9538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c1

    .line 9539
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9541
    goto/16 :goto_c

    .line 9542
    :cond_c1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9545
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9546
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9547
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9548
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9549
    goto/16 :goto_c

    .line 9521
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

    .line 9522
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c3

    .line 9523
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9525
    goto/16 :goto_c

    .line 9526
    :cond_c3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9529
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9530
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9531
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9532
    goto/16 :goto_c

    .line 9501
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

    .line 9502
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_c5

    .line 9503
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9504
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9505
    goto/16 :goto_c

    .line 9506
    :cond_c5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9509
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9510
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9511
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9512
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9513
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9514
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9515
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9516
    goto/16 :goto_c

    .line 9486
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

    .line 9487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c7

    .line 9488
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9490
    goto/16 :goto_c

    .line 9491
    :cond_c7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9494
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9495
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->queryNetworkLock(II)V

    .line 9496
    goto/16 :goto_c

    .line 9470
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v6, v7

    :cond_c8
    move v0, v6

    .line 9471
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c9

    .line 9472
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9473
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9474
    goto/16 :goto_c

    .line 9475
    :cond_c9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9478
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9479
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9480
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9481
    goto/16 :goto_c

    .line 9455
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v6, v7

    :cond_ca
    move v0, v6

    .line 9456
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cb

    .line 9457
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9458
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9459
    goto/16 :goto_c

    .line 9460
    :cond_cb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9462
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9463
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9464
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSimPower(II)V

    .line 9465
    goto/16 :goto_c

    .line 9441
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v6, v7

    :cond_cc
    move v0, v6

    .line 9442
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cd

    .line 9443
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9445
    goto/16 :goto_c

    .line 9446
    :cond_cd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9449
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getIccid(I)V

    .line 9450
    goto/16 :goto_c

    .line 9427
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v6, v7

    :cond_ce
    move v0, v6

    .line 9428
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cf

    .line 9429
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9431
    goto/16 :goto_c

    .line 9432
    :cond_cf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9435
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getATR(I)V

    .line 9436
    goto/16 :goto_c

    .line 9412
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v6, v7

    :cond_d0
    move v0, v6

    .line 9413
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d1

    .line 9414
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9416
    goto/16 :goto_c

    .line 9417
    :cond_d1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9420
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9421
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9422
    goto/16 :goto_c

    .line 9397
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v6, v7

    :cond_d2
    move v0, v6

    .line 9398
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d3

    .line 9399
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9400
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9401
    goto/16 :goto_c

    .line 9402
    :cond_d3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9405
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9406
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setModemPower(IZ)V

    .line 9407
    goto/16 :goto_c

    .line 9382
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v6, v7

    :cond_d4
    move v0, v6

    .line 9383
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d5

    .line 9384
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9386
    goto/16 :goto_c

    .line 9387
    :cond_d5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9390
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9391
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPhonebookReady(II)V

    .line 9392
    goto/16 :goto_c

    .line 9366
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v6, v7

    :cond_d6
    move v0, v6

    .line 9367
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d7

    .line 9368
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9369
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9370
    goto/16 :goto_c

    .line 9371
    :cond_d7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9374
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9375
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9376
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readUPBAasList(III)V

    .line 9377
    goto/16 :goto_c

    .line 9350
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

    .line 9351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d9

    .line 9352
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9354
    goto/16 :goto_c

    .line 9355
    :cond_d9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9358
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9359
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9360
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9361
    goto/16 :goto_c

    .line 9334
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

    .line 9335
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_db

    .line 9336
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9338
    goto/16 :goto_c

    .line 9339
    :cond_db
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9342
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9343
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9344
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9345
    goto/16 :goto_c

    .line 9318
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

    .line 9319
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_dd

    .line 9320
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9322
    goto/16 :goto_c

    .line 9323
    :cond_dd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9326
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9327
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9328
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9329
    goto/16 :goto_c

    .line 9302
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

    .line 9303
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_df

    .line 9304
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9306
    goto/16 :goto_c

    .line 9307
    :cond_df
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9310
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9311
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9312
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9313
    goto/16 :goto_c

    .line 9286
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

    .line 9287
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e1

    .line 9288
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9289
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9290
    goto/16 :goto_c

    .line 9291
    :cond_e1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9294
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9295
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9296
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9297
    goto/16 :goto_c

    .line 9270
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v6, v7

    :cond_e2
    move v0, v6

    .line 9271
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e3

    .line 9272
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9274
    goto/16 :goto_c

    .line 9275
    :cond_e3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9278
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9279
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9280
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9281
    goto/16 :goto_c

    .line 9254
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

    .line 9255
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e5

    .line 9256
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9257
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9258
    goto/16 :goto_c

    .line 9259
    :cond_e5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9262
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9263
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9264
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9265
    goto/16 :goto_c

    .line 9240
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

    .line 9241
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e7

    .line 9242
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9244
    goto/16 :goto_c

    .line 9245
    :cond_e7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9248
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9249
    goto/16 :goto_c

    .line 9226
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v6, v7

    :cond_e8
    move v0, v6

    .line 9227
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e9

    .line 9228
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9230
    goto/16 :goto_c

    .line 9231
    :cond_e9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9234
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9235
    goto/16 :goto_c

    .line 9210
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v6, v7

    :cond_ea
    move v0, v6

    .line 9211
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_eb

    .line 9212
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9213
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9214
    goto/16 :goto_c

    .line 9215
    :cond_eb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9218
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9219
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9220
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9221
    goto/16 :goto_c

    .line 9195
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

    .line 9196
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ed

    .line 9197
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9199
    goto/16 :goto_c

    .line 9200
    :cond_ed
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9203
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9204
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9205
    goto/16 :goto_c

    .line 9179
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v6, v7

    :cond_ee
    move v0, v6

    .line 9180
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ef

    .line 9181
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9183
    goto/16 :goto_c

    .line 9184
    :cond_ef
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9187
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9188
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9189
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readUPBGasList(III)V

    .line 9190
    goto/16 :goto_c

    .line 9162
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

    .line 9163
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f1

    .line 9164
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9166
    goto/16 :goto_c

    .line 9167
    :cond_f1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9170
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9171
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9172
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9173
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9174
    goto/16 :goto_c

    .line 9147
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

    .line 9148
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f3

    .line 9149
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9151
    goto/16 :goto_c

    .line 9152
    :cond_f3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9155
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9156
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9157
    goto/16 :goto_c

    .line 9133
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v6, v7

    :cond_f4
    move v0, v6

    .line 9134
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f5

    .line 9135
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9136
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9137
    goto/16 :goto_c

    .line 9138
    :cond_f5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9141
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->queryUPBCapability(I)V

    .line 9142
    goto/16 :goto_c

    .line 9116
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v6, v7

    :cond_f6
    move v0, v6

    .line 9117
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f7

    .line 9118
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9119
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9120
    goto/16 :goto_c

    .line 9121
    :cond_f7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9124
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9125
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9126
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9127
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9128
    goto/16 :goto_c

    .line 9100
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

    .line 9101
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f9

    .line 9102
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9104
    goto/16 :goto_c

    .line 9105
    :cond_f9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9108
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9109
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9110
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9111
    goto/16 :goto_c

    .line 9085
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v6, v7

    :cond_fa
    move v0, v6

    .line 9086
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fb

    .line 9087
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9089
    goto/16 :goto_c

    .line 9090
    :cond_fb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9093
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9094
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9095
    goto/16 :goto_c

    .line 9071
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v6, v7

    :cond_fc
    move v0, v6

    .line 9072
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fd

    .line 9073
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9074
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9075
    goto/16 :goto_c

    .line 9076
    :cond_fd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9079
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getEccNum(I)V

    .line 9080
    goto/16 :goto_c

    .line 9055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v6, v7

    :cond_fe
    move v0, v6

    .line 9056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ff

    .line 9057
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9059
    goto/16 :goto_c

    .line 9060
    :cond_ff
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9063
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9064
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9065
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9066
    goto/16 :goto_c

    .line 9040
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

    .line 9041
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_101

    .line 9042
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9044
    goto/16 :goto_c

    .line 9045
    :cond_101
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9048
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9049
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 9050
    goto/16 :goto_c

    .line 9025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v6, v7

    :cond_102
    move v0, v6

    .line 9026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_103

    .line 9027
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9029
    goto/16 :goto_c

    .line 9030
    :cond_103
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9033
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9034
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->eccPreferredRat(II)V

    .line 9035
    goto/16 :goto_c

    .line 9009
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v6, v7

    :cond_104
    move v0, v6

    .line 9010
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_105

    .line 9011
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9013
    goto/16 :goto_c

    .line 9014
    :cond_105
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9017
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9018
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9019
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->currentStatus(III)V

    .line 9020
    goto/16 :goto_c

    .line 8993
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

    .line 8994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_107

    .line 8995
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8997
    goto/16 :goto_c

    .line 8998
    :cond_107
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9001
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9002
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9003
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 9004
    goto/16 :goto_c

    .line 8978
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

    .line 8979
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_109

    .line 8980
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8981
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8982
    goto/16 :goto_c

    .line 8983
    :cond_109
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8986
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8987
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8988
    goto/16 :goto_c

    .line 8962
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v6, v7

    :cond_10a
    move v0, v6

    .line 8963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10b

    .line 8964
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8966
    goto/16 :goto_c

    .line 8967
    :cond_10b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8970
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8971
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8972
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8973
    goto/16 :goto_c

    .line 8945
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v6, v7

    :cond_10c
    move v0, v6

    .line 8946
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10d

    .line 8947
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8949
    goto/16 :goto_c

    .line 8950
    :cond_10d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8953
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8954
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8955
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8956
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCallIndication(IIII)V

    .line 8957
    goto/16 :goto_c

    .line 8931
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

    .line 8932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10f

    .line 8933
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8934
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8935
    goto/16 :goto_c

    .line 8936
    :cond_10f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8938
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8939
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->hangupAll(I)V

    .line 8940
    goto/16 :goto_c

    .line 8916
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v6, v7

    :cond_110
    move v0, v6

    .line 8917
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_111

    .line 8918
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8920
    goto/16 :goto_c

    .line 8921
    :cond_111
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8924
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8925
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8926
    goto/16 :goto_c

    .line 8902
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v6, v7

    :cond_112
    move v0, v6

    .line 8903
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_113

    .line 8904
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8906
    goto/16 :goto_c

    .line 8907
    :cond_113
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8910
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->resetSuppServ(I)V

    .line 8911
    goto/16 :goto_c

    .line 8888
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v6, v7

    :cond_114
    move v0, v6

    .line 8889
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_115

    .line 8890
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8892
    goto/16 :goto_c

    .line 8893
    :cond_115
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8896
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getXcapStatus(I)V

    .line 8897
    goto/16 :goto_c

    .line 8874
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v6, v7

    :cond_116
    move v0, v6

    .line 8875
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_117

    .line 8876
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8878
    goto/16 :goto_c

    .line 8879
    :cond_117
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8882
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->cancelUssi(I)V

    .line 8883
    goto/16 :goto_c

    .line 8858
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v6, v7

    :cond_118
    move v0, v6

    .line 8859
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_119

    .line 8860
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8862
    goto/16 :goto_c

    .line 8863
    :cond_119
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8866
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8867
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8868
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8869
    goto/16 :goto_c

    .line 8840
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v6, v7

    .line 8841
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v6, v7, :cond_11b

    .line 8842
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8844
    goto/16 :goto_c

    .line 8845
    :cond_11b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8848
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8849
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8850
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8851
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8852
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8853
    goto/16 :goto_c

    .line 8824
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

    .line 8825
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11d

    .line 8826
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8827
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8828
    goto/16 :goto_c

    .line 8829
    :cond_11d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8832
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8833
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8834
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8835
    goto/16 :goto_c

    .line 8808
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v6, v7

    :cond_11e
    move v0, v6

    .line 8809
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11f

    .line 8810
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8812
    goto/16 :goto_c

    .line 8813
    :cond_11f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8816
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8817
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8818
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8819
    goto/16 :goto_c

    .line 8793
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v6, v7

    :cond_120
    move v0, v6

    .line 8794
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_121

    .line 8795
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8797
    goto/16 :goto_c

    .line 8798
    :cond_121
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8801
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8802
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setColr(II)V

    .line 8803
    goto/16 :goto_c

    .line 8778
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v6, v7

    :cond_122
    move v0, v6

    .line 8779
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_123

    .line 8780
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8781
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8782
    goto/16 :goto_c

    .line 8783
    :cond_123
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8786
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8787
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setColp(II)V

    .line 8788
    goto/16 :goto_c

    .line 8763
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v6, v7

    :cond_124
    move v0, v6

    .line 8764
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_125

    .line 8765
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8767
    goto/16 :goto_c

    .line 8768
    :cond_125
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8770
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8771
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8772
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8773
    goto/16 :goto_c

    .line 8749
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v6, v7

    :cond_126
    move v0, v6

    .line 8750
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_127

    .line 8751
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8753
    goto/16 :goto_c

    .line 8754
    :cond_127
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8757
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getColr(I)V

    .line 8758
    goto/16 :goto_c

    .line 8735
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v6, v7

    :cond_128
    move v0, v6

    .line 8736
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_129

    .line 8737
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8739
    goto/16 :goto_c

    .line 8740
    :cond_129
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8743
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getColp(I)V

    .line 8744
    goto/16 :goto_c

    .line 8720
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v6, v7

    :cond_12a
    move v0, v6

    .line 8721
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12b

    .line 8722
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8724
    goto/16 :goto_c

    .line 8725
    :cond_12b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8728
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8729
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setClip(II)V

    .line 8730
    goto/16 :goto_c

    .line 8702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v6, v7

    .line 8703
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v6, v7, :cond_12d

    .line 8704
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8706
    goto/16 :goto_c

    .line 8707
    :cond_12d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8710
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8711
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8712
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8713
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8714
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8715
    goto/16 :goto_c

    .line 8687
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

    .line 8688
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12f

    .line 8689
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8691
    goto/16 :goto_c

    .line 8692
    :cond_12f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8695
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8696
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getRoamingEnable(II)V

    .line 8697
    goto/16 :goto_c

    .line 8672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v6, v7

    :cond_130
    move v0, v6

    .line 8673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_131

    .line 8674
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8676
    goto/16 :goto_c

    .line 8677
    :cond_131
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8680
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8681
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8682
    goto/16 :goto_c

    .line 8657
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v6, v7

    :cond_132
    move v0, v6

    .line 8658
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_133

    .line 8659
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8661
    goto/16 :goto_c

    .line 8662
    :cond_133
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8664
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8665
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8666
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8667
    goto/16 :goto_c

    .line 8643
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v6, v7

    :cond_134
    move v0, v6

    .line 8644
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_135

    .line 8645
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8647
    goto/16 :goto_c

    .line 8648
    :cond_135
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8651
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8652
    goto/16 :goto_c

    .line 8627
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v6, v7

    :cond_136
    move v0, v6

    .line 8628
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_137

    .line 8629
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8631
    goto/16 :goto_c

    .line 8632
    :cond_137
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8635
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8636
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8637
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8638
    goto/16 :goto_c

    .line 8610
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

    .line 8611
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_139

    .line 8612
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8614
    goto/16 :goto_c

    .line 8615
    :cond_139
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8618
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8619
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8620
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8621
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8622
    goto/16 :goto_c

    .line 8594
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

    .line 8595
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13b

    .line 8596
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8597
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8598
    goto/16 :goto_c

    .line 8599
    :cond_13b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8602
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8603
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8604
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8605
    goto/16 :goto_c

    .line 8578
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

    .line 8579
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13d

    .line 8580
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8582
    goto/16 :goto_c

    .line 8583
    :cond_13d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8586
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8587
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8588
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8589
    goto/16 :goto_c

    .line 8563
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

    .line 8564
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13f

    .line 8565
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8567
    goto/16 :goto_c

    .line 8568
    :cond_13f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8571
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8572
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->forceReleaseCall(II)V

    .line 8573
    goto/16 :goto_c

    .line 8547
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v6, v7

    :cond_140
    move v0, v6

    .line 8548
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_141

    .line 8549
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8551
    goto/16 :goto_c

    .line 8552
    :cond_141
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8555
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8556
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8557
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8558
    goto/16 :goto_c

    .line 8532
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v6, v7

    :cond_142
    move v0, v6

    .line 8533
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_143

    .line 8534
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8536
    goto/16 :goto_c

    .line 8537
    :cond_143
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8540
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8541
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8542
    goto/16 :goto_c

    .line 8517
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v6, v7

    :cond_144
    move v0, v6

    .line 8518
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_145

    .line 8519
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8521
    goto/16 :goto_c

    .line 8522
    :cond_145
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8525
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8526
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8527
    goto/16 :goto_c

    .line 8500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v6, v7

    :cond_146
    move v0, v6

    .line 8501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_147

    .line 8502
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8504
    goto/16 :goto_c

    .line 8505
    :cond_147
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8508
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8509
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8510
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8511
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8512
    goto/16 :goto_c

    .line 8484
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

    .line 8485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_149

    .line 8486
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8488
    goto/16 :goto_c

    .line 8489
    :cond_149
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8492
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8493
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8494
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8495
    goto/16 :goto_c

    .line 8469
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v6, v7

    :cond_14a
    move v0, v6

    .line 8470
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14b

    .line 8471
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8473
    goto/16 :goto_c

    .line 8474
    :cond_14b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8477
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8478
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setWfcProfile(II)V

    .line 8479
    goto/16 :goto_c

    .line 8452
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v6, v7

    :cond_14c
    move v0, v6

    .line 8453
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14d

    .line 8454
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8456
    goto/16 :goto_c

    .line 8457
    :cond_14d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8460
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8461
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8462
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8463
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8464
    goto/16 :goto_c

    .line 8435
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

    .line 8436
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14f

    .line 8437
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8438
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8439
    goto/16 :goto_c

    .line 8440
    :cond_14f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8443
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8444
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8445
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8446
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8447
    goto/16 :goto_c

    .line 8419
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

    .line 8420
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_151

    .line 8421
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8423
    goto/16 :goto_c

    .line 8424
    :cond_151
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8427
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8428
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8429
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8430
    goto/16 :goto_c

    .line 8404
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

    .line 8405
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_153

    .line 8406
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8408
    goto/16 :goto_c

    .line 8409
    :cond_153
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8412
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8413
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8414
    goto/16 :goto_c

    .line 8384
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v6, v7

    :cond_154
    move v8, v6

    .line 8385
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_155

    .line 8386
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8388
    goto/16 :goto_c

    .line 8389
    :cond_155
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8392
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8393
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8394
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8395
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8396
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8397
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8398
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8399
    goto/16 :goto_c

    .line 8369
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

    .line 8370
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_157

    .line 8371
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8372
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8373
    goto/16 :goto_c

    .line 8374
    :cond_157
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8377
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8378
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8379
    goto/16 :goto_c

    .line 8354
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v6, v7

    :cond_158
    move v0, v6

    .line 8355
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_159

    .line 8356
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8358
    goto/16 :goto_c

    .line 8359
    :cond_159
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8362
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8363
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8364
    goto/16 :goto_c

    .line 8339
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v6, v7

    :cond_15a
    move v0, v6

    .line 8340
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15b

    .line 8341
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8343
    goto/16 :goto_c

    .line 8344
    :cond_15b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8347
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8348
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8349
    goto/16 :goto_c

    .line 8324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v6, v7

    :cond_15c
    move v0, v6

    .line 8325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15d

    .line 8326
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8328
    goto/16 :goto_c

    .line 8329
    :cond_15d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8332
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8333
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8334
    goto/16 :goto_c

    .line 8309
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v6, v7

    :cond_15e
    move v0, v6

    .line 8310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15f

    .line 8311
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8313
    goto/16 :goto_c

    .line 8314
    :cond_15f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8317
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8318
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8319
    goto/16 :goto_c

    .line 8294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v6, v7

    :cond_160
    move v0, v6

    .line 8295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_161

    .line 8296
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8298
    goto/16 :goto_c

    .line 8299
    :cond_161
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8302
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8303
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8304
    goto/16 :goto_c

    .line 8279
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v6, v7

    :cond_162
    move v0, v6

    .line 8280
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_163

    .line 8281
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8283
    goto/16 :goto_c

    .line 8284
    :cond_163
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8287
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8288
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8289
    goto/16 :goto_c

    .line 8264
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v6, v7

    :cond_164
    move v0, v6

    .line 8265
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_165

    .line 8266
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8268
    goto/16 :goto_c

    .line 8269
    :cond_165
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8272
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8273
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setImsEnable(IZ)V

    .line 8274
    goto/16 :goto_c

    .line 8249
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v6, v7

    :cond_166
    move v0, v6

    .line 8250
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_167

    .line 8251
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8252
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8253
    goto/16 :goto_c

    .line 8254
    :cond_167
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8257
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8258
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->imsDeregNotification(II)V

    .line 8259
    goto/16 :goto_c

    .line 8234
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v6, v7

    :cond_168
    move v0, v6

    .line 8235
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_169

    .line 8236
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8238
    goto/16 :goto_c

    .line 8239
    :cond_169
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8242
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8243
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->resumeCall(II)V

    .line 8244
    goto/16 :goto_c

    .line 8219
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v6, v7

    :cond_16a
    move v0, v6

    .line 8220
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16b

    .line 8221
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8222
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8223
    goto/16 :goto_c

    .line 8224
    :cond_16b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8226
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8227
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8228
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->holdCall(II)V

    .line 8229
    goto/16 :goto_c

    .line 8203
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    move v6, v7

    :cond_16c
    move v0, v6

    .line 8204
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16d

    .line 8205
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8207
    goto/16 :goto_c

    .line 8208
    :cond_16d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8211
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8212
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8213
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8214
    goto/16 :goto_c

    .line 8187
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

    .line 8188
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16f

    .line 8189
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8191
    goto/16 :goto_c

    .line 8192
    :cond_16f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8195
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8196
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8197
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->videoCallAccept(III)V

    .line 8198
    goto/16 :goto_c

    .line 8170
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

    .line 8171
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_171

    .line 8172
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8174
    goto/16 :goto_c

    .line 8175
    :cond_171
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 8178
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 8179
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8180
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8182
    goto/16 :goto_c

    .line 8153
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

    .line 8154
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_173

    .line 8155
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8157
    goto/16 :goto_c

    .line 8158
    :cond_173
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 8161
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 8162
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8163
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8165
    goto/16 :goto_c

    .line 8136
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

    .line 8137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_175

    .line 8138
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8140
    goto/16 :goto_c

    .line 8141
    :cond_175
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 8144
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 8145
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8146
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8148
    goto/16 :goto_c

    .line 8119
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

    .line 8120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_177

    .line 8121
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8123
    goto/16 :goto_c

    .line 8124
    :cond_177
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 8127
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 8128
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8129
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8131
    goto/16 :goto_c

    .line 8103
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_178

    move v6, v7

    :cond_178
    move v0, v6

    .line 8104
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_179

    .line 8105
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8107
    goto/16 :goto_c

    .line 8108
    :cond_179
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8111
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8112
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8113
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8114
    goto/16 :goto_c

    .line 8080
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

    .line 8081
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v7, :cond_17b

    .line 8082
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8084
    goto/16 :goto_c

    .line 8085
    :cond_17b
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8088
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8089
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8090
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8092
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8093
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8094
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8095
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8096
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8097
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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8098
    goto/16 :goto_c

    .line 8060
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

    .line 8061
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_17d

    .line 8062
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8064
    goto/16 :goto_c

    .line 8065
    :cond_17d
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8068
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8069
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8070
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8071
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8072
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8073
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8074
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8075
    goto/16 :goto_c

    .line 8042
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

    .line 8043
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v6, v7, :cond_17f

    .line 8044
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8046
    goto/16 :goto_c

    .line 8047
    :cond_17f
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8050
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8051
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8052
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8053
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8054
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 8055
    goto/16 :goto_c

    .line 8027
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

    .line 8028
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_181

    .line 8029
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8030
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8031
    goto/16 :goto_c

    .line 8032
    :cond_181
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8035
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8036
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 8037
    goto/16 :goto_c

    .line 8011
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v6, v7

    :cond_182
    move v0, v6

    .line 8012
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_183

    .line 8013
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8015
    goto/16 :goto_c

    .line 8016
    :cond_183
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8019
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 8020
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8021
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 8022
    goto/16 :goto_c

    .line 7996
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v6, v7

    :cond_184
    move v0, v6

    .line 7997
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_185

    .line 7998
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8000
    goto/16 :goto_c

    .line 8001
    :cond_185
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8004
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8005
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->stopKeepalive(II)V

    .line 8006
    goto/16 :goto_c

    .line 7980
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v6, v7

    :cond_186
    move v0, v6

    .line 7981
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_187

    .line 7982
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7984
    goto/16 :goto_c

    .line 7985
    :cond_187
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7988
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7989
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7990
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7991
    goto/16 :goto_c

    .line 7966
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v6, v7

    :cond_188
    move v0, v6

    .line 7967
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_189

    .line 7968
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7970
    goto/16 :goto_c

    .line 7971
    :cond_189
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7974
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->stopNetworkScan(I)V

    .line 7975
    goto/16 :goto_c

    .line 7950
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v6, v7

    :cond_18a
    move v0, v6

    .line 7951
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18b

    .line 7952
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7954
    goto/16 :goto_c

    .line 7955
    :cond_18b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7958
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7959
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7960
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7961
    goto/16 :goto_c

    .line 7935
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v6, v7

    :cond_18c
    move v0, v6

    .line 7936
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18d

    .line 7937
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7939
    goto/16 :goto_c

    .line 7940
    :cond_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7943
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7944
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7945
    goto/16 :goto_c

    .line 7919
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v6, v7

    :cond_18e
    move v0, v6

    .line 7920
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18f

    .line 7921
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7923
    goto/16 :goto_c

    .line 7924
    :cond_18f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7927
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7928
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7929
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7930
    goto/16 :goto_c

    .line 7906
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v6, v7

    :cond_190
    move v0, v6

    .line 7907
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_191

    .line 7908
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7910
    goto/16 :goto_c

    .line 7911
    :cond_191
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7913
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->responseAcknowledgement()V

    .line 7914
    goto/16 :goto_c

    .line 7891
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v6, v7

    :cond_192
    move v0, v6

    .line 7892
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_193

    .line 7893
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7895
    goto/16 :goto_c

    .line 7896
    :cond_193
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7899
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7900
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7901
    goto/16 :goto_c

    .line 7876
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v6, v7

    :cond_194
    move v0, v6

    .line 7877
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_195

    .line 7878
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7880
    goto/16 :goto_c

    .line 7881
    :cond_195
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7883
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7884
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7885
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setIndicationFilter(II)V

    .line 7886
    goto/16 :goto_c

    .line 7860
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v6, v7

    :cond_196
    move v0, v6

    .line 7861
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_197

    .line 7862
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7864
    goto/16 :goto_c

    .line 7865
    :cond_197
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7868
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7869
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7870
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7871
    goto/16 :goto_c

    .line 7846
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

    .line 7847
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_199

    .line 7848
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7850
    goto/16 :goto_c

    .line 7851
    :cond_199
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7853
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7854
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7855
    goto/16 :goto_c

    .line 7829
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v6, v7

    :cond_19a
    move v0, v6

    .line 7830
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19b

    .line 7831
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7833
    goto/16 :goto_c

    .line 7834
    :cond_19b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7837
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7838
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7839
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7840
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7841
    goto/16 :goto_c

    .line 7815
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

    .line 7816
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19d

    .line 7817
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7819
    goto/16 :goto_c

    .line 7820
    :cond_19d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7823
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7824
    goto/16 :goto_c

    .line 7801
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v6, v7

    :cond_19e
    move v0, v6

    .line 7802
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19f

    .line 7803
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7805
    goto/16 :goto_c

    .line 7806
    :cond_19f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7809
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->pullLceData(I)V

    .line 7810
    goto/16 :goto_c

    .line 7787
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v6, v7

    :cond_1a0
    move v0, v6

    .line 7788
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a1

    .line 7789
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7791
    goto/16 :goto_c

    .line 7792
    :cond_1a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7795
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->stopLceService(I)V

    .line 7796
    goto/16 :goto_c

    .line 7771
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v6, v7

    :cond_1a2
    move v0, v6

    .line 7772
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a3

    .line 7773
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7775
    goto/16 :goto_c

    .line 7776
    :cond_1a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7779
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7780
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7781
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->startLceService(IIZ)V

    .line 7782
    goto/16 :goto_c

    .line 7755
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

    .line 7756
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a5

    .line 7757
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7759
    goto/16 :goto_c

    .line 7760
    :cond_1a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7763
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7764
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7765
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7766
    goto/16 :goto_c

    .line 7741
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v6, v7

    :cond_1a6
    move v0, v6

    .line 7742
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a7

    .line 7743
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7745
    goto/16 :goto_c

    .line 7746
    :cond_1a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7749
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getRadioCapability(I)V

    .line 7750
    goto/16 :goto_c

    .line 7727
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v6, v7

    :cond_1a8
    move v0, v6

    .line 7728
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a9

    .line 7729
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7731
    goto/16 :goto_c

    .line 7732
    :cond_1a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7735
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->requestShutdown(I)V

    .line 7736
    goto/16 :goto_c

    .line 7711
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v6, v7

    :cond_1aa
    move v0, v6

    .line 7712
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ab

    .line 7713
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7715
    goto/16 :goto_c

    .line 7716
    :cond_1ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7719
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7720
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7721
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7722
    goto/16 :goto_c

    .line 7694
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

    .line 7695
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ad

    .line 7696
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7698
    goto/16 :goto_c

    .line 7699
    :cond_1ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7702
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7703
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7704
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7705
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7706
    goto/16 :goto_c

    .line 7680
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

    .line 7681
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1af

    .line 7682
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7684
    goto/16 :goto_c

    .line 7685
    :cond_1af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7688
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getHardwareConfig(I)V

    .line 7689
    goto/16 :goto_c

    .line 7665
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v6, v7

    :cond_1b0
    move v0, v6

    .line 7666
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b1

    .line 7667
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7669
    goto/16 :goto_c

    .line 7670
    :cond_1b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7673
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7674
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7675
    goto/16 :goto_c

    .line 7649
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v6, v7

    :cond_1b2
    move v0, v6

    .line 7650
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b3

    .line 7651
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7653
    goto/16 :goto_c

    .line 7654
    :cond_1b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7657
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7658
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7659
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7660
    goto/16 :goto_c

    .line 7634
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v6, v7

    :cond_1b4
    move v0, v6

    .line 7635
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b5

    .line 7636
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7638
    goto/16 :goto_c

    .line 7639
    :cond_1b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7642
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7643
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->nvResetConfig(II)V

    .line 7644
    goto/16 :goto_c

    .line 7619
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v6, v7

    :cond_1b6
    move v0, v6

    .line 7620
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b7

    .line 7621
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7623
    goto/16 :goto_c

    .line 7624
    :cond_1b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7627
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7628
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7629
    goto/16 :goto_c

    .line 7603
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v6, v7

    :cond_1b8
    move v0, v6

    .line 7604
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b9

    .line 7605
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7607
    goto/16 :goto_c

    .line 7608
    :cond_1b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7611
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7612
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7613
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7614
    goto/16 :goto_c

    .line 7588
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v6, v7

    :cond_1ba
    move v0, v6

    .line 7589
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bb

    .line 7590
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7592
    goto/16 :goto_c

    .line 7593
    :cond_1bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7595
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7596
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7597
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->nvReadItem(II)V

    .line 7598
    goto/16 :goto_c

    .line 7572
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v6, v7

    :cond_1bc
    move v0, v6

    .line 7573
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bd

    .line 7574
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7576
    goto/16 :goto_c

    .line 7577
    :cond_1bd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7580
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7581
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7582
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7583
    goto/16 :goto_c

    .line 7557
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v6, v7

    :cond_1be
    move v0, v6

    .line 7558
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bf

    .line 7559
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7560
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7561
    goto/16 :goto_c

    .line 7562
    :cond_1bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7565
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7566
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7567
    goto/16 :goto_c

    .line 7541
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v6, v7

    :cond_1c0
    move v0, v6

    .line 7542
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c1

    .line 7543
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7545
    goto/16 :goto_c

    .line 7546
    :cond_1c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7549
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7550
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7551
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7552
    goto/16 :goto_c

    .line 7525
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

    .line 7526
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c3

    .line 7527
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7529
    goto/16 :goto_c

    .line 7530
    :cond_1c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7533
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7534
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7535
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7536
    goto/16 :goto_c

    .line 7509
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v6, v7

    :cond_1c4
    move v0, v6

    .line 7510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c5

    .line 7511
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7513
    goto/16 :goto_c

    .line 7514
    :cond_1c5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7517
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7518
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7519
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7520
    goto/16 :goto_c

    .line 7495
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v6, v7

    :cond_1c6
    move v0, v6

    .line 7496
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c7

    .line 7497
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7499
    goto/16 :goto_c

    .line 7500
    :cond_1c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7503
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7504
    goto/16 :goto_c

    .line 7477
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v6, v7

    :cond_1c8
    move v0, v6

    .line 7478
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c9

    .line 7479
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7481
    goto/16 :goto_c

    .line 7482
    :cond_1c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7485
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7486
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7488
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7489
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7490
    goto/16 :goto_c

    .line 7462
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

    .line 7463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cb

    .line 7464
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7466
    goto/16 :goto_c

    .line 7467
    :cond_1cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7470
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7471
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7472
    goto/16 :goto_c

    .line 7448
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v6, v7

    :cond_1cc
    move v0, v6

    .line 7449
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cd

    .line 7450
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7452
    goto/16 :goto_c

    .line 7453
    :cond_1cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7456
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCellInfoList(I)V

    .line 7457
    goto/16 :goto_c

    .line 7434
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v6, v7

    :cond_1ce
    move v0, v6

    .line 7435
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cf

    .line 7436
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7438
    goto/16 :goto_c

    .line 7439
    :cond_1cf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7442
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7443
    goto/16 :goto_c

    .line 7419
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v6, v7

    :cond_1d0
    move v0, v6

    .line 7420
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d1

    .line 7421
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7423
    goto/16 :goto_c

    .line 7424
    :cond_1d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7427
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7428
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7429
    goto/16 :goto_c

    .line 7403
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v6, v7

    :cond_1d2
    move v0, v6

    .line 7404
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d3

    .line 7405
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7407
    goto/16 :goto_c

    .line 7408
    :cond_1d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7410
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7411
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7412
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7413
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7414
    goto/16 :goto_c

    .line 7388
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

    .line 7389
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d5

    .line 7390
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7392
    goto/16 :goto_c

    .line 7393
    :cond_1d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7396
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7397
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7398
    goto/16 :goto_c

    .line 7374
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v6, v7

    :cond_1d6
    move v0, v6

    .line 7375
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d7

    .line 7376
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7377
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7378
    goto/16 :goto_c

    .line 7379
    :cond_1d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7382
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7383
    goto/16 :goto_c

    .line 7360
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v6, v7

    :cond_1d8
    move v0, v6

    .line 7361
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d9

    .line 7362
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7364
    goto/16 :goto_c

    .line 7365
    :cond_1d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7368
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7369
    goto/16 :goto_c

    .line 7345
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v6, v7

    :cond_1da
    move v0, v6

    .line 7346
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1db

    .line 7347
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7349
    goto/16 :goto_c

    .line 7350
    :cond_1db
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7353
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7354
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7355
    goto/16 :goto_c

    .line 7330
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v6, v7

    :cond_1dc
    move v0, v6

    .line 7331
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1dd

    .line 7332
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7334
    goto/16 :goto_c

    .line 7335
    :cond_1dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7338
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7339
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7340
    goto/16 :goto_c

    .line 7316
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v6, v7

    :cond_1de
    move v0, v6

    .line 7317
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1df

    .line 7318
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7320
    goto/16 :goto_c

    .line 7321
    :cond_1df
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7324
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getSmscAddress(I)V

    .line 7325
    goto/16 :goto_c

    .line 7302
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v6, v7

    :cond_1e0
    move v0, v6

    .line 7303
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e1

    .line 7304
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7306
    goto/16 :goto_c

    .line 7307
    :cond_1e1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7310
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7311
    goto/16 :goto_c

    .line 7288
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v6, v7

    :cond_1e2
    move v0, v6

    .line 7289
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e3

    .line 7290
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7292
    goto/16 :goto_c

    .line 7293
    :cond_1e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7296
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7297
    goto/16 :goto_c

    .line 7273
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v6, v7

    :cond_1e4
    move v0, v6

    .line 7274
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e5

    .line 7275
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7277
    goto/16 :goto_c

    .line 7278
    :cond_1e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7281
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7282
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7283
    goto/16 :goto_c

    .line 7257
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v6, v7

    :cond_1e6
    move v0, v6

    .line 7258
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e7

    .line 7259
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7261
    goto/16 :goto_c

    .line 7262
    :cond_1e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7265
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7266
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7267
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7268
    goto/16 :goto_c

    .line 7243
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v6, v7

    :cond_1e8
    move v0, v6

    .line 7244
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e9

    .line 7245
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7246
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7247
    goto/16 :goto_c

    .line 7248
    :cond_1e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7251
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCDMASubscription(I)V

    .line 7252
    goto/16 :goto_c

    .line 7228
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v6, v7

    :cond_1ea
    move v0, v6

    .line 7229
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1eb

    .line 7230
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7231
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7232
    goto/16 :goto_c

    .line 7233
    :cond_1eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7236
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7237
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7238
    goto/16 :goto_c

    .line 7213
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v6, v7

    :cond_1ec
    move v0, v6

    .line 7214
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ed

    .line 7215
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7217
    goto/16 :goto_c

    .line 7218
    :cond_1ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7221
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7222
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7223
    goto/16 :goto_c

    .line 7199
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v6, v7

    :cond_1ee
    move v0, v6

    .line 7200
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ef

    .line 7201
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7203
    goto/16 :goto_c

    .line 7204
    :cond_1ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7207
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7208
    goto/16 :goto_c

    .line 7184
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v6, v7

    :cond_1f0
    move v0, v6

    .line 7185
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f1

    .line 7186
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7188
    goto/16 :goto_c

    .line 7189
    :cond_1f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7192
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7193
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7194
    goto/16 :goto_c

    .line 7169
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v6, v7

    :cond_1f2
    move v0, v6

    .line 7170
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f3

    .line 7171
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7173
    goto/16 :goto_c

    .line 7174
    :cond_1f3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7177
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7178
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7179
    goto/16 :goto_c

    .line 7155
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v6, v7

    :cond_1f4
    move v0, v6

    .line 7156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f5

    .line 7157
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7159
    goto/16 :goto_c

    .line 7160
    :cond_1f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7163
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7164
    goto/16 :goto_c

    .line 7139
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v6, v7

    :cond_1f6
    move v0, v6

    .line 7140
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f7

    .line 7141
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7143
    goto/16 :goto_c

    .line 7144
    :cond_1f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7147
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7148
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7149
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7150
    goto/16 :goto_c

    .line 7123
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v6, v7

    :cond_1f8
    move v0, v6

    .line 7124
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f9

    .line 7125
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7127
    goto/16 :goto_c

    .line 7128
    :cond_1f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7131
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7132
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7133
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7134
    goto/16 :goto_c

    .line 7106
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v6, v7

    :cond_1fa
    move v0, v6

    .line 7107
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fb

    .line 7108
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7110
    goto/16 :goto_c

    .line 7111
    :cond_1fb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7114
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7115
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7116
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7117
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7118
    goto/16 :goto_c

    .line 7091
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

    .line 7092
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fd

    .line 7093
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7095
    goto/16 :goto_c

    .line 7096
    :cond_1fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7099
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7100
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7101
    goto/16 :goto_c

    .line 7077
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v6, v7

    :cond_1fe
    move v0, v6

    .line 7078
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ff

    .line 7079
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7081
    goto/16 :goto_c

    .line 7082
    :cond_1ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7085
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7086
    goto/16 :goto_c

    .line 7062
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v6, v7

    :cond_200
    move v0, v6

    .line 7063
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_201

    .line 7064
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7066
    goto/16 :goto_c

    .line 7067
    :cond_201
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7070
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7071
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7072
    goto/16 :goto_c

    .line 7048
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v6, v7

    :cond_202
    move v0, v6

    .line 7049
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_203

    .line 7050
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7052
    goto/16 :goto_c

    .line 7053
    :cond_203
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7056
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getTTYMode(I)V

    .line 7057
    goto/16 :goto_c

    .line 7033
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v6, v7

    :cond_204
    move v0, v6

    .line 7034
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_205

    .line 7035
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7037
    goto/16 :goto_c

    .line 7038
    :cond_205
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7041
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7042
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setTTYMode(II)V

    .line 7043
    goto/16 :goto_c

    .line 7019
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v6, v7

    :cond_206
    move v0, v6

    .line 7020
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_207

    .line 7021
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7023
    goto/16 :goto_c

    .line 7024
    :cond_207
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7027
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 7028
    goto/16 :goto_c

    .line 7004
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v6, v7

    :cond_208
    move v0, v6

    .line 7005
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_209

    .line 7006
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7008
    goto/16 :goto_c

    .line 7009
    :cond_209
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7012
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7013
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 7014
    goto/16 :goto_c

    .line 6989
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v6, v7

    :cond_20a
    move v0, v6

    .line 6990
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20b

    .line 6991
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6993
    goto/16 :goto_c

    .line 6994
    :cond_20b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6997
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6998
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6999
    goto/16 :goto_c

    .line 6974
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v6, v7

    :cond_20c
    move v0, v6

    .line 6975
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20d

    .line 6976
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6977
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6978
    goto/16 :goto_c

    .line 6979
    :cond_20d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6982
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6983
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6984
    goto/16 :goto_c

    .line 6960
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v6, v7

    :cond_20e
    move v0, v6

    .line 6961
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20f

    .line 6962
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6964
    goto/16 :goto_c

    .line 6965
    :cond_20f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6968
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getNeighboringCids(I)V

    .line 6969
    goto/16 :goto_c

    .line 6946
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v6, v7

    :cond_210
    move v0, v6

    .line 6947
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_211

    .line 6948
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6950
    goto/16 :goto_c

    .line 6951
    :cond_211
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6954
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6955
    goto/16 :goto_c

    .line 6931
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v6, v7

    :cond_212
    move v0, v6

    .line 6932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_213

    .line 6933
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6934
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6935
    goto/16 :goto_c

    .line 6936
    :cond_213
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6938
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6939
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6940
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6941
    goto/16 :goto_c

    .line 6917
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v6, v7

    :cond_214
    move v0, v6

    .line 6918
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_215

    .line 6919
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6921
    goto/16 :goto_c

    .line 6922
    :cond_215
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6925
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6926
    goto/16 :goto_c

    .line 6902
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v6, v7

    :cond_216
    move v0, v6

    .line 6903
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_217

    .line 6904
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6906
    goto/16 :goto_c

    .line 6907
    :cond_217
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6910
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6911
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6912
    goto/16 :goto_c

    .line 6887
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v6, v7

    :cond_218
    move v0, v6

    .line 6888
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_219

    .line 6889
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6891
    goto/16 :goto_c

    .line 6892
    :cond_219
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6895
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6896
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6897
    goto/16 :goto_c

    .line 6872
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v6, v7

    :cond_21a
    move v0, v6

    .line 6873
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21b

    .line 6874
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6876
    goto/16 :goto_c

    .line 6877
    :cond_21b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6880
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6881
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6882
    goto/16 :goto_c

    .line 6858
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v6, v7

    :cond_21c
    move v0, v6

    .line 6859
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21d

    .line 6860
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6862
    goto/16 :goto_c

    .line 6863
    :cond_21d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6866
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6867
    goto/16 :goto_c

    .line 6843
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v6, v7

    :cond_21e
    move v0, v6

    .line 6844
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21f

    .line 6845
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6847
    goto/16 :goto_c

    .line 6848
    :cond_21f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6851
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6852
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setBandMode(II)V

    .line 6853
    goto/16 :goto_c

    .line 6828
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v6, v7

    :cond_220
    move v0, v6

    .line 6829
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_221

    .line 6830
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6832
    goto/16 :goto_c

    .line 6833
    :cond_221
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6836
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6837
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6838
    goto/16 :goto_c

    .line 6812
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v6, v7

    :cond_222
    move v0, v6

    .line 6813
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_223

    .line 6814
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6816
    goto/16 :goto_c

    .line 6817
    :cond_223
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6820
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6821
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6822
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6823
    goto/16 :goto_c

    .line 6797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v6, v7

    :cond_224
    move v0, v6

    .line 6798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_225

    .line 6799
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6801
    goto/16 :goto_c

    .line 6802
    :cond_225
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6805
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6806
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6807
    goto/16 :goto_c

    .line 6783
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v6, v7

    :cond_226
    move v0, v6

    .line 6784
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_227

    .line 6785
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6787
    goto/16 :goto_c

    .line 6788
    :cond_227
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6791
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getDataCallList(I)V

    .line 6792
    goto/16 :goto_c

    .line 6769
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v6, v7

    :cond_228
    move v0, v6

    .line 6770
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_229

    .line 6771
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6773
    goto/16 :goto_c

    .line 6774
    :cond_229
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6777
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getClip(I)V

    .line 6778
    goto/16 :goto_c

    .line 6755
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v6, v7

    :cond_22a
    move v0, v6

    .line 6756
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22b

    .line 6757
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6759
    goto/16 :goto_c

    .line 6760
    :cond_22b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6763
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getMute(I)V

    .line 6764
    goto/16 :goto_c

    .line 6740
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v6, v7

    :cond_22c
    move v0, v6

    .line 6741
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22d

    .line 6742
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6743
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6744
    goto/16 :goto_c

    .line 6745
    :cond_22d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6748
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6749
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setMute(IZ)V

    .line 6750
    goto/16 :goto_c

    .line 6725
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v6, v7

    :cond_22e
    move v0, v6

    .line 6726
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22f

    .line 6727
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6729
    goto/16 :goto_c

    .line 6730
    :cond_22f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6733
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6734
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->separateConnection(II)V

    .line 6735
    goto/16 :goto_c

    .line 6711
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v6, v7

    :cond_230
    move v0, v6

    .line 6712
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_231

    .line 6713
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6715
    goto/16 :goto_c

    .line 6716
    :cond_231
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6719
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getBasebandVersion(I)V

    .line 6720
    goto/16 :goto_c

    .line 6697
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v6, v7

    :cond_232
    move v0, v6

    .line 6698
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_233

    .line 6699
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6701
    goto/16 :goto_c

    .line 6702
    :cond_233
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6705
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->stopDtmf(I)V

    .line 6706
    goto/16 :goto_c

    .line 6682
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v6, v7

    :cond_234
    move v0, v6

    .line 6683
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_235

    .line 6684
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6686
    goto/16 :goto_c

    .line 6687
    :cond_235
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6690
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6691
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6692
    goto/16 :goto_c

    .line 6668
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v6, v7

    :cond_236
    move v0, v6

    .line 6669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_237

    .line 6670
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6672
    goto/16 :goto_c

    .line 6673
    :cond_237
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6676
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6677
    goto/16 :goto_c

    .line 6653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v6, v7

    :cond_238
    move v0, v6

    .line 6654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_239

    .line 6655
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6657
    goto/16 :goto_c

    .line 6658
    :cond_239
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6661
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6662
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6663
    goto/16 :goto_c

    .line 6639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v6, v7

    :cond_23a
    move v0, v6

    .line 6640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23b

    .line 6641
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6643
    goto/16 :goto_c

    .line 6644
    :cond_23b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6647
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6648
    goto/16 :goto_c

    .line 6625
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v6, v7

    :cond_23c
    move v0, v6

    .line 6626
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23d

    .line 6627
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6629
    goto/16 :goto_c

    .line 6630
    :cond_23d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6633
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6634
    goto/16 :goto_c

    .line 6608
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v6, v7

    :cond_23e
    move v0, v6

    .line 6609
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23f

    .line 6610
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6612
    goto/16 :goto_c

    .line 6613
    :cond_23f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6616
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6617
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6618
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6619
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6620
    goto/16 :goto_c

    .line 6589
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

    .line 6590
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_241

    .line 6591
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6593
    goto/16 :goto_c

    .line 6594
    :cond_241
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6597
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6598
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6599
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6600
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6601
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6602
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6603
    goto/16 :goto_c

    .line 6571
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

    .line 6572
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_242
    if-eq v6, v7, :cond_243

    .line 6573
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6575
    goto/16 :goto_c

    .line 6576
    :cond_243
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6579
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6580
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6581
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6582
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6583
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6584
    goto/16 :goto_c

    .line 6555
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

    .line 6556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_245

    .line 6557
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6559
    goto/16 :goto_c

    .line 6560
    :cond_245
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6563
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6564
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6565
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6566
    goto/16 :goto_c

    .line 6541
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

    .line 6542
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_247

    .line 6543
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6545
    goto/16 :goto_c

    .line 6546
    :cond_247
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6549
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->acceptCall(I)V

    .line 6550
    goto/16 :goto_c

    .line 6525
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v6, v7

    :cond_248
    move v0, v6

    .line 6526
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_249

    .line 6527
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6529
    goto/16 :goto_c

    .line 6530
    :cond_249
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6533
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6534
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6535
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6536
    goto/16 :goto_c

    .line 6509
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

    .line 6510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24b

    .line 6511
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6513
    goto/16 :goto_c

    .line 6514
    :cond_24b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6517
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6518
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6519
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6520
    goto/16 :goto_c

    .line 6494
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

    .line 6495
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24d

    .line 6496
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6497
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6498
    goto/16 :goto_c

    .line 6499
    :cond_24d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6501
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6502
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6503
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCallWaiting(II)V

    .line 6504
    goto/16 :goto_c

    .line 6478
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v6, v7

    :cond_24e
    move v0, v6

    .line 6479
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24f

    .line 6480
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6482
    goto/16 :goto_c

    .line 6483
    :cond_24f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6486
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6487
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6488
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6489
    goto/16 :goto_c

    .line 6462
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v6, v7

    :cond_250
    move v0, v6

    .line 6463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_251

    .line 6464
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6466
    goto/16 :goto_c

    .line 6467
    :cond_251
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6470
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6471
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6472
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6473
    goto/16 :goto_c

    .line 6447
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v6, v7

    :cond_252
    move v0, v6

    .line 6448
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_253

    .line 6449
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6450
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6451
    goto/16 :goto_c

    .line 6452
    :cond_253
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6455
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6456
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setClir(II)V

    .line 6457
    goto/16 :goto_c

    .line 6433
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v6, v7

    :cond_254
    move v0, v6

    .line 6434
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_255

    .line 6435
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6437
    goto/16 :goto_c

    .line 6438
    :cond_255
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6441
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getClir(I)V

    .line 6442
    goto/16 :goto_c

    .line 6419
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v6, v7

    :cond_256
    move v0, v6

    .line 6420
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_257

    .line 6421
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6423
    goto/16 :goto_c

    .line 6424
    :cond_257
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6427
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6428
    goto/16 :goto_c

    .line 6404
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v6, v7

    :cond_258
    move v0, v6

    .line 6405
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_259

    .line 6406
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6408
    goto/16 :goto_c

    .line 6409
    :cond_259
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6412
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6413
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6414
    goto/16 :goto_c

    .line 6388
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v6, v7

    :cond_25a
    move v0, v6

    .line 6389
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25b

    .line 6390
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6392
    goto/16 :goto_c

    .line 6393
    :cond_25b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6396
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6397
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6398
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6399
    goto/16 :goto_c

    .line 6368
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v6, v7

    :cond_25c
    move v8, v6

    .line 6369
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_25d

    .line 6370
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6372
    goto/16 :goto_c

    .line 6373
    :cond_25d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6376
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6377
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6378
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6380
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6381
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6382
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6383
    goto/16 :goto_c

    .line 6352
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

    .line 6353
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25f

    .line 6354
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6356
    goto/16 :goto_c

    .line 6357
    :cond_25f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6360
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6361
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6362
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6363
    goto/16 :goto_c

    .line 6336
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v6, v7

    :cond_260
    move v0, v6

    .line 6337
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_261

    .line 6338
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6339
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6340
    goto/16 :goto_c

    .line 6341
    :cond_261
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6344
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6345
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6346
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6347
    goto/16 :goto_c

    .line 6321
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v6, v7

    :cond_262
    move v0, v6

    .line 6322
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_263

    .line 6323
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6324
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6325
    goto/16 :goto_c

    .line 6326
    :cond_263
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6329
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6330
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6331
    goto/16 :goto_c

    .line 6306
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v6, v7

    :cond_264
    move v0, v6

    .line 6307
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_265

    .line 6308
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6310
    goto/16 :goto_c

    .line 6311
    :cond_265
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6314
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6315
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setRadioPower(IZ)V

    .line 6316
    goto/16 :goto_c

    .line 6292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v6, v7

    :cond_266
    move v0, v6

    .line 6293
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_267

    .line 6294
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6296
    goto/16 :goto_c

    .line 6297
    :cond_267
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6300
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getOperator(I)V

    .line 6301
    goto/16 :goto_c

    .line 6278
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v6, v7

    :cond_268
    move v0, v6

    .line 6279
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_269

    .line 6280
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6282
    goto/16 :goto_c

    .line 6283
    :cond_269
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6286
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6287
    goto/16 :goto_c

    .line 6264
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v6, v7

    :cond_26a
    move v0, v6

    .line 6265
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26b

    .line 6266
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6268
    goto/16 :goto_c

    .line 6269
    :cond_26b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6272
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6273
    goto/16 :goto_c

    .line 6250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v6, v7

    :cond_26c
    move v0, v6

    .line 6251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26d

    .line 6252
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6254
    goto/16 :goto_c

    .line 6255
    :cond_26d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6258
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getSignalStrength(I)V

    .line 6259
    goto/16 :goto_c

    .line 6236
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v6, v7

    :cond_26e
    move v0, v6

    .line 6237
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26f

    .line 6238
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6240
    goto/16 :goto_c

    .line 6241
    :cond_26f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6244
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6245
    goto/16 :goto_c

    .line 6222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v6, v7

    :cond_270
    move v0, v6

    .line 6223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_271

    .line 6224
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6226
    goto/16 :goto_c

    .line 6227
    :cond_271
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6230
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->rejectCall(I)V

    .line 6231
    goto/16 :goto_c

    .line 6208
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v6, v7

    :cond_272
    move v0, v6

    .line 6209
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_273

    .line 6210
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6212
    goto/16 :goto_c

    .line 6213
    :cond_273
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6216
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->conference(I)V

    .line 6217
    goto/16 :goto_c

    .line 6194
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v6, v7

    :cond_274
    move v0, v6

    .line 6195
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_275

    .line 6196
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6198
    goto/16 :goto_c

    .line 6199
    :cond_275
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6202
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6203
    goto/16 :goto_c

    .line 6180
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v6, v7

    :cond_276
    move v0, v6

    .line 6181
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_277

    .line 6182
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6184
    goto/16 :goto_c

    .line 6185
    :cond_277
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6188
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6189
    goto/16 :goto_c

    .line 6166
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v6, v7

    :cond_278
    move v0, v6

    .line 6167
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_279

    .line 6168
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6170
    goto/16 :goto_c

    .line 6171
    :cond_279
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6174
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6175
    goto/16 :goto_c

    .line 6151
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v6, v7

    :cond_27a
    move v0, v6

    .line 6152
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27b

    .line 6153
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6155
    goto/16 :goto_c

    .line 6156
    :cond_27b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6159
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6160
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->hangup(II)V

    .line 6161
    goto/16 :goto_c

    .line 6136
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v6, v7

    :cond_27c
    move v0, v6

    .line 6137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27d

    .line 6138
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6140
    goto/16 :goto_c

    .line 6141
    :cond_27d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6144
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6145
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6146
    goto/16 :goto_c

    .line 6120
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v6, v7

    :cond_27e
    move v0, v6

    .line 6121
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27f

    .line 6122
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6124
    goto/16 :goto_c

    .line 6125
    :cond_27f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6128
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6129
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6130
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6131
    goto/16 :goto_c

    .line 6106
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v6, v7

    :cond_280
    move v0, v6

    .line 6107
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_281

    .line 6108
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6110
    goto/16 :goto_c

    .line 6111
    :cond_281
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6114
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getCurrentCalls(I)V

    .line 6115
    goto/16 :goto_c

    .line 6091
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v6, v7

    :cond_282
    move v0, v6

    .line 6092
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_283

    .line 6093
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6095
    goto/16 :goto_c

    .line 6096
    :cond_283
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6099
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6100
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6101
    goto/16 :goto_c

    .line 6074
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v6, v7

    :cond_284
    move v0, v6

    .line 6075
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_285

    .line 6076
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6078
    goto/16 :goto_c

    .line 6079
    :cond_285
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6082
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6083
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6084
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6085
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6086
    goto/16 :goto_c

    .line 6057
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

    .line 6058
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_287

    .line 6059
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6061
    goto/16 :goto_c

    .line 6062
    :cond_287
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6065
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6066
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6067
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6068
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6069
    goto/16 :goto_c

    .line 6040
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

    .line 6041
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_289

    .line 6042
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6044
    goto/16 :goto_c

    .line 6045
    :cond_289
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6048
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6049
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6050
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6051
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6052
    goto/16 :goto_c

    .line 6024
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

    .line 6025
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28b

    .line 6026
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6028
    goto/16 :goto_c

    .line 6029
    :cond_28b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6031
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6032
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6033
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6034
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6035
    goto/16 :goto_c

    .line 6007
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

    .line 6008
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28d

    .line 6009
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6011
    goto/16 :goto_c

    .line 6012
    :cond_28d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6015
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6016
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6017
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6018
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6019
    goto/16 :goto_c

    .line 5991
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

    .line 5992
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28f

    .line 5993
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5995
    goto :goto_c

    .line 5996
    :cond_28f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5999
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6000
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6001
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6002
    goto :goto_c

    .line 5977
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

    .line 5978
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_291

    .line 5979
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5981
    goto :goto_c

    .line 5982
    :cond_291
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5985
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->getIccCardStatus(I)V

    .line 5986
    goto :goto_c

    .line 5960
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

    .line 5961
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_293

    .line 5962
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5964
    goto :goto_c

    .line 5965
    :cond_293
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 5968
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 5969
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5970
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5972
    nop

    .line 11049
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

    .line 5911
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5939
    const-string v0, "vendor.mediatek.hardware.radio@3.8::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5940
    return-object p0

    .line 5942
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

    .line 5946
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5947
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5901
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_8/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5933
    const/4 v0, 0x1

    return v0
.end method
